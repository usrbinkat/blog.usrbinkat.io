---
author: "Kat Morgan"
title: "🎈1yr Pulumi Anniversary!🎊"
description: "Events, Videos, Blogs, and Code! Celebrating a year of Pulumi DevRel!"
tags: ["iac", "tech", "blog", "devops", "gitops", "pulumi", "python", "opinion"]
date: 2024-06-21
thumbnail: /images/pulumi-waikiki.jpeg
published: true
---

From learning to code, content engineering, the rise of AI, Platform Engineering and beyond. So much learning, teaching, and creating. I want to talk about it so let's dive in!

"The art of teaching is the art of assisting discovery"
<br>
— <cite>Mark Van Dore [^1]</cite>

<!--more-->

## 🪅Year One of DevRel @ Pulumi!

[^1]: Quote from [Mark Van Dore](https://www.torontomu.ca/content/dam/centre-for-excellence-in-learning-and-teaching/FacultyInstructors/teaching-philosophies/ErinZieglerTeachingPhilosophy.pdf).

![July 26 2024 Kat Joins Pulumi!](/images/kat-joins-pulumi.png)

🎈 Yesterday was June 26th, and the anniversary of my first year at Pulumi! 🎈🎊

🔥 Oh, I will not apologize for emoji in my blogs [@ibuildthecloud](https://x.com/ibuildthecloud), get rekt... 😂

### 📖 Story Time

#### 🧐 What is Pulumi?

Pulumi is an ecosystem built from a fully Open Source Software (OSS) "Infrastructure as Code" (IaC) cloud orchestration tool that supports writing IaC in general purpose programming languages like Python, Go, TypeScript, and C#.

[Find out more on pulumi.com](https://www.pulumi.com/docs/concepts)

#### 💔 The problem of DevOps without Pulumi

My first time using Pulumi IaC was circa 2019. I was working at [Red Hat](https://www.redhat.com) at the time, and new on a team delivering [OpenShift](https://www.redhat.com/en/technologies/cloud-computing/openshift) and an [air-gap DevSecOps platform](https://p1.dso.mil) for the US Department of Defense Platform One initiative.

To accomplish our goal of a push-button platform provisioning automation, we assembled a stack of tools including Ansible, Terraform, Docker, OpenStack, Bash, and Python to accomodate our end-to-end requirements, at one point the project called [CodeSparta](https://codectl.io) developed entirely in the professional services consulting org was even referred to by RH Product Engineering as "a purpose built OpenShift installer".

Dockerfiles, bash, Ansible, Python, and Terraform add up to a large web of functionality spread across a dizzying array of tools, languages, and requires an unreasonably wide range of expertise to maintain and operate. As the lead developer and maintainer on the Sparta work, I discovered the limits of scaling the work to maintain and develop such an obscure and patchwork product across a larger team of engineers to be more challenging as the complexity continued to spiral out of control.

#### 💜 Why I like Pulumi IaC

Pulumi, was first shown to me by [Chris Kuperstein](https://www.linkedin.com/in/chris-kuperstein), a brilliant talent with the vision and goals of a leader. By comparison, Pulumi has in my experience, completely replaced most of that laundry list of tools, and proven far more capable and flexible besides.

I would go on to write a bit of Pulumi IaC while at Red Hat primarily for my own interest, before moving on to write many consulting engagements in Pulumi python, typescript, and golang while working as a consulting engineer at [Kong Inc](https://konghq.com), an API Ops company.

#### ⏱️ Once in a Lifetime

There are many DevRel opportunities in the tech industry. Among them are only a small few I would consider taking on myself. Pulumi specifically is a technology I was already convinced is the future of orchestration, and in keeping with a theme I adhere to at every opportunity, choose an architecture that eliminates the most tools from your stack.

> Choose an architecture that eliminates the most tools from your stack.
>
> - <cite>Kat Morgan</cite>

The conventional DevOps, Platform Engineering, and general operations tool belt has exploded in complexity and variety. With the greatest of intentions, organizations frequently make mistakes in ops architectures where features are bought and bolted on without a vision for simplification and velocity.

Pulumi's single greatest feature, is the ability to write arbitrary logic inline with your IaC to intelligently operate cloud infrastructure with the flexibility to meet real world demands. This key feature is a primary focus of my own learning journey with Pulumi, breaking down the barriers between Traditional Ops (TradOps) and more software development skills while elegantly meeting more complex orchestration problems without breaking a sweat.

The pairing of the ultimate infrastructure as code tooling and ecosystem, with the job description of developer advocacy and community work, is bar none, one of the most exciting professional opportunities in the industry today. Serving as the "glue" technology bringing together the best cloud services on earth, to elegantly deliver a robust and simple path to cloud orchestration, my role as a community engineer at Pulumi offers me direct access to dabbling, or diving deep into almost any tech on the bleeding edge of cloud computing today.

#### 🤔 Why join Pulumi

> Before joining Pulumi myself, I had the great privilege of collaborating with the Pulumi team on a Kong + Pulumi project, and joined PulumiUP 2022 as a panelist with other amazing experts.
>
> - [Kong + Pulumi](https://youtu.be/CZqv8_4AW9Q?si=CugxMPQ44vwiclvS)
> - [PulumiUP 2022 IaC Panel Interview](https://youtu.be/Vy9CCltOMeY?si=qBRQVsOaGb3PWEmT)

Walking among [The Greats™️](#the-greats) I joined Pulumi's Developer Relations 🥑 [Community Engineering](https://www.pulumi.com/community) team, contributing to the most interesting community growing in the cloud orchestration space.

From AI to Kubernetes, Virtual Machine and Container platforms, if nothing else, the last year has proven that not only have I been fortunate to write an incredible professional development story from my own humble beginnings, but that you only reach the ceiling once you settle for having already achieved it.

I am beyond proud of this past year's work, and I couldn't be more excited to leap directly into what is next.

#### 🥑 The Greats️️️™️

- [Laura Santamaria](https://x.com/nimbinatus)
- [Matt Stratton](https://x.com/mattstratton)
- [Kat Cosgrove](https://x.com/Dixie3Flatline)
- [David Flanagan](https://x.com/rawkode)
- [Scott Lowe](https://x.com/scott_lowe)
- [Adora Nwodo](https://x.com/AdoraNwodo)
- [Engin Diri](https://x.com/_ediri)

> Note: This concludes the official "blog" portion of this post. Continue on for more detailed content and resources from the past year of work.

---

## ⏯️ The Content

Below is a collection of the past year's highlights listed by topic.

Each section includes a brief overview of the project, the challenges faced, and the successes achieved for a highlighted item, and also includes an "click to expand" resource list of additional content for further exploration.

All content is my own original work with code and reference links unless otherwise noted.

Thank you to all who have supported and contributed to these successes and more!

---

### 🐈‍⬛ The KatWalk LLM AI Server 💅🏻

#### The Oops

The KatWalk project was my opening act on the Pulumi DevRel team. I've told this story a few times, but irony never fails to entertain me and I'll write it down finally to share here as well.

Pulumi supports many languages. While interviewing for Pulumi, I pre-cleared a preference for writing mainly only golang and typescript in seat, and that I specifically did not want to write python. My preference was thankfully accepted and supported on the part of Pulumi decision makers. However, fate saw fit to change my plans on day one.

Being only 2 months after ChatGPT's release, in less than 3 hours of day one at Pulumi, I landed in a team call where the topic of AI came up. Having nothing on my plate yet I volunteered to do some ice breaking into the burgeoning machine learning and data science space. If you know anything about the AI field, you know to expect lots of Python! ... _EVERYWHERE_. Inevitably, I've written almost exclusively Python since joining.

#### The Ops

The KatWalk project was a full stack development endeavor. The app source and infrastructure as code (IaC) source code is all written in Python and a frontend written as a very simple javascript app deployed to Vercel.

From first enabling CUDA support inside and outside of the KatWalk container runtime, to coordinating compatible versions of cuda with the various vLLM and other python libraries required, the minutia was frought with pitfalls especially being so early in the ChatGPT era.

#### The Work

The total work product includes:

- A [vLLM]() based LLM API Service app source code
- A [function to download the LLM](https://github.com/pulumiverse/katwalk/blob/main/src/app/katwalk/model_pull.py) from Huggingface.io at startup if not found at the configured path.
- An [Nvidia CUDA](https://docs.nvidia.com/deeplearning/frameworks/user-guide/index.html) enabled Python container for Llama3 or other LLM service deployment.
- [Pulumi IaC](https://github.com/pulumiverse/katwalk/blob/main/pulumi/docker_provider/build.py) to build the container and publish the container image on Github Container Registry ghcr.io
- [Pulumi IaC] to support deploying the container to many targets including:
  - [locally via Docker](https://github.com/pulumiverse/katwalk/blob/main/pulumi/docker_provider/run.py) (with cuda support)
  - [Azure ACI](https://github.com/pulumiverse/katwalk/blob/main/pulumi/azure_provider/aci.py)
  - [Runpod.io](https://github.com/pulumiverse/katwalk/blob/main/pulumi/runpod_provider/pod.py)
- I used the [Pulumi Dynamic Provider](https://github.com/pulumiverse/katwalk/blob/main/pulumi/runpod_provider/provider.py) to support Runpod.io's alternative cloud service prior to the official provider's release.
- Bonus points: we ultimately published a [new Runpod.io native provider](https://www.pulumi.com/registry/packages/runpod) to Pulumi Registry's official catalog as a parallel effort started during KatWalk development.

- [Pulumiverse KatWalk Server](https://github.com/pulumiverse/katwalk)
  - [vllm fork](https://github.com/usrbinkat/vllm-gptq/tree/gptq)

[Pulumi IaC]: https://github.com/pulumiverse/katwalk/tree/main/pulumi

---

### 👩🏼‍💻 Pulumi Devcontainers

#### Why Devcontainers?

The "Development Containers" or the [Devcontainer] project was created to solve the problem of "it works on my machine!" and reduce the frequency of productivity drains caused by variations in local development environments.

#### Nix didnt work

In starting my journey at Pulumi, I first turned to the promise of the Nix, NixOS, Nixpkgs, home-manager, direnv, and the rest of the Nix ecosystem to simplify dependency installation and versioning in Pulumi IaC developer environments.

Nix is a powerful ecosystem and my novice understanding definitely limited my fluency with solving problems as I encountered them, however I found that aspect to be a concerning barrier to entry for the goal of making Pulumi development life easier and inevitably determined that Nix was not the right tool for the job at this time. I have since adopted NixOS with Plasma 6 as my personal laptop daily driver OS for it's ease of management and configuration, but for Pulumi IaC cloud orchestration and platform developers Nix is still an out-of-reach baseline barrier to entry.

So what actually meets the needs of an easily sharable and maintainable developer environment with full support for kind kubernetes local k8s development or even localstack aws development? Enter [Devcontainers]!

#### Achieving Success

The [Pulumi Devcontainer](https://github.com/pulumi/devcontainer) work was a great opportunity to meaningfully improve the daily workflow for myself and others in the Pulumi community and proved to be a straightforward solution to implement and scale.

Once released, the `ghcr.io/pulumi/devcontainer:extra` image and `github.com/pulumi/devcontainer` template repository together immediately accelerated every Pulumi project I worked on as the foundational first step to getting started in everything I do, and adds the benefit of providing a best case scenario of sharing demo success beyond the stage with others by serving as a click-to-start reproducible path that eliminates the prerequisites and beginners fatigue.

[Devcontainer]: https://containers.dev
[Devcontainers]: https://containers.dev

#### Devcontainer Impact

Since it's release, I personally used the Devcontainer as my first step in every Pulumi project I've delivered. From streamlining my prerequisits and sharing that success with others, to seeing it's adoption in the community, the Devcontainer already has proven the community need from the growing interest alone.

Furthermore, in combination with [Github Codespaces](https://github.com/features/codespaces), the Pulumi Devcontainer now offers a "one click to start" method to try many Pulumi examples and demos with zero setup required, making all of the official [Pulumi Examples on Github](https://github.com/pulumi/examples) directly accessible to anyone with a Github account and a browser.

#### Pulumi Devcontainer adoption on Github

<details>
<summary>🔎*Click to Expand Enhanced Projects List*</summary>

1. [Pulumi Docs - github.com/puulumi/pulumi-hugo](https://github.com/puulumi/pulumi-hugo)
2. [Pulumi Examples - github.com/pulumi/examples](https://github.com/pulumi/examples)
3. [Pulumi Pinecone Provider](https://github.com/pinecone-io/pulumi-pinecone)
4. [Kind Provider - github.com/usrbinkat/pulumi-kind-native](https://github.com/usrbinkat/pulumi-kind-native)
5. [New Pulumi Provider Development Template](https://github.com/usrbinkat/pulumi-provider-boilerplate)
6. [Pulumi Minecraft IaC Exercise](https://github.com/usrbinkat/pulumi-iac-minecraft)
7. [Docker Compose GenAI Port to Pulumi IaC (incomplete)](https://github.com/usrbinkat/genai)
8. [Pulumi IaC for GCP Cloud Run](https://github.com/usrbinkat/pulumi-iac-gcp-cloud-run)
9. [Pulumi Cert Manager Exercise](https://github.com/usrbinkat/pulumi-examples-cert-manager)
10. [AWS Demos Roadmap](https://github.com/awdemos/demos/blob/master/kubernetes/Ultimate_Kubernetes_Wishlist_2024.md#continuous-deployment-and-configuration-management)
11. [Github Workflows Secrets - IaC in the wild](https://github.com/baby-bot/infra)
12. [Docker Build - IaC in the wild](https://github.com/xunleii/pulumi-docker-build-issues)
13. [Pulumi IaC Template Repo - IaC in the wild](https://github.com/shawndeggans/pulumi_template)
14. [Pulumi Azure AKS - IaC in the wild](https://github.com/shawndeggans/pulumi_aks)
15. [Lambda Labs AI Cloud Native Provider - Community Provider](https://github.com/cloudacious-io/pulumi-lambdalabs-native)
16. [Pulumi Provider for k0s Kubernetes](https://github.com/ydkn/pulumi-k0s)
17. [Pulumi Provider for CEPH Rados Gateway](https://github.com/OSMIT-GmbH/pulumi-ceph-radosgw)
18. [Pulumi Azure AKS AI Workload K8s Cluster IaC](https://github.com/usrbinkat/pulumi-azure-ai)
19. [Pulumi GCP Java Serverless IaC](https://github.com/usrbinkat/pulumi-gcp-java-serverless)
20. [Pulumi Kubernetes IaC Workshop & Demo Repository](https://github.com/usrbinkat/pulumi-kubernetes)
21. [Pulumi Hugo IaC with Example Inputs/Outputs and Output<T> Logic Feature Flows](https://github.com/usrbinkat/pulumi-hugo-iac-logic)

</details>

#### Learn more

- [Pulumi Blog: Devcontainer Push 2 Start Developer Experience](https://www.pulumi.com/blog/pulumi-developer-workflow/)
  - [Pulumi Devcontainer GitHub Repository](https://github.com/pulumi/devcontainer)

---

### 📦 Kubernetes 💻

#### It's Kubernetes Time

Among the top 5 most used providers, the [Pulumi Kubernetes Provider] is the first Pulumi provider that I ever used.

In the Pulumi ecosystem, "[Pulumi Providers]" inform Pulumi's IaC engine on the many cloud service API's that orchestrate the cloud. Between k8s popularity among our own provider offering, and Pulumi's close ties to the larger CNCF landscape, it's no surprise that there was a lot of Kubernetes work over the past year.

#### Teaching & Learning in Public

![Marino and Kat presenting on Network Policy as Code with Pulumi Python Kubernetes IaC at Civo Navigate Austin '23](/marino-kat-civo-navigate-23.png)
[Tweet of Marino and Kat on Network Policy as Code at Civo Navigate 2023](https://x.com/rberrelleza/status/1760094506152513751)

There was so much kubernetes in fact, that I created a longer-lived and maintained repository for developing and practicing a larger and more sophisticated baseline IaC project structure.

In this repository I was able to evolve from the "hello world" level of Pulumi code structure and repostory layout, into more efficient, maintainable, and mature. Some of these examples may seem obvious to experienced software developers however Pulumi serves both the modern developer audience as well as tranditional infrastructure engineers such as my self who may be learning to code for the first time or be new to software development practices in general.

Among the most prominently useful discoveries across my collected works to highlight includes the practices of:

1. Adopting [Feature Flags in IaC](https://dzone.com/articles/revolutionizing-infrastructure-management-the-powe) with Pulumi to enable and disable features in a controlled and declarative way.
2. Writing actionable [Pulumi Stack Export outputs](https://github.com/usrbinkat/pulumi-kubernetes/blob/603f2d41e8a0525e0e0d963689fa391bd12e9208/pulumi/src/__main__.py#L177) that can be put to work in controlling the versioning update rollout flows through dev/test/prod to reduce dependence on things like [Dependabot](https://docs.github.com/en/code-security/dependabot) and further simplify the tool stack with consolidation directly into the IaC codebase.

#### Find it in the code

- [Pulumi.yaml IaC Project Configuration](https://github.com/usrbinkat/pulumi-kubernetes/blob/main/Pulumi.yaml)
- [Pulumi Python modular source directory layout](https://github.com/usrbinkat/pulumi-kubernetes/tree/main/pulumi/src)
- [Declarative Modular IaC with Feature Flags in Pulumi](https://github.com/usrbinkat/pulumi-kubernetes/blob/603f2d41e8a0525e0e0d963689fa391bd12e9208/pulumi/src/__main__.py#L64)
- [Calling IaC module imports with arguments](https://github.com/usrbinkat/pulumi-kubernetes/blob/603f2d41e8a0525e0e0d963689fa391bd12e9208/pulumi/src/__main__.py#L66)
- [Just-in-time Helm release version lookup](https://github.com/usrbinkat/pulumi-kubernetes/blob/main/pulumi/src/lib/helm_release_latest.py)
- [Helm release version pinning via Pulumi config](https://github.com/usrbinkat/pulumi-kubernetes/blob/603f2d41e8a0525e0e0d963689fa391bd12e9208/pulumi/src/cert_manager/deploy.py#L36)
- [Dynamically building a Pulumi Export for automated version control and dev/test/prod promotion](https://github.com/usrbinkat/pulumi-kubernetes/blob/603f2d41e8a0525e0e0d963689fa391bd12e9208/pulumi/src/__main__.py#L176)

<details>
<summary>🔎*Click to expand: Pulumi + Kubernetes Content List*</summary>
- [pulumi-iac-minecraft](https://github.com/usrbinkat/pulumi-iac-minecraft)
- [homelab-apps](https://github.com/usrbinkat/homelab-apps)
- [pulumi kind native provider for k8s in docker](https://github.com/usrbinkat/pulumi-kind-native)
- [pulumi kubernetes usrbinkat's repo](https://github.com/usrbinkat/pulumi-kubernetes)
- [eCHO: e128 Deploy Cilium with Pulumi](https://www.youtube.com/live/1oF_bfLk8sE?si=-P3zuAiVA2COQ2CZ)
- [kubernetes reliability](https://x.com/usrbinkat/status/1774839327832555934)
- [kubernetes q's](https://x.com/usrbinkat/status/1767971546667298927)
- [kubernetes in prod is hard](https://x.com/usrbinkat/status/1767972721026310534)
</details>

[Pulumi Providers]: https://www.pulumi.com/blog/pulumi-go-boilerplate-v2
[Pulumi Kubernetes Provider]: https://www.pulumi.com/docs/reference/pkg/kubernetes

---

### 🌲 AI + Pinecone

Pinecone is a purpose built cloud native vector database for AI and ML workloads. Riding the burgeoning wave of ChatGPT's sudden rise to prominence and powering many applications in the race to commercialize LLMs. Pinecone and the AI application architectures that it plugs into as a RAG (Retrieval Augmented Generation) database are suddenly high demand practitioner skillsets.

#### [Pinecone Pulumi Meetup in San Francisco](https://x.com/PulumiCorp/status/1727403073687994499)

- [Pinecone Events Promo](https://www.pinecone.io/community/events/pinecone-meetup-sf-taking-ai-apps-to-production)
- [Pinecone Twitter Promo](https://x.com/PulumiCorp/status/1727403073687994499)

#### [Pinecone Pulumi Meetup in Seattle](https://x.com/PulumiCorp/status/1733207315895980274)

- [@pinecone Twitter Promo](https://x.com/pinecone/status/1734302363446329798)
- [@PulumiCorp Twitter Promo](https://x.com/PulumiCorp/status/1734641928702984666)

#### [pinecone provider](https://x.com/PulumiCorp/status/1747299018407813438)

- [Github: Pinecone Pulumi Native Provider contribution](https://github.com/pinecone-io/pulumi-pinecone/commits/main/?author=usrbinkat)

![](/images/tweet-pinecone-pulumi-provider.png)



<details>
<summary>🔎Click to find more AI content* 🤖</summary>

- [Python Powered IaC, Orchestrate AI w/ Pulumi](https://github.com/pulumi/devrel-team/issues/959)
- [ai chatbot backend](https://youtu.be/IWfPPlzzBzA?si=51wKQmJDTlZJO0c4)
- [Orchestration: Your key to unlocking AI](https://youtu.be/UfQeX-8HRmI?si=IUI5USPwo_ItNTXo)
- [vector db prefiltering etc](https://x.com/usrbinkat/status/1765225286415810822)
- [lance martin langchain pulumi](https://x.com/usrbinkat/status/1768323209949253665)
- [Pulumi AI on the CLI](https://x.com/usrbinkat/status/1742605945908465708)
</details>

---

### 🔌 Pulumi Providers ⚡

While ice braking in the AI space with the [KatWalk LLM Server](#the-katwalk-llm-ai-server) project, it became obvious that the rapid growth in the number of AI startups and cloud services had one thing in common. Having flipped from a largely academic field of research teams, into a hot bed of rapid commercialization efforts, AI was largely lacking for terraform, pulumi, and other IaC provider support across the generative AI and supporting services.

This called for a second look at the Pulumi Provider development experience. Pulumi providers come in a few forms. The most common being the TF Bridge Provider, and the Pulumi Native Provider.

{{< youtube U2C7SRrPhQ4 >}}

#### Dynamic Provider

The [Pulumi Dynamic Provider](https://github.com/pulumiverse/katwalk/blob/main/pulumi/runpod_provider/provider.py) approach allows for writing basic CRUD provider coverage of arbitrary APIs not covered with a real Pulumi provider. This was the first approach taken to support the Runpod.io cloud service in KatWalk server prior to developing and releasing the official runpod provider itself.

#### Native Provider

The [Pulumi Native Provider Boilerplate](https://github.com/pulumi/pulumi-provider-boilerplate) is a toolkit for generating Pulumi providers from scratch in golang.

This approach is how we delivered the [Pulumi Pinecone Provider](https://github.com/pinecone-io/pulumi-pinecone) and the [Pulumi Runpod.io Provider](https://github.com/runpod/pulumi-runpod-native) to the Pulumi Registry.

#### TF Bridge Provider

The [Pulumi Terraform Bridge Provider Boilerplate](https://github.com/pulumi/pulumi-tf-provider-boilerplate) is a toolkit for generating Pulumi providers from the Terraform provider schema found in terraform provider source code.

<details>
<summary>🔎*Click to find more Pulumi Providers content*</summary>

- Pulumi Pinecone Provider
  - [Github: Pinecone Pulumi Native Provider Source](https://github.com/pinecone-io/pulumi-pinecone)
  - [Youtube: Pinecone Pulumi Provider Demo](https://youtu.be/U2C7SRrPhQ4?si=2xjIy1ODD7LZYv2y&t=292)
  - [Blog by Engin Diri](https://www.pulumi.com/blog/pinecone-serverless/?utm_campaign=Blog&utm_content=Pinecone-provider&utm_medium=social&utm_source=linkedin&hss_channel=lcp-18103664)
- Runpod.io Native Pulumi Provider
  - [@usrbinkat Twitter Promo](https://x.com/usrbinkat/status/1777752382644142111)
  - [Pulumi Registry Official Merge Request](https://github.com/pulumi/registry/pull/4168)
- [Pulumi Kind Native Provider](https://github.com/usrbinkat/pulumi-kind-native)
- [Pulumi Native Provider Boilerplate enhancements](https://github.com/pulumi/pulumi-provider-boilerplate/commits/main/?author=usrbinkat)

</details>

---

### 🛠️ Pulumi Deployments

- [🐦 Twitter - Like the Tweet](https://x.com/PulumiCorp/status/1797689849534677007)
- [🧑🏼‍💻 Github - Get the Code](https://github.com/ContainerCraft/pulumi-deployments-iac)
- [📺 Youtube - Watch the Video](https://youtu.be/wRQ8YeSOoZ4)

The [Pulumi Cloud](https://www.pulumi.com/product/pulumi-cloud) Deployments features are a fairly new practice in my personal toolbelt. One of my more recent exercises, I sat down to learn and implement 3 new features at release time.

As an OSS purist at heart, I commonly lean a little too far into the purist take of "OSS or bust!", but acknowledging the value of the right tool for the job I was surprised to find the experience of writing my entire GitOps IaC deployment pipeline inside the same Pulumi IaC I was already practicing to be the _most_ convenient experience.

For the video coverage, we start with a quick review of the [Pulumi Deployments](https://www.pulumi.com/product/pulumi-deployments) features, then get hands on demonstrating each of the 3 new capabilities.

{{< youtube wRQ8YeSOoZ4 >}}

| Deployments Feature     | Description                                                          |
| :---------------------- | -------------------------------------------------------------------- |
| [TTL]                   | Time to Live infrastructure with pre-determined self-destruct EOL    |
| [Drift Detection]       | Reconcile Desired State vs Actual State to detect drift conditions   |
| [Scheduled Deployments] | Schedule any operation on a cron timer `~$ pulumi [up,down,refresh]` |

[TTL]: https://github.com/ContainerCraft/pulumi-deployments-iac/blob/e5eab7de042a14bc6cb5fa9ccdb1466e152a55dd/pulumi/src/pulumi/schedule.py#L78
[Drift Detection]: https://github.com/ContainerCraft/pulumi-deployments-iac/blob/e5eab7de042a14bc6cb5fa9ccdb1466e152a55dd/pulumi/src/pulumi/schedule.py#L56
[Scheduled Deployments]: https://github.com/ContainerCraft/pulumi-deployments-iac/blob/e5eab7de042a14bc6cb5fa9ccdb1466e152a55dd/pulumi/src/pulumi/schedule.py#L12

---

### ⚙️ KubeVirt Baremetal PaaS - Community Platform Engineering

This platform engineering project is dedicated to building community expertise with Pulumi by taking on a longer running, larger, and more complex project scope than most DevRel "101" level exercises. The project has already been an excellent learning and teaching tool for hands on practice with dynamic and complex cloud orchestration environments.

While still in early days, we already have a community of brilliant minds contributing to, and learning together on the CCIO Discord: [LINK](https://discord.gg/86CYTfNWpB)

[Find the project on Github!](https://github.com/containercraft/kargo)

<details>
<summary>🔎Click to find more Kargo KubeVirt PaaS Platform Engineering / Homelab content*</summary>

- [Kargo Kubevirt PaaS Announcement](https://x.com/usrbinkat/status/1765842332849758675)
- [Kargo on Turing Pi 2 + 4x 32GB RK1s](https://x.com/usrbinkat/status/1761499523539681426)
- [Lowfi & Code Kargo on OptiplexPrime](https://x.com/usrbinkat/status/1764473910966522321)
- [Weekend CCIO Discord Homelab Celebration](https://x.com/usrbinkat/status/1766574171637657991)
- [CCIO MVP Release Triage & Project Board Hygene](https://x.com/usrbinkat/status/1767054997873913920)
- [@SideroLabs Homelab Promo Post](https://x.com/SideroLabs/status/1767233956632797521)
- [Kargo Kubevirt PaaS Development Thread: Cilium + Multus part 1](https://x.com/usrbinkat/status/1771698024575582589)
- [Kargo Kubevirt PaaS Development Thread: Cilium + Multus part 2](https://x.com/usrbinkat/status/1772047944155586753)
- [Kargo Kubevirt PaaS Development Thread: Cilium + Multus part 3 The Solution](https://x.com/usrbinkat/status/1772047944155586753)
- [kargo dev + what's next](https://x.com/usrbinkat/status/1779202105502531800)
- [pulumi + kubevirt](https://x.com/usrbinkat/status/1783255207054606488)
</details>

![tf/vmw -vs- pulumi/kubevirt](/images/kargo-kubevirt.png)

---

### 🟠 AWS

#### SageMaker

AWS [SageMaker](https://aws.amazon.com/sagemaker) is a powerful tool for building, training, and deploying machine learning models.

I was fresh off the [Katwalk LLM API Service](https://github.com/pulumiverse/katwalk) project going into this one and comparing the former "build it yourself" approach to the SageMaker "AI-as-a-Service" experience.

{{< youtube 9rwsutZbVfI >}}

- Blog:
  - [Deploy AI Models on Amazon SageMaker](https://www.pulumi.com/blog/mlops-huggingface-llm-aws-sagemaker-python/?utm_campaign=orivoir&utm_medium=personalSite&utm_source=usrbinkat)
  - [Vercel Frontend Enhancement from Adora Nwodo](https://www.pulumi.com/blog/deploy-ai-ml-vercel-app/?utm_campaign=orivoir&utm_medium=personalSite&utm_source=usrbinkat)

- Youtube:
  - [Pulumi SageMaker](https://youtu.be/9rwsutZbVfI) (132K+ Views)

- Github:
  - [Sagemaker Pulumi Template](https://github.com/pulumi/templates/pull/643)

- Twitter:
  1. [@PulumiCorp Promo](https://x.com/PulumiCorp/status/1702353763959255411)
  2. [@PulumiCorp Promo](https://x.com/PulumiCorp/status/1755637618631405655)

<details>
<summary>🔎*Click to find more AWS content*</summary>

#### Workshops

- Workshop Getting started with Pulumi and AWS
  - [Twitter Promo](https://x.com/PulumiCorp/status/1699452898013245836)
  - [Linkedin Promo](https://www.linkedin.com/events/gettingstartedwithinfrastructur7122260884944556032/comments/)

#### Events

- [Pulumi @ AWS Re:Invent](https://www.pulumi.com/reinvent/?utm_campaign=FY2024Q2_Event_ReInvent&utm_content=272275234&utm_medium=social&utm_source=linkedin&hss_channel=lcp-18103664)
- Re:Invent
  1. [@PulumiCorp Promo](https://x.com/PulumiCorp/status/1727372370111844649)
  2. [@PulumiCorp Promo](https://x.com/PulumiCorp/status/1729565873424240787)
  3. [@PulumiCorp Promo](https://x.com/funcOfJoe/status/1729682756685148342)

</details>

---

### 🔵 Azure

The past year was full of fun in many clouds, including Microsoft Azure!

First up, with a git repo and a Youtube video to show for it, what better way to get into Azure than building a new Kubernetes AI compute platform?

Starting a new project completely from scratch, lets dig in together with [Kevin Evans](https://x.com/TheKevinEvans) and step through getting started, using Pulumi AI, Pulumi templates, and dive into tooling, syntax, and IaC code techniques including variable maps and arrays for elegant IaC. Draw the whole owl in this step by step demonstration.

Also, stay tuned! With plans to further develop this project enhancing the AKS cluster with Karpenter GPU worker node machine sets and Kubeflow for AI/ML workloads, there's definitely more that you won't want to miss!

#### Azure AI K8s Cluster with Pulumi IaC
 - [Github: IaC Repository](https://github.com/usrbinkat/pulumi-azure-ai)
 - [Youtube: Code2Cloud + Pulumi build AI k8s on Azure](https://youtu.be/e_dFpzzrM3M?si=R0DOF7PP-qZg5zH7)

Building on With serverless and AI both all the rage, what's not to love about a serverless AI Langchain Function on Azure with Pulumi IaC?

#### Serverless AI Langchain Functions on Azure with Pulumi IaC
  - [Github: IaC Repository](https://github.com/usrbinkat/lambda-langchain)

---

### 🟢 GCP

Check out the action on Google Cloud Platform (GCP). Production hybrid kubernetes + serverless architecture, Cloud Run and more!

#### Google & Pulumi Present: Production Ready Java Serverless Apps
  - [Github: Source](https://github.com/usrbinkat/pulumi-gcp-java-serverless)
  - [BigMarker Event](https://www.bigmarker.com/pulumi/Serverless-Java-Production-Resilience-and-Optimization-in-Google-Cloud?utm_bmcr_source=Twitter&utm_content=289656948&utm_medium=social&utm_source=twitter&hss_channel=tw-837770064870817792)
  - [Twitter](https://x.com/PulumiCorp/status/1779899959938035722)

#### Google & Pulumi Present: Efficient Microservices on GCP Cloud Run
  - [Github: IaC Repository](https://github.com/usrbinkat/pulumi-iac-gcp-cloud-run)
  - [Github: Google Reference](https://github.com/usrbinkat/pulumi-gcloud-microservices)
  - [Youtube Recording](https://youtu.be/CNw2LsNKEfw?si=8odLX6tz7VnOZChi)
  - [Twitter](https://x.com/PulumiCorp/status/1762882089811099754)

---

### 💜 EmpathyOps - Twitter Spaces (25 & Counting!)

In partnership with [EmpathyOps](https://empathyops.io), a tech consulting and fractional Developer Advocacy service provider, I've had the great pleasure of co-hosting dozens of industry experts bringing their wealth of knowledge, spilling the tea, and remembering the human side of tech as we journey through lessons learned and aspirations for the future.

| Title                                                        | Link                                                            | Attendees |
| ------------------------------------------------------------ | --------------------------------------------------------------- | --------- |
| Application Observability for Peak Performance               | [Link](https://x.com/AakanshaPriya_/status/1733898712009543794) | 1200+     |
| Cloud Unplugged                                              | [Link](https://x.com/AakanshaPriya_/status/1745052785786179805) | 1900+     |
| So I heard you want to contribute to k8s?                    | [Link](https://x.com/AakanshaPriya_/status/1749865952374870497) | 1300+     |
| Deep dive w/ Open Telemetry                                  | [Link](https://x.com/i/spaces/1LyxBndNoROxN)                    | 1000+     |

<details>
<summary>🔎Click to find more EmpathyOps content*</summary>

| Title                                                        | Link                                                            | Attendees |
| ------------------------------------------------------------ | --------------------------------------------------------------- | --------- |
| Understand the CNI Spec                                      | [Link](https://x.com/AakanshaPriya_/status/1704140600717476145) | 200       |
| KubeCon NA 2023 - all about community!                       | [Link](https://x.com/virtualized6ix/status/1724811618943381939) | 631       |
| Navigating the Future of Hiring in the Tech Industry         | [Link](https://x.com/AakanshaPriya_/status/1734596206213669253) | 973       |
| Platform Engineering - w/ Carlos Santana                     | [Link](https://x.com/virtualized6ix/status/1716411915730104588) | 246       |
| SimpleOps w/ Ambient Mesh                                    | [Link](https://x.com/virtualized6ix/status/1719360244504006664) | 151       |
| GitLab Diaries - DevSecOps Efficiency through AI & Culture   | [Link](https://x.com/AakanshaPriya_/status/1729522725155401899) | 179       |
| Building Elegant Platforms in the Face of Tech Debt          | [Link](https://x.com/AakanshaPriya_/status/1732044636859011529) | 194       |
| CHOP DOWN THOSE Enterprise Security Silos + Identity + AuthN | [Link](https://x.com/virtualized6ix/status/1744697044667601320) | 108       |
| Do you even Authenticate? Diving into Kubernetes AuthN       | [Link](https://x.com/virtualized6ix/status/1749799063812485521) | 347       |
| The Magic of GitOps is still flowing                         | [Link](https://x.com/i/spaces/1djGXNkdWBRxZ)                    | 182       |
| Let’s chat about Pipeline Security                           | [Link](https://x.com/i/spaces/1lPKqbAvknbGb)                    | 551       |
| CIVO Navigate Recap                                          | [Link](https://x.com/i/spaces/1yNxaZnWvEWKj)                    | 575       |
| Everyone gets a Namespace: Provision secure Namespaces       | [Link](https://x.com/i/spaces/1mnGepjgOLQKX)                    | 378       |
| from DevRel to Solution Engineering                          | [Link](https://x.com/i/spaces/1YqGoDEMkjyJv)                    | 99        |
| Maximising k8s uptime and reliability                        | [Link](https://x.com/i/spaces/1mrxmygDYaLxy)                    | 249       |
| Democratize Kubernetes to Achieve Continuous Reliability     | [Link](https://x.com/i/spaces/1DXxyjOgjdEKM)                    | 78        |
| Understanding Linkerd in 2024                                | [Link](https://x.com/i/spaces/1MYxNoXvEaOKw)                    | 274       |
| Strategies to navigate the tech job landscape                | [Link](https://x.com/i/spaces/1YqKDgdwWdexV)                    | 290       |
| Building reliable, safe, scalable apps: C#, K8s and friends  | [Link](https://x.com/i/spaces/1ynKOyYYObQJR)                    | 137       |
| The role of CNCF Ambassadors. Let’s chat                     | [Link](https://x.com/i/spaces/1rmGPMzBLqnJN)                    | 353       |
| Impact of Developer Relations and Beyond                     | [Link](https://x.com/i/spaces/1BdGYryWZylJX)                    | 226       |
| eBPF & Cilium for Next-Gen Cloud                             | [Link](https://x.com/i/spaces/1dRKZEEvjeoxB)                    | 240       |

</details>

---

### 🎭 Youtube Podcasts, Interviews, and Livestreams!


<details>
<summary>🔎*Click to find more Podcasts, Interviews, and Livestreams content*</summary>

- [Pulumi SageMaker](https://youtu.be/9rwsutZbVfI)
- [Pulumi Feature Release: Schedule, TTL, and Drift Detection with Deployments](https://youtu.be/wRQ8YeSOoZ4)
- [Impromptu Livestream w/ Carlos Santana](https://www.youtube.com/live/3p1SSxpZvmc)
- [eCHO: e128 Deploy Cilium with Pulumi](https://www.youtube.com/live/1oF_bfLk8sE)
- [Civo Navigate: Service Mesh, CNI, and Modern CNI](https://youtu.be/fkNgCAY3Rxk)
- [Orchestration: Your key to unlocking AI](https://youtu.be/UfQeX-8HRmI)
- [ComeCloudWithUs](https://www.youtube.com/live/M7oYDEwVjnM)
- [CloudNativePodcast](https://www.youtube.com/live/3gv8eKeOIlI)
- [Network Policy as Code #90DaysofDevOps](https://youtu.be/d-2DKoIp4RI)
- [EmpathyOps: Platform Engineering Real World Use Cases](https://youtu.be/qsZsWbrXUoQ)
- [Kubevirt PaaS Live Development](https://www.youtube.com/live/W8XmStEL0-Q)
- [Workshop: Microservices on GCP CloudRun with Pulumi](https://youtu.be/CNw2LsNKEfw)
- [Smart Cherry's Thoughts](https://youtu.be/IJ8KAH--byk)

</details>

---

### 🐦 Twitter Nonsense

Look, we had fun in the global group chat. A snapshot of the highlights below.

<details>
<summary>🔎Click to find more Twitter Nonsense content*</summary>

- [rate my setup couch floof on lap](https://x.com/usrbinkat/status/1779196600780546189)
- [Pulumi Examples Push to Start](https://x.com/usrbinkat/status/1772766331747901901)
- [what is a kubernete](https://x.com/usrbinkat/status/1784411838819758515)
- [hard grind robot ded](https://x.com/usrbinkat/status/1782165388794663210)
- [Polly Llama LLM meme](https://x.com/usrbinkat/status/1783711285424902612)
- [midjourney](https://x.com/usrbinkat/status/1770947229630775533)
- [kubernetes q's](https://x.com/usrbinkat/status/1767971546667298927)
- [robots picture](https://x.com/usrbinkat/status/1770950454291333161)
- [operation office relocation](https://x.com/usrbinkat/status/1776740584788819980)
- [magic tricks w/ cnunciato](https://x.com/usrbinkat/status/1775178827997807102)
- [should code be novel?](https://x.com/usrbinkat/status/1775191131065856412)
- [Pulumi AI on the CLI](https://x.com/usrbinkat/status/1742605945908465708)
- [rate my setup couch floof on lap](https://x.com/usrbinkat/status/1779196600780546189)
- [robots picture](https://x.com/usrbinkat/status/1770950454291333161)
- [operation office relocation](https://x.com/usrbinkat/status/1776740584788819980)
- [do you even codespaces bro](https://x.com/usrbinkat/status/1771264619262185900)

</details>

---

### 🧑🏿‍🤝‍🧑🏻 Meetups/Community Events

#### OpenAI DevDay

<details>
<summary>🔎Click to find more Meetups/Community Events content*</summary>

- [Pulumi Hosts Dagger.io & Chainguard](https://events.linuxfoundation.org/open-source-summit-north-america/)
- [pulumi austin user group](https://www.meetup.com/austin-pulumi-user-group/events/298037929/)
- [bellingham codes agility in the homelab](https://www.meetup.com/hamster-opensource/events/281802623/)
- [genai apps and devops | ai/ml talks](https://www.meetup.com/pulumi-seattle/events/296344542/)
- [taking ai apps to production](https://www.meetup.com/pulumi-seattle/events/297664558/)
- [build your first dagger module](https://www.meetup.com/pulumi-seattle/events/300312841/)
- [ai friend or foe | tech talks with nana SF](https://www.meetup.com/san-francisco-pulumi-user-group/events/296365568/)
- [Workshop Getting started with Pulumi and AWS](https://www.linkedin.com/events/gettingstartedwithinfrastructur7122260884944556032/comments/)
</details>

#### Tech Talks with Nana

<details>
<summary>🔎Click to find more Tech Talks with Nana content*</summary>

- [Pulumi + Tech Talks with Nana & Kat Morgan Too!!](https://www.pulumi.com/blog/devops-ai-developer-future--pulumi-user-group-tech-talks/?utm_campaign=blog&utm_content=techworld-with-nana&utm_medium=social&utm_source=linkedin&hss_channel=lcp-18103664#how-will-ai-impact-the-future-of-devops)
- [Tech Talks with Nana](https://x.com/PulumiCorp/status/1722440565113917692) - https://x.com/Audrey_Sage_/status/1722444516991603047 - https://x.com/PulumiCorp/status/1724504283347816449
</details>

#### Civo Navigate

<details>
<summary>🔎Click to find more Civo Navigate content*</summary>

- [civo recap](https://x.com/AakanshaPriya_/status/1764249208024920163)
- [Civo Navigate](https://youtu.be/plVayK_8ytA?si=YN8g5oHWWvaQXV9R)
- [civo iac prep](https://x.com/usrbinkat/status/1767000445116133775)
- [civo iac prep cont](https://x.com/usrbinkat/status/1767049246300340724)
</details>

#### Open Source Summit

<details>
<summary>🔎Click to find more Open Source Summit content*</summary>

- [Pulumi Hosts Dagger.io & Chainguard](https://events.linuxfoundation.org/open-source-summit-north-america/)
- [OS Summit](https://x.com/usrbinkat/status/1780668586094424076)
</details>

#### Workshops

<details>
<summary>🔎Click to find more Workshops content*</summary>

- [Workshop IaC on AWS](https://x.com/PulumiCorp/status/1699452898013245836)
- [Workshop: Microservices on GCP CloudRun with Pulumi](https://youtu.be/CNw2LsNKEfw?si=8odLX6tz7VnOZChi)
- [Workshop Getting started with Pulumi and AWS](https://www.linkedin.com/events/gettingstartedwithinfrastructur7122260884944556032/comments/)
</details>
