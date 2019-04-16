# /bin/bash
base=ark:/99999/fk4
proxy=https://digital.ucdavis.edu/
cols=success:_target:erc.who:erc.what
ezid --base=${base} mint --proxy=${proxy} --csv=${cols} erc.who:"$1" erc.what:"$2"
