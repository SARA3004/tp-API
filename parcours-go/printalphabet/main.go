package main

import "github.com/01-edu/z01"

func main() {
	alph := "abcdefghijklmnopqrstuvwxyz"
    for _, element := range alph {
		z01.PrintRune(element)
	}
}
