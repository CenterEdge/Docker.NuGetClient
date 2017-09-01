# Docker.NuGetClient

Docker script for a Linux image that contains the latest version of NuGet.  Useful for running build steps in Jenkins.

# Building

```sh
docker build .
```

# Running nuget

```sh
docker run --rm -it -v /local/path:/docker/path centeredge/nuget pack /docker/path/file.nuspec
```

# Using in Jenkins

```Groovy
docker.image('centeredge/nuget:latest').inside() {
	sh "nuget pack file.nuspec"
}
```