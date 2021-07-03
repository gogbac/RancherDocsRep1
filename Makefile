#! /bin/sh

# usage
[ $# -ge 1 ] || echo "usage $(basename $0) <output-format>" 2>&1

# setup
DC=DC-TRD-Kubernetes-RA

[ $# -gt 0 ]

for focus in Rancher K3s RKE1 RKE2
  do

    for layerOS in SLEMicro SLES
      do

	# Getting Started
	  template=GS
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

	# Reference Implementation
	  #for layerK8s in K3s RKE1 RKE2
	  for layerK8s in K3s
	    do

	  	template=RI
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
	    done


	# Reference Configuration
	  #for partner in Ampere Cisco DELL Fujitsu HPE HPI IBM Lenovo Supermicro-SuperServer
	  for partner in Cisco DELL HPE Supermicro
	    do

	  	template=RC
		# append platform model
			#HPE) ARG="Apollo Edgeline Proliant Synergy" ;;
		case ${partner} in

			Cisco) ARG="C240-SD" ;;
			DELL) ARG="PowerEdge" ;;
			HPE) ARG="ProLiant Synergy" ;;
			Supermicro) ARG="SuperServer" ;;
			*) break ;;
		esac
		for adocARG in ${ARG}
		  do
			if [ "${focus}" = "Rancher" ]
			  then
				output=${template}-${focus}-${layerK8s}-${layerOS}-${partner}-${adocARG} && echo ${output}
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
					--adocattr="IHV-${partner}-${adocARG}=1@" \
					$@ \
					--name "${output}"
			  else
				output=${template}-${focus}-${layerOS}-${partner}-${adocARG} && echo ${output}
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
					--adocattr="IHV-${partner}-${adocARG}=1@" \
					$@ \
					--name "${output}"
			fi
		  done
	    done

      done
  done
