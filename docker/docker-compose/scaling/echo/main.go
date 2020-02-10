package main

import (
	"fmt"
	"html"
	"log"
	"net/http"
)

func main() {

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Printf( "Received %q request to %q from %q\n", r.Method, html.EscapeString(r.RequestURI), r.RemoteAddr)
	})

	log.Fatal(http.ListenAndServe(":8080", nil))
}
