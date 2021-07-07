package com.callor.gallery.persistance.ext;

import java.util.List;

import com.callor.gallery.model.GalleryDTO;
import com.callor.gallery.model.GalleryFilesDTO;
import com.callor.gallery.persistance.GenericDao;

public interface GalleryDao extends GenericDao<GalleryDao, Long>{
	
	public List<GalleryFilesDTO> findByIdGalleryFiles(Long g_seq);

}
