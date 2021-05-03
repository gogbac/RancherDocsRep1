# RancherDocsRep1

Content:
- Rancher (refer to [DC-RA-Rancher](./DC-RA-Rancher) for a general DAPS configuration template)
  - Getting Started [GS-Rancher_color_draft_en.pdf](./example/GS-Rancher_color_draft_en.pdf)
    - simplified deployment for a PoC or just to try functionality
  - Reference Implementation [RI-Rancher_color_draft_en.pdf](./example/RI-Rancher_color_draft_en.pdf)
    - stacked deployment of SUSE components as a basis for production
  - Reference Configuration [RC-Rancher_color_draft_en.pdf](./example/RC-Rancher_color_draft_en.pdf)
    - incorporate partner offerings with SUSE components for a more complete solution
- Next Up - RKE (WIP)

Output Creation:

- Assumptions
  - review tutorial - https://github.com/bwgartner/AsciiDoc-to-DAPS
  - install DocBook Authoring and Publishing Suite DAPS ( https://github.com/openSUSE/daps )
  - the overall template is based upon the RA flavor of Solution Architecture template ( https://github.com/bwgartner/SA-template )
- Process
  - git clone this repo (and either regularly fetch/pull to stay current)
  - change directory to the local path where the content resides
  - determine which type of document to generate ![TechnicalRefDocsVennDiagram](./media/src/png/TechnicalRefDocsVennDiagram.png)
    - Getting Started (GS)
    - Reference Implmentation (RI)
    - Reference Configuration (RC) ... citing this example for the remainder
  - copy (and/or) hard link the DAPS configuration file to an appropriate name
    - e.g. ln DC-RA-Rancher DC-RC-Rancher
    - to create an output format that has the associated naming (e.g. RC-Rancher.suffix)
  - edit the new, respective DAPS configuration file
    - uncomment the desire document type
      - ADOC_ATTRIBUTES+=" --attribute RC=1"
    - for an RC variant, you will likely also need to adjust inclusion of partner attributes (ISV, IHV, CSP)
      - e.g. 
        - ADOC_ATTRIBUTES+=" --attribute iIHV=1"
        - ADOC_ATTRIBUTES+=" --attribute IHV-HPE=1"
        - ADOC_ATTRIBUTES+=" --attribute IHV-HPE-Synergy=1"
  - generate the desired output format (assume you already have 
    - NOTE: address any syntax issues until a successful build happens
    - daps --force -d DC-RC-Rancher epub
    - daps --force -d DC-RC-Rancher html
    - daps --force -d DC-RC-Rancher html --single
    - daps --force -d DC-RC-Rancher pdf
    - look in the generated ./build/ directory mentioned in the CLI standard output
	

