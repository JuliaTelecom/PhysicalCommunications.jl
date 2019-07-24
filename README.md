# PhysicalCommunications.jl

[![Build Status](https://travis-ci.org/ma-laforge/PhysicalCommunications.jl.svg?branch=master)](https://travis-ci.org/ma-laforge/PhysicalCommunications.jl)

## Description

PhysicalCommunications.jl provides tools for the development & test of the physical communication layer (typically implemented in the "PHY" chip).

### Eye Diagrams

| <img src="https://github.com/ma-laforge/FileRepo/blob/master/SignalProcessing/sampleplots/demo7.png" width="850"> |
| :---: |

  - **`buildeye`**`()`: Builds an eye diagram by folding `x` values of provided `(x,y)` into multiple windows of `teye` that start (are "triggered") every `tbit`:
    - `buildeye(x::Vector, y::Vector, tbit::Number, teye::Number; tstart::Number=0)`

Example plotting with Plots.jl:
```
#Assumption: (x, y) data generated here.
tbit = 1e-9 #Assume data bit period is 1ns.

#Build eye & use tstart to center data.
eye = buildeye(x, y, tbit, 2.0*tbit, tstart=0.2*tbit)

plot(eye.vx, eye.vy)
```

## Compatibility

Extensive compatibility testing of PhysicalCommunications.jl has not been performed.  The module has been tested using the following environment(s):

- Linux / Julia-1.1.1

## Disclaimer

The PhysicalCommunications.jl module is not yet mature.  Expect significant changes.
