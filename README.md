## 文件结构

- `cv.sty` 是所有外层文档共用的样式文件，包含中文排版支持、字体、颜色、页面样式和复用命令
- `main-full.tex` 是完整简历，在主体之后附有研究计划、教学经历、教学思考、学术服务以及完整的论文、项目和报告列表
- `main-short.tex` 是精简简历，仅在主体之后附有教学经历，其余内容收录在相应的独立文档中
- `list.tex` 是完整论文、项目、报告和学术服务列表
- `research-plan.tex` 是独立的研究计划
- `teaching-portfolio.tex` 是独立的教学档案，包含教学经历和教学思考
- `cover-letter.tex` 是通用求职信，其中的 `[职位]` 和 `[单位]` 等占位符应根据具体申请替换
- `comp/` 包含由各外层文档引入的复用组件
    - `comp/body.tex` 是完整简历和精简简历共用的简历主体，包含页首、简介、教育经历、工作经历和科研经历。它在科研经历中调用 `\listsnote` 和 `\researchplannote`，由外层文档分别链接到后续章节或独立文档
    - `comp/teaching-experience.tex` 是课程教学和学生指导部分，标签为 `sec:teaching-experience`。完整简历、精简简历和教学档案分别引入该组件，并通过 `\teachingportfolionote` 链接到教学思考或独立教学档案
    - `comp/pub.tex` 是完整论文列表，包含主要论文和其他论文两个部分，标签为 `sec:pub`
    - `comp/projects.tex` 是完整项目列表，包含项目负责人和参与项目两个部分，标签为 `sec:projects`
    - `comp/presentations.tex` 是完整学术报告列表，标签为 `sec:presentations`
    - `comp/service.tex` 是学术服务部分，标签为 `sec:service`，由完整简历和完整列表文档引入
    - `comp/research-plan.tex` 是研究计划，标签为 `sec:research-plan`，由完整简历和独立研究计划文档引入
    - `comp/teaching-reflections.tex` 是教学思考，包含教学理念、课程建设、指导方法和教学计划，标签为 `sec:teaching-reflections`，由完整简历和教学档案引入
- `Makefile` 使用 XeLaTeX 编译六份文档，并提供 `all` 和 `clean` 目标
