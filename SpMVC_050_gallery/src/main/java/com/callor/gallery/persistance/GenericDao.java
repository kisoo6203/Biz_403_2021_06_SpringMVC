package com.callor.gallery.persistance;

import java.util.List;
import java.util.Map;

import com.callor.gallery.model.GalleryDTO;

public interface GenericDao<VO, PK> {
	
	public List<GalleryDTO> selectAll();
	public VO findById(PK pk);
	
	public int insert(GalleryDTO gaDTO);
	public int update(VO vo);
	public int delete(PK pk);
	
	public int create_table(Map<String,String> resultMaps);

}
