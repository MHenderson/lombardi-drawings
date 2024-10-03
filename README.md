# lombardi-drawings

Code behind a blog post about the Lombardi Spirograph.

## Grötzsch graph

```
python LombardiSpirograph.py grotzsch > img/grotzsch.svg
```

![](img/grotzsch.svg)

## Grötzsch graph (with options)

```
python LombardiSpirograph.py \
    --scale=1.2 \
    --color=blue \
    --radius=0.8 \
    --outline \
    grotzsch > grotzsch_alt.svg
```

![](img/grotzsch_alt.svg)

## Icosahedron graph

```
python LombardiSpirograph.py 3-a01-01-1-a > img/icosahedron.svg
```

![](img/icosahedron.svg)
