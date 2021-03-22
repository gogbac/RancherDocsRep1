
# Example outputs
Using this template to generate variants of a solution architecture in a documentation-as-code approach.

# HowTo / Quick Start
- Review [../ReadMe.md](../ReadMe.md)
  - at Validation step
    - Targeting "Default" structure ... classic book - chapter - section - sub-section
      - run "daps --force -d DC-SA pdf"
        - will generate an output file like [SA_color_draft_en.pdf](./SA_color_draft_en.pdf) in the "./build/SA/" directory
    - Switch structure ... targeting Reference Architecture
      - copy [DC-SA](../DC-SA) to DC-SA-RA
      - edit DC-SA-RA
        - uncomment line ... ADOC_ATTRIBUTES+=" --attribute RA=1"
      - run "daps --force -d DC-SA-RA pdf"
        - will generate an output file like [SA-RA_color_draft_en.pdf](./SA-RA_color_draft_en.pdf) in the "./build/SA-RA/" directory
    - Switch structure ... targeting Enterprise Architecture
      - copy [DC-SA](../DC-SA) to DC-SA-EA
      - edit DC-SA-EA
        - uncomment line ... ADOC_ATTRIBUTES+=" --attribute EA=1"
      - run "daps --force -d DC-SA-EA pdf"
        - will generate an output file like [SA-EA_color_draft_en.pdf](./SA-EA_color_draft_en.pdf) in the "./build/SA-EA/" directory
