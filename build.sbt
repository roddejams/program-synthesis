name := """program-synthesis"""

version := "1.0-SNAPSHOT"

lazy val root = (project in file(".")).enablePlugins(PlayJava)

herokuAppName in Compile := "obscure-brushlands-46811"

scalaVersion := "2.11.7"

libraryDependencies ++= Seq(
  javaJdbc,
  cache,
  javaWs,
  "commons-io" % "commons-io" % "2.4"
)

// https://mvnrepository.com/artifact/commons-io/commons-io
//libraryDependencies += "commons-io" % "commons-io" % "2.4"


fork in run := true
