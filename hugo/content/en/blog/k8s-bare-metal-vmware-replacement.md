---
author: "Kat Morgan"
title: "Kubernetes VMware Replacement: Building Simplicity with Modern Technology"
description: "What to do when VMware needs replaced: Making a case for Kubernetes"
thumbnail: /images/jurrasic-park.jpg
date: 2025-02-09
draft: false
tags:
  [
    "Kubevirt",
    "Kubernetes",
    "Platform Engineering",
    "Bare Metal",
    "Opinion",
    "DevOps",
    "VMware",
    "K8s",
  ]
---

"[...your scientists were so preoccupied with whether or not they could, they didn't stop to think if they should.](https://jurassicpark.fandom.com/wiki/Quote:Ian_Malcolm)"
<br>
— <cite>Dr. Ian Malcolm (Jeff Goldblum) from Jurassic Park[^1]</cite>

Building simple technology is one of the most challenging endeavors in our industry. Technology evolution often follows cyclical patterns, with today's innovations echoing architectural decisions of the past—a tradition stretching back to the mid-century pioneers of operating systems and compiler design. Let's explore Kubernetes as a path toward simplification getting too lost in the details for this article.

The commercial and enterprise and other large sectors of industry constantly drive innovation forward. Practitioners pushing the envelope of the possible by building next year's breakthrough features on top of last year's trending technologies. However, this hype-driven development carries a hidden cost: organizational entrapment through technical complexity. This cycle has expanded not only the scope of what technology can accomplish but also the cost of implementing even basic solutions. Personally, I've witnessed public projects deploying simple WordPress blogs at infrastructure costs up to $38K per month in the public cloud, with even greater outlays in initial development time and resources.

> "The hidden cost of hype-driven development is entrapment by technical complexity." — <cite>Kat Morgan[^2]</cite>

Every successful tooling abstraction adopted at scale seems to herald a more complex future—one where abstractions are built upon yet more abstractions, casting a shadow over every ambitious attempt at simplification.

Consider [dendrochronology](https://climate.nasa.gov/news/2540/tree-rings-provide-snapshots-of-earths-past-climate/#:~:text=These%20rings%20can%20tell%20us,the%20late%20summer%20and%20fall.), the scientific study of tree rings that record historical ecological data through distinctive patterns of annual growth. Similarly, enterprises develop their own technological growth rings—layers of hardware, compute orchestration, and frameworks that accumulate across decades of projects. Each era of technical modernization becomes a permanent layer in the organization's architecture, forming what we might call "technical dendrochronology."

Under the relentless pressure of short-term business deliverables, this technical stratification often results from the unintended permanence of adopted technologies. Innovation necessary for progress can quietly transform into technical obsolescence, chaining business models to technology decisions made during simpler times in an organization's history. This transformation can be malignant at best, or prevent and impede necessary future growth and competitiveness, potentially threatening corporate survival as once-necessary technologies become costly obligations. In the worst cases, organizations require radical restructuring—when ideally, technology paradigms should make changes as simple as replacing batteries in a common tv remote.

## The Cloud: Evolution or Entrapment?

"Cloud Computing" has revolutionized the technology landscape, creating an architectural framework so pervasive that hyperscale vendors and their customers now dictate development cycles and return on investment (ROI) models for the global tech industry.

The Cloud Native Computing Foundation (CNCF) now maintains over 200 projects across various maturity stages, with growth trends accelerating beyond many organizations' capacity to adapt. This complexity multiplies when considering cross-vendor architectures and cloud-specific features, making effective architecture simplification and cost efficiency increasingly challenging.

The profit motives of major tech companies have shifted from competing against on-premise innovation to optimizing the monetization of industries already locked into legacy cloud vendor features. Organizations are easily enticed into deeper vendor dependence through resume-building tech transformations and emerging features that continue to encapsulate them in gilded cages of vendor lock-in.

Consequently, small and medium organizations, along with scientific and academic institutions, face a difficult choice: stick with dusty legacy tech stacks and an accessible talent pool, or risk the farm on complex, expensive cloud solutions with competitive labor requirements all while hoping the chosen strategy can survive unpredictable technology market disruption and the risk of higher agility from a more nimble competitor.

### Virtual Machines: Classic Technology in a Cloud Native World

Hypervisor and container orchestration layers form the backbone of modern computing and stretch back in origin to mid last century. From IBM's mainframe virtual machines in the 1960s to the first public cloud hypervisors in the 2000s, hypervisors have been indispensable for efficient computing infrastructure. They enable safe and efficient scheduling of discrete application architectures across shared physical resources through logically isolated virtualized hardware, application containers, even both in nested architectures.

Type-1 hypervisors include Hyper-V, VMware ESXi, Nutanix, and Xen. KVM (Kernel-based Virtual Machine), my preferred solution, dominates Linux systems today and powers numerous VM platforms including OpenStack, KubeVirt, Firecracker, Libvirt, Proxmox, and others.

![KVM](/images/wikipedia-kernel-based-virtual-machine.svg)

While hypervisor projects like VMware and KVM laid the groundwork for cloud computing, the industry learned hard lessons as orchestration tools grew increasingly complex and difficult to operate, maintain, and develop at scale.

The battle for cloud independence began in earnest with the [joint NASA-Rackspace initiative](https://www.nasa.gov/technology/tech-transfer-spinoffs/in-cloud-computing-open-source-becomes-big-business/) that created OpenStack in 2010. Despite its contributions to commercial, enterprise, and scientific computing (notably powering CERN's Large Hadron Collider), OpenStack has struggled to achieve its ambitious goal of freeing customers from cloud vendor lock-in.

## Kubernetes Repatriation: Cloud-Native Freedom

Enter Kubernetes. Developed at Google to enable innovation at unprecedented scale and velocity, K8s was open-sourced in 2014 with a groundbreaking feature: a programmable API that allows the platform to be customized and extended through Custom Resource Definitions (CRDs).

In my view, the CRD represents the most compelling feature of any cloud platform. Even in a post-Kubernetes world, I would be surprised to see any replacement achieve similar adoption and success without offering comparable flexibility and extensibility through programmable interfaces and state-driven reconciliation.

## KubeVirt: Virtual Machines on Kubernetes

KubeVirt, [released in 2017](https://kubevirt.io/user-guide/release_notes/#v002), brings traditional Virtual Machine capabilities to Kubernetes. I discovered this innovative approach to VMs on K8s in 2018 during my journey from supporting OpenStack and Ubuntu Linux at Canonical to exploring Docker containers and Kubernetes.

As someone passionate about modeling production enterprise architectures in my homelab, I eagerly transitioned from the imperative OpenStack and LXD container stack to a declarative, state-based orchestration platform.

While Kubernetes can be complex to learn and operate, it becomes remarkably simple to utilize and iterate upon once you establish a production baseline—unlike OpenStack and pre-K8s orchestration tools. Kubernetes offers a unified API for managing Virtual Machine, Container, WebAssembly, and Function-as-a-Service workloads on a common platform, all buildable and operated with consistent tooling and interfaces. This makes it the most universal skillset from a Platform Engineering perspective.

KubeVirt has evolved beyond emerging technology status to become the foundation for many hyperscale public cloud offerings, seeing production use in critical environments including Telecommunications, NASA, FinTech, Public Sector, FAANG companies, Microsoft Azure, and beyond.

## ContainerCraft Kargo: A Bare Metal KubeVirt Alternative

Enter [ContainerCraft Kargo](https://github.com/containercraft/kargo).

Since successfully deploying KubeVirt in my environment, I've become a persistent advocate for Kubernetes as an optimal platform for Virtual Machines and hyperconverged compute. When properly implemented, the Kubernetes platform and its automation framework can create an exceptionally simple operations layer while supporting virtually all modern workload types.

This raises a crucial question: How do you build such an ambitious platform effectively on bare metal while maintaining the goal of simple compute platform operations?

Kargo solves production ready, enterprise-grade bare metal platform delivery via opinionated implementation on the most modern tooling and practices. Most importantly, Kargo's development focuses exclusively on delivering technical capabilities with the simplest possible user and developer experience.

Kargo represents my fifth architecture iteration toward this goal, evolving from:

1. My first iteration with MaaS + Juju + OpenStack circa 2016 (primarily bash scripts)
2. A second iteration on the Red Hat and OpenShift ecosystem
3. Vanilla K8s deployed with the Ansible KubeSpray project
4. Bespoke K3s and MicroK8s automation
5. Finally, the current Kargo architecture in it's 5th generation, built on:
   - Talos Linux Kubernetes OS (by Sidero Labs)
   - KubeVirt for Virtual Machines
   - CEPH storage layer (via Rook)
   - Cilium and Multus networking
   - Infrastructure as Code in Pulumi Python for dynamic, config-driven declarative platform deployment

## Conclusion

From a historical perspective, KubeVirt offers compelling advantages over traditional private and public virtual machine solutions for current and future compute needs. While KubeVirt's implementation continues to evolve and improve, it leverages Kubernetes to meet and exceed the operational efficiency and reliability of more primitive or proprietary virtualization offerings.

Stay tuned for future posts. In an upcoming series, I'll demonstrate how Kargo makes KubeVirt and other kubernetes workloads easy to deploy and operate with a mature production ready integration of components and a simple Platform Engineering and DevOps experience.

Kargo is in active development, and is on a long journey to production readiness. For now it is incubated in the ContainerCraft community of practice for personal use and experimentation.

---

### References

[^1]: Quote from [Dr. Ian Malcolm](https://jurassicpark.fandom.com/wiki/Quote:Ian_Malcolm) from [Jurassic Park](https://jurassicpark.fandom.com/wiki/Quote:Ian_Malcolm).
[^2]: Quote from [Kat Morgan](https://github.com/usrbinkat)
