# SoundShare Overview

This application gives users the ability to create collections of sound files and leave comments on sound posts, similar to an image board, like 4chan.

## Features

### Persistent Storage
-Allows for persistent storage of 'boards' which contain sounds, tags and comments.
-Features checks to prevent oversized sound files from being uploaded (this prevents things like music piracy)
-Allows for persistent creation of user accounts with encrypted and salted credentials.

### Formatting
-Users can give themselves an avatar for recognition using the Gravatar API.
-Boards are neatly paginated at 10 boards per page
-Boards have tags which can be edited by users, and which are displayed 

### Searching
-Users can search through the tags of all stored boards and get a paginated list of matching boards. 


## Specifications

Ruby v2.2.4
Rails v5.0.0.1
PostgreSQL
Heroku
AWS S3

## Contributors

Jacob Hackett

Tom Farro

Kelly Zhang

## License

The MIT License (MIT)
Copyright (c) 2016 Jacob Hackett, Tom Farro, Kelly Zhang

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

