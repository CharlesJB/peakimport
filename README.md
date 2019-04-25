# peakimport

The goal of this package is to provide a function to easily import `narrowPeak`
and `broadPeak` files.  The rationale is that there is currently a
[bug](https://github.com/GuangchuangYu/ChIPseeker/pull/93) in the `r
Biocpkg("ChIPseeker")` package. When `narrowPeak` files are used, the 1st line
is used as an header. The first entry of the `narrowPeak` file is thus removed
from the analysis. The same problem is found with `broadPeak` files. Until the
bug is solved, it will be easier to load the `narrowPeak` and `broadPeak` files
using this package. The `import_peaks` function can also be used in other
context when `narrowPeak` and `broadPeak` files need to be imported.
