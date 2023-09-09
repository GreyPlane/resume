# GreyPlane's resume

This is my resume, based on [this template](https://github.com/billryan/resume).
There's a [Haskell script](Resume.hs) to generate the TeX source files.

# Build

To build this resume, install texlive-full and GHC toolchain first.<br/>
Then:

```bash
# Generate the TeX files
runghc Resume.hs en >> latex/resume.tex
runghc Resume.hs cn >> latex/resume-cn.tex
runghc Resume.hs elab >> latex/resume-elab.tex

# Build the TeX files
cd latex
make
cp *.pdf ..
cd ..
```

# Download/下载

+ [English (pdf)](./resume.pdf)
+ [中文版 (pdf)](./resume-cn.pdf)

