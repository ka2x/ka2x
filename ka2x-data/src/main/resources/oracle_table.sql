create table if not exists gresa_sa_dtl
(
	RSADTLID decimal(12) not null
		primary key,
	RSAID decimal null comment '流水号',
	PLACEPOINTID decimal null comment '门店ID',
	COUNTERID decimal null,
	CLERKERID decimal null comment '营业员ID',
	GOODSID decimal null comment '货品ID',
	TAXRATE decimal(3,2) null comment '税率  ',
	PRICEID decimal null comment '价格ID',
	UNITPRICE decimal(20,10) null comment '原价',
	TOTAL_LINE decimal(12,4) null comment '应收金额',
	USEPRICE decimal(20,10) null comment '时价',
	REALMONEY decimal(12,4) null comment '实收金额',
	RESAPRICE decimal(20,10) null comment '零售价',
	GOODSQTY decimal(16,6) null comment '单位数量',
	GOODSUNIT varchar(10) null comment '货品基本单位',
	PRESCRIBEFLAG decimal(4) null,
	PRESCRIPTIONDTLID decimal null comment '药方细单ID',
	COMBINESOURCEID decimal null comment '组合商品ID',
	PRESENTFLAG decimal(1) null,
	BREAKSALES decimal(1) null,
	ORRSADTLID decimal null,
	USESTATUS decimal(1) null comment '状态',
	STORAGEID decimal null,
	GOODSDTLID decimal null,
	BATCHID decimal null,
	POSID decimal null,
	LOTID decimal null,
	GOODSSTATUSID decimal null comment '批号',
	MANUALRATE decimal(16,6) null,
	MANUALMONEY decimal(12,2) null comment '整单手工折扣金额',
	MANUALPREMONEY decimal(12,2) null comment '整单手工优惠金额',
	MARKETRATE decimal(16,6) null comment '促销折扣率',
	MARKETMONEY decimal(12,2) null comment '促销折扣金额',
	MARKETPREMONEY decimal(12,2) null comment '促销优惠金额',
	MAINMANUALMONEY decimal(12,2) null comment '整单手工折扣金额',
	MAINMANUALPREMONEY decimal(12,2) null comment '整单手工优惠金额',
	MAINMARKETMONEY decimal(12,2) null comment '整单促销折扣金额',
	MAINMARKETPREMONEY decimal(12,2) null comment '整单促销优惠金额',
	PARENTRSADTLID decimal null comment '赠品所属明细ID',
	SHOPPEFLAG decimal(1) null,
	COMBINEGOODSQTY decimal(16,6) null comment '组合商品数量',
	REDUCEDPRICE decimal(20,10) null comment '手工减价价格',
	REDUCEDMONEY decimal(12,2) null comment '手工减价金额',
	COMBPREMONEY decimal(12,2) null comment '组合商品优惠金额',
	COMBPRICE decimal(20,10) null comment '组合商品价格',
	RECIPEFLAG decimal(1) null,
	RECIPENO varchar(40) null,
	RECIPTDATE datetime null,
	RECIPEHOSPITAL varchar(60) null,
	RECIPEDOCTOR varchar(20) null,
	SKCERTID decimal null,
	MEMO varchar(200) null,
	ZXCOLUMN1 varchar(50) null comment '复核员',
	ZXCOLUMN2 varchar(50) null comment 'OTO销售渠道',
	ZXCOLUMN3 varchar(50) null comment '值为‘1’是从10021生成的流水',
	ZXCOLUMN4 varchar(50) null comment '值为‘1’是会员补卡生成的流水',
	ZXCOLUMN5 varchar(50) null comment '小票类型',
	COSTINGPRICE decimal(20,10) null comment '成本价',
	COSTINGMONEY decimal(12,2) null comment '成本金额',
	NOPROMFLAG decimal(1) null comment '不参与整单促销标记',
	GROUPREQDTLID decimal null,
	MAININTEGPREMONEY decimal(12,2) null,
	MAINVOUCHPREMONEY decimal(12,2) null,
	INSPOINTSFLAG decimal(1) null,
	INSDISCFLAG decimal(1) null,
	NOUSEVOUFLAG decimal(1) null,
	ISLIMIT decimal(1) null,
	DTLINTEGRAL decimal(20,10) null,
	EXAMPRICE decimal(20,10) null,
	ACCFLAG decimal(1) null,
	ECODES varchar(100) null,
	PEIFANGMANID decimal null comment '配方员ID',
	SHENFANGMANID decimal null comment '审方员ID',
	IGNOREMONEY decimal(12,2) null,
	GOODSNO varchar(100) null comment '商品编码',
	LOTNO varchar(100) null comment '批号	',
	ALLOCATIONMON decimal(12,2) null,
	SINGLEFLAG decimal null,
	SERIESFLAG decimal null,
	ENTIREFLAG decimal null,
	SINGLE decimal(3) null,
	SERIES decimal(3) null,
	ENTIRE decimal(3) null,
	PROMSALESID decimal null,
	LARGESHOPPINGFLAG decimal(2) null,
	NOSINGLEPROMFLAG decimal(2) null comment '单品系列取促',
	CHUFANGDTLID decimal null,
	CLEARANCEFLAG decimal(1) null,
	SETMARKETMONEY decimal(12,2) null comment '系列促销折扣金额',
	SETMARKETPREMONEY decimal(12,2) null comment '系列促销优惠金额',
	ZX_REALMONEY decimal(12,4) null comment '专项实收金额',
	VARIETYID decimal null,
	XQTSDAYS varchar(30) null,
	PUSH_CLASS varchar(10) null comment '主推级别',
	IS_SALE_PRICE varchar(10) null comment '是否特价商品',
	RECEIPTPRIALONE decimal(1) null,
	ZX_SJEXPORTXMLFLAG decimal(2) null,
	YBCODE varchar(50) null comment '医保编码',
	ACTIVITYMONEY decimal(12,2) null comment '活动赠品金额',
	ACTIVITYFLAG decimal(1) null comment '活动赠品标识',
	ZX_PROVINCECOLLFLAG decimal(1) null comment '省局零售采集标志',
	IS_MI varchar(10) null comment '是否医保',
	MI_CLASS varchar(10) null comment '医保甲乙类',
	REDUCEDPRICEMEMO varchar(200) null comment '手工折价备注',
	CNAME varchar(100) null comment '患者姓名',
	IDCODE varchar(100) null comment '身份证号',
	TELEPHONE varchar(100) null comment '电话',
	OTHERID decimal null comment '复核员ID',
	RECIPMEMO varchar(200) null comment '处方内容',
	AGE decimal null comment '年龄',
	SEX decimal(1) null comment '性别 1代表：男, 2代表：女',
	ZXPRICE decimal(20,10) null comment '分摊前价格',
	ZXMONEY decimal(12,4) null comment '分摊前金额',
	COSTPRICE decimal(20,4) null comment '未含税成本',
	DHID decimal null comment '兑换设置id',
	DHINTEGRAL decimal(12,2) null comment '兑换积分',
	DHMOENY decimal(12,2) null comment '抵扣金额',
	RULECODE varchar(100) null comment '优惠劵规则',
	VOUCHERCODE varchar(100) null comment '优惠劵编码',
	VOUCHERMONEY decimal(12,2) null comment '单品优惠金额',
	VOUCHERSUBTYPE varchar(100) null comment '劵类型',
	SERIESMONEY decimal(12,2) null comment '系列品种优惠金额',
	GROUPMONEY decimal(12,2) null comment '组合品种优惠金额',
	ALLMONEY decimal(12,2) null comment '整单全场优惠金额',
	NOMONEY decimal(12,2) null comment '整单不参与品优惠金额',
	LEVELMONEY decimal(12,2) null comment '整单参与级别优惠金额',
	NOLEVELMONEY decimal(12,2) null comment '整单不参与级别优惠金额',
	SETNO varchar(40) null comment '系列编码',
	DHQTY decimal(12,2) null comment '兑换数量',
	JT_AMT decimal(16,4) null comment '加提金额参数',
	SZYBTRANSFLAG decimal(1) null comment '医保进销存上传标识',
	BREAKDTLID decimal null comment '拆零管理细单ID',
	SURPLUS_NUMBER decimal null comment '拆零剩余份数',
	SALE_NUMBER decimal null comment '拆零销售份数',
	PRICE07 decimal(16,4) null comment '会员价/员工价',
	EXEC_PRICE decimal(16,4) null comment '促销执行价',
	PROM_FLAG varchar(2) null comment '是否有促销：Y/N',
	ZZ_PRICE decimal(16,4) null comment '至尊价格',
	RSAFLAG decimal(1) null comment '限购判断',
	LOW_PRICE decimal(16,4) null comment '商品低价',
	UNIT_PRICE decimal(16,4) null comment '商品标准单价',
	ROYALTY_RATE decimal(16,4) null comment '提成比例',
	ZZHY_ZK decimal(10,4) null comment '至尊会员折扣',
	PROMORDERDTLID varchar(50) null comment '中台细单ID',
	USEPRICE2 decimal(20,4) null comment '分摊单价(中台)',
	REALMONEY2 decimal(12,4) null comment '分摊金额(中台)',
	ZX_YLZD decimal null comment '预留字段',
	SID decimal null comment 'ERP传中台虚单',
	SPLITORIRSADTLID decimal(12) null comment '拆单(中台)',
	ISZPHG decimal(1) null comment '是否赠品换购',
	ZPHGSID decimal(12) null comment '产生赠品换购原单',
	RULEID decimal null comment '促销中心策略总单ID',
	RULEDTLID decimal null comment '促销中心策略细单ID',
	RULETYPE decimal(2) null comment '促销中心促销类型',
	BELONGGOODSNO varchar(100) null,
	GIFTGROUPIDS varchar(100) null,
	GOODSTOPRESENTFLAG varchar(50) null,
	PROMORDERID varchar(50) null comment '中台单据ID',
	UNITPRICE_BAK decimal(20,4) null comment '中药加价前的unitprice价',
	USEPRICE_BAK decimal(20,4) null comment '中药加价前的useprice价',
	ZY_ADDPRICE_RATE decimal(12,2) null comment '中药加价比率',
	SUPPER_VIP_EXCLUSIVE decimal(12,2) null comment '至尊会员独享优惠价',
	SUPPER_VIP_COUPON decimal(12,2) null comment '至尊会员独享优惠券',
	PROMOTERNO decimal null comment '推广员工号',
	KH04_AKC515 varchar(50) null comment '保定医保_用法代码',
	KH04_AKC516 varchar(100) null comment '保定医保_用法名称',
	KH02_AKA072 varchar(20) null comment '保定医保_频次代码',
	KH02_CKC402 varchar(50) null comment '保定医保_频次名称',
	MEMBERSHIPMONEY decimal(12,2) null comment '会员主推优惠金额',
	MEMBERSHIPMONEY2 decimal(12,2) null comment '会员主推优惠金额2',
	VIPPRICE decimal(16,4) null comment '会员价',
	EPHEDRINE decimal(1) null comment '是否麻黄碱 1 是 20201005添加',
	PRE_REALMONEY decimal(16,4) null comment '优惠券预分摊后金额',
	PRE_SHAREPRICE decimal(16,4) null comment '优惠券预分摊金额',
	XQPRICE decimal(16,4) null comment '执行近效期打折标志',
	SYS_MODIFYDATE datetime null comment '时间戳',
	ORDERDTLID decimal null comment '电商',
	ISPRE decimal(1) null comment '是否预热促销',
	PREDATE datetime null comment '预热日期',
	THEMEID varchar(100) null comment '主题ID',
	REDUCED_TYPE decimal(4) null comment '手工折价类型ID',
	ZX_TOGBYBDATE datetime null comment '医保数据上传时间'
);

