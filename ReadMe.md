
# Purpose
An example template of files for variants of a solution architecture in a documentation-as-code approach ... [video](./media/src/mp4/purpose.mp4)

# Assumption(s)
The provided content leverages several technologies ... [video](./media/src/mp4/assumptions.mp4)
- The text-based structure/format is in AsciiDoc ( https://github.com/asciidoc/asciidoc ) format (see/edit \*.adoc files) and can review a simple tutorial ( https://github.com/bwgartner/AsciiDoc-to-DAPS)
  - the default structure is generic e.g. classic book - chapter - section - sub-section
    - other variations are also available ... [video](./media/src/mp4/variations.mp4)
      - Enterprise Architecture - [ReadMe-EA.md](./ReadMe-EA.md)
      - Reference Architecture - [ReadMe-RA.md](./ReadMe-RA.md)
  - much of the sample text placeholder content is from the generic [Loremipsum]( https://loremipsum.io/ ) generator, so this is where you substitute your content.
    - many templates also have built-in comments to help express what aspects to cover
    - NOTE: focus on anything that cites "FixMe"
- To create any number of multiple output formats, install and leverage DAPS ( https://github.com/openSUSE/daps )
  - html, single-html, pdf, epub

# Validation
These quickstart steps validate you have what is needed to begin your content iterations  ... [video](./media/src/mp4/validation.mp4)
- Obtain this document's template content
  - git clone "ThisGitHubRepoURL" (to make a local copy)
  - download either master (zip) or the latest release (zip/tar.gz), then unpack it
  - cd to your local directory where it landed and was uncompressed
- Test that you have all the tooling in place to generate an output
  - e.g. daps --force -d DC-SA html
  - test with a web browser, open the file:///localDirectoryName/build/SA/html/SA_draft/index.html
- Review [examples](./examples) to create and view some sample outputs

# Usage / Process
Elaborating a bit further, to highlight the modular aspects of the various template artifacts and how to use them.
- At this point, you can now start editing the configuration/structure/content to meet your needs
  - NOTE: every portion of text that cites "FixMe" is a flag to encourage modification
  - in the top-level directory
    - for the default configuration/structure (chapter/section/sub-section)
      - review/edit the DAPS configuration file [DC-SA](./DC-SA) ... [video](./media/src/mp4/DC-SA.mp4)
        - NOTE: if you prefer to have a more specific output file name, copy [DC-SA](./DC-SA) to DC-YourPreferredOutput (and use that name change for any of the following "DC" references)
        - comment out any ADOC_ATTRIBUTES line to skip that respective section
        - uncomment any ADOC_ATTRIBUTES lines and set the value to 1 to include the respective content
  - in the main "adoc" directory
    - review/edit the [adoc/SA.adoc](./adoc/SA.adoc) main file that pulls in the selected sections ... [video](./media/src/mp4/SA.mp4)
      - if the respective ADOC_ATTRIBUTES value is set (value = 1 and uncommented) in the [DC-SA](./DC-SA) file, then the conditional "ifdef" will include that content in the output
      - if you need fewer chapters, feel free to comment out the extra "include" of chapters 2 (ii) - 7 (vii)
    - review/edit the [adoc/SA_vars.adoc](./adoc/SA_vars.adoc) file to change global variable settings ... [video](./media/src/mp4/SA_vars.mp4)
      - useCase
      - companyName
      - title (relative to your attribute setting)
      - author information
      - github references
    - review/edit the general sections, that are generally included
      - [adoc/SA-Preface.adoc](./adoc/SA-Preface.adoc)
      - [adoc/SA-Summary.adoc](./adoc/SA-Summary.adoc)
    - review/edit the general sections, that your ADOC_ATTRIBUTES settings will include
      - [adoc/SA-References.adoc](./adoc/SA-References.adoc)
      - [adoc/SA-Appendix.adoc](./adoc/SA-Appendix.adoc)
  in the various chapter directories aka Roman numeral sequences
    - review/edit the chapter/section/sub-section content, that you wish to include
      - [adoc/i/SA.adoc](./adoc/i/SA.adoc) aka Introduction
      - [adoc/ii/SA.adoc](./adoc/ii/SA.adoc) ... [video](./media/src/mp4/snippets.mp4)
      - etc
  - as you edit the modular text content snippets, create an output format
    - daps --force -d DC-SA "format" ... [video](./media/src/mp4/format.mp4)
      - where format might be "pdf", "html", "html --single", "epub"
      - then review the output and continually iterate until you have your content complete
  - miscellaneous 
    - you can also add images/media content as needed in those subdirectories
    - do not forget to check in your iterations as well to have a source repository and ability to rollback to a known working state

# Feedback
- feel free to provide feedback, ask questions or even submit pull request
