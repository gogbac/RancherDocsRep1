#
# Makefile

# setup
DC=DC-TRD-Kubernetes-RA

# partner in Cisco DELL HPE Supermicro
partner=Fujitsu
ARG=PRIMERGY

#for focus in Rancher K3s RKE1 RKE2
focus=Rancher

# for layerOS in SLEMicro SLES
layerOS=SLES
layerK8s=K3s

# Template type
template=RC

# Output
output=${template}-${focus}-${layerK8s}-${layerOS}-${partner}-${ARG}

fujitsu:
	# Fujitsu Reference Configuration
	#for partner in Fujitsu
	# append platform model
	echo ${output}
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
		--adocattr="IHV-${partner}-${ARG}=1@" \
		pdf --name ${output}

## NOTE: There isn't a command-line arg:  -name <output>
##       So, how could this have worked?
##		pdf --name "${output}"

getting-started:
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

reference-implementation:
	# Reference Implementation
	  	template=RI
		if [ "${focus}" = "Rancher" ]
		  then
	  		output=${template}-${focus}-${layerK8s}-${layerOS} && echo ${output}
		  else
	  		output=${template}-${focus}-${layerOS} && echo ${output}
		fi
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

reference-configuration:
	# Reference Configuration
	  #for partner in Ampere Cisco DELL Fujitsu HPE HPI IBM Lenovo Supermicro-SuperServer
	  	template=RC
		# append platform model
		case ${partner} in
			Cisco) ARG="C240-SD" ;;
			DELL) ARG="PowerEdge" ;;
			HPE) ARG="ProLiant Synergy" ;;
			#HPE) ARG="Apollo Edgeline Proliant Synergy" ;;
			Supermicro) ARG="SuperServer" ;;
			fujitsu) ARG="PRIMERGY" ;;
			*) break ;;
		esac
		for adocARG in ${ARG}
		  do
			if [ "${focus}" = "Rancher" ]
			  then
				output=${template}-${focus}-${layerK8s}-${layerOS}-${partner}-${adocARG} && echo ${output}
			  else
				output=${template}-${focus}-${layerOS}-${partner}-${adocARG} && echo ${output}
			fi
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
		  done

