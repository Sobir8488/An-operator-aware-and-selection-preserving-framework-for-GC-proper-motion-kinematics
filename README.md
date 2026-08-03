DOI: 10.5281/zenodo.21770858
# OPERA-GC v1.1.0

**OPERA-GC: An operator-aware and selection-preserving framework for heterogeneous globular-cluster proper-motion kinematics**

OPERA-GC is a reproducible Python framework for preserving the observational
operator when heterogeneous globular-cluster proper-motion products are
analysed together. The release records selection, radial support, weighting,
covariance, reference frame, nuisance structure, provenance, validation gates,
and permitted scientific claims.

## Release contents

- `article/` — polished preprint, LaTeX source, bibliography, vector figures,
  figure-source tables, and graphical abstract.
- `software/stage_packages/` — the latest validated executable package for each
  production stage from Stage 0 through Stage 2F.
- `results/frozen_outputs/` — exact user-generated or reconciled output archives
  used for the reported manuscript numbers.
- `reproducibility/` — claim ledger, manuscript metrics, Windows benchmark,
  validation record, stage matrix, and provenance notes.
- `metadata/` — Zenodo-ready metadata, DOI-reservation workflow, and upload form.
- `licenses/` — the proposed mixed-license policy and third-party notices.
- `SHA256SUMS.txt` and `MANIFEST.csv` — release-wide integrity records.

## Scientific scope

The validated implementation covers heterogeneous HST and Gaia proper-motion
operators. It does not claim validation for spectroscopy, integrated-light
kinematics, joint gravitational-potential inference, rotation from relative HST
member means, or compact-object inference.

The NGC 6397 benchmark contains 15,107 HST proper-motion sources, 93.47% valid
preferred F814W photometry, 215 unique mutual HST–Gaia matches, and 324
predeclared selection variants. All 324 variants pass the published-profile
consistency gate, while the exact published 617-star source manifest remains
unavailable from the public metadata.

## Quick verification

```bash
python scripts/verify_release.py
```

## Reproduction

Each stage package contains its own README, environment specification, tests,
and Windows command file. Execute stages in numerical order. The frozen output
archives are the reference products used by the manuscript; reruns should agree
within the recorded floating-point/optimizer tolerances.

## Citation

Use `CITATION.cff`. The exact-version Zenodo DOI is **pending reservation**.
After reserving it, run:

```bash
python scripts/finalize_reserved_doi.py 10.5281/zenodo.XXXXXXXX
```

Then rebuild the checksum ledger and release ZIP as described in
`metadata/ZENODO_UPLOAD_CHECKLIST.md`.

## Data provenance

HACKS source products remain attributable to DOI `10.17909/jpfd-2m08`.
The Gaia EDR3 globular-cluster release remains attributable to DOI
`10.5281/zenodo.4891252`. Third-party products are not relicensed by OPERA-GC.

## License status

The package is prepared for a mixed-license release: MIT for original software
and CC BY 4.0 for original documentation, figures, and derived tables. The
three authors must confirm this policy before Zenodo publication. Third-party
materials retain their original terms; see `licenses/THIRD_PARTY_NOTICES.md`.
