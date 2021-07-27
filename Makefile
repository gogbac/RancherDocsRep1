#! /bin/sh

# usage
[ $# -ge 1 ] || {
echo "Usage : $(basename $0) <output-format>" 2>&1
  echo -e "\twhere output-format options are" 2>&1
  echo -e "\t\tepub" 2>&1
  echo -e "\t\thtml" 2>&1
  echo -e "\t\thtml --single" 2>&1
  echo -e "\t\tpdf" 2>&1
  exit 1
}

# setup
#
  # utilize DAPS Configuration file)
  DC=DC-TRD-Kubernetes-RA

  # default string listings (for document variations)
  trdTemplate="GS RI RC"
  trdFocus="Rancher K3s RKE1 RKE2"
  trdLayerOS="SLEMicro SLES"
  trdLayerK8s="K3s"
  trdIHVPartner="Cisco DELL Fujitsu HPE Supermicro"
    trdIHVCiscoPlatform="C240-SD"
    trdIHVDELLPlatform="PowerEdge"
    trdIHVFujitsuPlatform="PRIMERGY"
    trdIHVHPEPlatform="ProLiant Synergy"
    trdIHVSupermicroPlatform="SuperServer"

  # limit/override above values with locally sourced string lists
  [ -e ./Makefile.cf ] && source ./Makefile.cf

[ -n "${trdTemplate}" ] && for template in ${trdTemplate}
  do

    [ -n "${trdFocus}" ] && for focus in ${trdFocus}
      do

        [ -n "${trdLayerOS}" ] && for layerOS in ${trdLayerOS}
          do

	    # Getting Started
	      [ "${template}" = "GS" ] && {

		output=${template}-${focus}-${layerOS} && echo ${output}
		daps --force -d ${DC} \
		  --adocattr="${template}=1@" \
		  --adocattr="focus${focus}=1@" \
		  --adocattr="layer${layerOS}=1@" \
		  --adocattr="FLVR=1@" \
		  --adocattr="PoC=1@" \
		  --adocattr="Production=1@" \
		  --adocattr="Scaling=1@" \
		  --adocattr="FCTR=1@" \
		  --adocattr="Availability=1@" \
		  --adocattr="Security=1@" \
		  $@ \
		  --name "${output}"

	      }

	    # Reference Implementation
	      [ -n "${trdLayerK8s}" ] && for layerK8s in ${trdLayerK8s}
	        do
		  [ "${template}" = "RI" ] && {

		    if [ "${focus}" = "Rancher" ]
		      then

	  		output=${template}-${focus}-${layerK8s}-${layerOS} && echo ${output}
			daps --force -d ${DC} \
			  --adocattr="${template}=1@" \
			  --adocattr="focus${focus}=1@" \
			  --adocattr="layer${layerK8s}=1@" \
			  --adocattr="layer${layerOS}=1@" \
			  --adocattr="FLVR=1@" \
			  --adocattr="PoC=1@" \
			  --adocattr="Production=1@" \
			  --adocattr="Scaling=1@" \
			  --adocattr="FCTR=1@" \
			  --adocattr="Automation=1@" \
			  --adocattr="Availability=1@" \
			  --adocattr="Security=1@" \
			  --adocattr="Integrity=1@" \
			  $@ \
			  --name "${output}"

		      else

	  		output=${template}-${focus}-${layerOS} && echo ${output}
			daps --force -d ${DC} \
			  --adocattr="${template}=1@" \
			  --adocattr="focus${focus}=1@" \
			  --adocattr="layer${layerOS}=1@" \
			  --adocattr="FLVR=1@" \
			  --adocattr="PoC=1@" \
			  --adocattr="Production=1@" \
			  --adocattr="Scaling=1@" \
			  --adocattr="FCTR=1@" \
			  --adocattr="Automation=1@" \
			  --adocattr="Availability=1@" \
			  --adocattr="Security=1@" \
			  --adocattr="Integrity=1@" \
			  $@ \
			  --name "${output}"

		    fi

		  }
		done


	    # Reference Configuration
	      [ -n "${trdIHVPartner}" ] && for partner in ${trdIHVPartner}
		do
		  [ "${template}" = "RC" ] && {

		    case ${partner} in

		      Cisco) PL="${trdIHVCiscoPlatform}" ;;
		      DELL) PL="${trdIHVDELLPlatform}" ;;
		      Fujitsu) PL="${trdIHVFujitsuPlatform}" ;;
		      HPE) PL="${trdIHVHPEPlatform}" ;;
		      Supermicro) PL="${trdIHVSupermicroPlatform}" ;;
		      *) break ;;

		    esac

		    [ -n "${PL}" ] && {
		      for productline in ${PL}
		        do
			  if [ "${focus}" = "Rancher" ]
			    then

			      output=${template}-${focus}-${layerK8s}-${layerOS}-${partner}-${productline} && echo ${output}
			      daps --force -d ${DC} \
			        --adocattr="${template}=1@" \
			        --adocattr="focus${focus}=1@" \
			        --adocattr="layer${layerK8s}=1@" \
			        --adocattr="layer${layerOS}=1@" \
			        --adocattr="FLVR=1@" \
			        --adocattr="PoC=1@" \
			        --adocattr="Production=1@" \
			        --adocattr="Scaling=1@" \
			        --adocattr="FCTR=1@" \
			        --adocattr="Automation=1@" \
			        --adocattr="Availability=1@" \
			        --adocattr="Security=1@" \
			        --adocattr="Integrity=1@" \
			        --adocattr="iIHV=1@" \
			        --adocattr="IHV-${partner}=1@" \
			        --adocattr="IHV-${partner}-${productline}=1@" \
			        $@ \
			        --name "${output}"

			    else

			      output=${template}-${focus}-${layerOS}-${partner}-${productline} && echo ${output}
			      daps --force -d ${DC} \
			        --adocattr="${template}=1@" \
			        --adocattr="focus${focus}=1@" \
			        --adocattr="layer${layerOS}=1@" \
			        --adocattr="FLVR=1@" \
			        --adocattr="PoC=1@" \
			        --adocattr="Production=1@" \
			        --adocattr="Scaling=1@" \
			        --adocattr="FCTR=1@" \
			        --adocattr="Automation=1@" \
			        --adocattr="Availability=1@" \
			        --adocattr="Security=1@" \
			        --adocattr="Integrity=1@" \
			        --adocattr="iIHV=1@" \
			        --adocattr="IHV-${partner}=1@" \
			        --adocattr="IHV-${partner}-${productline}=1@" \
			        $@ \
			        --name "${output}"

			  fi
		      done
		    }
		  }
		done
          done
      done
  done
