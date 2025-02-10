---
author: "Kat Morgan"
title: "Kubernetes VMWare Replacement: Building simplicity with modern technology."
description: "What to do when VMWare needs replaced. Making a case for Kubernetes"
thumbnail: /images/k8s-bare-metal-vmware-replacement.png
date: 2025-02-09
draft: true
tags:
  [
    "Kubevirt",
    "Kubernetes",
    "Platform Engineering",
    "Bare Metal",
    "Opinion",
    "DevOps",
    "VMWare",
    "K8s",
  ]
---

"[...your scientists were so preoccupied with whether or not they could, they didn't stop to think if they should.](https://jurassicpark.fandom.com/wiki/Quote:Ian_Malcolm)"
<br>
— <cite>Dr. Ian Malcolm (Jeff Goldblum) from Jurassic Park[^1]</cite>

Building simple technology is a challenging prospect. Evolutions in tech are often cyclical, and stories of innovation today shamelessly echo plot arcs of the past, forming a long tradition back to the mid century generation of early operating system and compiler architectures. Without over-complicating the story, let's explore Kubernetes as a path to making technology simple.

Commercial and enterprise industry appetites for new functions, features, and interfaces drive innovators to build next years biggest hits on top of last years hottest trends. However, the hidden cost of hype driven development is organizational entrapment by technical complexity. Year after year, this cycle has expanded both the scope of what technology can do, and also the cost of doing anything with modern tech at all. Case in point, I have seen public projects deploying basic Wordpress blog site at an infrastructure cost of $38K+ a month and infinitely more in original outlay time and money to build.

> "The hidden cost of hype driven development is entrapment by technical complexity." — <cite>Kat Morgan[^2]</cite>

With every successful tooling abstraction adopted at scale, a more complex future of more abstractions built on top of yet more abstractions looms darkly over the horizon of every ambitious simplification dream.

[Dendrachronology](https://climate.nasa.gov/news/2540/tree-rings-provide-snapshots-of-earths-past-climate/#:~:text=These%20rings%20can%20tell%20us,the%20late%20summer%20and%20fall.) is the scientific study of historical ecological data recorded in tree rings that form as distinctive patterns of annual growth and capture indicators of climate and environmental conditions throughout a tree's life.

Similar to the study of tree rings, a record of individual enterprises can also also emerge in the tech stacks that build each generation of hardware, compute orchestration, and frameworks used in an organization across decades of projects, forming an almost tree ring like chronology of the organization's technical evolution history where each era of technical growth or modernization becomes it's own distinct and permanent layer of the organization as a whole.

Under the grueling pressure of short term business deliverables, "technical dendrachronology" often forms from the accidental permanence of each adopted technology. Innovation can quietly transform forward progress into technical debt landmines among adopters, marrying a business model to technical decisions made in the serenity of simpler organizational states in the company's past. A step towards needlessly impeding future growth and competitiveness, and threatening the corporate survival as a once necessary technology transforms into a benign obligation and an artificial anchor of obsolescence. In the worst cases, requiring a radical corporate makeover to remediate when the best technology paradigm should instead make tech changes as easy as replacing batteries in a remote.

<!--more-->

## The Cloud: Dragging us into ... the future?

"Cloud Computing" represents a revolutionary influence on the tech landscape as a whole. Forming a scafold of architecture constructs adopted at such scale that hyperscale vendors and their customers now dictate the development cycle and the return on investment (RoI) models for the entire tech world around the globe.

The CNCF alone now has over 200 projects in the sandbox, incubating, or graduated stages of maturity, with growth trends still agressively accelerating the full scope and complexity of open source compute architecture domains beyond the capacity of many small and medium sized organizations to keep up, without even considering the scope of cloud compute vendor complexities and the inevitable cross-vendor architectures further comlicating effective architecture simplification and cost efficiency.

Invariably, the profit motive of big tech at this time no-longer motivated to compete against on-premise innovation but instead to optimize the monitization of entire industries largely locked into legacy cloud vendor features, and easily baited into yet more vendor dependence as resume building tech transformations and emerging features relentlessly continue to encapsulate organizations into the gilded cages of vendor lock-in.

Consequently, small and medium organizations, science, and academia are often left choosing between dusty legacy tech stacks and affordable labor supply, or betting the farm on highly complex and expensive emerging cloud solutions and locking into highly competitive labor requirements in the hope of surviving the unpredictable winds of change at the risk of a more nimble competitor swooping in on hotter tech trends and stealing market share.

### Virtual Machines: Classic tech in a cloud native world.

Hypervisor and container orchestration layers run the modern world. From IBM's first mainframe virtual machines in the '60s to the first public cloud hypervisors in the 2000s, hypervisors have been an indespensible backbone of the most modern and efficient computing infrastructure, allowing for the safe and efficient scheduling of discrete application architectures across shared physical resources in the form of logically isolated virtualized hardware, encapsulated as application containers, or both, sometimes even multiple layers deep.

Type-1 hypervisors include Hyper-V, VMware ESXi, Nutanix, and Xen. My favorite, KVM or "Kernel-based Virtual Machine" is the most ubiquitous on Linux systems today and powers many VM platforms including OpenStack, KubeVirt, Firecracker, Libvirt, Proxmox, and more.

![KVM](/images/wikipedia-kernel-based-virtual-machine.svg)

Hypervisor projects like VMWare and KVM set the stage for the invention of cloud computing, but lessons were learned the hard way after many generations of different orchestration tooling creaked and groaned as time wore on and codebases grew impossibly complex to operate let alone maintain and develop to support hyperscaling compute and storage to the modern footprint today.

Most notably, the battle for cloud independence started in earnest with a joint [project between NASA and Rackspace](https://www.nasa.gov/technology/tech-transfer-spinoffs/in-cloud-computing-open-source-becomes-big-business/) to create the OpenStack project in 2010. With it's many contributions to commercial, enterprise, and even scientific success (Openstack is famously used by CERN to power the Large Hadron Collider), next to it's stated objectives and ambition to save customers from Amazon and other cloud vendor lockin, the OpenStack project has fared much less competitively than hoped.

## Kubernetes Repatriation: A path to freedom, born from the cloud.

Enter Kubernetes. Built at Google to enable innovation at the largest scales and velocity of the time, K8s was released and opensourced in 2014 with a feature not seen before in an opensource and enterprise production capable compute platform.

Kubernetes has a programmable API, allowing the platform itself to be customized, extended, and consumable in unique paradigms via "Custom Resource Definitions" or CRDs.

In my estimation, the CRD is the most compelling feature of any cloud platform. Even if I live to see a post Kubernetes world, I will be surprised to see any replacement to Kubernetes gain the same level of adoption and success unless it can also offer at least as much flexibility and extensibility via custom programmable interfaces and state drived reconciliation.

## KubeVirt: Virtual Machines on Kubernetes.

Kubevirt, [released in 2017](https://kubevirt.io/user-guide/release_notes/#v002), offers traditional Virtual Machines on Kubernetes.

I came across the idea of VMs on k8s in 2018 in my docker containers and Kubernetes learning journey after working in the trenches supporting OpenStack and Ubuntu Linux as a member of Canonical's US support team.

As an affictionado of modeling production enterprise architectures in my homelab I was eager to move off of the imparatively driven OpenStack and LXD conttainer stack I had become proficient with and into a declarative and state based orchestration platform.

Speaking from experience, Kubernetes can be complex to learn and operate. However, it can also be simple to utilize and iterate on once the baseline for production success is met, unlike OpenStack and other compute orchestration tools predating the k8s model.

As a platform, k8s offers a single api for maintaining Virtual Machine, Container, WASM, and Function as a Service workloads on a common platform, all buildable and operated with the same tooling and interfaces, making it the most universal skillset from a Platform Engineering prospective.

Kubevirt is not only an emerging technology, it is also the foundation of many hyperscale public cloud offerings today and used at scale in critical environments including Telcom, NASA, FinTech, Public Sector, FAANG, Microsoft Azure, and more.

## ContainerCraft Kargo: A bare metal KubeVirt alternative.

Enter [ContainerCraft Kargo](https://github.com/containercraft/kargo).

Since first achieving success deploying Kubevirt in my own environment I've become an avid advocate for Kubernetes as the optimal path to Virtual Machines and hyperconverged compute platforms.

When built well, the Kubernetes platform and automation to build and maintain it can make for an extremely simple operations layer with the benefit of supporting almost all workload types in the industry today.

That still leaves a glaring problem. How do you build such an ambitious platform well, with kubernetes, on bare metal, and preserve the objective of easy compute platform use and operations?

Kargo is a project to develop a production ready, enterprise and regulated industry capable, bare metal platform using the most modern enterprise grade DevOps and GitOps tooling and practices available today.

Most importantly, Kargo development is exclusively dedicated to delivering all technical scope with the easiest and simplest user experience and developer experience possible.

Kargo represents my 5th architecture of the same goal. From my first MaaS + Juju + OpenStack architecture automation in 2016 automated in almost exclusively bash scripts, to my shift into the Red Hat and OpenShift ecosystem, to vanilla k8s deployed with te Ansible KubeSpray project, my own bespoke k3s and microk8s automation, and finally the present day and long term foundation of Kargo architecture built on the API driven Talos Linux Kubernetes OS built by Sidero Labs, Kubevirt for Virtual Machines, CEPH for the storage layer provided by Rook, Cilium and Multus for the networking layer, and currently orchestrated in Infrastructure as Code written in Pulumi Python for a dynamic config driven declarative platform deployment and operation.

## Conclusion

From a historical perspective, KubeVirt promises many advantages over traditional private and public virtual machine product offerings to meet many current and future compute needs.

KubeVirt and it's current implementation is not without many opportunities to improve but taken as a whole and compared as apples to oranges among it's peers, KubeVirt offers the advantages of Kubernetes for meeting and exceeding the operational efficiency and reliability of more primitary and or proprietary virtualization offerings.

---

### References

[^1]: Quote from [Dr. Ian Malcolm](https://jurassicpark.fandom.com/wiki/Quote:Ian_Malcolm) from [Jurassic Park](https://jurassicpark.fandom.com/wiki/Quote:Ian_Malcolm).
[^2]: Quote from [Kat Morgan](https://github.com/usrbinkat)
