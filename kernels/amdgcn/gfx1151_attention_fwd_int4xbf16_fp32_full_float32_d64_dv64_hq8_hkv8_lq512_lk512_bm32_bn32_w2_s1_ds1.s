	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x60
	s_load_b64 s[12:13], s[0:1], 0x70
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v46, 1, v0
	s_load_b256 s[36:43], s[0:1], 0x0
	v_dual_mov_b32 v54, 0x7531 :: v_dual_lshlrev_b32 v47, 4, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s14, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v50, s4, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v56, 0x7632 :: v_dual_and_b32 v45, 16, v47
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s64, s4, s14
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v51, 15, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v50
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v84, v46, 16, v51
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x20
	s_load_b128 s[48:51], s[0:1], 0x30
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s44, v46
	s_mul_i32 s2, s44, s64
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s28, s44, v45
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s53, s37, 0xffff
	s_mov_b32 s52, s36
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s4, v84
	s_mov_b32 s4, 0
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_bfe_u32 v85, v0, 4, 1
	.loc	1 773 26 is_stmt 1              ; attention.py:773:26
	v_add3_u32 v1, v1, v45, s2
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s28
	s_mov_b32 s11, s4
	s_mov_b32 s9, s4
	s_mov_b32 s5, s4
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v2
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[41:44], v1, s[52:55], 0 offen
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v1, s64, v84
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s53, s43, 0xffff
	s_mov_b32 s52, s42
	s_mov_b32 s10, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v48, 0xff800000 :: v_dual_lshlrev_b32 v1, 1, v1
	v_dual_mov_b32 v39, s11 :: v_dual_mov_b32 v32, s4
	v_dual_mov_b32 v37, s9 :: v_dual_and_b32 v58, 1, v0
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v26, v24 :: v_dual_lshlrev_b32 v59, 1, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v33, s5 :: v_dual_and_b32 v62, 24, v0
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v52, v1, s[52:55], 0 offen
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v53, 0x6420 :: v_dual_mov_b32 v38, s10
	v_dual_mov_b32 v55, 0x5410 :: v_dual_mov_b32 v36, s8
	v_dual_mov_b32 v49, 0xff800000 :: v_dual_mov_b32 v34, s6
	v_dual_mov_b32 v35, s7 :: v_dual_and_b32 v60, 16, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0x3ffffff8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s4, s0, 3
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v64, v59, 30, v85
	v_cmp_eq_u32_e64 s0, 0, v58
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v57, 3, v0
	v_xor_b32_e32 v62, v47, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v27, v24 :: v_dual_lshlrev_b32 v90, 2, v64
	v_cndmask_b32_e64 v53, 0x7531, v53, s0
	v_mov_b32_e32 v25, v24
	v_dual_mov_b32 v18, v24 :: v_dual_and_b32 v65, 24, v59
	v_dual_mov_b32 v20, v24 :: v_dual_lshlrev_b32 v87, 6, v58
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v91, 0, v47
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v58, 1, v85
	v_or_b32_e32 v57, s14, v57
	v_xor_b32_e32 v47, 8, v62
	v_or_b32_e32 v46, s14, v46
	v_cndmask_b32_e64 v54, 0x6420, v54, s0
	v_lshl_or_b32 v53, v53, 8, v53
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v95, 4, v90
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v97, 0, v47
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s5, s3, s1
	v_lshl_add_u32 v88, v51, 1, 0
	v_lshl_or_b32 v51, v51, 5, v65
	v_and_or_b32 v92, v59, 60, v87
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_or_b32 v93, s3, 10, v58
	v_or_b32_e32 v58, 24, v57
	v_or_b32_e32 v59, 16, v57
	v_mul_lo_u32 v47, s13, v50
	s_mul_i32 s5, s12, s5
	v_dual_mov_b32 v10, v24 :: v_dual_and_b32 v53, 0x750031, v53
	v_lshl_or_b32 v54, v54, 8, v54
	v_mad_u64_u32 v[75:76], null, s44, v46, v[45:46]
	s_mul_i32 s4, s4, s47
	s_lshl_b32 s5, s5, 2
	v_dual_mov_b32 v29, v24 :: v_dual_add_nc_u32 v94, 0, v62
	v_dual_mov_b32 v31, v24 :: v_dual_add_nc_u32 v98, 0, v51
	v_xor_b32_e32 v62, 8, v51
	v_xor_b32_e32 v64, 16, v51
	v_xor_b32_e32 v65, 24, v51
	v_mul_lo_u32 v50, s45, v58
	v_mul_lo_u32 v51, s45, v59
	s_lshl2_add_u32 s4, s4, s5
	v_mov_b32_e32 v14, v24
	v_lshl_or_b32 v45, v53, 4, v53
	v_and_b32_e32 v53, 0x750031, v54
	v_lshl_add_u32 v103, v47, 2, s4
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s4, 0, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v19, v24 :: v_dual_and_b32 v102, 0x7050301, v45
	v_dual_mov_b32 v21, v24 :: v_dual_lshlrev_b32 v104, 1, v50
	v_dual_mov_b32 v4, v24 :: v_dual_lshlrev_b32 v105, 1, v51
	v_lshl_or_b32 v45, v53, 4, v53
	v_cndmask_b32_e64 v53, 0x1054, v55, s4
	v_cndmask_b32_e64 v54, 0x3276, v56, s4
	v_dual_mov_b32 v30, v24 :: v_dual_and_b32 v63, 7, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v9, v24 :: v_dual_and_b32 v108, 0x7050301, v45
	v_mov_b32_e32 v40, v24
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s3, s46, 0x3fb8aa3b
	v_dual_mov_b32 v22, v24 :: v_dual_lshlrev_b32 v89, 4, v63
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v63, 8, v57
	v_dual_mov_b32 v28, v24 :: v_dual_lshlrev_b32 v61, 3, v0
	v_mul_lo_u32 v57, s45, v57
	v_mov_b32_e32 v16, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v58, s45, v63
	.loc	1 889 86                        ; attention.py:889:86
	v_and_b32_e32 v61, 56, v61
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v86, 4, v0
	v_dual_mov_b32 v17, v24 :: v_dual_add_nc_u32 v100, 0, v64
	v_mov_b32_e32 v23, v24
	v_dual_mov_b32 v13, v24 :: v_dual_mov_b32 v112, 0xff800000
	v_mov_b32_e32 v15, v24
	v_dual_mov_b32 v0, v24 :: v_dual_add_nc_u32 v99, 0, v62
	v_mov_b32_e32 v1, v24
	v_dual_mov_b32 v2, v24 :: v_dual_add_nc_u32 v101, 0, v65
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v5, v24
	v_dual_mov_b32 v6, v24 :: v_dual_lshlrev_b32 v107, 1, v57
	v_mov_b32_e32 v7, v24
	v_xor_b32_e32 v96, 64, v92
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s45, v61
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v106, 1, v58
	s_and_b32 s39, s39, 0xffff
	s_and_b32 s49, s49, 0xffff
	s_movk_i32 s65, 0xffe0
	s_mov_b32 s66, 0x76543210
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s62, s54
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_lshl_b32 s46, s45, 6
	s_lshl_b32 s44, s44, 5
	s_mov_b32 s60, s48
	s_mov_b32 s61, s49
	s_mov_b32 s52, s38
	s_mov_b32 s53, s39
	s_mov_b32 s63, s55
	s_mov_b32 s42, s54
	s_mov_b32 s43, s55
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v46, v90, v41
	ds_bpermute_b32 v41, v95, v41
	ds_bpermute_b32 v47, v90, v42
	ds_bpermute_b32 v42, v95, v42
	ds_bpermute_b32 v50, v90, v43
	ds_bpermute_b32 v43, v95, v43
	ds_bpermute_b32 v51, v90, v44
	ds_bpermute_b32 v44, v95, v44
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v52
	v_lshl_or_b32 v52, v53, 8, v53
	v_lshl_or_b32 v53, v54, 8, v54
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v76, v41, v46, s4
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v109, s3, v45
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v78, v46, v41, s4
	v_and_b32_e32 v41, 0x540054, v52
	v_and_b32_e32 v45, 0x760076, v53
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v77, v42, v47, s4
	v_cndmask_b32_e64 v79, v47, v42, s4
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v80, v43, v50, s4
	v_lshl_or_b32 v41, v41, 4, v41
	v_lshl_or_b32 v42, v45, 4, v45
	v_mov_b32_e32 v11, v24
	v_cndmask_b32_e64 v82, v50, v43, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v81, v44, v51, s4
	v_cndmask_b32_e64 v83, v51, v44, s4
	v_and_b32_e32 v110, 0x5040504, v41
	v_and_b32_e32 v111, 0x7060706, v42
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v41, 0x80000000, v75, s28
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v115, v49, v49 :: v_dual_add_nc_u32 v42, v87, v103
	v_dual_max_f32 v116, v112, v112 :: v_dual_add_nc_u32 v43, v107, v89
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[49:52], v41, s[52:55], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v41, 0x80000000, v42 :: v_dual_add_nc_u32 v44, v106, v89
	v_dual_mov_b32 v114, v40 :: v_dual_add_nc_u32 v45, v105, v89
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v46, v104, v89
	.loc	1 879 36                        ; attention.py:879:36
	v_add_nc_u32_e32 v53, 16, v42
	v_add_nc_u32_e32 v54, 32, v42
	v_add_nc_u32_e32 v42, 48, v42
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v55, 0x80000000, v43, s1
	v_cndmask_b32_e64 v56, 0x80000000, v44, s1
	v_cndmask_b32_e64 v57, 0x80000000, v45, s1
	v_cndmask_b32_e64 v58, 0x80000000, v46, s1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v113.h, 0
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v48
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s65, s65, 32
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v94, v[49:50]
	ds_store_b64 v97, v[51:52]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[65:68], v55, s[40:43], 0 offen
	buffer_load_b128 v[69:72], v56, s[40:43], 0 offen
	buffer_load_b128 v[119:122], v57, s[40:43], 0 offen
	buffer_load_b128 v[123:126], v58, s[40:43], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x3
	buffer_load_b128 v[127:130], v41, s[60:63], 0 offen
	buffer_load_b128 v[131:134], v53, s[60:63], 0 offen
	buffer_load_b128 v[135:138], v54, s[60:63], 0 offen
	buffer_load_b128 v[139:142], v42, s[60:63], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v41, v93, s[56:59], 0 offen
	buffer_load_u16 v42, v93, s[56:59], 0 offen offset:4
	buffer_load_u16 v73, v93, s[56:59], 0 offen offset:8
	buffer_load_u16 v74, v93, s[56:59], 0 offen offset:12
	buffer_load_u16 v155, v93, s[56:59], 0 offen offset:16
	buffer_load_u16 v156, v93, s[56:59], 0 offen offset:20
	buffer_load_u16 v157, v93, s[56:59], 0 offen offset:24
	buffer_load_u16 v158, v93, s[56:59], 0 offen offset:28
	buffer_load_u16 v159, v93, s[56:59], 0 offen offset:32
	buffer_load_u16 v160, v93, s[56:59], 0 offen offset:36
	buffer_load_u16 v161, v93, s[56:59], 0 offen offset:40
	buffer_load_u16 v162, v93, s[56:59], 0 offen offset:44
	buffer_load_u16 v163, v93, s[56:59], 0 offen offset:48
	buffer_load_u16 v164, v93, s[56:59], 0 offen offset:52
	buffer_load_u16 v165, v93, s[56:59], 0 offen offset:56
	buffer_load_u16 v166, v93, s[56:59], 0 offen offset:60
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[143:146], v98 offset1:1
	ds_load_2addr_stride64_b64 v[147:150], v99 offset1:1
	ds_load_2addr_stride64_b64 v[151:154], v100 offset1:1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v47.h, v113.h
	v_mov_b16_e32 v118.h, v113.h
	v_mov_b16_e32 v43.h, v113.h
	v_mov_b16_e32 v45.h, v113.h
	v_mov_b16_e32 v46.h, v113.h
	v_mov_b16_e32 v40.h, v113.h
	v_mov_b16_e32 v117.h, v113.h
	v_mov_b16_e32 v44.h, v113.h
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v93, 64, v93
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[143:144], v[76:77], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[145:146], v[76:77], v[32:39] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[143:146], v101 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[147:148], v[80:81], v[49:56] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[57:64], v[149:150], v[80:81], v[57:64] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	s_waitcnt vmcnt(23)
	ds_store_b128 v91, v[65:68]
	s_waitcnt vmcnt(22)
	ds_store_b128 v91, v[69:72] offset:1024
	s_waitcnt vmcnt(21)
	ds_store_b128 v91, v[119:122] offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b128 v91, v[123:126] offset:3072
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[49:56], v[151:152], v[78:79], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[153:154], v[78:79], v[57:64] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(17)
	v_dual_cndmask_b32 v65, 0xff800000, v135 :: v_dual_cndmask_b32 v66, 0xff800000, v136
	s_waitcnt vmcnt(16)
	v_dual_cndmask_b32 v67, 0xff800000, v141 :: v_dual_cndmask_b32 v70, 0xff800000, v140
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[49:56], v[143:144], v[82:83], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[145:146], v[82:83], v[57:64] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v68, 0xff800000, v142 :: v_dual_cndmask_b32 v69, 0xff800000, v139
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v72, 16, v42
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v89, s46, v89
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_mul_f32_e32 v146, v109, v52
	v_dual_mul_f32 v57, v109, v57 :: v_dual_cndmask_b32 v52, 0xff800000, v130
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_mul_f32_e32 v145, v109, v51
	v_dual_mul_f32 v150, v109, v59 :: v_dual_cndmask_b32 v51, 0xff800000, v129
	v_dual_mul_f32 v151, v109, v60 :: v_dual_cndmask_b32 v60, 0xff800000, v131
	v_dual_mul_f32 v152, v109, v61 :: v_dual_cndmask_b32 v61, 0xff800000, v132
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v52
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v147, v109, v54 :: v_dual_cndmask_b32 v54, 0xff800000, v127
	v_dual_mul_f32 v148, v109, v55 :: v_dual_cndmask_b32 v55, 0xff800000, v128
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v51
	v_cmp_neq_f32_e64 s5, 0xff800000, v60
	v_cmp_neq_f32_e64 s6, 0xff800000, v68
	v_cmp_neq_f32_e64 s7, 0xff800000, v69
	v_cmp_neq_f32_e64 s11, 0xff800000, v70
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s9, vcc_lo, s9
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v54
	v_cmp_neq_f32_e64 s12, 0xff800000, v55
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v131, v55, v54, s0
	v_cndmask_b32_e64 v54, v54, v55, s0
	v_cndmask_b32_e64 v55, v52, v51, s0
	v_cndmask_b32_e64 v132, v51, v52, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v51, 0, 1, s9
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, vcc_lo, s5
	s_and_b32 s5, vcc_lo, s6
	s_and_b32 s6, vcc_lo, s7
	s_and_b32 s7, vcc_lo, s11
	s_and_b32 s11, vcc_lo, s3
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v62, v62
	v_dual_mul_f32 v149, v109, v58 :: v_dual_cndmask_b32 v58, 0xff800000, v133
	v_dual_mul_f32 v154, v109, v63 :: v_dual_cndmask_b32 v59, 0xff800000, v134
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v52, 0, 1, s11
	v_mov_b16_e32 v40.l, v51.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v64, v109, v64 :: v_dual_cndmask_b32 v63, 0xff800000, v138
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s13, vcc_lo, s12
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v153, v109, v62 :: v_dual_cndmask_b32 v62, 0xff800000, v137
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v58
	v_cmp_neq_f32_e64 s20, 0xff800000, v59
	v_cmp_neq_f32_e64 s21, 0xff800000, v61
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v133, v61, v60, s0
	v_cndmask_b32_e64 v60, v60, v61, s0
	v_cndmask_b32_e64 v61, v59, v58, s0
	v_cndmask_b32_e64 v59, v58, v59, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v58, 0, 1, s13
	v_mov_b16_e32 v43.l, v52.l
	v_lshlrev_b16 v40.l, 8, v40.l
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v63
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s15, vcc_lo, s10
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v62
	v_cmp_neq_f32_e64 s17, 0xff800000, v65
	v_cmp_neq_f32_e64 s18, 0xff800000, v66
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_cndmask_b32_e64 v134, v66, v65, s0
	v_cndmask_b32_e64 v65, v65, v66, s0
	v_cndmask_b32_e64 v66, v63, v62, s0
	v_cndmask_b32_e64 v135, v62, v63, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v62, 0, 1, s15
	v_or_b16 v142.h, v43.l, v40.l
	v_mov_b16_e32 v40.l, v58.l
	s_and_b32 s10, vcc_lo, s16
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v54, v95, v54
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v63, 0, 1, s10
	v_mov_b16_e32 v43.l, v62.l
	v_lshlrev_b16 v40.l, 8, v40.l
	s_and_b32 s12, vcc_lo, s14
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v67
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_cndmask_b32_e64 v137, v68, v67, s0
	v_cndmask_b32_e64 v67, v67, v68, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v142.l, v43.l, v40.l
	v_mov_b16_e32 v40.l, v63.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v63, v90, v131
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v68, 0, 1, s12
	s_and_b32 s14, vcc_lo, s18
	s_and_b32 s18, vcc_lo, s19
	s_and_b32 s19, vcc_lo, s21
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v136, v70, v69, s0
	v_cndmask_b32_e64 v69, v69, v70, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v70, 0, 1, s14
	v_cndmask_b32_e64 v141, 0, 1, s19
	v_cndmask_b32_e64 v51, 0, 1, s8
	v_mov_b16_e32 v43.l, v68.l
	v_lshlrev_b16 v40.l, 8, v40.l
	v_cndmask_b32_e64 v62, 0, 1, s7
	s_and_b32 s16, vcc_lo, s17
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v119, 16, v155
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v138, 0, 1, s16
	v_cndmask_b32_e64 v52, 0, 1, s5
	v_or_b16 v155.h, v43.l, v40.l
	v_mov_b16_e32 v40.l, v70.l
	v_cndmask_b32_e64 v68, 0, 1, s6
	v_mov_b16_e64 v44.l, v141.l
	v_mov_b16_e32 v45.l, v51.l
	v_mov_b16_e32 v51.l, v62.l
	s_and_b32 s17, vcc_lo, s20
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v71, 16, v41
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v139, 0, 1, s17
	v_mov_b16_e64 v43.l, v138.l
	v_lshlrev_b16 v40.l, 8, v40.l
	v_mov_b16_e32 v46.l, v52.l
	v_mov_b16_e32 v52.l, v68.l
	v_lshlrev_b16 v41.h, 8, v44.l
	v_lshlrev_b16 v44.l, 8, v51.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v51, v54, v63, s4
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v74, 16, v74
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v155.l, v43.l, v40.l
	v_mov_b16_e64 v40.l, v139.l
	v_or_b16 v138.l, v52.l, v44.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v139, 0x3fb8aa3b, v51
	ds_bpermute_b32 v51, v90, v55
	ds_bpermute_b32 v52, v95, v132
	ds_bpermute_b32 v55, v90, v133
	ds_bpermute_b32 v60, v95, v60
	ds_bpermute_b32 v132, v90, v134
	ds_bpermute_b32 v65, v95, v65
	ds_bpermute_b32 v61, v90, v61
	ds_bpermute_b32 v59, v95, v59
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v140, 0, 1, s18
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v133, v63, v54, s4
	ds_bpermute_b32 v66, v90, v66
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e64 v43.l, v140.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v143, v109, v49
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v53, v109, v53 :: v_dual_lshlrev_b32 v120, 16, v156
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v69, v95, v69
	ds_bpermute_b32 v67, v95, v67
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s20, vcc_lo, s22
	v_lshlrev_b16 v40.l, 8, v40.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(9)
	v_cndmask_b32_e64 v54, v52, v51, s4
	v_cndmask_b32_e64 v134, v51, v52, s4
	s_waitcnt lgkmcnt(7)
	v_cndmask_b32_e64 v51, v60, v55, s4
	v_cndmask_b32_e64 v140, v55, v60, s4
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e64 v55, v65, v132, s4
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v73, 16, v73
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v52, v59, v61, s4
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v122, 16, v158
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v156, 0x3fb8aa3b, v51
	v_mul_f32_e32 v158, 0x3fb8aa3b, v55
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v58, 0, 1, s20
	v_lshlrev_b16 v42.h, 8, v46.l
	v_or_b16 v131.h, v43.l, v40.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v156, v145, v73
	v_dual_fmac_f32 v158, v53, v119 :: v_dual_lshlrev_b32 v121, 16, v157
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_bpermute_b32 v119, v95, v135
	ds_bpermute_b32 v135, v90, v136
	ds_bpermute_b32 v136, v90, v137
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_mov_b16_e32 v47.l, v58.l
	v_or_b16 v131.l, v45.l, v41.h
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v65, v132, v65, s4
	v_cndmask_b32_e64 v141, v61, v59, s4
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v138.h, v47.l, v42.h
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v75, s44, v75
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v56, v109, v56 :: v_dual_add_nc_u32 v103, 0x80, v103
	.loc	1 881 25                        ; attention.py:881:25
	v_perm_b32 v137, v138, v155, v102
	v_perm_b32 v138, v138, v155, v108
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v144, v109, v50
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v124, 16, v160
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v127, 16, v163
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v139, v143, v71
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v143, 0x3fb8aa3b, v54
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v132, v119, v66, s4
	v_cndmask_b32_e64 v66, v66, v119, s4
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v119, v69, v135, s4
	v_cndmask_b32_e64 v69, v135, v69, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v135, v67, v136, s4
	v_cndmask_b32_e64 v67, v136, v67, s4
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_perm_b32 v136, v131, v142, v102
	v_perm_b32 v131, v131, v142, v108
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v142, 0x3fb8aa3b, v119 :: v_dual_lshlrev_b32 v125, 16, v161
	v_mul_f32_e32 v119, 0x3fb8aa3b, v134
	.loc	1 881 25                        ; attention.py:881:25
	ds_bpermute_b32 v134, v90, v136
	ds_bpermute_b32 v131, v95, v131
	ds_bpermute_b32 v136, v90, v137
	ds_bpermute_b32 v137, v95, v138
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v132, 0x3fb8aa3b, v132 :: v_dual_lshlrev_b32 v123, 16, v159
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v135, 0x3fb8aa3b, v135 :: v_dual_lshlrev_b32 v130, 16, v166
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v143, v144, v72 :: v_dual_lshlrev_b32 v126, 16, v162
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v157, 0x3fb8aa3b, v52
	v_dual_mul_f32 v133, 0x3fb8aa3b, v133 :: v_dual_fmac_f32 v132, v147, v120
	v_mul_f32_e32 v138, 0x3fb8aa3b, v140
	v_dual_mul_f32 v140, 0x3fb8aa3b, v141 :: v_dual_fmac_f32 v135, v56, v122
	v_mul_f32_e32 v65, 0x3fb8aa3b, v65
	v_dual_mul_f32 v67, 0x3fb8aa3b, v67 :: v_dual_fmac_f32 v142, v148, v121
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v140, v151, v126
	v_dual_fmac_f32 v157, v146, v74 :: v_dual_lshlrev_b32 v128, 16, v164
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v56, v131, v134, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v120, v136, v137, s4
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v133, v57, v123
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v66, 0x3fb8aa3b, v66 :: v_dual_lshlrev_b32 v129, 16, v165
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_and_b32_e32 v126, 0x100, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v123, 0x1000000, v120
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v69, 0x3fb8aa3b, v69
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v67, v64, v130
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v64, v134, v131, s4
	v_cmp_eq_u32_e64 s29, 0, v126
	v_cmp_eq_u32_e64 s25, 0, v123
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v138, v150, v125 :: v_dual_fmac_f32 v65, v152, v127
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v122, 0x100, v120
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v66, v153, v128 :: v_dual_fmac_f32 v69, v154, v129
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v57, v137, v136, s4
	v_and_b32_e32 v129, 1, v64
	v_and_b32_e32 v130, 0x1000000, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v123, v67, 0xff800000, s25
	v_cndmask_b32_e64 v67, v143, 0xff800000, s29
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v125, 1, v56
	v_and_b32_e32 v127, 1, v57
	v_and_b32_e32 v121, 1, v120
	v_cmp_eq_u32_e64 s23, 0, v122
	v_cmp_eq_u32_e64 s35, 1, v129
	v_cmp_eq_u32_e64 s27, 1, v125
	v_and_b32_e32 v134, 0x1000000, v57
	v_cmp_eq_u32_e64 s22, 1, v121
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v121, v66, 0xff800000, s23
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s30, 1, v127
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v66, 0xff800000, v139, s27
	v_cndmask_b32_e64 v127, 0xff800000, v133, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s37, 0, v134
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v119, v149, v124 :: v_dual_and_b32 v128, 0x100, v57
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v124, 0x10000, v120
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, v127, v66, s4
	v_cndmask_b32_e64 v134, v66, v127, s4
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v136, 0x1000000, v56
	v_and_b32_e32 v56, 0x10000, v56
	v_and_b32_e32 v57, 0x10000, v57
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v133, v92, v133
	ds_bpermute_b32 v134, v96, v134
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s24, 0, v124
	v_cmp_eq_u32_e64 s31, 0, v128
	v_cmp_eq_u32_e64 s34, 0, v56
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v120, 0xff800000, v65, s22
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s26, 0, v130
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v122, v69, 0xff800000, s24
	v_cndmask_b32_e64 v69, 0xff800000, v158, s30
	v_cndmask_b32_e64 v125, v132, 0xff800000, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s33, 0, v136
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v56, v156, 0xff800000, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s36, 0, v57
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v128, v135, 0xff800000, s37
	v_cndmask_b32_e64 v124, v140, 0xff800000, s26
	v_cndmask_b32_e64 v126, v157, 0xff800000, s33
	v_cndmask_b32_e64 v137, v120, v69, s4
	v_cndmask_b32_e64 v57, v142, 0xff800000, s36
	v_cndmask_b32_e64 v139, v121, v125, s4
	v_cndmask_b32_e64 v140, v125, v121, s4
	v_cndmask_b32_e64 v143, v123, v128, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v170, v133, v134, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v131, 0x10000, v64
	v_and_b32_e32 v64, 0x100, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v144, v128, v123, s4
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v130, v66, v67
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v141, v122, v57, s4
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s3, 0, v131
	v_cmp_eq_u32_e64 s21, 0, v64
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v64, v120, v121, v122
	v_max3_f32 v131, v126, v69, v125
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v142, v57, v122, s4
	v_cndmask_b32_e64 v65, v138, 0xff800000, s3
	v_cndmask_b32_e64 v119, v119, 0xff800000, s21
	v_cndmask_b32_e64 v138, v69, v120, s4
	ds_bpermute_b32 v137, v92, v137
	ds_bpermute_b32 v139, v92, v139
	v_cndmask_b32_e64 v145, v65, v56, s4
	v_cndmask_b32_e64 v135, v119, v67, s4
	v_cndmask_b32_e64 v136, v67, v119, s4
	v_cndmask_b32_e64 v146, v56, v65, s4
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v129, v119, v65, v124
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v138, v96, v138
	ds_bpermute_b32 v135, v92, v135
	ds_bpermute_b32 v136, v96, v136
	ds_bpermute_b32 v140, v96, v140
	ds_bpermute_b32 v143, v92, v143
	ds_bpermute_b32 v144, v96, v144
	ds_bpermute_b32 v145, v92, v145
	ds_bpermute_b32 v146, v96, v146
	v_cndmask_b32_e64 v147, v124, v126, s4
	v_cndmask_b32_e64 v148, v126, v124, s4
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v64, v129, v64, v123
	v_max3_f32 v129, v130, v56, v131
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v130, v92, v141
	ds_bpermute_b32 v131, v96, v142
	ds_bpermute_b32 v141, v92, v147
	ds_bpermute_b32 v142, v96, v148
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v132, v57, v128, v127
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v169, v134, v133, s0
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v160, v137, v138, s0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v129, v129, v132, v64
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v158, v135, v136, s0
	v_cndmask_b32_e64 v161, v140, v139, s0
	v_cndmask_b32_e64 v162, v139, v140, s0
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v64, v134, v134
	v_max_f32_e32 v132, v133, v133
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v163, v144, v143, s0
	v_cndmask_b32_e64 v164, v146, v145, s0
	v_cndmask_b32_e64 v165, v145, v146, s0
	v_cndmask_b32_e64 v157, v136, v135, s0
	v_cndmask_b32_e64 v159, v138, v137, s0
	v_cndmask_b32_e64 v166, v143, v144, s0
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v64, v132, v64
	v_max3_f32 v132, v160, v161, v162
	v_max3_f32 v135, v130, v131, v163
	v_max3_f32 v136, v158, v164, v165
	v_max3_f32 v137, v141, v142, v159
.Ltmp16:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v171, v131, v130, s0
	v_cndmask_b32_e64 v172, v130, v131, s0
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v132, v132, v135, v166
	v_max3_f32 v64, v64, v157, v136
.Ltmp18:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v173, v142, v141, s0
	v_cndmask_b32_e64 v174, v141, v142, s0
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v42, v88 offset:608
	ds_load_u16_d16 v41, v88 offset:352
	ds_load_u16_d16 v50, v88 offset:512
	ds_load_u16_d16 v49, v88 offset:256
	ds_load_u16_d16 v68, v88 offset:288
	ds_load_u16_d16 v74, v88 offset:1824
	ds_load_u16_d16 v51, v88 offset:768
	ds_load_u16_d16 v59, v88 offset:832
	ds_load_u16_d16 v52, v88 offset:1024
	ds_load_u16_d16 v70, v88 offset:800
	ds_load_u16_d16 v60, v88 offset:1088
	ds_load_u16_d16 v53, v88 offset:1280
	ds_load_u16_d16 v71, v88 offset:1056
	ds_load_u16_d16 v61, v88 offset:1344
	ds_load_u16_d16 v54, v88 offset:1536
	ds_load_u16_d16 v72, v88 offset:1312
	ds_load_u16_d16 v62, v88 offset:1600
	ds_load_u16_d16 v55, v88 offset:1792
	ds_load_u16_d16 v73, v88 offset:1568
	ds_load_u16_d16 v63, v88 offset:1856
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v167, v64, v137, v132
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v132, v129, s66, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v58, v88 offset:576
	ds_load_u16_d16 v64, v88 offset:2112
	ds_load_u16_d16 v141, v88 offset:2080
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s65, 0x1e0
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v168, v48, v129, v132
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v57, v57, v168
	v_sub_f32_e32 v127, v127, v168
	v_sub_f32_e32 v65, v65, v168
	v_sub_f32_e32 v67, v67, v168
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v129, v48, v168
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v127, v127
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v48, v67
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v129, v129
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v128, v128, v168
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v57, v57, 0, s36
	v_cndmask_b32_e64 v127, 0, v127, s35
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v65, v65, 0, s3
	v_cndmask_b32_e64 v48, v48, 0, s29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v47.l, v57.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v56, v56, v168
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v45.l, v127.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v126, v126, v168
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v46.l, v65.h
	v_and_b32_e32 v47, 1, v47
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v56, v56
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v125, v125, v168
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v45, 1, v45
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v126
	v_exp_f32_e32 v126, v128
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v128, 0, v129, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v113.l, v48.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v69, v69, v168 :: v_dual_and_b32 v46, 1, v46
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v125, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v56, v56, 0, s34
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v128
	v_mul_f32_e32 v25, v25, v128
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, v67, 0, s33
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v128
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v43.l, v56.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v168
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v128
	v_mul_f32_e32 v28, v28, v128
	v_mul_f32_e32 v29, v29, v128
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v43, 1, v43
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v128
	v_mul_f32_e32 v31, v31, v128
	v_mul_f32_e32 v16, v16, v128
	v_mul_f32_e32 v17, v17, v128
	v_mul_f32_e32 v18, v18, v128
	v_mul_f32_e32 v19, v19, v128
	v_mul_f32_e32 v20, v20, v128
	v_mul_f32_e32 v21, v21, v128
	v_mul_f32_e32 v22, v22, v128
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s27
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v128
	v_mul_f32_e32 v8, v8, v128
	v_mul_f32_e32 v9, v9, v128
	v_mul_f32_e32 v10, v10, v128
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v40.l, v66.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v128
	v_mul_f32_e32 v12, v12, v128
	v_mul_f32_e32 v13, v13, v128
	v_mul_f32_e32 v14, v14, v128
	v_mul_f32_e32 v15, v15, v128
	v_mul_f32_e32 v0, v0, v128
	v_mul_f32_e32 v1, v1, v128
	v_mul_f32_e32 v2, v2, v128
	v_mul_f32_e32 v3, v3, v128
	v_mul_f32_e32 v4, v4, v128
	v_mul_f32_e32 v5, v5, v128
	v_mul_f32_e32 v6, v6, v128
	v_dual_mul_f32 v7, v7, v128 :: v_dual_and_b32 v128, 1, v113
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v125, v125, 0, s31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v40, 1, v40
	v_mov_b16_e32 v113.l, v67.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v126, v126, 0, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s31, v56, v56
	v_add3_u32 v43, v56, v43, 0x7fff
	v_add3_u32 v40, v66, v40, 0x7fff
	v_and_b32_e32 v56, 1, v113
	v_mov_b16_e32 v113.l, v125.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v66, v66
	v_cmp_o_f32_e64 s36, v57, v57
	v_add3_u32 v47, v57, v47, 0x7fff
	v_add3_u32 v175, v127, v45, 0x7fff
	v_mov_b16_e32 v44.l, v69.h
	v_cndmask_b16 v45.l, 0x7fff, v40.h, s30
	v_and_b32_e32 v40, 1, v113
	v_mov_b16_e32 v113.l, v126.h
	v_add3_u32 v176, v65, v46, 0x7fff
	v_add3_u32 v46, v67, v56, 0x7fff
	v_cmp_o_f32_e64 s33, v67, v67
	v_and_b32_e32 v44, 1, v44
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s36
	v_and_b32_e32 v47, 1, v113
	v_cmp_o_f32_e64 s29, v48, v48
	v_cmp_o_f32_e64 s34, v69, v69
	v_cmp_o_f32_e64 s35, v125, v125
	v_cmp_o_f32_e64 s37, v126, v126
	v_add3_u32 v48, v48, v128, 0x7fff
	v_add3_u32 v44, v69, v44, 0x7fff
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s31
	v_cndmask_b16 v43.h, 0x7fff, v46.h, s33
	v_add3_u32 v40, v125, v40, 0x7fff
	v_add3_u32 v47, v126, v47, 0x7fff
	v_cndmask_b16 v45.h, 0x7fff, v48.h, s29
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s34
	v_permlanex16_b32 v56, v43, s66, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v44.h, 0x7fff, v40.h, s35
	v_cndmask_b16 v46.h, 0x7fff, v47.h, s37
	v_cmp_o_f32_e64 s27, v127, v127
	v_permlanex16_b32 v48, v45, s66, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v127, v56, v43, v110
	v_permlanex16_b32 v40, v44, s66, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v128, v56, v43, v111
	v_permlanex16_b32 v43, v46, s66, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s3, v65, v65
	v_perm_b32 v125, v48, v45, v110
	v_perm_b32 v126, v48, v45, v111
	v_perm_b32 v129, v40, v44, v110
	v_perm_b32 v130, v40, v44, v111
	v_perm_b32 v131, v43, v46, v110
	v_perm_b32 v132, v43, v46, v111
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v135, v88 offset:2560
	ds_load_u16_d16 v66, v88 offset:2624
	ds_load_u16_d16 v65, v88 offset:2368
	ds_load_u16_d16 v134, v88 offset:2304
	ds_load_u16_d16 v48, v88
	ds_load_u16_d16 v67, v88 offset:32
	ds_load_u16_d16 v56, v88 offset:64
	ds_load_u16_d16 v57, v88 offset:320
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v41, v88 offset:480
	ds_load_u16_d16 v40, v88 offset:96
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v49, v88 offset:384
	ds_load_u16_d16_hi v50, v88 offset:640
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v58, v88 offset:704
	ds_load_u16_d16 v69, v88 offset:544
	ds_load_u16_d16_hi v51, v88 offset:896
	ds_load_u16_d16_hi v59, v88 offset:960
	ds_load_u16_d16 v43, v88 offset:864
	ds_load_u16_d16_hi v52, v88 offset:1152
	ds_load_u16_d16_hi v60, v88 offset:1216
	ds_load_u16_d16 v44, v88 offset:1120
	ds_load_u16_d16_hi v53, v88 offset:1408
	ds_load_u16_d16_hi v61, v88 offset:1472
	ds_load_u16_d16 v45, v88 offset:1376
	ds_load_u16_d16_hi v54, v88 offset:1664
	ds_load_u16_d16_hi v62, v88 offset:1728
	ds_load_u16_d16 v46, v88 offset:1632
	ds_load_u16_d16_hi v55, v88 offset:1920
	ds_load_u16_d16_hi v63, v88 offset:1984
	ds_load_u16_d16 v133, v88 offset:2048
	ds_load_u16_d16 v47, v88 offset:1888
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v48, v88 offset:128
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v67, v88 offset:160
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v56, v88 offset:192
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v40, v88 offset:224
	ds_load_u16_d16_hi v68, v88 offset:416
	ds_load_u16_d16_hi v57, v88 offset:448
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v69, v88 offset:672
	ds_load_u16_d16_hi v42, v88 offset:736
	ds_load_u16_d16_hi v70, v88 offset:928
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v43, v88 offset:992
	ds_load_u16_d16_hi v71, v88 offset:1184
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v44, v88 offset:1248
	ds_load_u16_d16_hi v72, v88 offset:1440
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v45, v88 offset:1504
	ds_load_u16_d16_hi v73, v88 offset:1696
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v46, v88 offset:1760
	ds_load_u16_d16_hi v74, v88 offset:1952
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v47, v88 offset:2016
	ds_load_u16_d16_hi v133, v88 offset:2176
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(18)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[48:55], v[125:132], v[24:31]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v50, v120, v168
	v_sub_f32_e32 v49, v124, v168
	v_sub_f32_e32 v52, v122, v168
	v_sub_f32_e32 v53, v123, v168
	v_sub_f32_e32 v51, v121, v168
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v51, v51
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v119, v168
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v50, 0, v50, s22
	v_cndmask_b32_e64 v55, v49, 0, s26
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v49, v52, 0, s24
	v_cndmask_b32_e64 v52, v53, 0, s25
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v51, v51, 0, s23
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v117.l, v50.h
	v_cmp_o_f32_e64 s23, v50, v50
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v54, v48
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v118.l, v49.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[67:74], v[125:132], v[16:23]
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v53, 1, v117
	v_cmp_o_f32_e64 s25, v49, v49
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v150, v88 offset:2400
	ds_load_u16_d16 v136, v88 offset:2816
	ds_load_u16_d16 v67, v88 offset:2880
	ds_load_u16_d16 v151, v88 offset:2656
	ds_load_u16_d16 v137, v88 offset:3072
	ds_load_u16_d16 v68, v88 offset:3136
	ds_load_u16_d16 v152, v88 offset:2912
	ds_load_u16_d16 v138, v88 offset:3328
	ds_load_u16_d16 v69, v88 offset:3392
	ds_load_u16_d16 v153, v88 offset:3168
	ds_load_u16_d16 v139, v88 offset:3584
	ds_load_u16_d16 v70, v88 offset:3648
	ds_load_u16_d16 v154, v88 offset:3424
	ds_load_u16_d16 v140, v88 offset:3840
	ds_load_u16_d16 v71, v88 offset:3904
	ds_load_u16_d16 v155, v88 offset:3680
	ds_load_u16_d16 v156, v88 offset:3936
	ds_load_u16_d16 v149, v88 offset:2144
	ds_load_u16_d16_hi v64, v88 offset:2240
	ds_load_u16_d16_hi v65, v88 offset:2496
	ds_load_u16_d16_hi v134, v88 offset:2432
	ds_load_u16_d16 v142, v88 offset:2336
	ds_load_u16_d16_hi v135, v88 offset:2688
	ds_load_u16_d16_hi v66, v88 offset:2752
	ds_load_u16_d16 v143, v88 offset:2592
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v72, 1, v118
	v_cmp_o_f32_e64 s22, v55, v55
	v_add3_u32 v50, v50, v53, 0x7fff
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v53, v167
.Ltmp23:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v54, v54, 0, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v49, v49, v72, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(26)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[40:47], v[125:132], v[0:7]
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v74.l, 0x7fff, v50.h, s23
.Ltmp24:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v53, v53 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v113.l, v54.h
	v_cndmask_b16 v117.l, 0x7fff, v49.h, s25
	v_cmp_o_f32_e64 s21, v54, v54
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v136, v88 offset:2944
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v67, v88 offset:3008
	ds_load_u16_d16 v144, v88 offset:2848
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v137, v88 offset:3200
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v68, v88 offset:3264
	ds_load_u16_d16 v145, v88 offset:3104
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v138, v88 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v69, v88 offset:3520
	ds_load_u16_d16 v146, v88 offset:3360
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v139, v88 offset:3712
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v70, v88 offset:3776
	ds_load_u16_d16 v147, v88 offset:3616
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v140, v88 offset:3968
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v71, v88 offset:4032
	ds_load_u16_d16 v148, v88 offset:3872
	ds_load_u16_d16_hi v141, v88 offset:2208
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v149, v88 offset:2272
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v142, v88 offset:2464
	ds_load_u16_d16_hi v150, v88 offset:2528
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v143, v88 offset:2720
	ds_load_u16_d16_hi v151, v88 offset:2784
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v53, v53, v53
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v73.l, 0x7fff, v176.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v112
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v144, v88 offset:2976
	ds_load_u16_d16_hi v152, v88 offset:3040
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v145, v88 offset:3232
	ds_load_u16_d16_hi v153, v88 offset:3296
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v146, v88 offset:3488
	ds_load_u16_d16_hi v154, v88 offset:3552
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v147, v88 offset:3744
	ds_load_u16_d16_hi v155, v88 offset:3808
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v148, v88 offset:4000
	ds_load_u16_d16_hi v156, v88 offset:4064
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v53, v167, v53
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s24, v51, v51
	v_cmp_o_f32_e64 s26, v52, v52
	v_cndmask_b16 v72.l, 0x7fff, v175.h, s27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v48, v168 :: v_dual_max_f32 v49, v115, v53
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v50, v116, v53
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v53, 1, v113
	v_mov_b16_e32 v113.l, v55.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v115, v169, v49
	v_sub_f32_e32 v116, v170, v49
	v_sub_f32_e32 v118, v157, v49
	v_sub_f32_e32 v119, v158, v49
	v_sub_f32_e32 v120, v164, v49
	v_sub_f32_e32 v121, v165, v49
	v_sub_f32_e32 v122, v173, v49
	v_sub_f32_e32 v123, v174, v49
	v_sub_f32_e32 v124, v159, v49
	v_sub_f32_e32 v157, v160, v49
	v_sub_f32_e32 v158, v161, v49
	v_sub_f32_e32 v159, v162, v49
	v_sub_f32_e32 v161, v171, v49
	v_sub_f32_e32 v162, v172, v49
	v_sub_f32_e32 v163, v163, v49
	v_sub_f32_e32 v164, v166, v49
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v53, v54, v53, 0x7fff
	v_and_b32_e32 v54, 1, v113
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v115, v115
	v_exp_f32_e32 v116, v116
	v_exp_f32_e32 v118, v118
	v_exp_f32_e32 v119, v119
	v_exp_f32_e32 v120, v120
	v_exp_f32_e32 v121, v121
	v_exp_f32_e32 v122, v122
	v_exp_f32_e32 v123, v123
	v_exp_f32_e32 v124, v124
	v_exp_f32_e32 v157, v157
	v_exp_f32_e32 v158, v158
	v_exp_f32_e32 v159, v159
	v_exp_f32_e32 v161, v161
	v_exp_f32_e32 v162, v162
	v_exp_f32_e32 v163, v163
	v_exp_f32_e32 v164, v164
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v72.h, 0x7fff, v53.h, s21
	v_add3_u32 v53, v55, v54, 0x7fff
	v_mov_b16_e32 v113.l, v51.h
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v160, v112, v50
	v_mov_b32_e32 v112, v50
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v54, v72, s66, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v73.h, 0x7fff, v53.h, s22
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v115, s15
	v_cndmask_b32_e64 v115, 0, v116, s13
	v_cndmask_b32_e64 v116, 0, v118, s11
	v_cndmask_b32_e64 v118, 0, v119, s9
	v_cndmask_b32_e64 v119, 0, v120, s8
	v_cndmask_b32_e64 v120, 0, v121, s19
	v_cndmask_b32_e64 v121, 0, v122, s18
	v_cndmask_b32_e64 v122, 0, v123, s17
	v_cndmask_b32_e64 v123, 0, v124, s16
	v_cndmask_b32_e64 v124, 0, v157, s14
	v_cndmask_b32_e64 v157, 0, v158, s12
	v_cndmask_b32_e64 v158, 0, v159, s10
	v_cndmask_b32_e64 v159, 0, v161, s6
	v_cndmask_b32_e64 v161, 0, v162, s7
	v_cndmask_b32_e64 v162, 0, v163, s20
	v_cndmask_b32_e64 v163, 0, v164, s5
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v40, v53, v115 :: v_dual_add_f32 v41, v116, v118
	v_dual_add_f32 v42, v119, v120 :: v_dual_add_f32 v43, v121, v122
	v_dual_add_f32 v44, v123, v124 :: v_dual_add_f32 v45, v157, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_add_f32 v46, v159, v161 :: v_dual_add_f32 v47, v162, v163
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v50, 1, v113
	v_mov_b16_e32 v113.l, v52.h
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v40, v40, v41 :: v_dual_add_f32 v41, v42, v43
	v_dual_add_f32 v42, v44, v45 :: v_dual_add_f32 v43, v46, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v113, 1, v113
	v_add3_u32 v55, v51, v50, 0x7fff
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp35:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v160, v160
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v42, v43
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v44, v52, v113, 0x7fff
	v_cndmask_b16 v74.h, 0x7fff, v55.h, s24
	v_permlanex16_b32 v53, v73, s66, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[56:63], v[125:132], v[8:15]
.Ltmp38:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v117.h, 0x7fff, v44.h, s26
	v_permlanex16_b32 v41, v74, s66, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v50, v54, v72, v110
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v160, 0, v160, s3
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v42, v40
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v43, v117, s66, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v51, v54, v72, v111
	v_perm_b32 v52, v53, v73, v110
	v_perm_b32 v53, v53, v73, v111
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v54, v41, v74, v110
	v_perm_b32 v55, v41, v74, v111
	v_perm_b32 v56, v43, v117, v110
	v_perm_b32 v57, v43, v117, v111
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v42
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp45:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[133:140], v[50:57], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[141:148], v[50:57], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[64:71], v[50:57], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[149:156], v[50:57], v[0:7]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v40, v114, v160
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	ds_bpermute_b32 v33, v90, v40
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v32, 16, v85
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v34, null, v33, v33, v24
	v_div_scale_f32 v36, null, v33, v33, v25
	v_div_scale_f32 v38, null, v33, v33, v26
	v_div_scale_f32 v40, null, v33, v33, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v44, v34
	v_rcp_f32_e32 v45, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v38
	v_div_scale_f32 v42, null, v33, v33, v28
	v_rcp_f32_e32 v47, v40
	v_div_scale_f32 v43, null, v33, v33, v29
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v35, vcc_lo, v24, v33, v24
	v_fma_f32 v52, -v34, v44, 1.0
	v_fma_f32 v53, -v36, v45, 1.0
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v54, -v38, v46, 1.0
	v_div_scale_f32 v37, s0, v25, v33, v25
	v_div_scale_f32 v39, s1, v26, v33, v26
	v_rcp_f32_e32 v51, v43
	v_fma_f32 v55, -v40, v47, 1.0
	v_dual_fmac_f32 v44, v52, v44 :: v_dual_fmac_f32 v45, v53, v45
	v_fmac_f32_e32 v46, v54, v46
	v_div_scale_f32 v41, s3, v27, v33, v27
	v_fma_f32 v56, -v42, v48, 1.0
	v_fmac_f32_e32 v47, v55, v47
	v_dual_mul_f32 v53, v35, v44 :: v_dual_mul_f32 v54, v37, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v55, v39, v46 :: v_dual_fmac_f32 v48, v56, v48
	v_div_scale_f32 v49, s4, v28, v33, v28
	v_fma_f32 v52, -v43, v51, 1.0
	v_fma_f32 v56, -v34, v53, v35
	v_fma_f32 v58, -v36, v54, v37
	v_mul_f32_e32 v57, v41, v47
	v_fma_f32 v59, -v38, v55, v39
	v_dual_fmac_f32 v51, v52, v51 :: v_dual_mul_f32 v52, v49, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v53, v56, v44 :: v_dual_fmac_f32 v54, v58, v45
	v_fma_f32 v60, -v40, v57, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v59, v46
	v_div_scale_f32 v50, null, v33, v33, v30
	v_fma_f32 v34, -v34, v53, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v57, v60, v47
	v_fma_f32 v35, -v36, v54, v37
	v_fma_f32 v36, -v38, v55, v39
	v_div_scale_f32 v38, s5, v29, v33, v29
	v_fma_f32 v37, -v40, v57, v41
	v_rcp_f32_e32 v39, v50
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v40, v38, v51
	v_div_fmas_f32 v34, v34, v44, v53
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v45, v54
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v24, v34, v33, v24
	v_div_scale_f32 v34, null, v33, v33, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v50, v39, 1.0
	v_div_fmas_f32 v36, v36, v46, v55
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v44, v34
	v_div_fixup_f32 v25, v35, v33, v25
	v_fmac_f32_e32 v39, v41, v39
	v_div_fixup_f32 v26, v36, v33, v26
	v_div_scale_f32 v36, s1, v30, v33, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v34, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v41, v44
	v_div_fmas_f32 v35, v37, v47, v57
	v_fma_f32 v37, -v42, v52, v49
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v41, s3, v31, v33, v31
	v_div_fixup_f32 v27, v35, v33, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v37, v48
	v_fma_f32 v35, -v43, v40, v38
	v_div_scale_f32 v37, null, v33, v33, v16
	v_mul_f32_e32 v46, v41, v44
	v_fma_f32 v42, -v42, v52, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v40, v35, v51
	v_mul_f32_e32 v35, v36, v39
	v_rcp_f32_e32 v45, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v42, v42, v48, v52
	v_fma_f32 v38, -v43, v40, v38
	v_div_scale_f32 v48, null, v33, v33, v17
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v43, -v50, v35, v36
	v_div_fmas_f32 v38, v38, v51, v40
	v_rcp_f32_e32 v40, v48
	v_div_fixup_f32 v28, v42, v33, v28
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v37, v45, 1.0
	v_div_fixup_f32 v29, v38, v33, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	v_cndmask_b32_e64 v29, 0, v29, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v48, v40, 1.0
	v_fmac_f32_e32 v35, v43, v39
	v_fma_f32 v43, -v34, v46, v41
	v_fmac_f32_e32 v40, v42, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v50, v35, v36
	v_fmac_f32_e32 v46, v43, v44
	v_div_scale_f32 v43, null, v33, v33, v18
	v_div_scale_f32 v42, null, v33, v33, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v35, v36, v39, v35
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v34, -v34, v46, v41
	v_div_scale_f32 v41, s1, v17, v33, v17
	v_fmac_f32_e32 v45, v47, v45
	v_div_scale_f32 v47, s4, v16, v33, v16
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v30, v35, v33, v30
	v_div_fmas_f32 v34, v34, v44, v46
	v_mul_f32_e32 v44, v41, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v43, v39, 1.0
	v_mul_f32_e32 v38, v47, v45
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v31, v34, v33, v31
	v_fma_f32 v35, -v48, v44, v41
	v_fmac_f32_e32 v39, v46, v39
	v_fma_f32 v36, -v37, v38, v47
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v35, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v36, v45
	v_rcp_f32_e32 v36, v42
	v_fma_f32 v34, -v37, v38, v47
	v_div_scale_f32 v37, s3, v18, v33, v18
	v_div_scale_f32 v47, null, v33, v33, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v42, v36, 1.0
	v_mul_f32_e32 v35, v37, v39
	v_div_fmas_f32 v34, v34, v45, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v38, v47
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v46, null, v33, v33, v21
	v_div_fixup_f32 v16, v34, v33, v16
	v_fma_f32 v34, -v48, v44, v41
	v_fma_f32 v41, -v43, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v49, v46
	v_div_scale_f32 v45, s4, v19, v33, v19
	v_fma_f32 v50, -v47, v38, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v41, v39
	v_div_fmas_f32 v34, v34, v40, v44
	v_div_scale_f32 v41, s1, v20, v33, v20
	v_fmac_f32_e32 v38, v50, v38
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v44, -v46, v49, 1.0
	v_div_fixup_f32 v17, v34, v33, v17
	v_fma_f32 v34, -v43, v35, v37
	v_mul_f32_e32 v37, v41, v38
	v_div_scale_f32 v43, null, v33, v33, v22
	v_fmac_f32_e32 v49, v44, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v34, v39, v35
	v_fma_f32 v39, -v47, v37, v41
	v_mul_f32_e32 v48, v45, v36
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v18, v34, v33, v18
	v_fmac_f32_e32 v37, v39, v38
	v_fma_f32 v40, -v42, v48, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v47, v37, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v40, v36
	v_div_scale_f32 v40, s5, v21, v33, v21
	v_div_scale_f32 v47, null, v33, v33, v9
	v_fma_f32 v35, -v42, v48, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v40, v49
	v_rcp_f32_e32 v42, v43
	v_div_scale_f32 v45, null, v33, v33, v23
	v_div_fmas_f32 v35, v35, v36, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v46, v44, v40
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v36, v45
	v_div_fmas_f32 v34, v34, v38, v37
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v44, v39, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v43, v42, 1.0
	v_div_fixup_f32 v19, v35, v33, v19
	v_div_scale_f32 v35, s3, v22, v33, v22
	v_fma_f32 v37, -v46, v44, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v42, v48, v42
	v_fma_f32 v39, -v45, v36, 1.0
	v_div_scale_f32 v40, s1, v23, v33, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v37, v37, v49, v44
	v_div_fixup_f32 v20, v34, v33, v20
	v_fmac_f32_e32 v36, v39, v36
	v_div_scale_f32 v39, null, v33, v33, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v21, v37, v33, v21
	v_rcp_f32_e32 v37, v47
	v_mul_f32_e32 v46, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v39
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v33, v33, v11
	v_fma_f32 v34, -v45, v46, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v51, v49
	v_fma_f32 v48, -v47, v37, 1.0
	v_mul_f32_e32 v38, v35, v42
	v_fmac_f32_e32 v46, v34, v36
	v_div_scale_f32 v34, s4, v8, v33, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v48, v37
	v_fma_f32 v44, -v43, v38, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v44, v42
	v_fma_f32 v44, -v39, v41, 1.0
	v_fma_f32 v35, -v43, v38, v35
	v_div_scale_f32 v43, null, v33, v33, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v44, v41
	v_div_fmas_f32 v35, v35, v42, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v44, v43
	v_fma_f32 v38, -v45, v46, v40
	v_div_scale_f32 v42, s3, v9, v33, v9
	v_mul_f32_e32 v40, v34, v41
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v35, v33, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v50, v42, v37
	v_div_fmas_f32 v36, v38, v36, v46
	v_fma_f32 v48, -v39, v40, v34
	v_fma_f32 v45, -v43, v44, 1.0
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v47, v50, v42
	v_div_fixup_f32 v23, v36, v33, v23
	v_fmac_f32_e32 v40, v48, v41
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, s5, v10, v33, v10
	v_fmac_f32_e32 v50, v38, v37
	v_div_scale_f32 v38, null, v33, v33, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v36, -v49, v51, 1.0
	v_fma_f32 v34, -v39, v40, v34
	v_fma_f32 v39, -v47, v50, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v43, v46, v45
	v_fmac_f32_e32 v51, v36, v51
	v_div_scale_f32 v36, s1, v11, v33, v11
	v_div_fmas_f32 v34, v34, v41, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v46, v35, v44
	v_rcp_f32_e32 v35, v38
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v40, v36, v51
	v_div_fmas_f32 v37, v39, v37, v50
	v_fma_f32 v39, -v43, v46, v45
	v_div_scale_f32 v41, null, v33, v33, v13
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v8, v34, v33, v8
	v_div_fmas_f32 v39, v39, v44, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v42, -v38, v35, 1.0
	v_rcp_f32_e32 v43, v41
	v_fma_f32 v44, -v49, v40, v36
	v_div_fixup_f32 v9, v37, v33, v9
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v35, v42, v35
	v_div_scale_f32 v42, s3, v12, v33, v12
	v_fmac_f32_e32 v40, v44, v51
	v_div_fixup_f32 v10, v39, v33, v10
	v_div_scale_f32 v39, null, v33, v33, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v34, v42, v35
	v_fma_f32 v37, -v41, v43, 1.0
	v_fma_f32 v36, -v49, v40, v36
	v_rcp_f32_e32 v45, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v38, v34, v42
	v_fmac_f32_e32 v43, v37, v43
	v_div_scale_f32 v37, s4, v13, v33, v13
	v_div_fmas_f32 v36, v36, v51, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v44, v35
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v40, v37, v43
	v_div_scale_f32 v44, null, v33, v33, v15
	v_div_fixup_f32 v11, v36, v33, v11
	v_fma_f32 v36, -v38, v34, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v38, -v41, v40, v37
	v_fma_f32 v42, -v39, v45, 1.0
	v_rcp_f32_e32 v46, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v36, v35, v34
	v_div_scale_f32 v35, null, v33, v33, v0
	v_fmac_f32_e32 v40, v38, v43
	v_fmac_f32_e32 v45, v42, v45
	v_div_scale_f32 v42, null, v33, v33, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v36, s1, v14, v33, v14
	v_div_fixup_f32 v12, v34, v33, v12
	v_fma_f32 v34, -v44, v46, 1.0
	v_rcp_f32_e32 v48, v42
	v_fma_f32 v37, -v41, v40, v37
	v_mul_f32_e32 v41, v36, v45
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v46, v34, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v35, v38, 1.0
	v_div_scale_f32 v34, s3, v15, v33, v15
	v_div_fmas_f32 v37, v37, v43, v40
	v_fma_f32 v40, -v39, v41, v36
	v_fmac_f32_e32 v38, v47, v38
	v_div_scale_f32 v47, null, v33, v33, v2
	v_mul_f32_e32 v43, v34, v46
	v_div_scale_f32 v49, s4, v0, v33, v0
	v_fma_f32 v50, -v42, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v51, v47
	v_fmac_f32_e32 v41, v40, v45
	v_fma_f32 v40, -v44, v43, v34
	v_mul_f32_e32 v52, v49, v38
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s5, v1, v33, v1
	v_div_fixup_f32 v13, v37, v33, v13
	v_fma_f32 v36, -v39, v41, v36
	v_fmac_f32_e32 v43, v40, v46
	v_fma_f32 v37, -v35, v52, v49
	v_mul_f32_e32 v39, v50, v48
	v_fma_f32 v40, -v47, v51, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v34, -v44, v43, v34
	v_fmac_f32_e32 v52, v37, v38
	v_fma_f32 v37, -v42, v39, v50
	v_fmac_f32_e32 v51, v40, v51
	v_div_scale_f32 v40, s1, v2, v33, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v35, v52, v49
	v_fmac_f32_e32 v39, v37, v48
	v_div_fmas_f32 v36, v36, v45, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v37, v40, v51
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v41, null, v33, v33, v3
	v_div_fmas_f32 v34, v34, v46, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v14, v36, v33, v14
	v_div_fmas_f32 v35, v35, v38, v52
	v_fma_f32 v38, -v42, v39, v50
	v_fma_f32 v42, -v47, v37, v40
	v_rcp_f32_e32 v43, v41
	v_div_fixup_f32 v15, v34, v33, v15
	v_div_fixup_f32 v0, v35, v33, v0
	v_div_scale_f32 v35, null, v33, v33, v4
	v_fmac_f32_e32 v37, v42, v51
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v33, v33, v7
	v_div_fmas_f32 v38, v38, v48, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v34, -v47, v37, v40
	v_fma_f32 v36, -v41, v43, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v1, v38, v33, v1
	v_div_fmas_f32 v34, v34, v51, v37
	v_rcp_f32_e32 v37, v35
	v_fmac_f32_e32 v43, v36, v43
	v_div_scale_f32 v36, null, v33, v33, v5
	v_div_scale_f32 v38, null, v33, v33, v6
	v_div_scale_f32 v39, vcc_lo, v3, v33, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v36
	v_rcp_f32_e32 v42, v38
	v_div_fixup_f32 v2, v34, v33, v2
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v34, -v35, v37, 1.0
	v_mul_f32_e32 v44, v39, v43
	v_fma_f32 v51, -v45, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v34, v37
	v_div_scale_f32 v34, s1, v4, v33, v4
	v_fma_f32 v46, -v36, v40, 1.0
	v_fma_f32 v49, -v38, v42, 1.0
	v_fma_f32 v48, -v41, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v50, v34, v37 :: v_dual_fmac_f32 v47, v51, v47
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v46, s3, v5, v33, v5
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, s4, v6, v33, v6
	v_fmac_f32_e32 v44, v48, v43
	v_fma_f32 v48, -v35, v50, v34
	v_div_scale_f32 v51, s5, v7, v33, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v52, v46, v40 :: v_dual_mul_f32 v53, v49, v42
	v_fmac_f32_e32 v50, v48, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v54, v51, v47
	v_fma_f32 v39, -v41, v44, v39
	v_fma_f32 v41, -v36, v52, v46
	v_fma_f32 v48, -v38, v53, v49
	v_fma_f32 v34, -v35, v50, v34
	v_fma_f32 v35, -v45, v54, v51
	v_div_fmas_f32 v39, v39, v43, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v52, v41, v40 :: v_dual_fmac_f32 v53, v48, v42
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v54, v35, v47
	v_div_fmas_f32 v34, v34, v37, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v36, -v36, v52, v46
	v_fma_f32 v35, -v38, v53, v49
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v37, -v45, v54, v51
	v_div_fixup_f32 v3, v39, v33, v3
	v_div_fmas_f32 v36, v36, v40, v52
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v34, v33, v4
	v_div_fmas_f32 v35, v35, v42, v53
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v36, v33, v5
	v_div_fmas_f32 v37, v37, v47, v54
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v35, v33, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v37, v33, v7
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v33, s45, v84
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	s_mul_i32 s0, s45, s64
	v_add_nc_u32_e32 v34, v33, v85
	v_add_nc_u32_e32 v33, s0, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s45, v85
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s5, s51, 0xffff
	s_mov_b32 s4, s50
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v34, v34, s0, 2
	v_add_lshl_u32 v38, v33, v85, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s45, v32
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v35, 32, v85
	v_or_b32_e32 v36, 48, v85
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v39, 8, v38
	v_add_nc_u32_e32 v40, 16, v38
	v_cndmask_b32_e32 v41, 0x80000000, v38, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s45, v35
	v_cmp_gt_i32_e64 s3, s45, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	s_clause 0x2
	buffer_store_b32 v24, v41, s[4:7], 0 offen
	buffer_store_b32 v25, v39, s[4:7], 0 offen
	buffer_store_b32 v26, v40, s[4:7], 0 offen
	v_add_nc_u32_e32 v24, 24, v38
	v_add_nc_u32_e32 v25, 32, v38
	v_add_nc_u32_e32 v26, 40, v38
	v_add_nc_u32_e32 v39, 48, v38
	v_add_nc_u32_e32 v40, 56, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	s_clause 0x4
	buffer_store_b32 v27, v24, s[4:7], 0 offen
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v39, s[4:7], 0 offen
	buffer_store_b32 v31, v40, s[4:7], 0 offen
	v_add_lshl_u32 v24, v33, v32, 2
	v_add_nc_u32_e32 v25, 0x48, v38
	v_add_nc_u32_e32 v26, 0x50, v38
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v27, 0x58, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_nc_u32_e32 v28, 0x60, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[4:7], 0 offen
	buffer_store_b32 v17, v25, s[4:7], 0 offen
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 0x68, v38
	v_add_nc_u32_e32 v18, 0x70, v38
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
	buffer_store_b32 v19, v27, s[4:7], 0 offen
	v_add_nc_u32_e32 v19, 0x78, v38
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	buffer_store_b32 v20, v16, s[4:7], 0 offen
	v_add_lshl_u32 v16, v33, v35, 2
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v21, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v34
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x2
	buffer_store_b32 v22, v18, s[4:7], 0 offen
	buffer_store_b32 v23, v19, s[4:7], 0 offen
	buffer_store_b32 v8, v16, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0x90, v34
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v34
	v_add_nc_u32_e32 v18, 0xa0, v34
	v_add_nc_u32_e32 v19, 0xa8, v34
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[4:7], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	buffer_store_b32 v10, v8, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v34
	s_clause 0x2
	buffer_store_b32 v11, v9, s[4:7], 0 offen
	buffer_store_b32 v12, v16, s[4:7], 0 offen
	buffer_store_b32 v13, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v34
	v_add_lshl_u32 v10, v33, v36, 2
	v_add_nc_u32_e32 v11, 0xc8, v34
	v_add_nc_u32_e32 v12, 0xd0, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v37, 62, v86
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v14, v8, s[4:7], 0 offen
	buffer_store_b32 v15, v9, s[4:7], 0 offen
	buffer_store_b32 v0, v10, s[4:7], 0 offen
	buffer_store_b32 v1, v11, s[4:7], 0 offen
	buffer_store_b32 v2, v12, s[4:7], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v34
	v_add_nc_u32_e32 v1, 0xe0, v34
	v_add_nc_u32_e32 v2, 0xe8, v34
	v_add_nc_u32_e32 v8, 0xf0, v34
	v_add_lshl_u32 v9, v33, v37, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x4
	buffer_store_b32 v3, v0, s[4:7], 0 offen
	buffer_store_b32 v4, v1, s[4:7], 0 offen
	buffer_store_b32 v5, v2, s[4:7], 0 offen
	buffer_store_b32 v6, v8, s[4:7], 0 offen
	buffer_store_b32 v7, v9, s[4:7], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp46:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 177
		.amdhsa_next_free_sgpr 67
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 177
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 67
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11296
; TotalNumSgprs: 69
; NumVgprs: 177
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 69
; NumVGPRsForWavesPerEU: 177
; Occupancy: 8
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     69
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     177
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
