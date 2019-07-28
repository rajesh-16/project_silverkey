#!/usr/bin/env python3

from jinja2 import Environment, FileSystemLoader

ENV = Environment(loader=FileSystemLoader('.'))
template = ENV.get_template("projectSilverkey.j2")

leafs = {
	"leaf1":"192.168.0.8",
	"leaf2":"192.168.0.9",
	"leaf3":"192.168.9.10"
}


spines = {
	"spine1":"192.168.0.6",
	"spine2":"192.168.0.7",
}
print (template.render(leafs=leafs, spines=spines))
