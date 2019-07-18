FROM node

# GET FROM SCRIPT THE ARGUMENT
ARG RAMLPATH

# ADD TO THE IMAGE THE
COPY ./raml-schemas /raml-schemas/

# ADD RAML-SCHEMAS DIRECTORY

# INSTALL DEPENDENCIES
RUN npm install -g serve
RUN npm install -g raml2html

# GENERATE DOCS
RUN raml2html $RAMLPATH > index.html

EXPOSE 5000
CMD ["serve", "."]
