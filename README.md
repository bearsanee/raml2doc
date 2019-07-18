# raml2doc
forked from: [raml2doc](https://github.com/CVarisco/raml2doc)

## Autonomous publish procedure

Copy the raml and all related files into *raml-schemas* folder

Run *publish.sh* passing the relative path to you raml

When docker image creation is completed and image is running it shows you the results on [localhost:5000](http://localhost:5000)

Press CTRL+C (Command+C) to stop the image amd remove it from docker.

#### Example:
Run this example to check if all is configurated well

```
cd raml2doc
./publish.sh raml-schemas/example/example.raml
```

Enjoy

## Old manual procedure

Copy the raml to test with related json in the *raml_schemas* folder

Run *build.sh* to generate the container:

```
build.sh <docker-image-name> <raml-relative-path-to-generate>
```

the Dockerfile copies all the content of the *raml-schemas* directory into container  
it will publish the generated html on port 5000


Run image with command:

```
docker run --rm -p 5000:5000 --name <image-name> <docker-image-name>
```

#### Example:

```
cd raml2doc

./build.sh project-raml ./raml-schemas/project.raml

docker run --rm -p 5000:5000 project-raml
```

To remove the image generated from docker:

```
docker rmi project-raml
```
