# SyncWithS3

This is a very simple tool that allows syncing a local folder with a remote S3 repository.

## Prerequisites

This tool depends on the installation of `aws` command line tools. Check out the installation instructions here: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

## Usage

The tool consists of 3 scripts:

* `s3-init s3url`: initializes the sync by storing the s3 URL passed as parameter into a file named .s3
* `s3-pull`: pulls all files and folders from the remote s3 target
* `s3-push`: pushes all local files and folders to the remote s3 target

## Limitations

The scripts work only from the root directory of your local repository.

The scripts need `bash` and were tested on Ubuntu.

## Installation

You have two options for installation:

* Download the three files and place them in an executable path, for example `/usr/bin/`
* Download the released .deb file and install it using `sudo dpkg -i s3sync.deb`. This will install the files in your `/usr/bin/` folder.

## Development Notes

To change the scripts:

* fork this repository
* make your changes
* test as needed
* build the deb file using `make deb`. It requires `fpm` which you can obtain from here: https://github.com/jordansissel/fpm/wiki. Easiest way to install is by running `sudo gem install fpm`
