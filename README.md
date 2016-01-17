The ENSIME consolidated documentation.

To run / test locally, install [jekyll](http://jekyllrb.com/docs/installation/) (used the same version as [github pages](https://pages.github.com/versions/)) and then type:

```
jekyll build ; jekyll serve
```

To update the base theme:

```
git remote add hyde git@github.com:poole/hyde.git
git fetch hyde
git merge hyde master
```

