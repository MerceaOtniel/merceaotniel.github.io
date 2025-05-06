// get the ninja-keys element
const ninja = document.querySelector('ninja-keys');

// add the home and posts menu items
ninja.data = [{
    id: "nav-about",
    title: "About",
    section: "Navigation",
    handler: () => {
      window.location.href = "/";
    },
  },{id: "nav-publications",
          title: "Publications",
          description: "Equal contribution denoted by *",
          section: "Navigation",
          handler: () => {
            window.location.href = "/publications/";
          },
        },{id: "nav-patents",
          title: "Patents",
          description: "",
          section: "Navigation",
          handler: () => {
            window.location.href = "/patents/";
          },
        },{id: "nav-cv",
          title: "CV",
          description: "",
          section: "Navigation",
          handler: () => {
            window.location.href = "/cv/";
          },
        },{id: "dropdown-awards",
              title: "Awards",
              description: "",
              section: "Dropdown",
              handler: () => {
                window.location.href = "";
              },
            },{id: "dropdown-scholarships",
              title: "Scholarships",
              description: "",
              section: "Dropdown",
              handler: () => {
                window.location.href = "";
              },
            },{id: "dropdown-reviewing",
              title: "Reviewing",
              description: "",
              section: "Dropdown",
              handler: () => {
                window.location.href = "";
              },
            },{id: "dropdown-talks",
              title: "Talks",
              description: "",
              section: "Dropdown",
              handler: () => {
                window.location.href = "";
              },
            },{id: "dropdown-supervision",
              title: "Supervision",
              description: "",
              section: "Dropdown",
              handler: () => {
                window.location.href = "";
              },
            },{id: "dropdown-teaching",
              title: "Teaching",
              description: "",
              section: "Dropdown",
              handler: () => {
                window.location.href = "";
              },
            },{id: "post-google-gemini-updates-flash-1-5-gemma-2-and-project-astra",
      
        title: 'Google Gemini updates: Flash 1.5, Gemma 2 and Project Astra <svg width="1.2rem" height="1.2rem" top=".5rem" viewBox="0 0 40 40" xmlns="http://www.w3.org/2000/svg"><path d="M17 13.5v6H5v-12h6m3-3h6v6m0-6-9 9" class="icon_svg-stroke" stroke="#999" stroke-width="1.5" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round"></path></svg>',
      
      description: "We’re sharing updates across our Gemini family of models and a glimpse of Project Astra, our vision for the future of AI assistants.",
      section: "Posts",
      handler: () => {
        
          window.open("https://blog.google/technology/ai/google-gemini-update-flash-ai-assistant-io-2024/", "_blank");
        
      },
    },{id: "post-displaying-external-posts-on-your-al-folio-blog",
      
        title: 'Displaying External Posts on Your al-folio Blog <svg width="1.2rem" height="1.2rem" top=".5rem" viewBox="0 0 40 40" xmlns="http://www.w3.org/2000/svg"><path d="M17 13.5v6H5v-12h6m3-3h6v6m0-6-9 9" class="icon_svg-stroke" stroke="#999" stroke-width="1.5" fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round"></path></svg>',
      
      description: "",
      section: "Posts",
      handler: () => {
        
          window.open("https://medium.com/@al-folio/displaying-external-posts-on-your-al-folio-blog-b60a1d241a0a?source=rss-17feae71c3c4------2", "_blank");
        
      },
    },{id: "news-i-was-accepted-as-a-phd-student-at-the-international-max-planck-research-school-for-intelligent-systems",
          title: 'I was accepted as a PhD student at the International Max Planck Research...',
          description: "",
          section: "News",},{id: "news-my-first-ever-paper-avca-was-accepted-at-cvpr-2022",
          title: 'My first ever paper, AVCA, was accepted at CVPR 2022.',
          description: "",
          section: "News",},{id: "news-tcaf-was-accepted-at-eccv-2022",
          title: 'TCAF was accepted at ECCV 2022.',
          description: "",
          section: "News",},{id: "news-plant-was-accepted-at-corl-2022",
          title: 'PlanT was accepted at CoRL 2022.',
          description: "",
          section: "News",},{id: "news-av-diff-was-accepted-at-dagm-gcpr-2023",
          title: 'AV-Diff was accepted at DAGM GCPR 2023',
          description: "",
          section: "News",},{id: "news-regada-was-accepted-as-an-oral-to-bmvc-2023",
          title: 'ReGAdA was accepted as an ORAL to BMVC 2023.',
          description: "",
          section: "News",},{id: "news-losa-was-accepted-as-a-spotlight-at-cvpr-2024",
          title: 'LoSA was accepted as a SPOTLIGHT at CVPR 2024.',
          description: "",
          section: "News",},{id: "news-after-8-months-i-finished-my-internship-at-google-research-i-have-worked-on-efficient-adaptation-under-the-supervision-of-anurag-arnab-alexey-gritsenko-and-cordelia-schmid",
          title: 'After 8 months, I finished my internship at Google Research. I have worked...',
          description: "",
          section: "News",},{id: "news-our-work-on-audio-visual-gzsl-using-large-multi-modal-models-was-accepted-at-cvpr-2024-workshops-l3d-ivu",
          title: 'Our work on audio-visual GZSL using large multi-modal models was accepted at CVPR...',
          description: "",
          section: "News",},{id: "news-new-preprint-is-available-on-optimal-adapter-placement-for-efficient-transfer-learning",
          title: 'New preprint is available on optimal adapter placement for efficient transfer learning.',
          description: "",
          section: "News",},{id: "news-i-have-finished-my-4-month-internship-at-google-deepmind-i-have-worked-on-enhancing-sam-2-for-scenarios-involving-significant-occlusion-or-movement-under-the-supervision-of-stefano-pellegrini-jasper-uijlings-and-cordelia-schmid",
          title: 'I have finished my 4 month internship at Google DeepMind. I have worked...',
          description: "",
          section: "News",},{id: "news-i-am-pleased-to-share-that-i-have-successfully-defended-my-phd-dissertation",
          title: 'I am pleased to share that I have successfully defended my PhD dissertation....',
          description: "",
          section: "News",},{id: "news-thrilled-to-begin-my-journey-at-apple-as-a-computer-vision-applied-research-scientist",
          title: 'Thrilled to begin my journey at Apple as a Computer Vision Applied Research...',
          description: "",
          section: "News",},{
        id: 'social-bluesky',
        title: 'Bluesky',
        section: 'Socials',
        handler: () => {
          window.open("https://bsky.app/profile/merceaotniel.bsky.social", "_blank");
        },
      },{
        id: 'social-email',
        title: 'email',
        section: 'Socials',
        handler: () => {
          window.open("mailto:%6F%74%69%6D%65%72%63%65%61 (%61%74) %67%6D%61%69%6C.%63%6F%6D", "_blank");
        },
      },{
        id: 'social-github',
        title: 'GitHub',
        section: 'Socials',
        handler: () => {
          window.open("https://github.com/MerceaOtniel", "_blank");
        },
      },{
        id: 'social-kaggle',
        title: 'Kaggle',
        section: 'Socials',
        handler: () => {
          window.open("https://www.kaggle.com/otnielmercea", "_blank");
        },
      },{
        id: 'social-linkedin',
        title: 'LinkedIn',
        section: 'Socials',
        handler: () => {
          window.open("https://www.linkedin.com/in/otnielmercea", "_blank");
        },
      },{
        id: 'social-researchgate',
        title: 'ResearchGate',
        section: 'Socials',
        handler: () => {
          window.open("https://www.researchgate.net/profile/Otniel-Bogdan-Mercea/", "_blank");
        },
      },{
        id: 'social-scholar',
        title: 'Google Scholar',
        section: 'Socials',
        handler: () => {
          window.open("https://scholar.google.com/citations?user=eSPY7nMAAAAJ", "_blank");
        },
      },{
        id: 'social-stackoverflow',
        title: 'Stackoverflow',
        section: 'Socials',
        handler: () => {
          window.open("https://stackoverflow.com/users/4178517/otniel-bogdan-mercea", "_blank");
        },
      },{
        id: 'social-x',
        title: 'X',
        section: 'Socials',
        handler: () => {
          window.open("https://twitter.com/MerceaOtniel", "_blank");
        },
      },{
      id: 'light-theme',
      title: 'Change theme to light',
      description: 'Change the theme of the site to Light',
      section: 'Theme',
      handler: () => {
        setThemeSetting("light");
      },
    },
    {
      id: 'dark-theme',
      title: 'Change theme to dark',
      description: 'Change the theme of the site to Dark',
      section: 'Theme',
      handler: () => {
        setThemeSetting("dark");
      },
    },
    {
      id: 'system-theme',
      title: 'Use system default theme',
      description: 'Change the theme of the site to System Default',
      section: 'Theme',
      handler: () => {
        setThemeSetting("system");
      },
    },];
