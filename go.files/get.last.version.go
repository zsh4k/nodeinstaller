package main

import (
	"strings"
	"github.com/gocolly/colly"
	"github.com/nodebinarie/download"
)

//Scrapping nodejs.org/download and download file
func main() {

	c := colly.NewCollector()
	c.OnHTML("tr td a[href]", func(h *colly.HTMLElement) {
		link := h.Attr("href")
		if strings.Contains(link, "linux-x64") {

			download.Download(link)
		}
	})
	c.Visit("https://nodejs.org/en/download/")
}
