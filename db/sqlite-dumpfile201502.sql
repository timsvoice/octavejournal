PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO "schema_migrations" VALUES('20150122181349');
INSERT INTO "schema_migrations" VALUES('20150122182355');
INSERT INTO "schema_migrations" VALUES('20150122182425');
INSERT INTO "schema_migrations" VALUES('20150122182437');
INSERT INTO "schema_migrations" VALUES('20150122182521');
INSERT INTO "schema_migrations" VALUES('20150122183620');
INSERT INTO "schema_migrations" VALUES('20150122184025');
INSERT INTO "schema_migrations" VALUES('20150122184100');
INSERT INTO "schema_migrations" VALUES('20150122184117');
INSERT INTO "schema_migrations" VALUES('20150122184132');
INSERT INTO "schema_migrations" VALUES('20150122225614');
INSERT INTO "schema_migrations" VALUES('20150122231634');
INSERT INTO "schema_migrations" VALUES('20150123162332');
INSERT INTO "schema_migrations" VALUES('20150123141820');
INSERT INTO "schema_migrations" VALUES('20150123195438');
INSERT INTO "schema_migrations" VALUES('20150123195640');
INSERT INTO "schema_migrations" VALUES('20150213200515');
INSERT INTO "schema_migrations" VALUES('20150213211323');
INSERT INTO "schema_migrations" VALUES('20150213211139');
INSERT INTO "schema_migrations" VALUES('20150213212254');
INSERT INTO "schema_migrations" VALUES('20150213215726');
INSERT INTO "schema_migrations" VALUES('20150217221338');
INSERT INTO "schema_migrations" VALUES('20150219033758');
INSERT INTO "schema_migrations" VALUES('20150219034347');
INSERT INTO "schema_migrations" VALUES('20150219035056');
INSERT INTO "schema_migrations" VALUES('20150219040153');
INSERT INTO "schema_migrations" VALUES('20150219040224');
INSERT INTO "schema_migrations" VALUES('20150219041848');
INSERT INTO "schema_migrations" VALUES('20150219043120');
INSERT INTO "schema_migrations" VALUES('20150219043551');
INSERT INTO "schema_migrations" VALUES('20150220212953');
INSERT INTO "schema_migrations" VALUES('20150220212954');
INSERT INTO "schema_migrations" VALUES('20150220213147');
INSERT INTO "schema_migrations" VALUES('20150220220150');
INSERT INTO "schema_migrations" VALUES('20150220225242');
INSERT INTO "schema_migrations" VALUES('20150220230922');
INSERT INTO "schema_migrations" VALUES('20150224222652');
INSERT INTO "schema_migrations" VALUES('20150225155817');
CREATE TABLE "categories" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime, "updated_at" datetime, "article_id" integer);
CREATE TABLE "tags" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime, "updated_at" datetime, "article_id" integer);
CREATE TABLE "authors" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "email" varchar(255), "username" varchar(255), "created_at" datetime, "updated_at" datetime, "article_id" integer);
CREATE TABLE "ckeditor_assets" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "data_file_name" varchar(255) NOT NULL, "data_content_type" varchar(255), "data_file_size" integer, "assetable_id" integer, "assetable_type" varchar(30), "type" varchar(30), "width" integer, "height" integer, "created_at" datetime, "updated_at" datetime);
INSERT INTO "ckeditor_assets" VALUES(1,'aitia-open-at-olr-group.png','image/png',316529,NULL,NULL,'Ckeditor::Picture',500,333,'2015-01-23 19:25:04.978182','2015-01-23 19:25:04.978182');
INSERT INTO "ckeditor_assets" VALUES(2,'IMG_4378.jpg','image/jpeg',2639546,3,'User','Ckeditor::Picture',2448,1631,'2015-02-17 23:00:46.688039','2015-02-17 23:00:46.688039');
INSERT INTO "ckeditor_assets" VALUES(3,'superbowlsquares.jpg','image/jpeg',124931,3,'User','Ckeditor::Picture',1000,1000,'2015-02-17 23:01:27.794108','2015-02-17 23:01:27.794108');
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" datetime, "updated_at" datetime, "role_id" integer);
INSERT INTO "users" VALUES(3,'timothyvoice@livingoctave.com','$2a$10$BIdVWSrCV5Bz.USUG6Z1Te.CQCHdoj/JOBeOn12cA1Hrus2zCZc2q',NULL,NULL,NULL,32,'2015-03-02 20:51:55.055119','2015-03-02 20:50:38.121574','127.0.0.1','127.0.0.1','2015-02-13 21:26:36.950881','2015-03-02 20:51:55.055686',3);
INSERT INTO "users" VALUES(4,'timsethvoice@gmail.com','$2a$10$bUnu45jTShfXo36/.XOB5uKiDLMMbNMKEYyCXuDlv7kCymTFfFjH2',NULL,NULL,NULL,3,'2015-02-17 16:45:22.980027','2015-02-13 23:04:27.885031','127.0.0.1','127.0.0.1','2015-02-13 22:58:13.990382','2015-02-17 16:45:22.980608',1);
INSERT INTO "users" VALUES(5,'timsethvoice@goof.com','$2a$10$Ep2epVe3EMxdz337Iy13L.RkpgBlKy8Btk.fUg1Uol4/YFhkdAYkq',NULL,NULL,NULL,1,'2015-02-27 19:49:15.381120','2015-02-27 19:49:15.381120','127.0.0.1','127.0.0.1','2015-02-27 19:49:15.361387','2015-02-27 19:49:15.381685',1);
INSERT INTO "users" VALUES(6,'tim@livingoctave.com','$2a$10$N0404odV0VnpYtdvyW5dNen8mwjdb.v1mAGgSrIpkOKqjNTkOQ6iK',NULL,NULL,NULL,1,'2015-02-27 19:52:22.141840','2015-02-27 19:52:22.141840','127.0.0.1','127.0.0.1','2015-02-27 19:52:22.100543','2015-02-27 19:52:22.142985',1);
INSERT INTO "users" VALUES(7,'imsethvoice@gmail.com','$2a$10$AZPhBVnw4iodldgjdYnyTOjBAN8YlIa20LAs1tFW30iuCB/VUb19G',NULL,NULL,NULL,1,'2015-02-27 20:05:17.477124','2015-02-27 20:05:17.477124','127.0.0.1','127.0.0.1','2015-02-27 20:05:17.450151','2015-02-27 20:05:17.478412',1);
INSERT INTO "users" VALUES(8,'t@livingoctave.com','$2a$10$79WFb7ZHm8KsjYvb3/RlfOpUqilSIvLxIMbo1BHjUX5KbwnQX6sxW',NULL,NULL,NULL,1,'2015-02-27 20:08:08.257502','2015-02-27 20:08:08.257502','127.0.0.1','127.0.0.1','2015-02-27 20:08:08.230855','2015-02-27 20:08:08.259329',1);
INSERT INTO "users" VALUES(9,'t@gmail.com','$2a$10$4EG/jLmzsJMmRRH9C3nknOXPFKhUBf9fA8xhWsPp1NaW56RBqPbXe',NULL,NULL,NULL,1,'2015-02-27 20:33:35.291622','2015-02-27 20:33:35.291622','127.0.0.1','127.0.0.1','2015-02-27 20:33:35.265750','2015-02-27 20:33:35.292554',1);
CREATE TABLE "subscribers" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "roles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO "roles" VALUES(1,'subscriber','2015-02-13 21:25:05.581366','2015-02-13 21:25:05.581366');
INSERT INTO "roles" VALUES(2,'contributor','2015-02-13 21:25:05.588981','2015-02-13 21:25:05.588981');
INSERT INTO "roles" VALUES(3,'editor','2015-02-13 21:25:05.591337','2015-02-13 21:25:05.591337');
INSERT INTO "roles" VALUES(4,'admin','2015-02-13 21:25:05.593288','2015-02-13 21:25:05.593288');
CREATE TABLE "abilities" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "articles_issues_tables" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "article_id" integer, "issue_id" integer);
CREATE TABLE "articles_issues" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "article_id" integer, "issue_id" integer);
INSERT INTO "articles_issues" VALUES(7,21,1);
CREATE TABLE "issues" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "feature_image" varchar(255), "introduction" varchar(255), "summary" varchar(255), "created_at" datetime, "updated_at" datetime, "issue_feature" varchar(255), "article_id" integer, "title_cn" varchar(255), "introduction_cn" varchar(255), "summary_cn" varchar(255), "published" boolean DEFAULT 'f');
INSERT INTO "issues" VALUES(1,'音昱启程','','<h2 style="box-sizing: border-box; margin: 0.2rem 0px 0.5rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-weight: 900; color: rgb(95, 130, 171); text-rendering: optimizelegibility; line-height: 1.4; font-size: 1.5rem;">音昱启程</h2>

<p style="box-sizing: border-box; margin: 1rem 0px 1.25rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-size: 16px; line-height: 1.5rem; text-rendering: optimizelegibility; color: rgb(34, 34, 34);">在经过数年的精心规划和筹备，音昱倾情推出首个试点项目：音昱听堂。</p>

<p style="box-sizing: border-box; margin: 1rem 0px 1.25rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-size: 16px; line-height: 1.5rem; text-rendering: optimizelegibility; color: rgb(34, 34, 34);">主席感言 &quot;生命充满变数，学习弥足珍贵。通过学习生活，成就卓越人生。&quot; -曹慰德</p>

<p style="box-sizing: border-box; margin: 1rem 0px 1.25rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-size: 16px; line-height: 1.5rem; text-rendering: optimizelegibility; color: rgb(34, 34, 34);">音昱是什么？ 音昱致力于提供丰富多元的学习平台，帮助人们全面持续地提升自我，通过打造有益于个人成长的项目来引导个人和家庭充分发掘自我潜能，享受充实愉悦的人生。</p>

<h2 style="box-sizing: border-box; margin: 0.2rem 0px 0.5rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-weight: 900; color: rgb(95, 130, 171); text-rendering: optimizelegibility; line-height: 1.4; font-size: 1.5rem;">全面提升</h2>

<p style="box-sizing: border-box; margin: 1rem 0px 1.25rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-size: 16px; line-height: 1.5rem; text-rendering: optimizelegibility; color: rgb(34, 34, 34);">音昱专注于个人整体素质的全面提升，通过对个人人际关系、洞察力和能力的全面改进，引导人们充分了解其生活现状。音昱的所有活动都融合了4大相互关联的人类健康养生准则：滋养心灵、追求身心灵合一、营造和谐的人际关系、探索正念的意识，并基于这4大准则帮助人们提升个人自我意识，增进个人与他人的友爱关系，包括文化关联、家庭关系和社会关系。</p>

<h2 style="box-sizing: border-box; margin: 0.2rem 0px 0.5rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-weight: 900; color: rgb(95, 130, 171); text-rendering: optimizelegibility; line-height: 1.4; font-size: 1.5rem;">一生相伴</h2>

<p style="box-sizing: border-box; margin: 1rem 0px 1.25rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-size: 16px; line-height: 1.5rem; text-rendering: optimizelegibility; color: rgb(34, 34, 34);">每一个人的生命旅程都包含许多不同的阶段和转折点。音昱是您整个人生旅途的忠实伴侣，始终与您相随相伴。我们的城市学习中心为你提供日常学习和养生平台；近郊学习中心专门针对高度专注于学习生活的个人和团队提供服务；生态疗法朝圣项目提供深入的基于自然的服务；替代疗法医疗诊所提供一系列身体检测评估和疗程，它们亦是音昱一生相伴体验的一部分。</p>

<h2 style="box-sizing: border-box; margin: 0.2rem 0px 0.5rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-weight: 900; color: rgb(95, 130, 171); text-rendering: optimizelegibility; line-height: 1.4; font-size: 1.5rem;">扬帆起航</h2>

<p style="box-sizing: border-box; margin: 1rem 0px 1.25rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-size: 16px; line-height: 1.5rem; text-rendering: optimizelegibility; color: rgb(34, 34, 34);">音昱听堂是诠释音昱愿景的初始项目，整体项目将逐步问世。音昱听堂已开始试营业，通过举办各类活动来聚集志同道合的个人和团队，向他们展示音昱如何引导个人和家庭充分发掘自我潜能，进行自我提升，享受充实愉悦的人生。</p>

<h2 style="box-sizing: border-box; margin: 0.2rem 0px 0.5rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-weight: 900; color: rgb(95, 130, 171); text-rendering: optimizelegibility; line-height: 1.4; font-size: 1.5rem;">祝贺音昱问世！</h2>

<p style="box-sizing: border-box; margin: 1rem 0px 1.25rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-size: 16px; line-height: 1.5rem; text-rendering: optimizelegibility; color: rgb(34, 34, 34);">在我们继续不懈前进之时，我对所有为音昱项目作出贡献的人表示诚挚的感谢。让我们在这段旅程上携手共进，铸就辉煌。</p>
','在经过数年的精心规划和筹备，音昱倾情推出首个试点项目：音昱听堂。','2015-01-22 20:35:22.198209','2015-02-25 15:59:01.792064','_MG_6312.jpg',NULL,NULL,NULL,NULL,'f');
CREATE TABLE "articles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "introduction" varchar(255), "created_at" datetime, "updated_at" datetime, "author_id" integer, "category_id" integer, "tag_id" integer, "article_feature" varchar(255), "body" text(255), "issue_id" integer, "title_cn" varchar(255), "introduction_cn" varchar(255), "body_cn" varchar(255), "published" boolean DEFAULT 'f');
INSERT INTO "articles" VALUES(21,'家之源于上海盛大开幕','家之源 (Aitia Family Institute)在上海音昱听堂正式开幕','2015-02-19 21:41:30.358498','2015-02-27 23:45:33.334863',NULL,NULL,NULL,'aitia-open-at-olr-fred-feature.png','<p>Aitia Family Institute (AFI) officially opened Friday, September 26, 2014 at Octave Living Room in Shanghai. AFT enjoyed a warm welcome from Chairman Frederick Chavalit Tsao who presided over the event, which included some 90 distinguished guests and friends.</p>

<p><img alt="Group" src="http://octavejournal.com/img/aitia-open-at-olr-group.png" style="border:0px; box-sizing:border-box; display:inline-block; height:auto; max-width:100%; vertical-align:middle" title="" /></p>

<p>AFI, one of the most comprehensive family organizations in Shanghai dedicated to the enhancement of human relationships, held three seminars on its opening day for those in attendance. They included: &lsquo;Working with Asian Chinese Families&rsquo; led by Dr. Wai Yung Lee, Clinical Director of the Aitia Family Institute; &lsquo;Publication about Family Therapy and Family Science: An International Perspective&rsquo; presented by Dr. Jay Lebow, Editor-in-Chief of Family Process; and &#39;The Healing of a Couple in Distress&#39; presented by Dr. Evan Imber-Black, Professor and Program Director of the Marriage and Family Therapy Master&#39;s Program at Mercy College, Dobbs Ferry, New York.</p>

<p>Aitia Family Institute is the brainchild of its founder Chairman Frederick Chavalit Tsao. His vision is to establish a center of excellence through its leadership in practice, research and training on family dynamics and human relationships. Based on the need in the region, AFI will implement specialized projects to fill the gaps in the existing service provisions and promote new knowledge in selected areas for research. Through the integration of practice, research and trainingAFI is committed to developing more cross-regional, cross-disciplinary collaborations to benefit individuals and families in China and beyond.</p>

<p><img alt="Signing Up" src="http://octavejournal.com/img/aitia-open-at-olr-signup.png" style="border:0px; box-sizing:border-box; display:inline-block; height:auto; max-width:100%; vertical-align:middle" title="" /></p>

<p>Under the stewardship of acclaimed Clinical Director Wai Yung Lee, Ph.D. a native of Hong Kong, AFI offers a wide range of family enhancement programs to the general public, including individual, family and group counseling. Among the offerings available are Family and Marriage Therapy, Children Assessment Services and Educational Services.</p>

<p>AFI further offers a broad range of educational and training programs for clinicians and the public audience, both on short-and long-term basis, and inclusive of tailor-made in-service training packages for local agencies and academic entities. Among these include: Certificate Courses in Family Therapy, One Year Advanced Certificate Course in Family Therapy, Clinical Supervision in Family Therapy, Live Case Demonstration, Professional &amp; Public Workshops and Specialized Projects.</p>

<p>The team at AFI brings with it a wealth of experience and acclaim in Asia and globally. Dr. Wai-Yung Lee is herself the recipient of the 2014 American Family Therapy Academy&rsquo;s Distinguished Contribution to Family Therapy Theory and Practice Award for distinguished contribution to family therapy theory and practice. &ldquo;We want AFI to become to become a center of excellence through its leadership in practice, research and training on family dynamics and human relationships,&quot; says Dr. Wai-Yung Lee.</p>

<p>AFI clinical team members include:Associate Clinical Director, Chen Xiang Yi, Ph.D., who serves as Chief Physician of Shenzhen Sixth People&#39;s Hospital and is a leading figure in the development of family therapy in China;Dr. Liu Liang, [INSERT AFI TITLE], a specialist in psychiatry and psychotherapy from Tongji University in Shanghai and formerly a research fellow at The Lab of Adult Development, Massachusetts General Hospital and Harvard Medical School interrelationship dynamics in couples; and Dr. Ma Xiquan, a graduate of prestigious Tongji University who has serves as a psychiatrist in the Clinical Mental Health Department of Shanghai Dong Fang Hospital.</p>
',1,NULL,NULL,NULL,'t');
CREATE TABLE "article_translations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "article_id" integer NOT NULL, "locale" varchar(255) NOT NULL, "created_at" datetime, "updated_at" datetime, "title" varchar(255), "introduction" varchar(255), "body" text);
INSERT INTO "article_translations" VALUES(1,21,'en','2015-02-20 23:10:39.199342','2015-02-23 20:33:43.817694','Aitia Opens at the Living Room','A commitment to family — renowned Aitia Family Institute opening ceremony and inauguration seminar takes place at Octave Living Room','<p>Aitia Family Institute (AFI) officially opened Friday, September 26, 2014 at Octave Living Room in Shanghai. AFT enjoyed a warm welcome from Chairman Frederick Chavalit Tsao who presided over the event, which included some 90 distinguished guests and friends.</p>

<p><img alt="Group" src="http://octavejournal.com/img/aitia-open-at-olr-group.png" style="border:0px; box-sizing:border-box; display:inline-block; height:auto; max-width:100%; vertical-align:middle" title="" /></p>

<p>AFI, one of the most comprehensive family organizations in Shanghai dedicated to the enhancement of human relationships, held three seminars on its opening day for those in attendance. They included: &lsquo;Working with Asian Chinese Families&rsquo; led by Dr. Wai Yung Lee, Clinical Director of the Aitia Family Institute; &lsquo;Publication about Family Therapy and Family Science: An International Perspective&rsquo; presented by Dr. Jay Lebow, Editor-in-Chief of Family Process; and &#39;The Healing of a Couple in Distress&#39; presented by Dr. Evan Imber-Black, Professor and Program Director of the Marriage and Family Therapy Master&#39;s Program at Mercy College, Dobbs Ferry, New York.</p>

<p>Aitia Family Institute is the brainchild of its founder Chairman Frederick Chavalit Tsao. His vision is to establish a center of excellence through its leadership in practice, research and training on family dynamics and human relationships. Based on the need in the region, AFI will implement specialized projects to fill the gaps in the existing service provisions and promote new knowledge in selected areas for research. Through the integration of practice, research and trainingAFI is committed to developing more cross-regional, cross-disciplinary collaborations to benefit individuals and families in China and beyond.</p>

<p><img alt="Signing Up" src="http://octavejournal.com/img/aitia-open-at-olr-signup.png" style="border:0px; box-sizing:border-box; display:inline-block; height:auto; max-width:100%; vertical-align:middle" title="" /></p>

<p>Under the stewardship of acclaimed Clinical Director Wai Yung Lee, Ph.D. a native of Hong Kong, AFI offers a wide range of family enhancement programs to the general public, including individual, family and group counseling. Among the offerings available are Family and Marriage Therapy, Children Assessment Services and Educational Services.</p>

<p>AFI further offers a broad range of educational and training programs for clinicians and the public audience, both on short-and long-term basis, and inclusive of tailor-made in-service training packages for local agencies and academic entities. Among these include: Certificate Courses in Family Therapy, One Year Advanced Certificate Course in Family Therapy, Clinical Supervision in Family Therapy, Live Case Demonstration, Professional &amp; Public Workshops and Specialized Projects.</p>

<p>The team at AFI brings with it a wealth of experience and acclaim in Asia and globally. Dr. Wai-Yung Lee is herself the recipient of the 2014 American Family Therapy Academy&rsquo;s Distinguished Contribution to Family Therapy Theory and Practice Award for distinguished contribution to family therapy theory and practice. &ldquo;We want AFI to become to become a center of excellence through its leadership in practice, research and training on family dynamics and human relationships,&quot; says Dr. Wai-Yung Lee.</p>

<p>AFI clinical team members include:Associate Clinical Director, Chen Xiang Yi, Ph.D., who serves as Chief Physician of Shenzhen Sixth People&#39;s Hospital and is a leading figure in the development of family therapy in China;Dr. Liu Liang, [INSERT AFI TITLE], a specialist in psychiatry and psychotherapy from Tongji University in Shanghai and formerly a research fellow at The Lab of Adult Development, Massachusetts General Hospital and Harvard Medical School interrelationship dynamics in couples; and Dr. Ma Xiquan, a graduate of prestigious Tongji University who has serves as a psychiatrist in the Clinical Mental Health Department of Shanghai Dong Fang Hospital.</p>
');
INSERT INTO "article_translations" VALUES(2,21,'zh-CN','2015-02-23 16:59:51.785821','2015-02-23 17:05:02.083170','家之源于上海盛大开幕','家之源 (Aitia Family Institute)在上海音昱听堂正式开幕','<p>开幕礼上，董事长兼创始人曹慰德先生向来自各界的嘉宾致欢迎词。家之源是一家以家庭为主导的专业心理咨询机构，开幕当天由三场专题演讲贯穿整场活动：家之源临床总监李维榕博士的&ldquo;与亚洲的华人家庭一起工作&rdquo;、《Family Process》主编-Jay Lebow博士的&ldquo;国际视野下的家庭及家庭治疗研究的发表&rdquo;以及由来自美国纽约Dobbs Ferry，Mercy学院婚姻和家庭治疗研究生学科教授和总监Evan Imber-Black博士带来的&ldquo;怎样疗愈一对处于逆境中的夫妻&rdquo;。</p>

<p>![Group](/img/aitia-open-at-olr-group.png)</p>

<p>家之源的成立，是曹慰德先生的梦想成真。家之源希望建立一个世界一流的家庭治疗和研究中心，并将努力为业界推广最先进的临床发展及技术。家之源将根据社会需求，开展不同的专题项目，并向相关领域传播更为创新的理念及知识。通过一系列的临床服务、学术研究及专业培训，一同努力把家之源发展为一个跨地区、跨领域的专业平台，来推动中国乃至世界其它地区的家庭健康。</p>

<p>在李维榕博士的带领下，家之源的专业团队将向个人、家庭和团体提供一系列家庭心理咨询服务。其中包括家庭和婚姻治疗服务、儿童家庭评估服务及教育咨询服务。<br />
家之源为临床医生和公众提供广泛的短期与长期教育和培训服务，以及为地方机构和学术院系度身订制的在职培训。其中包括：家庭治疗认证课程、一年期家庭治疗高级认证培训课程、家庭治疗临床督导、实际案例演示、针对公众的工作坊及讲座、见习与实习项目。</p>

<p>![Signing Up](/img/aitia-open-at-olr-signup.png)</p>

<p>家之源拥有一支经验丰富的专业团队。临床总监李维榕教授，是世界知名的家庭治疗专家，2014年美国家庭治疗学院（American Family Therapy Academy）&ldquo;家庭治疗理论与实践杰出贡献奖&rdquo;得主。临床团队成员包括：临床副总监陈向一，深圳市第六人民医院主任医师，也是国内最资深的家庭治疗领导人之一。家庭治疗师刘亮博士，上海同济大学精神病学及心理治疗的专家，是国内少数专门从事家庭与婚姻心理工作的精神科医师之一，曾赴美国哈佛大学医学院进修夫妻亲密关系临床和研究。家庭治疗师马希权博士毕业于同济大学医学院，上海东方医院注册精神科医师。</p>
');
CREATE TABLE "issue_translations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "issue_id" integer NOT NULL, "locale" varchar(255) NOT NULL, "created_at" datetime, "updated_at" datetime, "title" varchar(255), "introduction" varchar(255), "summary" text);
INSERT INTO "issue_translations" VALUES(1,1,'en','2015-02-20 23:10:39.248787','2015-02-20 23:10:39.248787','Octave Budding','<p>After years of hard work and dedication by all at Octave, we are excited to introduce Octave&rsquo;s first product: the pilot project, the Living Room by Octave.</p>

<h2>Thoughts from the Founders</h2>

<p>&ldquo;In a life of continuous change, learning is our most vital skill. By learning life, you empower yourself to be your possibilities.&rdquo; - Frederick Chavalit Tsao</p>
','After years of hard work and dedication by all at Octave, we are excited to introduce Octave’s pilot project: The Living Room by Octave.');
INSERT INTO "issue_translations" VALUES(2,1,'zh-CN','2015-02-23 19:38:16.462797','2015-02-23 19:38:16.462797','音昱启程','<h2 style="box-sizing: border-box; margin: 0.2rem 0px 0.5rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-weight: 900; color: rgb(95, 130, 171); text-rendering: optimizelegibility; line-height: 1.4; font-size: 1.5rem;">音昱启程</h2>

<p style="box-sizing: border-box; margin: 1rem 0px 1.25rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-size: 16px; line-height: 1.5rem; text-rendering: optimizelegibility; color: rgb(34, 34, 34);">在经过数年的精心规划和筹备，音昱倾情推出首个试点项目：音昱听堂。</p>

<p style="box-sizing: border-box; margin: 1rem 0px 1.25rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-size: 16px; line-height: 1.5rem; text-rendering: optimizelegibility; color: rgb(34, 34, 34);">主席感言 &quot;生命充满变数，学习弥足珍贵。通过学习生活，成就卓越人生。&quot; -曹慰德</p>

<p style="box-sizing: border-box; margin: 1rem 0px 1.25rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-size: 16px; line-height: 1.5rem; text-rendering: optimizelegibility; color: rgb(34, 34, 34);">音昱是什么？ 音昱致力于提供丰富多元的学习平台，帮助人们全面持续地提升自我，通过打造有益于个人成长的项目来引导个人和家庭充分发掘自我潜能，享受充实愉悦的人生。</p>

<h2 style="box-sizing: border-box; margin: 0.2rem 0px 0.5rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-weight: 900; color: rgb(95, 130, 171); text-rendering: optimizelegibility; line-height: 1.4; font-size: 1.5rem;">全面提升</h2>

<p style="box-sizing: border-box; margin: 1rem 0px 1.25rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-size: 16px; line-height: 1.5rem; text-rendering: optimizelegibility; color: rgb(34, 34, 34);">音昱专注于个人整体素质的全面提升，通过对个人人际关系、洞察力和能力的全面改进，引导人们充分了解其生活现状。音昱的所有活动都融合了4大相互关联的人类健康养生准则：滋养心灵、追求身心灵合一、营造和谐的人际关系、探索正念的意识，并基于这4大准则帮助人们提升个人自我意识，增进个人与他人的友爱关系，包括文化关联、家庭关系和社会关系。</p>

<h2 style="box-sizing: border-box; margin: 0.2rem 0px 0.5rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-weight: 900; color: rgb(95, 130, 171); text-rendering: optimizelegibility; line-height: 1.4; font-size: 1.5rem;">一生相伴</h2>

<p style="box-sizing: border-box; margin: 1rem 0px 1.25rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-size: 16px; line-height: 1.5rem; text-rendering: optimizelegibility; color: rgb(34, 34, 34);">每一个人的生命旅程都包含许多不同的阶段和转折点。音昱是您整个人生旅途的忠实伴侣，始终与您相随相伴。我们的城市学习中心为你提供日常学习和养生平台；近郊学习中心专门针对高度专注于学习生活的个人和团队提供服务；生态疗法朝圣项目提供深入的基于自然的服务；替代疗法医疗诊所提供一系列身体检测评估和疗程，它们亦是音昱一生相伴体验的一部分。</p>

<h2 style="box-sizing: border-box; margin: 0.2rem 0px 0.5rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-weight: 900; color: rgb(95, 130, 171); text-rendering: optimizelegibility; line-height: 1.4; font-size: 1.5rem;">扬帆起航</h2>

<p style="box-sizing: border-box; margin: 1rem 0px 1.25rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-size: 16px; line-height: 1.5rem; text-rendering: optimizelegibility; color: rgb(34, 34, 34);">音昱听堂是诠释音昱愿景的初始项目，整体项目将逐步问世。音昱听堂已开始试营业，通过举办各类活动来聚集志同道合的个人和团队，向他们展示音昱如何引导个人和家庭充分发掘自我潜能，进行自我提升，享受充实愉悦的人生。</p>

<h2 style="box-sizing: border-box; margin: 0.2rem 0px 0.5rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-weight: 900; color: rgb(95, 130, 171); text-rendering: optimizelegibility; line-height: 1.4; font-size: 1.5rem;">祝贺音昱问世！</h2>

<p style="box-sizing: border-box; margin: 1rem 0px 1.25rem; padding: 0px; font-family: FZYXJW, ''Microsoft Yahei'', STXihei, sans-serif; font-size: 16px; line-height: 1.5rem; text-rendering: optimizelegibility; color: rgb(34, 34, 34);">在我们继续不懈前进之时，我对所有为音昱项目作出贡献的人表示诚挚的感谢。让我们在这段旅程上携手共进，铸就辉煌。</p>
','在经过数年的精心规划和筹备，音昱倾情推出首个试点项目：音昱听堂。');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('ckeditor_assets',3);
INSERT INTO "sqlite_sequence" VALUES('users',9);
INSERT INTO "sqlite_sequence" VALUES('roles',4);
INSERT INTO "sqlite_sequence" VALUES('articles_issues',14);
INSERT INTO "sqlite_sequence" VALUES('issues',2);
INSERT INTO "sqlite_sequence" VALUES('articles',28);
INSERT INTO "sqlite_sequence" VALUES('article_translations',9);
INSERT INTO "sqlite_sequence" VALUES('issue_translations',3);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE INDEX "idx_ckeditor_assetable_type" ON "ckeditor_assets" ("assetable_type", "type", "assetable_id");
CREATE INDEX "idx_ckeditor_assetable" ON "ckeditor_assets" ("assetable_type", "assetable_id");
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE INDEX "index_article_translations_on_article_id" ON "article_translations" ("article_id");
CREATE INDEX "index_article_translations_on_locale" ON "article_translations" ("locale");
CREATE INDEX "index_issue_translations_on_issue_id" ON "issue_translations" ("issue_id");
CREATE INDEX "index_issue_translations_on_locale" ON "issue_translations" ("locale");
COMMIT;
