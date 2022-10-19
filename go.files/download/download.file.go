package download

import (
	"io"
	"net/http"
	"os"
)

func Download(url string) (string, error) {

	name := "node.tar.xz"
	filResponse, err := http.Get(url)
	if err != nil {
		return "", err
	}

	defer filResponse.Body.Close()
	exitFile, err := os.Create("../"+name)
	if err != nil {
		return "", err
	}

	defer exitFile.Close()
	_, err = io.Copy(exitFile, filResponse.Body)
	return name, err
}
