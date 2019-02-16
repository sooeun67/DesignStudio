SELECT status_id, count(status_id) as count FROM CollectionDB.EOS_Source group by status_id;

SELECT  http_status, count(http_status) as count FROM CollectionDB.EOS_Source group by http_status;
SELECT  domain_http_status, count(domain_http_status) as count FROM CollectionDB.EOS_Source group by domain_http_status;

select meta_generator, count(meta_generator) as count from EOS_Source group by meta_generator;

select meta_generator, count(meta_generator) as count from EOS_Source where rss_found ='n' group by meta_generator
having count > 10;

select * from EOS_Source where http_status = 200 and rss_found = 'n' limit 10;
-- Actually working and RSS capable
select count(*) from EOS_Source where rss_found = 'y';
select count(*) from EOS_Source where rss_content is not null and rss_content <> 'unknown';
select count(*) from EOS_Source where rss_found = 'n';
select count(*) from EOS_Source where rss_found = 'y' and page_html is null;

select count(*) from EOS_Source where rss_found is null and (http_status = 200 or domain_http_status = 200 );

-- URL no longer available
select count(*) from EOS_Source where http_status <> 200; 

-- Website not longer available
select count(*) from EOS_Source where http_status <> 200 and domain_http_status <> 200;
select * from EOS_Source where http_status <> 200 and domain_http_status <> 200;

