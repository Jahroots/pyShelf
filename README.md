# pyShelf 0.6.0

<p align="center"><b>Terminal based ebook server. Open source & Lightweight.</b></p>
<p align="center">Having used Calibre for hosting my eBook collection in the past, I found myself frustrated having to install X on my server, or manage my library externally, Thus I have decided to spin up my own.</p>
<p align="center"><a href="https://pyshelf.com">https://pyshelf.com</a></p>

![pyShelf 0.6.0 newui](https://github.com/th3r00t/pyShelf/raw/development/src/interface/static/img/pyShelf_frontend_0_2_0.png)


### You dont need a X server to host a website, or your Movie & Tv collection, so why should you need one to host ebooks?
<i>Other solutiions require you to have access to an X server to at the very least generate your book database, pyShelf doesnt.We aim to provide a fully featured ebook server with minimal requirements, and no reliance on X whatsoever.</i>

Follow or influence development @ <p align="center"><b> <a href="https://discord.gg/H9TbNJS">Discord</a> |  <a href="https://webchat.freenode.net/#pyshelf">IRC</a> freenode.net @ #pyshelf</b></p>
## Current Features
* Custom Installer works only on Arch Based Distros
* Recursive Scanning
* Fast database access
* Django based frontend
* Basic seaching via a SearchVector of author, title, & file_name fields.
* Ebook Downloading
* Collections

## Currently Supported Formats
* epub
* mobi


## 0.6.0 Patch Notes.
# New Features
* .mobi Yep mobis are now a thing!
* Result set ordering
    * You can now choose to order your results:
        * Title
        * Author
        * Categories
        * & Tags
* Reworked UI/UX
    * More intuitive, less intrusive, & stays out of the way. <i>caveat: I need to rework the placement of the next & previous page controls. While they do remain usable, I intend to have them follow the users</i>
        position on the page in future releases.

![pyShelf 0.6.0 navbar](https://github.com/th3r00t/pyShelf/raw/development/src/interface/static/img/navbar.png)

* New controls
    * Sort
    * Ascending / Descending result set
    * Display of the result set count, and your current position in the set.
    * A pop over layer to hold things like
        * [ ] User login
        * [ ] Control panel
        * [ ] Book details
        * Whatever else :)
## Installation Example
<a href="https://vimeo.com/382292764" target="_blank">pyShelf Installation Video</a>

## Further Installation & Support Information
* [SUPPORT.md](https://github.com/th3r00t/pyShelf/blob/development/.github/SUPPORT.md)

### Pre-req Dependencies
* gcc -- This will be installed by the new pre-installer script if its binary is not detected at /usr/bin/gcc
Users on distros other then Arch should install gcc via their systems package manager prior to
running the installer.
* Python3
* pip

# Installation
This project is currently targeted towards Network Administrators, and other home
enthusiasts whom I assume will know how to setup a Django app, and a
Postgres server.

Once your environment is ready very little is required to get the system up and running
* From the main directory
    * setup configurations as discussed in [SUPPORT.md](https://github.com/th3r00t/pyShelf/blob/development/.github/SUPPORT.md)
    * `pip install -r requirments.txt`
    * `cd src`
    * `python manage.py migrate`
    * `cd ..`
    * `./importbooks`
    * `./makecollections`
* Browse to the site as defined in your apache | nginx config

## Included installer
<a href="https://vimeo.com/382292764" target="_blank">pyShelf Installation Video</a>

The installer will only run correctly on arch based distros. This could be
easily rectified to include other package managers, Members of the community
are welcome to dig into the installer source and patch in support
for other package managers.

There is some support for detection of the aptitude package manager
installation already present in the source now, however it is not complete and
should not be relied upon to be present in future releases unless completed by
a member of the community,

The installer will walk you through all the configurations required by pyShelf to
run if you are running on Arch linux.

## Further Installation & Support Information
* [SUPPORT.md](https://github.com/th3r00t/pyShelf/blob/development/.github/SUPPORT.md)

## Development

* [`pre-commit`](https://pre-commit.com/)
_Before developing, run `pre-commit install` See the [documentation](https://pre-commit.com/) for more information._

* ['Doxygen'](http://www.doxygen.nl/)
_Any changes to source should be documented and have run doxygen doxygen.conf prior to commiting._

* ['sem-ver'](https://semver.org)
_Before advancing version numbers be sure to set PROJECT_NUMBER in doxygen.conf accordingly._

## Configuration

All configuration is now handled by the installer.

Running via the Django test server might be possible, albeit not recomended.

### In Progress

#### Organizational tools.
- [x] Automated Collections
- [ ] Manual Collections
- [ ] Books Removal
- [ ] Access Restrictions
- [ ] Metadata Manipulation
- [ ] Others?
#### Improved cover image storage, and acquisition.
#### OPDS Support
#### Support for other formats
- [x] .mobi
- [ ] .pdf
- [ ] .cbz
- [ ] .zip (Zipped book folders, is this a new idea? (Consider storing your library folders zipped and retrieving a book on demand))

### Future Goals
#### Terminal Backend for catalogue maintenance
#### Calculate page count from total characters
  * (Thanks to @Fireblend for the idea) https://github.com/th3r00t/pyShelf/issues/3
