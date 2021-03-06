USE [HCDR]
GO
/****** Object:  Table [dbo].[IndexS计算元素]    Script Date: 2017/5/17 15:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndexS计算元素](
	[ID] [int] NOT NULL,
	[指标ID] [int] NULL,
	[序号] [int] NULL,
	[元素代码] [nvarchar](500) NULL,
	[元素名称] [nvarchar](500) NULL,
	[运算符L] [nvarchar](500) NULL,
	[运算符R] [nvarchar](500) NULL,
	[聚合方式] [nvarchar](500) NULL,
	[对应表] [nvarchar](500) NULL,
	[对应表来源] [nvarchar](500) NULL,
	[对应字段] [nvarchar](500) NULL,
	[对应字段来源] [nvarchar](500) NULL,
	[SQL脚本] [nvarchar](500) NULL,
	[GUID] [uniqueidentifier] NULL,
	[更新时间] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IndexS计算指标间]    Script Date: 2017/5/17 15:33:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndexS计算指标间](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[指标ID] [int] NULL,
	[序号] [int] NULL,
	[元素指标ID] [int] NULL,
	[元素指标类别] [nvarchar](500) NULL,
	[元素指标序号] [nvarchar](500) NULL,
	[元素指标名称] [nvarchar](500) NULL,
	[运算符L] [nvarchar](500) NULL,
	[运算符R] [nvarchar](500) NULL,
	[GUID] [uniqueidentifier] NULL,
	[更新时间] [datetime] NULL,
 CONSTRAINT [PK_IndexS计算指标间] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IndexS医院监管业务指标]    Script Date: 2017/5/17 15:33:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndexS医院监管业务指标](
	[ID] [int] NOT NULL,
	[序号] [int] NULL,
	[类别] [nvarchar](100) NULL,
	[指标名称] [nvarchar](100) NULL,
	[计算公式] [nvarchar](100) NULL,
	[核心指标] [bit] NULL,
	[版本] [int] NULL,
	[启用日期] [datetime] NULL,
	[停用日期] [datetime] NULL,
	[GUID] [uniqueidentifier] NULL,
	[更新时间] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IndexS医院监管业务指标集上报数据]    Script Date: 2017/5/17 15:33:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndexS医院监管业务指标集上报数据](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[报表月] [nvarchar](50) NULL,
	[指标ID] [int] NULL,
	[计算值] [nvarchar](50) NULL,
	[指标值] [nvarchar](50) NULL,
	[GUID] [uniqueidentifier] NULL,
	[插入时间] [datetime] NULL,
	[填报部门] [nvarchar](50) NULL,
	[审核人] [nvarchar](50) NULL,
	[审核时间] [datetime] NULL,
	[更新人] [nvarchar](50) NULL,
	[更新时间] [datetime] NULL,
 CONSTRAINT [PK_IndexS医院监管业务指标集上报数据] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IndexS医院监管业务指标集上报数据元素]    Script Date: 2017/5/17 15:33:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndexS医院监管业务指标集上报数据元素](
	[ID] [int] NOT NULL,
	[ParentID] [int] NULL,
	[计算元素ID] [int] NULL,
	[计算元素值] [nvarchar](50) NULL,
	[GUID] [uniqueidentifier] NULL,
	[更新时间] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IndexS元素条件]    Script Date: 2017/5/17 15:33:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndexS元素条件](
	[ID] [int] NOT NULL,
	[元素ID] [int] NULL,
	[条件名称] [nvarchar](500) NULL,
	[顺序操作符] [nvarchar](500) NULL,
	[条件字段] [nvarchar](500) NULL,
	[条件字段来源] [nvarchar](500) NULL,
	[操作符] [nvarchar](500) NULL,
	[值] [nvarchar](500) NULL,
	[GUID] [uniqueidentifier] NULL,
	[更新时间] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IndexS院办确认状态]    Script Date: 2017/5/17 15:33:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndexS院办确认状态](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[报表月] [nvarchar](50) NULL,
	[院办确认状态] [nvarchar](50) NULL,
	[更新时间] [datetime] NULL,
 CONSTRAINT [PK_IndexS院办确认状态] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[v_indexsviewdet]    Script Date: 2017/5/17 15:33:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_indexsviewdet]
AS
SELECT   ID, 报表月, 指标ID,
                    (SELECT   类别
                     FROM      dbo.IndexS医院监管业务指标
                     WHERE   (ID = dbo.IndexS医院监管业务指标集上报数据.指标ID)) AS 类别,
                    (SELECT   序号
                     FROM      dbo.IndexS医院监管业务指标 AS IndexS医院监管业务指标_1
                     WHERE   (ID = dbo.IndexS医院监管业务指标集上报数据.指标ID)) AS 序号, dbo.f_indexviw_t0(指标ID) AS 指标名称, 
                CONVERT(numeric(18, 2), 指标值) AS 指标值, dbo.f_indexviw_t1(报表月, 指标ID) AS 环值, dbo.f_indexviw_t2(报表月, 
                指标ID) AS 同值, CASE WHEN CONVERT(numeric(18, 2), 指标值) = 0 THEN NULL ELSE CONVERT(numeric(18, 2), 
                (指标值 - dbo.f_indexviw_t1(报表月, 指标ID)) / 指标值 * 100) END AS 环比, CASE WHEN CONVERT(numeric(18, 2), 
                指标值) = 0 THEN NULL ELSE CONVERT(numeric(18, 2), (指标值 - dbo.f_indexviw_t2(报表月, 指标ID)) / 指标值 * 100) 
                END AS 同比, 填报部门, 审核人
FROM      dbo.IndexS医院监管业务指标集上报数据

GO
/****** Object:  View [dbo].[v_indexsviewfx]    Script Date: 2017/5/17 15:33:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_indexsviewfx]
AS
SELECT   ID, 报表月, 指标ID, 类别, 序号, 指标名称, 指标值, 环值, 同值, 环比, 同比, dbo.f_indexviw_f1(报表月, 指标ID) 
                AS 年大值月, dbo.f_indexviw_f2(报表月, 指标ID) AS 年小值月, dbo.f_indexviw_f3(报表月, 指标ID) AS 年大环比, 
                dbo.f_indexviw_f4(报表月, 指标ID) AS 年小环比, dbo.f_indexviw_f5(报表月, 指标ID) AS 年大同比, 
                dbo.f_indexviw_f6(报表月, 指标ID) AS 年小同比, dbo.f_indexviw_f7(报表月, 指标ID) AS 年中位数差, 填报部门, 
                审核人
FROM      dbo.v_indexsviewdet

GO
/****** Object:  View [dbo].[v_indexs_locimport]    Script Date: 2017/5/17 15:33:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*where b.报表月='201702'*/
CREATE VIEW [dbo].[v_indexs_locimport]
AS
SELECT   a.部门名称, b.填报标识, b.报表月
FROM      (SELECT   ID,
                                     (SELECT   名称
                                      FROM      医院填报数据.dbo.部门
                                      WHERE   (ID = 医院填报数据.dbo.填报规则.部门ID)) AS 部门名称
                 FROM      医院填报数据.dbo.填报规则
                 WHERE   (表单版本ID IN
                                     (SELECT   ID
                                      FROM      医院填报数据.dbo.表单版本
                                      WHERE   (表单ID IN
                                                          (SELECT   ID
                                                           FROM      医院填报数据.dbo.表单
                                                           WHERE   (表名 LIKE 'YSYYHLHT%')))))) AS a LEFT OUTER JOIN
                医院填报数据.dbo.填报内容 AS b ON a.ID = b.填报规则ID

GO
/****** Object:  View [dbo].[v_IndexS医院监管业务指标集上报数据]    Script Date: 2017/5/17 15:33:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_IndexS医院监管业务指标集上报数据]
AS
SELECT   a.ID, a.报表月, b.序号, b.类别, b.指标名称, b.计算公式, b.核心指标, b.版本, a.计算值, a.指标值, a.插入时间, a.更新时间, 
                a.更新人, a.审核人, a.审核时间, a.填报部门
FROM      dbo.IndexS医院监管业务指标集上报数据 AS a LEFT OUTER JOIN
                dbo.IndexS医院监管业务指标 AS b ON a.指标ID = b.ID

GO
ALTER TABLE [dbo].[IndexS院办确认状态] ADD  CONSTRAINT [DF_IndexS院办确认状态_更新时间]  DEFAULT (getdate()) FOR [更新时间]
GO
/****** Object:  StoredProcedure [dbo].[p_indexs_conview]    Script Date: 2017/5/17 15:33:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_indexs_conview]
	-- Add the parameters for the stored procedure here
	@报表月 nvarchar(50),
	@角色 nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

--SELECT  [ID]
--      ,[报表月]
--      ,[序号]
--      ,[类别]
--      ,[指标名称]
--      ,[计算公式]
--      ,[核心指标]
--      ,[版本]
--      ,[计算值]
--      ,[指标值]
--      ,[插入时间]
--      ,[更新时间]
--      ,[更新人]
--      ,[审核人]
--      ,[审核时间]
--      ,[填报部门]
--	   FROM [HCDR].[dbo].[v_IndexS医院监管业务指标集上报数据]
--    where 报表月=@报表月 and 
--	填报部门 in(
--	 select 名称 from 医院填报数据.dbo.部门 where ID in(select 部门ID from 医院填报数据.dbo.[部门角色关联表] where 角色ID=@角色))
	if object_id(N'#tmp001',N'U') is not null drop table #tmp001
	create table #tmp001(
	部门 nvarchar(50),
	序号 nvarchar(50),
	指标值 nvarchar(50)
	)
	declare @填报规则ID nvarchar(50)
	declare @部门 nvarchar(50)
	declare @审核人 nvarchar(50)
	declare @审核时间 nvarchar(50)
	Declare MyCusror2 Cursor Scroll
                  For select a.内容,b.部门ID from 
					[医院填报数据].[dbo].[填报内容] a left join [医院填报数据].[dbo].[填报规则] b 
					on a.填报规则ID=b.ID
					where a.报表月=@报表月 and b.部门ID in(select 部门ID from 医院填报数据.dbo.[部门角色关联表] where 角色ID=@角色)
            Open MyCusror2
			declare @x xml
			declare @部门ID nvarchar(50)
            Fetch next From MyCusror2
            Into @x,@部门ID
            While(@@Fetch_Status = 0)
                  Begin

                         Begin
								select @部门=名称 from [医院填报数据].[dbo].部门 where id=@部门ID
								DECLARE @sql nvarchar(max)  
								set @sql='insert into #tmp001 select '''+@部门+''' as 部门,p.* FROM(      
								SELECT     
								C.value(''local-name(.)'',''VARCHAR(20)'') AS 序号,      
								C.value(''.'',''VARCHAR(20)'') AS 指标值 
								FROM @xmlParas.nodes('''+'/*/*/*' +''') T(C)    
								) as p'  
								print @sql
								EXECUTE sp_executesql @sql, N'@xmlParas as xml',@xmlParas=@x  
                         End

                         Fetch next From MyCusror2
                         Into @x,@部门ID
                  End

            Close MyCusror2
            Deallocate MyCusror2
			delete from #tmp001 where 序号='报表月'
			update #tmp001 set 序号=stuff(序号,1,2,'')
			select @报表月 as '报表月',a.序号,b.指标名称,a.指标值,a.部门 from #tmp001 a left join [dbo].[IndexS医院监管业务指标] b on a.序号=b.序号
			where b.类别='明细指标'








END

GO
/****** Object:  StoredProcedure [dbo].[p_indexs_fillcon]    Script Date: 2017/5/17 15:33:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[p_indexs_fillcon]
	-- Add the parameters for the stored procedure here
	@填报内容ID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


declare @报表月 nvarchar(10)
delete from 医院填报数据.dbo.YSYYHLHT
declare @gzID int
select @gzID=填报规则ID,@报表月=报表月 from 医院填报数据.dbo.填报内容 where ID=@填报内容ID
exec hcdr.dbo.p_indexs_insimporttmp @gzID,@报表月
delete from 医院填报数据.dbo.YSYYHLHT  where 序号='报表月'
update 医院填报数据.dbo.YSYYHLHT set 序号=stuff(序号,1,2,'')
--更新当月指标上报数据
Declare MyCusror2 Cursor Scroll
                  For select 序号,指标值,部门,审核人,审核时间 from 医院填报数据.dbo.YSYYHLHT where 报表月=@报表月
            Open MyCusror2
			declare @序号 nvarchar(100),@指标值 nvarchar(100),@部门 nvarchar(100),@审核人 nvarchar(100),@审核时间 nvarchar(100)
            Fetch next From MyCusror2
            Into @序号,@指标值,@部门,@审核人,@审核时间
            While(@@Fetch_Status = 0)
                  Begin

                         Begin
						 update [HCDR].[dbo].[IndexS医院监管业务指标集上报数据]
						 set 指标值=@指标值,更新时间=getdate(),填报部门=@部门,审核人=@审核人,审核时间=@审核时间
						where 报表月=@报表月 and 指标ID in (SELECT ID  FROM [HCDR].[dbo].[IndexS医院监管业务指标] where 类别='明细指标' and 序号=@序号)
							
                         End

                         Fetch next From MyCusror2
                         Into @序号,@指标值,@部门,@审核人,@审核时间
                  End

            Close MyCusror2
            Deallocate MyCusror2



END

GO
/****** Object:  StoredProcedure [dbo].[p_indexs_insimporttmp]    Script Date: 2017/5/17 15:33:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_indexs_insimporttmp]
	-- Add the parameters for the stored procedure here
	@填报规则ID int,@报表月 nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--declare @填报规则ID int
	--declare @报表月 nvarchar(max)
	--set @填报规则ID=443
	--set @报表月='201702'

	declare @x xml
	declare @部门 nvarchar(50)
	declare @审核人 nvarchar(50)
	declare @审核时间 nvarchar(50)
	SELECT @x=[内容],@审核人=isnull(审核人,''),@审核时间=convert(nvarchar(50),审核时间,120) FROM [医院填报数据].[dbo].[填报内容] where 填报规则ID=@填报规则ID and 报表月=@报表月
	select @部门=名称 from [医院填报数据].[dbo].部门 where id in(select 部门ID from  [医院填报数据].[dbo].[填报规则] where ID=@填报规则ID)
	DECLARE @sql nvarchar(max)  
set @sql='insert into [医院填报数据].dbo.YSYYHLHT select '+@报表月+','''+@部门+''','''+@审核人+''','''+@审核时间+''',p.* FROM(      
	SELECT     
			C.value(''local-name(.)'',''VARCHAR(20)'') AS attrName,      
			C.value(''.'',''VARCHAR(20)'') AS attrValue 
			FROM @xmlParas.nodes('''+'/*/*/*' +''') T(C)    
	) as p'  
	--print @sql
	EXECUTE sp_executesql @sql, N'@xmlParas as xml',@xmlParas=@x  

END

GO
/****** Object:  StoredProcedure [dbo].[p_indexs_ybcon]    Script Date: 2017/5/17 15:33:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_indexs_ybcon]
	-- Add the parameters for the stored procedure here
	@报表月 nvarchar(50),
	@rtn nvarchar(50) output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 if exists(select * from [dbo].[v_indexsviewfx] where 类别='明细指标' and 报表月=@报表月)
 begin
	if not exists(select * from [dbo].[IndexS院办确认状态] where 报表月=@报表月)
	begin
		insert into [dbo].[IndexS院办确认状态] values(@报表月,'已确认',getdate())
		if @@identity is not null set @rtn='成功完成报表月'+@报表月+'确认操作!'
	end
	else set @rtn='报表月'+@报表月+'已经是确认状态!'
 end
 else set @rtn='报表月'+@报表月+'不存在指标数据!'
 
 

 



END

GO
/****** Object:  StoredProcedure [dbo].[p_indexsins]    Script Date: 2017/5/17 15:33:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- alter date: <alter Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_indexsins] @报表月 nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

			
	  Declare MyCusror1 Cursor Scroll
                  For select ID from IndexS医院监管业务指标 --where id in (5)
            Open MyCusror1
			declare @指标ID int
	        Fetch next From MyCusror1 Into @指标ID
            While(@@Fetch_Status = 0)
            begin     
			declare @value numeric(18,2)
			set @value=null
			declare @上报数据ID int
			declare @运算sql nvarchar(max)
				insert into [dbo].[IndexS医院监管业务指标集上报数据] (报表月,指标ID)values(@报表月,@指标ID)
				set @上报数据ID=@@IDENTITY
			
			
			Declare MyCusror2 Cursor Scroll
                 For select ID,序号,聚合方式,对应字段,对应表 from IndexS计算元素 where 指标ID=@指标ID
            Open MyCusror2
			declare @元素ID int
			declare @序号 int
			declare @聚合方式 nvarchar(50)
			declare @对应字段 nvarchar(50)
			declare @对应表 nvarchar(50)
		    Fetch next From MyCusror2 Into @元素ID,@序号,@聚合方式,@对应字段,@对应表
            While(@@Fetch_Status = 0)
            begin     
					declare @元素sql nvarchar(max)
					set @对应表='医院填报数据.dbo.'+@对应表
					set @元素sql='select @序号'+convert(nvarchar(50),@序号)+'='+@聚合方式+'('+@对应字段+') from '+@对应表
					set @元素sql='insert into IndexS医院监管业务指标集上报数据元素(ParentID,计算元素ID,计算元素值) select '+convert(nvarchar(50),@上报数据ID)+' as ParentID,'+convert(nvarchar(50),@元素ID)+' as 计算元素ID,'+@聚合方式+'('+@对应字段+') as 计算元素值 from '+@对应表+' where 报表月='''+@报表月+''''
					--获取条件
					  declare @where nvarchar(max)
					  set @where=''
					  select @where=@where+isnull(顺序操作符,'')+' '+条件字段+' '+操作符 +'('''+replace(值,',',''',''')+''') '  from IndexS元素条件 where 元素ID=@元素ID
					  if ltrim(@where)<>'' set @元素sql=@元素sql+' and '+@where
					   print @元素ID  
						print @元素sql    
					  exec(@元素sql)
					
			Fetch next From MyCusror2 Into @元素ID,@序号,@聚合方式,@对应字段,@对应表
			end
            
		close MyCusror2
	deallocate MyCusror2
	       
		   		set @运算sql=''
				select @运算sql=@运算sql+isnull(运算符L,'')+dbo.f_获取元素值(@上报数据ID,ID)+isnull(运算符R,'') from IndexS计算元素	where 指标ID=@指标ID
				
	
				set @运算sql='set @value='+@运算sql

				set @运算sql=replace(@运算sql,'@报表月',@报表月)--复杂规则使用
				
				if @运算sql is null goto next1
				exec sp_executesql @运算sql,N'@value float output' ,@value output

				update [IndexS医院监管业务指标集上报数据] set 计算值=@value,指标值=@value where id=@上报数据ID
			next1:Fetch next From MyCusror1 Into @指标ID
			end
           	close MyCusror1
	deallocate MyCusror1
  
  
  

END









GO
/****** Object:  StoredProcedure [dbo].[p_indexslook]    Script Date: 2017/5/17 15:33:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- alter date: <alter Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_indexslook] @指标ID们 nvarchar(max),@报表月A nvarchar(max),@报表月B nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
  declare @指标 nvarchar(max)
  declare @sql nvarchar(max)
  declare @sqlx nvarchar(max)
  declare @sqlz nvarchar(max)
  set @sqlx=''
  set @sqlz=''
    declare @no int
  set @no=1
  
  while(CHARINDEX(',',@指标ID们)>0)
  begin
		set @sqlx=@sqlx+'['+SUBSTRING(@指标ID们,1,CHARINDEX(',',@指标ID们)-1)+'],'
		select @指标=指标名称 from IndexS医院监管业务指标 where id=SUBSTRING(@指标ID们,1,CHARINDEX(',',@指标ID们)-1)
		set @sqlz=@sqlz+'max(['+SUBSTRING(@指标ID们,1,CHARINDEX(',',@指标ID们)-1)+']) as '''+convert(nvarchar(100),@no)+'.'+@指标+''','
		set @指标ID们=stuff(@指标ID们,1,CHARINDEX(',',@指标ID们),'')
		set @no=@no+1
  end 
  		if(CHARINDEX(',',@指标ID们)=0)
		begin
			set @sqlx=@sqlx+'['+@指标ID们+']'
			select @指标=指标名称 from IndexS医院监管业务指标 where id=@指标ID们
			set @sqlz=@sqlz+'max(['+@指标ID们+']) as '''+convert(nvarchar(100),@no)+'.'+@指标+''''
		end 
set @sqlz=replace(@sqlz,'/','')
  set @sql='select 报表月,'+@sqlz+' FROM [IndexS医院监管业务指标集上报数据] pivot( MAX(指标值) FOR 指标ID IN ('+@sqlx+'))a '
  set @sql=@sql+'where 报表月 >='+@报表月A+' and 报表月 <='+@报表月B+' group by 报表月'
  exec(@sql)


END


--exec [p_calcCRS] 'a','ab'

GO
/****** Object:  StoredProcedure [dbo].[p_indexslooketl]    Script Date: 2017/5/17 15:33:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- alter date: <alter Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_indexslooketl] @报表月 nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
  
if exists(select * from tempdb..sysobjects where id=object_id('tempdb..###tmpetlvw')) drop table #tmpetlvw
create table #tmpetlvw(
tmpstr nvarchar(max)
)
  	
			Declare MyCusror2 Cursor Scroll
                 For SELECT dbo.f_strp(指标名称,'`',1) as 表名  FROM [HCDR].[dbo].[IndexS医院监管业务指标]  where 类别='ETL数据校验'  group by dbo.f_strp(指标名称,'`',1)
            Open MyCusror2
			declare @表名 nvarchar(max)
		    Fetch next From MyCusror2 Into @表名
            While(@@Fetch_Status = 0)
            begin     
					
				 declare @指标名称些 nvarchar(max)
				 set @指标名称些=''
				 Declare MyCusror3 Cursor Scroll
                 For select ID,指标名称,计算公式 FROM [HCDR].[dbo].[IndexS医院监管业务指标] where dbo.f_strp(指标名称,'`',1)=@表名
            Open MyCusror3
			declare @指标ID nvarchar(max)
			declare @指标名称 nvarchar(max)
			declare @计算公式 nvarchar(max)
		    Fetch next From MyCusror3 Into @指标ID,@指标名称,@计算公式
            While(@@Fetch_Status = 0)
            begin     

			--取值
			declare @指标值 nvarchar(max)
			set @指标值=''
			--set @计算公式=''
			select @指标值=isnull(指标值,'') from IndexS医院监管业务指标集上报数据 where 报表月=@报表月 and 指标ID=@指标ID
			set @指标名称些=@指标名称些+'^'+dbo.f_strp(@指标名称,'`',2)+'^'+@计算公式+'^'+@指标值
					
			Fetch next From MyCusror3 Into @指标ID,@指标名称,@计算公式
			end
            
		close MyCusror3
	deallocate MyCusror3
					set @指标名称些=stuff(@指标名称些,1,CHARINDEX('^',@指标名称些),'')
					declare @表名描述 nvarchar(max)
					set @表名描述=''
					select top 1 @表名描述=对应表来源 from [dbo].[IndexS计算元素] where [对应表]=@表名
					insert into #tmpetlvw values(@表名+'`'+@表名描述+'^'+@指标名称些)
					--print @指标名称些
					--select top 1 from [dbo].[IndexS计算元素] where
			Fetch next From MyCusror2 Into @表名
			end
            
		close MyCusror2
	deallocate MyCusror2


	select 
	@报表月 报表月,
	dbo.f_strp(tmpstr,'^',1) 表名,
	dbo.f_strp(tmpstr,'^',2) 核查内容描述1,
	dbo.f_strp(tmpstr,'^',3) 计算公式1,
	dbo.f_strp(tmpstr,'^',4) 指标值1,
	dbo.f_strp(tmpstr,'^',5) 核查内容描述2,
	dbo.f_strp(tmpstr,'^',6) 计算公式2,
	dbo.f_strp(tmpstr,'^',7) 指标值2,
	dbo.f_strp(tmpstr,'^',8) 核查内容描述3,
	dbo.f_strp(tmpstr,'^',9) 计算公式3,
	dbo.f_strp(tmpstr,'^',10) 指标值3,
	dbo.f_strp(tmpstr,'^',11) 核查内容描述4,
	dbo.f_strp(tmpstr,'^',12) 计算公式4,
	dbo.f_strp(tmpstr,'^',13) 指标值4,
	dbo.f_strp(tmpstr,'^',14) 核查内容描述5,
	dbo.f_strp(tmpstr,'^',15) 计算公式5,
	dbo.f_strp(tmpstr,'^',16) 指标值5,
	dbo.f_strp(tmpstr,'^',17) 核查内容描述6,
	dbo.f_strp(tmpstr,'^',18) 计算公式6,
	dbo.f_strp(tmpstr,'^',19) 指标值6,
	dbo.f_strp(tmpstr,'^',20) 核查内容描述7,
	dbo.f_strp(tmpstr,'^',21) 计算公式7,
	dbo.f_strp(tmpstr,'^',22) 指标值7


	 from #tmpetlvw


END


--exec [p_calcCRS] 'a','ab'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "b"
            Begin Extent = 
               Top = 6
               Left = 218
               Bottom = 146
               Right = 368
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 108
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_indexs_locimport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_indexs_locimport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[18] 4[23] 2[41] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "IndexS医院监管业务指标集上报数据"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 145
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_indexsviewdet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_indexsviewdet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "v_indexsviewdet"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 146
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 9
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 18
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_indexsviewfx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_indexsviewfx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 146
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 6
               Left = 218
               Bottom = 146
               Right = 360
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_IndexS医院监管业务指标集上报数据'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_IndexS医院监管业务指标集上报数据'
GO
