fs = require "fs"
onlyScripts = require("./utils/scriptFilter")
tasks = fs.readdirSync("#{__dirname}/tasks/").filter onlyScripts

tasks.forEach (task) ->
	console.log "require " +task
	require "./tasks/#{task}"
