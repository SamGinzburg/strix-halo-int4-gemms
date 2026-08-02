	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[30:31], s[0:1], 0x60
	s_load_b256 s[12:19], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v37, 1, v0
	v_dual_mov_b32 v41, 0x5410 :: v_dual_lshlrev_b32 v38, 4, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s5, s3, 9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v37
	v_dual_mov_b32 v16, 0 :: v_dual_and_b32 v39, 16, v38
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s7, s6, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v40, 15, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	v_dual_mov_b32 v17, v16 :: v_dual_mov_b32 v42, 0x7632
	v_dual_mov_b32 v136, 0xff800000 :: v_dual_lshlrev_b32 v45, 1, v0
	v_and_b32_e32 v47, 24, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s30, v37
	s_mul_i32 s8, s30, s7
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s30, v39
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	v_dual_mov_b32 v18, v16 :: v_dual_and_b32 v43, 0x78, v0
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 773 26                        ; attention.py:773:26
	v_add3_u32 v1, v2, v39, s8
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v44, v0, 4, 1
	v_dual_mov_b32 v23, v16 :: v_dual_and_b32 v46, 7, v0
	v_bfe_i32 v48, v0, 3, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_mov_b32_e32 v25, v16
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v49, 1, v43
	v_xor_b32_e32 v85, v38, v47
	v_and_b32_e32 v38, 24, v45
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[32:35], v1, s[36:39], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v37, 48, v40
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s37, s19, 0xffff
	s_mov_b32 s36, s18
	v_mov_b32_e32 v22, v16
	v_dual_mov_b32 v27, v16 :: v_dual_lshlrev_b32 v86, 4, v46
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v81, s7, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v1
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v50, v45, 30, v44
	v_mov_b32_e32 v19, v16
	v_and_b32_e32 v45, 0x410, v48
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v2, 1, v81
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	v_mul_u32_u24_e32 v47, 0x90, v46
	v_lshl_or_b32 v87, v40, 5, v38
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v40, s5, v49
	v_dual_mov_b32 v31, v16 :: v_dual_lshlrev_b32 v48, 2, v50
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_xor_b32_e32 v38, v86, v43
	v_xor_b32_e32 v88, v47, v45
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v79, 3, v40
	v_or_b32_e32 v80, 2, v40
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v36, v1, s[36:39], 0 offen
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v40, s31, v40
	v_or_b32_e32 v37, s5, v37
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v43, 4, v48
	v_lshl_or_b32 v90, v46, 10, v38
	v_xor_b32_e32 v38, 16, v88
	s_clause 0x1
	s_load_b32 s4, s[0:1], 0x68
	s_load_b64 s[28:29], s[0:1], 0x38
	v_dual_mov_b32 v21, v16 :: v_dual_and_b32 v84, 16, v0
	v_dual_mov_b32 v28, v16 :: v_dual_add_nc_u32 v95, 0, v38
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[72:73], null, s30, v37, v[39:40]
	v_xor_b32_e32 v37, 0x90, v90
	s_load_b64 s[40:41], s[0:1], 0x20
	v_xor_b32_e32 v39, 0x120, v90
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v84
	.loc	1 818 13                        ; attention.py:818:13
	v_add_lshl_u32 v123, v40, s31, 1
	v_add_nc_u32_e32 v125, 0, v37
	v_lshlrev_b32_e32 v124, 1, v40
	v_add_nc_u32_e32 v126, 0, v39
	v_cndmask_b32_e64 v41, 0x1054, v41, s0
	v_cndmask_b32_e64 v42, 0x3276, v42, s0
	v_dual_mov_b32 v29, v16 :: v_dual_lshlrev_b32 v44, 1, v44
	v_xor_b32_e32 v69, 0x1030, v88
	v_xor_b32_e32 v75, 0x1850, v88
	v_xor_b32_e32 v73, 0x2d0, v90
	v_lshl_or_b32 v41, v41, 8, v41
	v_lshl_or_b32 v42, v42, 8, v42
	v_lshl_or_b32 v89, s3, 10, v44
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s3, s4, 0x3fb8aa3b
	v_dual_mov_b32 v20, v16 :: v_dual_lshlrev_b32 v51, 3, v46
	v_xor_b32_e32 v50, 8, v85
	v_xor_b32_e32 v44, 8, v87
	v_xor_b32_e32 v45, 16, v87
	v_xor_b32_e32 v74, 0x1840, v88
	v_xor_b32_e32 v76, 0x1820, v88
	v_add_nc_u32_e32 v119, 0, v75
	v_add_nc_u32_e32 v129, 0, v73
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v79, s31, v79
	v_mul_lo_u32 v80, s31, v80
	v_dual_mov_b32 v24, v16 :: v_dual_add_nc_u32 v91, 0, v50
	v_dual_mov_b32 v26, v16 :: v_dual_add_nc_u32 v93, 0, v45
	v_dual_mov_b32 v9, v16 :: v_dual_add_nc_u32 v92, 0, v44
	v_xor_b32_e32 v47, 24, v87
	v_xor_b32_e32 v46, 32, v88
	v_xor_b32_e32 v49, 48, v88
	v_xor_b32_e32 v52, 64, v88
	v_xor_b32_e32 v53, 0x50, v88
	v_xor_b32_e32 v54, 0x60, v88
	v_xor_b32_e32 v55, 0x70, v88
	v_xor_b32_e32 v56, 0x820, v88
	v_xor_b32_e32 v57, 0x830, v88
	v_xor_b32_e32 v58, 0x810, v88
	v_xor_b32_e32 v59, 0x860, v88
	v_xor_b32_e32 v60, 0x870, v88
	v_xor_b32_e32 v61, 0x840, v88
	v_xor_b32_e32 v62, 0x850, v88
	v_xor_b32_e32 v63, 0x1040, v88
	v_xor_b32_e32 v64, 0x1050, v88
	v_xor_b32_e32 v65, 0x1060, v88
	v_xor_b32_e32 v66, 0x1070, v88
	v_xor_b32_e32 v67, 0x1010, v88
	v_xor_b32_e32 v68, 0x1020, v88
	v_xor_b32_e32 v70, 0x1860, v88
	v_xor_b32_e32 v71, 0x1870, v88
	v_xor_b32_e32 v77, 0x1830, v88
	v_xor_b32_e32 v78, 0x1810, v88
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s31, v51
	v_xor_b32_e32 v50, 0x1b0, v90
	v_xor_b32_e32 v51, 0x240, v90
	v_add_nc_u32_e32 v118, 0, v74
	v_add_nc_u32_e32 v120, 0, v76
	v_xor_b32_e32 v44, 0x360, v90
	v_xor_b32_e32 v45, 0x3f0, v90
	v_dual_mov_b32 v30, v16 :: v_dual_add_nc_u32 v97, 0, v49
	v_dual_mov_b32 v8, v16 :: v_dual_add_nc_u32 v99, 0, v53
	v_dual_mov_b32 v10, v16 :: v_dual_add_nc_u32 v101, 0, v55
	v_dual_mov_b32 v11, v16 :: v_dual_add_nc_u32 v94, 0, v47
	v_dual_mov_b32 v12, v16 :: v_dual_add_nc_u32 v103, 0, v57
	v_dual_mov_b32 v13, v16 :: v_dual_add_nc_u32 v96, 0, v46
	v_dual_mov_b32 v14, v16 :: v_dual_add_nc_u32 v105, 0, v59
	v_dual_mov_b32 v15, v16 :: v_dual_add_nc_u32 v98, 0, v52
	v_dual_mov_b32 v0, v16 :: v_dual_add_nc_u32 v107, 0, v61
	v_dual_mov_b32 v1, v16 :: v_dual_add_nc_u32 v100, 0, v54
	v_dual_mov_b32 v2, v16 :: v_dual_add_nc_u32 v109, 0, v63
	v_dual_mov_b32 v3, v16 :: v_dual_add_nc_u32 v102, 0, v56
	v_dual_mov_b32 v4, v16 :: v_dual_add_nc_u32 v111, 0, v65
	v_dual_mov_b32 v5, v16 :: v_dual_add_nc_u32 v104, 0, v58
	v_dual_mov_b32 v6, v16 :: v_dual_add_nc_u32 v113, 0, v67
	v_dual_mov_b32 v7, v16 :: v_dual_add_nc_u32 v106, 0, v60
	v_dual_mov_b32 v137, v16 :: v_dual_add_nc_u32 v108, 0, v62
	v_add_nc_u32_e32 v110, 0, v64
	v_add_nc_u32_e32 v112, 0, v66
	v_add_nc_u32_e32 v114, 0, v68
	v_add_nc_u32_e32 v116, 0, v70
	v_add_nc_u32_e32 v117, 0, v71
	v_add_nc_u32_e32 v121, 0, v77
	v_add_nc_u32_e32 v122, 0, v78
	v_add_nc_u32_e32 v127, 0, v50
	v_add_nc_u32_e32 v128, 0, v51
	v_add_nc_u32_e32 v130, 0, v44
	v_add_nc_u32_e32 v131, 0, v45
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v132, 1, v79
	v_lshlrev_b32_e32 v133, 1, v80
	s_mov_b32 s20, 0
	s_and_b32 s15, s15, 0xffff
	s_movk_i32 s13, 0xffc0
	s_mov_b32 s33, 0x76543210
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_lshl_b32 s34, s31, 7
	s_lshl_b32 s30, s30, 6
	s_mov_b32 s18, s38
	s_mov_b32 s19, s39
	s_mov_b32 s36, s14
	s_mov_b32 s37, s15
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v38, v48, v32
	ds_bpermute_b32 v32, v43, v32
	ds_bpermute_b32 v37, v48, v33
	ds_bpermute_b32 v33, v43, v33
	ds_bpermute_b32 v39, v48, v34
	ds_bpermute_b32 v34, v43, v34
	ds_bpermute_b32 v40, v48, v35
	ds_bpermute_b32 v35, v43, v35
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v73, v32, v38, s0
	v_cndmask_b32_e64 v75, v38, v32, s0
	v_and_b32_e32 v32, 0x540054, v41
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	v_add_nc_u32_e32 v115, 0, v69
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v74, v33, v37, s0
	v_cndmask_b32_e64 v76, v37, v33, s0
	v_lshl_or_b32 v32, v32, 4, v32
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v134, s3, v36
	v_and_b32_e32 v36, 0x760076, v42
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v77, v34, v39, s0
	v_cndmask_b32_e64 v79, v39, v34, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v78, v35, v40, s0
	v_cndmask_b32_e64 v80, v40, v35, s0
	v_lshl_or_b32 v33, v36, 4, v36
	v_and_b32_e32 v82, 0x5040504, v32
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v83, 0x7060706, v33
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 823 32                        ; attention.py:823:32
	v_dual_cndmask_b32 v32, 0x80000000, v72 :: v_dual_add_nc_u32 v49, 0, v87
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v48, s27 :: v_dual_mov_b32 v45, s24
	v_dual_mov_b32 v42, s21 :: v_dual_add_nc_u32 v37, v124, v86
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[32:35], v32, s[36:39], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v39, v133, v86
	v_add_nc_u32_e32 v38, v123, v86
	v_add_nc_u32_e32 v40, v132, v86
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v47, s26 :: v_dual_add_nc_u32 v36, 0, v85
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v50, 0x80000000, v37, s1
	v_cndmask_b32_e64 v37, 0x80000000, v39, s1
	v_cndmask_b32_e64 v51, 0x80000000, v38, s1
	v_cndmask_b32_e64 v38, 0x80000000, v40, s1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v46, s25 :: v_dual_mov_b32 v43, s22
	v_dual_mov_b32 v44, s23 :: v_dual_mov_b32 v41, s20
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v136
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s13, s13, 64
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v36, v[32:33]
	ds_store_b64 v91, v[34:35]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[141:144], v37, s[16:19], 0 offen
	buffer_load_b128 v[37:40], v38, s[16:19], 0 offen
	buffer_load_b128 v[181:184], v50, s[16:19], 0 offen
	buffer_load_b128 v[32:35], v51, s[16:19], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[66:69], v49 offset1:1
	ds_load_2addr_stride64_b64 v[145:148], v49 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[149:152], v92 offset1:1
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s13, 0x1c0
	v_add_nc_u32_e32 v86, s34, v86
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[50:57], v[66:67], v[73:74], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[60:67], v[68:69], v[73:74], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[145:146], v[73:74], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[147:148], v[73:74], v[41:48] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[41:44], v92 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[45:48], v93 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[50:57], v[149:150], v[77:78], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[60:67], v[151:152], v[77:78], v[60:67] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x2
	buffer_load_u16 v155, v89, s[40:43], 0 offen offset:36
	buffer_load_u16 v152, v89, s[40:43], 0 offen offset:40
	buffer_load_u16 v146, v89, s[40:43], 0 offen offset:44
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[41:42], v[77:78], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[43:44], v[77:78], v[173:180] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[41:44], v93 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[50:57], v[45:46], v[75:76], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[60:67], v[47:48], v[75:76], v[60:67] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[45:48], v94 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[41:42], v[75:76], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[43:44], v[75:76], v[173:180] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[41:44], v94 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[50:57], v[45:46], v[79:80], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[60:67], v[47:48], v[79:80], v[60:67] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v71, v51
	v_cvt_f32_i32_e32 v69, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v59, v54
	v_cvt_f32_i32_e32 v58, v55
	v_cvt_f32_i32_e32 v53, v57
	v_cvt_f32_i32_e32 v51, v60
	v_cvt_f32_i32_e32 v164, v61
	v_cvt_f32_i32_e32 v163, v62
	v_cvt_f32_i32_e32 v162, v63
	v_cvt_f32_i32_e32 v161, v64
	v_cvt_f32_i32_e32 v160, v65
	v_cvt_f32_i32_e32 v159, v66
	v_cvt_f32_i32_e32 v158, v67
	v_cvt_f32_i32_e32 v138, v50
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[41:42], v[79:80], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[43:44], v[79:80], v[173:180] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v70, v52
	v_cvt_f32_i32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v147, v168
	v_cvt_f32_i32_e32 v149, v170
	v_cvt_f32_i32_e32 v151, v172
	v_cvt_f32_i32_e32 v140, v174
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x3
	buffer_load_u16 v174, v89, s[40:43], 0 offen offset:48
	buffer_load_u16 v172, v89, s[40:43], 0 offen offset:52
	buffer_load_u16 v170, v89, s[40:43], 0 offen offset:56
	buffer_load_u16 v168, v89, s[40:43], 0 offen offset:60
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v157, v165
	v_cvt_f32_i32_e32 v156, v166
	v_cvt_f32_i32_e32 v154, v167
	v_cvt_f32_i32_e32 v148, v169
	v_cvt_f32_i32_e32 v150, v171
	v_cvt_f32_i32_e32 v135, v173
	v_cvt_f32_i32_e32 v139, v175
	v_cvt_f32_i32_e32 v57, v176
	v_cvt_f32_i32_e32 v54, v177
	v_cvt_f32_i32_e32 v49, v178
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v36, 0, v90
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v52, v179
	v_cvt_f32_i32_e32 v50, v180
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v49, v134, v49
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v44.l, v141.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v44.h, v37.l
	v_mov_b16_e64 v37.l, v141.h
	v_mov_b16_e64 v46.l, v142.l
	v_mov_b16_e32 v46.h, v38.l
	v_mov_b16_e64 v38.l, v142.h
	v_mov_b16_e64 v48.l, v143.l
	v_mov_b16_e32 v48.h, v39.l
	v_mov_b16_e32 v42.h, v40.l
	v_mov_b16_e64 v40.l, v144.h
	v_mov_b16_e64 v39.l, v143.h
	v_mov_b16_e64 v42.l, v144.l
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x18
	buffer_load_u16 v177, v89, s[40:43], 0 offen offset:64
	buffer_load_u16 v176, v89, s[40:43], 0 offen offset:68
	buffer_load_u16 v175, v89, s[40:43], 0 offen offset:72
	buffer_load_u16 v173, v89, s[40:43], 0 offen offset:76
	buffer_load_u16 v171, v89, s[40:43], 0 offen offset:80
	buffer_load_u16 v169, v89, s[40:43], 0 offen offset:84
	buffer_load_u16 v167, v89, s[40:43], 0 offen offset:88
	buffer_load_u16 v166, v89, s[40:43], 0 offen offset:92
	buffer_load_u16 v165, v89, s[40:43], 0 offen offset:96
	buffer_load_u16 v153, v89, s[40:43], 0 offen offset:100
	buffer_load_u16 v145, v89, s[40:43], 0 offen offset:104
	buffer_load_u16 v144, v89, s[40:43], 0 offen
	buffer_load_u16 v143, v89, s[40:43], 0 offen offset:4
	buffer_load_u16 v142, v89, s[40:43], 0 offen offset:8
	buffer_load_u16 v141, v89, s[40:43], 0 offen offset:12
	buffer_load_u16 v68, v89, s[40:43], 0 offen offset:16
	buffer_load_u16 v67, v89, s[40:43], 0 offen offset:20
	buffer_load_u16 v66, v89, s[40:43], 0 offen offset:24
	buffer_load_u16 v65, v89, s[40:43], 0 offen offset:28
	buffer_load_u16 v64, v89, s[40:43], 0 offen offset:32
	buffer_load_u16 v63, v89, s[40:43], 0 offen offset:108
	buffer_load_u16 v62, v89, s[40:43], 0 offen offset:112
	buffer_load_u16 v61, v89, s[40:43], 0 offen offset:120
	buffer_load_u16 v60, v89, s[40:43], 0 offen offset:124
	buffer_load_u16 v55, v89, s[40:43], 0 offen offset:116
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(33)
	v_mov_b16_e64 v43.l, v181.l
	s_waitcnt vmcnt(32)
	v_mov_b16_e32 v43.h, v32.l
	v_mov_b16_e64 v32.l, v181.h
	v_mov_b16_e32 v45.h, v33.l
	v_mov_b16_e64 v33.l, v182.h
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v36, v[43:44]
	v_mov_b32_e32 v36, v32
	v_mov_b16_e64 v45.l, v182.l
	ds_store_b64 v125, v[36:37]
	ds_store_b64 v126, v[45:46]
	v_dual_mov_b32 v37, v33 :: v_dual_mul_f32 v32, v134, v164
	v_mov_b16_e64 v47.l, v183.l
	v_mov_b16_e32 v47.h, v34.l
	ds_store_b64 v127, v[37:38]
	ds_store_b64 v128, v[47:48]
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v33, 16, v155
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v36, 16, v152
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v37, 16, v146
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v34.l, v183.h
	v_mov_b16_e64 v41.l, v184.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v32, v32, v33 :: v_dual_mul_f32 v33, v134, v163
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v41.h, v35.l
	v_mov_b16_e64 v35.l, v184.h
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v89, 0x80, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v33, v33, v36 :: v_dual_mul_f32 v36, v134, v162
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v32, 0xff800000, v32, s2
	v_cndmask_b32_e64 v33, 0xff800000, v33, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v38, v36, v37
	s_waitcnt vmcnt(28)
	v_dual_mul_f32 v36, v134, v161 :: v_dual_lshlrev_b32 v37, 16, v174
	v_dual_mul_f32 v43, v36, v37 :: v_dual_mul_f32 v36, v134, v160
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v37, 16, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v43, 0xff800000, v43, s2
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v44, v36, v37 :: v_dual_lshlrev_b32 v37, 16, v170
	v_mul_f32_e32 v36, v134, v159
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v159, 0xff800000, v38, s2
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v38, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v160, 0xff800000, v44, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v45, v36, v37 :: v_dual_mul_f32 v36, v134, v158
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v37, 16, v168
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v34, v32, v33, v159
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v129, v[38:39]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v161, 0xff800000, v45, s2
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v130, v[41:42]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v46, v36, v37
	v_mul_f32_e32 v36, v134, v157
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v38, v43, v160, v161
.Ltmp4:
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v37, 16, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v47, v36, v37 :: v_dual_mul_f32 v36, v134, v156
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v37, 16, v176
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v162, 0xff800000, v46, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v48, v36, v37
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v36, v134, v154 :: v_dual_lshlrev_b32 v37, 16, v175
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, 0xff800000, v47, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v146, v36, v37
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v36, v134, v147 :: v_dual_lshlrev_b32 v37, 16, v173
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v147, v36, v37 :: v_dual_mul_f32 v36, v134, v148
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v37, 16, v171
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v45, 0xff800000, v48, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v47, 0xff800000, v147, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v148, v36, v37
	v_mul_f32_e32 v36, v134, v149
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v37, 16, v169
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v39, v162, v44, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp6:
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v149, v36, v37 :: v_dual_mul_f32 v36, v134, v150
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v37, 16, v167
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v46, 0xff800000, v146, s2
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v34, v34, v38, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp8:
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v150, v36, v37
	v_dual_mul_f32 v36, v134, v151 :: v_dual_lshlrev_b32 v37, 16, v166
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v48, 0xff800000, v148, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v151, v36, v37 :: v_dual_mul_f32 v36, v134, v135
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v37, 16, v165
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v135.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v152, v36, v37
	v_dual_mul_f32 v36, v134, v140 :: v_dual_lshlrev_b32 v37, 16, v153
	v_dual_mov_b32 v140, v137 :: v_dual_lshlrev_b32 v137, 16, v145
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v157.h, v135.h
	v_mov_b16_e64 v158.h, v135.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v153, v36, v37 :: v_dual_mul_f32 v36, v134, v139
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v72, s30, v72
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v139.h, v135.h
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v37, 0, v88
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v137, v36, v137 :: v_dual_mul_f32 v36, v134, v138
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v138, 16, v144
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v144.h, v135.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v138, v36, v138
	v_mul_f32_e32 v36, v134, v71
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v71, 16, v143
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v143.h, v135.h
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v71, v36, v71 :: v_dual_mul_f32 v36, v134, v70
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v70, 16, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v142.h, v135.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v71, 0xff800000, v71, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v70, v36, v70
	v_mul_f32_e32 v36, v134, v69
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v69, 16, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v141, v36, v69 :: v_dual_mul_f32 v36, v134, v59
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v59, 16, v68
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v69.h, v135.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v141, 0xff800000, v141, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v68, v36, v59
	v_mul_f32_e32 v36, v134, v58
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v58, 16, v67
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v59, 0xff800000, v153, s2
	v_cndmask_b32_e64 v68, 0xff800000, v68, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v67, v36, v58 :: v_dual_mul_f32 v36, v134, v56
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v56, 16, v66
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v58, 0xff800000, v152, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v66.h, v135.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v67, 0xff800000, v67, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v145, v36, v56 :: v_dual_mul_f32 v36, v134, v53
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v53, 16, v65
	v_lshlrev_b32_e32 v56, 16, v63
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, 0xff800000, v138, s2
	v_cndmask_b32_e64 v145, 0xff800000, v145, s2
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v141, v68, v67
.Ltmp10:
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v65, v36, v53 :: v_dual_mul_f32 v36, v134, v51
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v51, 16, v64
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v138, v71
.Ltmp12:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v53.h, v135.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v146, 0xff800000, v65, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v64, v36, v51
	v_mul_f32_e32 v36, v134, v57
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v57, 0xff800000, v151, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v51.h, v135.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v163, 0xff800000, v64, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v63, v36, v56 :: v_dual_mul_f32 v36, v134, v54
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v54, 16, v62
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v56.h, v135.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v148, v145, v146, v163
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v63, 0xff800000, v63, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v62, v36, v54
	v_mul_f32_e32 v36, v134, v52
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v52, 16, v61
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v54.h, v135.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v64, 0xff800000, v62, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v61, v36, v52 :: v_dual_mul_f32 v36, v134, v50
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v50, 16, v60
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v60, 0xff800000, v137, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v52.h, v135.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v61, 0xff800000, v61, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v154, v36, v50
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v36, v40
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v40, v49, v55
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v49, 0xff800000, v149, s2
	v_cndmask_b32_e64 v55, 0xff800000, v150, s2
	v_cndmask_b32_e64 v62, 0xff800000, v154, s2
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v131, v[35:36]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v63, v64
.Ltmp16:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v70, 0xff800000, v70, s2
	v_cndmask_b32_e64 v65, 0xff800000, v40, s2
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v40, v46, v47, v48
	v_max3_f32 v137, v49, v55, v57
	v_max3_f32 v147, v58, v59, v60
	v_max_f32_e32 v36, v61, v62
	v_max3_f32 v38, v41, v70, v42
.Ltmp18:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v39, v40, v137, v147
	v_max3_f32 v35, v35, v65, v36
	v_max3_f32 v34, v38, v148, v34
.Ltmp20:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[149:152], v37
	ds_load_b128 v[153:156], v95
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v50.h, v135.h
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v34, v34, v39, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v34, s33, 0xfedcba98 op_sel:[1,0]
.Ltmp23:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v137, v136, v34, v35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v71, v137
	v_sub_f32_e32 v35, v138, v137
	v_sub_f32_e32 v38, v141, v137
	v_sub_f32_e32 v39, v68, v137
	v_sub_f32_e32 v40, v67, v137
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v35, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v145, v137
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v40, v40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v70, v137
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v46, v137
	v_sub_f32_e32 v42, v146, v137
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s2
	v_cndmask_b32_e64 v35, 0, v35, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s2
	v_cndmask_b32_e64 v39, 0, v39, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v135.l, v34.h
	v_mov_b16_e64 v139.l, v35.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v40, s2
	v_cndmask_b32_e64 v68, 0, v41, s2
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v46, v46
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v41, 1, v135
	v_and_b32_e32 v40, 1, v139
	v_mov_b16_e64 v135.l, v38.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v35, v35
	v_mov_b16_e64 v143.l, v39.h
	v_add3_u32 v40, v35, v40, 0x7fff
	v_and_b32_e32 v139, 1, v135
	v_mov_b16_e64 v135.l, v67.h
	v_add3_u32 v41, v34, v41, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v71, 1, v143
	v_cndmask_b16 v41.l, 0x7fff, v40.h, s5
	v_and_b32_e32 v40, 1, v135
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v46, 0, v46, s2
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v32, v32, v137
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v42, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v144.l, v36.h
	v_cmp_o_f32_e64 s8, v67, v67
	v_cmp_o_f32_e64 s9, v39, v39
	v_add3_u32 v71, v39, v71, 0x7fff
	v_add3_u32 v40, v67, v40, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v32, v32
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v142.l, v68.h
	v_and_b32_e32 v42, 1, v144
	v_mov_b16_e64 v135.l, v70.h
	v_cndmask_b16 v71.l, 0x7fff, v71.h, s9
	v_cndmask_b16 v71.h, 0x7fff, v40.h, s8
	v_cmp_o_f32_e64 s4, v34, v34
	v_cmp_o_f32_e64 s6, v38, v38
	v_cmp_o_f32_e64 s7, v36, v36
	v_and_b32_e32 v138, 1, v142
	v_add3_u32 v42, v36, v42, 0x7fff
	v_add3_u32 v139, v38, v139, 0x7fff
	v_and_b32_e32 v141, 1, v135
	v_permlanex16_b32 v40, v71, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v32, 0, v32, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v70, v70
	v_cmp_o_f32_e64 s11, v68, v68
	v_add3_u32 v138, v68, v138, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s4
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s7
	v_cndmask_b16 v42.h, 0x7fff, v139.h, s6
	v_add3_u32 v139, v70, v141, 0x7fff
	v_perm_b32 v145, v40, v71, v82
	v_perm_b32 v146, v40, v71, v83
	v_mov_b16_e64 v135.l, v32.h
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v40, v136, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v138.l, 0x7fff, v138.h, s11
	v_permlanex16_b32 v142, v41, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v138.h, 0x7fff, v139.h, s10
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v58, v58, v137
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v40, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v144, v42, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v141, v142, v41, v82
	v_perm_b32 v142, v142, v41, v83
	v_permlanex16_b32 v41, v138, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v58, v58
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v143, v144, v42, v82
	v_perm_b32 v144, v144, v42, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v33, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v147, v41, v138, v82
	v_perm_b32 v148, v41, v138, v83
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v138, 0, v40, s3
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v163, v137
	v_sub_f32_e32 v41, v159, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v51.l, v46.h
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v38
	v_dual_add_f32 v38, v39, v67 :: v_dual_add_f32 v39, v68, v70
.Ltmp25:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v41, v41
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v58, 0, v58, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v43, v137
	v_sub_f32_e32 v43, v160, v137
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v138
	v_mul_f32_e32 v19, v19, v138
	v_mul_f32_e32 v21, v21, v138
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v139, 0, v40, s2
	v_cndmask_b32_e64 v159, 0, v41, s2
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v138
	v_mul_f32_e32 v23, v23, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v24, v24, v138 :: v_dual_add_f32 v67, v139, v32
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v69.l, v139.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v138
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v163, 0, v43, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v43, 1, v135
	v_mov_b16_e64 v135.l, v159.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v138
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v157.l, v33.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v138
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v40, 1, v69
	v_and_b32_e32 v69, 1, v135
	v_mov_b16_e64 v135.l, v163.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v20, v20, v138 :: v_dual_and_b32 v41, 1, v157
	v_dual_mul_f32 v26, v26, v138 :: v_dual_sub_f32 v45, v45, v137
	v_mul_f32_e32 v27, v27, v138
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[149:156], v[141:148], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[149:152], v102
	ds_load_b128 v[153:156], v103
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v28, v28, v138 :: v_dual_sub_f32 v47, v47, v137
	v_mul_f32_e32 v29, v29, v138
	v_dual_mul_f32 v30, v30, v138 :: v_dual_sub_f32 v49, v49, v137
	v_mul_f32_e32 v31, v31, v138
	v_dual_mul_f32 v8, v8, v138 :: v_dual_sub_f32 v55, v55, v137
	v_mul_f32_e32 v9, v9, v138
	v_dual_mul_f32 v10, v10, v138 :: v_dual_sub_f32 v57, v57, v137
	v_mul_f32_e32 v11, v11, v138
	v_dual_mul_f32 v12, v12, v138 :: v_dual_sub_f32 v59, v59, v137
	v_mul_f32_e32 v13, v13, v138
	v_dual_mul_f32 v14, v14, v138 :: v_dual_sub_f32 v63, v63, v137
	v_mul_f32_e32 v15, v15, v138
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[149:156], v[141:148], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[149:152], v109
	ds_load_b128 v[153:156], v110
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v57, v57
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v0, v0, v138 :: v_dual_sub_f32 v65, v65, v137
	v_mul_f32_e32 v1, v1, v138
	v_dual_mul_f32 v2, v2, v138 :: v_dual_sub_f32 v61, v61, v137
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v160, 0, v42, s2
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v138
	v_mul_f32_e32 v4, v4, v138
	v_mul_f32_e32 v5, v5, v138
	v_mul_f32_e32 v7, v7, v138
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.l, v160.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v55, s2
	v_cndmask_b32_e64 v57, 0, v57, s2
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v138
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v32, v32
	v_cmp_o_f32_e64 s4, v139, v139
	v_and_b32_e32 v42, 1, v158
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[149:156], v[141:148], v[8:15]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[149:152], v116
	ds_load_b128 v[153:156], v117
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v40, v139, v40, 0x7fff
	v_add3_u32 v43, v32, v43, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v48, v137
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v38, v38, v39 :: v_dual_add_f32 v39, v55, v57
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v159, v159
	v_cmp_o_f32_e64 s6, v33, v33
	v_cmp_o_f32_e64 s7, v163, v163
	v_cmp_o_f32_e64 s8, v160, v160
	v_add3_u32 v41, v33, v41, 0x7fff
	v_add3_u32 v42, v160, v42, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s4
	v_cndmask_b16 v40.h, 0x7fff, v43.h, s3
	v_add3_u32 v43, v159, v69, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v64, v137
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v49, v49
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s6
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s8
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[149:156], v[141:148], v[0:7]
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v141, 1, v135
	v_permlanex16_b32 v142, v40, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s5
	.loc	1 886 49 is_stmt 1              ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[149:152], v96
	ds_load_b128 v[153:156], v97
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v69, v163, v141, 0x7fff
	v_perm_b32 v141, v142, v40, v82
	v_permlanex16_b32 v43, v41, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v142, v142, v40, v83
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v48, 0, v48, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v42.h, 0x7fff, v69.h, s7
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v143, v43, v41, v82
	v_perm_b32 v144, v43, v41, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v162, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v40, v42, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v64, s2
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v64, v48, v49
.Ltmp29:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v44, v137
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v145, v40, v42, v82
	v_perm_b32 v146, v40, v42, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v40, v161, v137 :: v_dual_add_f32 v39, v64, v39
	v_sub_f32_e32 v60, v60, v137
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v59, v59
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v41, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v60, v60
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v62, v137
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v56.l, v48.h
	v_mov_b16_e64 v135.l, v157.h
	v_cmp_o_f32_e64 s3, v157, v157
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s2
	v_cndmask_b32_e64 v69, 0, v40, s2
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v62, v62
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v41, 1, v135
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v53.l, v44.h
	v_mov_b16_e32 v66.l, v69.h
	v_cmp_o_f32_e64 s4, v69, v69
	v_add3_u32 v41, v157, v41, 0x7fff
	v_and_b32_e32 v56, 1, v56
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v40, 1, v66
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v66, v35, v34 :: v_dual_and_b32 v53, 1, v53
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v48, v48
	v_add3_u32 v48, v48, v56, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v40, v69, v40, 0x7fff
	v_mov_b16_e64 v135.l, v45.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v139, 0, v62, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v44, v44
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v62, v44, v45
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s4
	v_cndmask_b16 v40.h, 0x7fff, v41.h, s3
	v_add3_u32 v44, v44, v53, 0x7fff
	v_cndmask_b16 v53.l, 0x7fff, v48.h, s10
	v_and_b32_e32 v48, 1, v135
	v_mov_b16_e64 v135.l, v47.h
	v_permlanex16_b32 v41, v40, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v63, v63
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v45, v45
	v_mov_b16_e32 v54.l, v55.h
	v_add3_u32 v45, v45, v48, 0x7fff
	v_perm_b32 v147, v41, v40, v82
	v_perm_b32 v148, v41, v40, v83
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v61, v61
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v47, v47
	v_and_b32_e32 v51, 1, v51
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[149:156], v[141:148], v[16:23]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[149:152], v37 offset:2048
	ds_load_b128 v[153:156], v104
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v54, 1, v54
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s6
	v_cndmask_b16 v44.h, 0x7fff, v45.h, s5
	v_cmp_o_f32_e64 s8, v46, v46
	v_cmp_o_f32_e64 s11, v57, v57
	v_cmp_o_f32_e64 s12, v55, v55
	v_cmp_o_f32_e64 s9, v49, v49
	v_mov_b16_e64 v136.h, v135.h
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v66, v36
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v52.l, v58.h
	v_mov_b16_e64 v71.h, v135.h
	v_mov_b16_e32 v71.l, v70.h
	v_cmp_o_f32_e64 s3, v58, v58
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v38
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v52, 1, v52
	v_cmp_o_f32_e64 s5, v70, v70
	v_cmp_o_f32_e64 s10, v139, v139
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[149:156], v[141:148], v[24:31]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[149:152], v111
	ds_load_b128 v[153:156], v112
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[149:156], v[141:148], v[8:15]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[149:152], v118
	ds_load_b128 v[153:156], v119
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[149:156], v[141:148], v[0:7]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v143, 0, v59, s2
	v_cndmask_b32_e64 v59, 0, v60, s2
	v_cndmask_b32_e64 v142, 0, v63, s2
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v63, v46, v47
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v46, v46, v51, 0x7fff
	v_add3_u32 v51, v55, v54, 0x7fff
	v_mov_b16_e32 v50.l, v59.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v65, s2
	v_cndmask_b32_e64 v154, 0, v61, s2
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v60, v160, v163 :: v_dual_add_f32 v61, v69, v157
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v50, 1, v50
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s8
	v_cndmask_b16 v55.l, 0x7fff, v51.h, s12
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v58, v143
	v_add_f32_e32 v69, v60, v61
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v145, v59, v50, 0x7fff
	v_and_b32_e32 v50, 1, v135
	v_mov_b16_e64 v135.l, v49.h
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v60, v59, v142 :: v_dual_add_f32 v155, v62, v63
	v_add_f32_e32 v61, v70, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v45, v47, v50, 0x7fff
	v_and_b32_e32 v48, 1, v135
	v_mov_b16_e64 v135.l, v57.h
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v62, v154, v139
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v136.l, v154.h
	v_cndmask_b16 v46.h, 0x7fff, v45.h, s7
	v_add3_u32 v45, v49, v48, 0x7fff
	v_and_b32_e32 v47, 1, v135
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v33, v159
	v_add_f32_e32 v156, v65, v60
	v_add_f32_e32 v157, v61, v62
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v53.h, 0x7fff, v45.h, s9
	v_add3_u32 v47, v57, v47, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[146:149], v98
	ds_load_b128 v[40:43], v120
	ds_load_b128 v[150:153], v99
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v155, v155, v39 :: v_dual_add_f32 v156, v156, v157
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v50, v44, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v55.h, 0x7fff, v47.h, s11
	v_permlanex16_b32 v51, v46, s33, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v144, v58, v52, 0x7fff
	v_mov_b16_e64 v135.l, v143.h
	v_perm_b32 v48, v50, v44, v82
	v_permlanex16_b32 v45, v55, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v49, v50, v44, v83
	v_permlanex16_b32 v44, v53, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v50, v51, v46, v82
	v_perm_b32 v51, v51, v46, v83
	v_perm_b32 v54, v45, v55, v82
	v_perm_b32 v55, v45, v55, v83
	v_and_b32_e32 v45, 1, v136
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v67, v68
.Ltmp53:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[60:63], v105
	ds_load_b128 v[64:67], v106
	v_dual_mov_b32 v136, v137 :: v_dual_add_f32 v137, v155, v156
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v52, v44, v53, v82
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v68, v69
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v53, v44, v53, v83
	v_and_b32_e32 v44, 1, v71
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[32:35], v100
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v59, v59
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v157, v36, v38
.Ltmp57:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[146:153], v[48:55], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[150:153], v113
	ds_load_b128 v[146:149], v37 offset:4096
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v154, v154
	v_add3_u32 v158, v70, v44, 0x7fff
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v137, v157, v137
.Ltmp59:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v154, v154, v45, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[56:59], v37 offset:6144
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v143, v143
	v_cndmask_b16 v144.l, 0x7fff, v144.h, s3
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v156, v137, s33, 0xfedcba98 op_sel:[1,0]
.Ltmp61:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[60:67], v[48:55], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[64:67], v114
	ds_load_b128 v[44:47], v121
	ds_load_b128 v[60:63], v122
	ds_load_b128 v[36:39], v101
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v142, v142
	v_cmp_o_f32_e64 s9, v141, v141
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v137, v137, v156 :: v_dual_and_b32 v156, 1, v135
.Ltmp63:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v135.l, v142.h
	v_cndmask_b16 v145.l, 0x7fff, v145.h, s4
	v_cndmask_b16 v154.l, 0x7fff, v158.h, s5
	v_cndmask_b16 v155.l, 0x7fff, v154.h, s6
	v_add3_u32 v143, v143, v156, 0x7fff
	v_and_b32_e32 v157, 1, v135
	v_mov_b16_e64 v135.l, v141.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[146:153], v[48:55], v[8:15]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[146:149], v107
	ds_load_b128 v[150:153], v108
	ds_load_b128 v[68:71], v115
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v144.h, 0x7fff, v143.h, s7
	v_add3_u32 v142, v142, v157, 0x7fff
	v_and_b32_e32 v156, 1, v135
	v_mov_b16_e64 v135.l, v139.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[40:47], v[48:55], v[0:7]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v157, v144, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v145.h, 0x7fff, v142.h, s8
	v_add3_u32 v141, v141, v156, 0x7fff
	v_and_b32_e32 v143, 1, v135
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v137, v140, v138
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v40, v157, v144, v82
	v_permlanex16_b32 v43, v145, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v154.h, 0x7fff, v141.h, s9
	v_add3_u32 v42, v139, v143, 0x7fff
	v_perm_b32 v41, v157, v144, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v45, v154, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v155.h, 0x7fff, v42.h, s10
	v_perm_b32 v42, v43, v145, v82
	v_perm_b32 v43, v43, v145, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v44, v45, v154, v82
	v_permlanex16_b32 v47, v155, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v45, v45, v154, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v46, v47, v155, v82
	v_perm_b32 v47, v47, v155, v83
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[32:39], v[40:47], v[16:23]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[146:153], v[40:47], v[24:31]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[64:71], v[40:47], v[8:15]
	v_wmma_f32_16x16x16_bf16 v[0:7], v[56:63], v[40:47], v[0:7]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v32, null, v137, v137, v16
	v_div_scale_f32 v33, null, v137, v137, v17
	v_div_scale_f32 v36, null, v137, v137, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v34, v32
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v37, vcc_lo, v16, v137, v16
	v_div_scale_f32 v38, s1, v17, v137, v17
	v_rcp_f32_e32 v39, v36
	v_div_scale_f32 v43, null, v137, v137, v19
	v_div_scale_f32 v47, null, v137, v137, v20
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v40, -v32, v34, 1.0
	v_fma_f32 v41, -v33, v35, 1.0
	v_div_scale_f32 v42, s3, v18, v137, v18
	v_div_scale_f32 v49, null, v137, v137, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v34, v40, v34 :: v_dual_fmac_f32 v35, v41, v35
	v_rcp_f32_e32 v41, v43
	v_fma_f32 v44, -v36, v39, 1.0
	v_div_scale_f32 v40, s4, v19, v137, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v45, v37, v34 :: v_dual_mul_f32 v46, v38, v35
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v33, v46, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v43, v41, 1.0
	v_dual_fmac_f32 v46, v48, v35 :: v_dual_fmac_f32 v41, v50, v41
	v_rcp_f32_e32 v48, v47
	v_fmac_f32_e32 v39, v44, v39
	v_fma_f32 v44, -v32, v45, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v33, v46, v38
	v_div_scale_f32 v38, null, v137, v137, v22
	v_fmac_f32_e32 v45, v44, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v45, v37
	v_div_fmas_f32 v32, v32, v34, v45
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v34, v49
	v_div_fmas_f32 v33, v33, v35, v46
	v_fma_f32 v35, -v47, v48, 1.0
	v_div_fixup_f32 v16, v32, v137, v16
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v137
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v33, v137, v17
	v_fmac_f32_e32 v48, v35, v48
	v_mul_f32_e32 v44, v42, v39
	v_div_scale_f32 v35, s5, v20, v137, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v36, v44, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e64 v135.l, v17.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v44, v37, v39 :: v_dual_mul_f32 v37, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v36, v44, v42
	v_fma_f32 v33, -v43, v37, v40
	v_fma_f32 v36, -v49, v34, 1.0
	v_div_scale_f32 v42, null, v137, v137, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v39, v44
	v_dual_fmac_f32 v37, v33, v41 :: v_dual_fmac_f32 v34, v36, v34
	v_rcp_f32_e32 v36, v38
	v_mul_f32_e32 v33, v35, v48
	v_div_scale_f32 v39, s3, v21, v137, v21
	v_rcp_f32_e32 v44, v42
	v_div_fixup_f32 v18, v32, v137, v18
	v_fma_f32 v32, -v43, v37, v40
	v_fma_f32 v40, -v47, v33, v35
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v45, -v38, v36, 1.0
	v_mul_f32_e32 v43, v39, v34
	v_div_fmas_f32 v32, v32, v41, v37
	v_fmac_f32_e32 v33, v40, v48
	v_div_scale_f32 v40, s4, v22, v137, v22
	v_fmac_f32_e32 v36, v45, v36
	v_fma_f32 v37, -v49, v43, v39
	v_fma_f32 v41, -v42, v44, 1.0
	v_div_fixup_f32 v19, v32, v137, v19
	v_fma_f32 v32, -v47, v33, v35
	v_mul_f32_e32 v35, v40, v36
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v44, v41, v44
	v_fmac_f32_e32 v43, v37, v34
	v_div_scale_f32 v37, s6, v23, v137, v23
	v_div_scale_f32 v41, null, v137, v137, v24
	v_div_fmas_f32 v32, v32, v48, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v49, v43, v39
	v_fma_f32 v39, -v38, v35, v40
	v_rcp_f32_e32 v45, v41
	v_mul_f32_e32 v46, v37, v44
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v47, null, v137, v137, v25
	v_fmac_f32_e32 v35, v39, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v42, v46, v37
	v_div_fixup_f32 v32, v32, v137, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v39, v44
	v_div_fmas_f32 v33, v33, v34, v43
	v_fma_f32 v43, -v41, v45, 1.0
	v_rcp_f32_e32 v34, v47
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v20, v33, v137, v21
	v_fma_f32 v21, -v38, v35, v40
	v_fmac_f32_e32 v45, v43, v45
	v_div_scale_f32 v33, s3, v24, v137, v24
	v_div_scale_f32 v43, null, v137, v137, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v21, v36, v35
	v_mul_f32_e32 v36, v33, v45
	v_fma_f32 v38, -v47, v34, 1.0
	v_fma_f32 v35, -v42, v46, v37
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v22, v21, v137, v22
	v_fma_f32 v40, -v41, v36, v33
	v_fmac_f32_e32 v34, v38, v34
	v_div_scale_f32 v38, s4, v25, v137, v25
	v_div_fmas_f32 v35, v35, v44, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v40, v45
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v42, v38, v34
	v_div_scale_f32 v37, null, v137, v137, v26
	v_div_fixup_f32 v21, v35, v137, v23
	v_rcp_f32_e32 v35, v43
	v_fma_f32 v33, -v41, v36, v33
	v_div_scale_f32 v41, null, v137, v137, v28
	v_fma_f32 v23, -v47, v42, v38
	v_rcp_f32_e32 v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v45, v36
	v_rcp_f32_e32 v44, v41
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v48, s4, v28, v137, v28
	v_fmac_f32_e32 v42, v23, v34
	v_fma_f32 v23, -v43, v35, 1.0
	v_div_scale_f32 v45, s3, v27, v137, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v37, v39, 1.0
	v_div_scale_f32 v46, null, v137, v137, v29
	v_fmac_f32_e32 v35, v23, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v41, v44, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, s5, v26, v137, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v23, v44
	v_div_fixup_f32 v23, v33, v137, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v32, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v33, v48, v44
	v_fma_f32 v36, -v47, v42, v38
	v_rcp_f32_e32 v47, v46
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v36, v34, v42
	v_mul_f32_e32 v42, v45, v35
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v24, v34, v137, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v43, v42, v45
	v_div_scale_f32 v34, null, v137, v137, v30
	v_fmac_f32_e32 v42, v25, v35
	v_fma_f32 v25, -v41, v33, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v38, v40, v39 :: v_dual_fmac_f32 v33, v25, v44
	v_fma_f32 v36, -v37, v38, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v38, v36, v39
	v_fma_f32 v36, -v46, v47, 1.0
	v_fma_f32 v37, -v37, v38, v40
	v_rcp_f32_e32 v40, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v36, v47
	v_div_scale_f32 v36, s6, v29, v137, v29
	v_div_fmas_f32 v37, v37, v39, v38
	v_fma_f32 v38, -v43, v42, v45
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s3, v30, v137, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v26, v37, v137, v26
	v_fma_f32 v25, -v34, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v40, v25, v40 :: v_dual_mul_f32 v39, v36, v47
	v_div_fmas_f32 v35, v38, v35, v42
	v_fma_f32 v38, -v41, v33, v48
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v42, null, v137, v137, v31
	v_div_fixup_f32 v27, v35, v137, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v25, v38, v44, v33
	v_mul_f32_e32 v38, v43, v40
	v_fma_f32 v41, -v46, v39, v36
	v_rcp_f32_e32 v33, v42
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v25, v25, v137, v28
	v_fma_f32 v35, -v34, v38, v43
	v_fmac_f32_e32 v39, v41, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v35, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v28, -v46, v39, v36
	v_div_scale_f32 v36, null, v137, v137, v8
	v_fma_f32 v37, -v42, v33, 1.0
	v_div_scale_f32 v35, s4, v31, v137, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v28, v28, v47, v39
	v_rcp_f32_e32 v39, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v37, v33
	v_div_scale_f32 v37, null, v137, v137, v9
	v_div_fixup_f32 v28, v28, v137, v29
	v_fma_f32 v29, -v34, v38, v43
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v37
	v_fma_f32 v41, -v36, v39, 1.0
	v_mul_f32_e32 v34, v35, v33
	v_div_fmas_f32 v29, v29, v40, v38
	v_div_scale_f32 v40, s3, v8, v137, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v41, v39
	v_fma_f32 v38, -v42, v34, v35
	v_div_scale_f32 v41, null, v137, v137, v10
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v29, v29, v137, v30
	v_fmac_f32_e32 v34, v38, v33
	v_rcp_f32_e32 v44, v41
	v_fma_f32 v38, -v37, v43, 1.0
	v_mul_f32_e32 v30, v40, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v42, v34, v35
	v_fma_f32 v42, -v36, v30, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v33, v35, v33, v34
	v_fma_f32 v35, -v41, v44, 1.0
	v_fmac_f32_e32 v43, v38, v43
	v_div_scale_f32 v38, s5, v9, v137, v9
	v_fmac_f32_e32 v30, v42, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v35, v44
	v_div_fixup_f32 v31, v33, v137, v31
	v_mul_f32_e32 v34, v38, v43
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v33, -v36, v30, v40
	v_div_scale_f32 v42, null, v137, v137, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v37, v34, v38
	v_div_scale_f32 v35, s4, v10, v137, v10
	v_div_fmas_f32 v30, v33, v39, v30
	v_div_scale_f32 v39, null, v137, v137, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v34, v45, v43
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v46, v42
	v_div_fixup_f32 v8, v30, v137, v8
	v_div_scale_f32 v45, null, v137, v137, v15
	v_fma_f32 v33, -v37, v34, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v43, v34
	v_rcp_f32_e32 v34, v39
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v42, v46, 1.0
	v_div_fixup_f32 v9, v33, v137, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v38, v46
	v_div_scale_f32 v38, s3, v11, v137, v11
	v_fma_f32 v40, -v39, v34, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v34, v40, v34
	v_div_scale_f32 v40, s4, v12, v137, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v43, v40, v34 :: v_dual_mul_f32 v36, v35, v44
	v_fma_f32 v37, -v41, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v37, v44
	v_div_scale_f32 v37, null, v137, v137, v13
	v_fma_f32 v30, -v41, v36, v35
	v_mul_f32_e32 v35, v38, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v33, v37
	v_div_fmas_f32 v30, v30, v44, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v42, v35, v38
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v30, v137, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v35, v36, v46
	v_div_scale_f32 v36, null, v137, v137, v14
	v_fma_f32 v41, -v37, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v42, v35, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v44, v36
	v_fma_f32 v38, -v39, v43, v40
	v_fmac_f32_e32 v33, v41, v33
	v_div_scale_f32 v41, s5, v13, v137, v13
	v_div_fmas_f32 v30, v30, v46, v35
	v_fmac_f32_e32 v43, v38, v34
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v36, v44, 1.0
	v_div_fixup_f32 v11, v30, v137, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v39, v43, v40
	v_div_scale_f32 v39, null, v137, v137, v0
	v_fmac_f32_e32 v44, v38, v44
	v_mul_f32_e32 v42, v41, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v30, v30, v34, v43
	v_div_scale_f32 v43, null, v137, v137, v1
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v37, v42, v41
	v_div_scale_f32 v38, s3, v14, v137, v14
	v_div_fixup_f32 v12, v30, v137, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v35, v33
	v_rcp_f32_e32 v35, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v37, v42, v41
	v_rcp_f32_e32 v41, v39
	v_mul_f32_e32 v37, v38, v44
	v_div_fmas_f32 v33, v34, v33, v42
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fma_f32 v34, -v36, v37, v38
	v_fma_f32 v40, -v45, v35, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v13, v33, v137, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v46, -v39, v41, 1.0
	v_fmac_f32_e32 v37, v34, v44
	v_fmac_f32_e32 v35, v40, v35
	v_div_scale_f32 v40, s4, v15, v137, v15
	v_fma_f32 v33, -v43, v42, 1.0
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, null, v137, v137, v2
	v_div_scale_f32 v34, s5, v0, v137, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v33, v42
	v_div_scale_f32 v33, s6, v1, v137, v1
	v_fma_f32 v36, -v36, v37, v38
	v_mul_f32_e32 v30, v40, v35
	v_rcp_f32_e32 v38, v46
	v_mul_f32_e32 v49, v33, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v44, v37
	v_fma_f32 v47, -v45, v30, v40
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v44, -v43, v49, v33
	v_mul_f32_e32 v48, v34, v41
	v_div_fixup_f32 v14, v36, v137, v14
	v_fmac_f32_e32 v30, v47, v35
	v_fma_f32 v47, -v46, v38, 1.0
	v_fmac_f32_e32 v49, v44, v42
	v_fma_f32 v37, -v39, v48, v34
	v_div_scale_f32 v44, null, v137, v137, v7
	v_fma_f32 v36, -v45, v30, v40
	v_fmac_f32_e32 v38, v47, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v37, v41
	v_div_scale_f32 v37, s3, v2, v137, v2
	v_div_scale_f32 v40, null, v137, v137, v3
	v_fma_f32 v34, -v39, v48, v34
	v_div_fmas_f32 v30, v36, v35, v30
	v_fma_f32 v33, -v43, v49, v33
	v_mul_f32_e32 v35, v37, v38
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v36, v40
	v_div_fmas_f32 v34, v34, v41, v48
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v39, -v46, v35, v37
	v_div_fmas_f32 v33, v33, v42, v49
	v_div_fixup_f32 v15, v30, v137, v15
	v_div_fixup_f32 v0, v34, v137, v0
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v35, v39, v38
	v_div_fixup_f32 v1, v33, v137, v1
	v_div_scale_f32 v33, null, v137, v137, v4
	v_fma_f32 v30, -v40, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v46, v35, v37
	v_div_scale_f32 v39, null, v137, v137, v5
	v_rcp_f32_e32 v37, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v30, v36
	v_div_scale_f32 v30, s4, v3, v137, v3
	v_div_fmas_f32 v34, v34, v38, v35
	v_div_scale_f32 v35, null, v137, v137, v6
	v_mul_f32_e32 v38, v30, v36
	v_rcp_f32_e32 v41, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v2, v34, v137, v2
	v_fma_f32 v34, -v33, v37, 1.0
	v_rcp_f32_e32 v42, v35
	v_fma_f32 v43, -v40, v38, v30
	v_rcp_f32_e32 v46, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v37, v34, v37
	v_div_scale_f32 v34, s3, v4, v137, v4
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v39, v41, 1.0
	v_fmac_f32_e32 v38, v43, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v47, v34, v37
	v_fma_f32 v43, -v35, v42, 1.0
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v45, s5, v5, v137, v5
	v_fma_f32 v30, -v40, v38, v30
	v_fma_f32 v40, -v33, v47, v34
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, s6, v6, v137, v6
	v_fma_f32 v48, -v44, v46, 1.0
	v_mul_f32_e32 v49, v45, v41
	v_div_fmas_f32 v30, v30, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v47, v40, v37 :: v_dual_mul_f32 v50, v43, v42
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s7, v7, v137, v7
	v_fma_f32 v36, -v39, v49, v45
	v_div_fixup_f32 v3, v30, v137, v3
	v_fma_f32 v30, -v33, v47, v34
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v35, v50, v43
	v_mul_f32_e32 v40, v48, v46
	v_fmac_f32_e32 v49, v36, v41
	v_div_fmas_f32 v30, v30, v37, v47
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v37.l, v16.h
	v_mov_b16_e64 v37.h, v135.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v38, v42
	v_fma_f32 v33, -v44, v40, v48
	v_fma_f32 v34, -v39, v49, v45
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v135
	v_and_b32_e32 v37, 1, v37
	v_mov_b16_e64 v135.l, v19.h
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v40, v33, v46
	v_fma_f32 v33, -v35, v50, v43
	v_div_fmas_f32 v34, v34, v41, v49
	s_mov_b32 vcc_lo, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v17, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v17, v17
	v_add3_u32 v17, v16, v37, 0x7fff
	v_mov_b16_e32 v37.l, v18.h
	v_mov_b16_e64 v37.h, v135.h
	v_and_b32_e32 v39, 1, v135
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v42, v50
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s6
	v_cmp_o_f32_e64 s6, v16, v16
	v_and_b32_e32 v16, 1, v37
	v_add3_u32 v37, v19, v39, 0x7fff
	v_mov_b16_e32 v39.l, v32.h
	v_mov_b16_e64 v39.h, v135.h
	v_cmp_o_f32_e64 s7, v19, v19
	v_mov_b16_e64 v135.l, v20.h
	v_cndmask_b16 v38.l, 0x7fff, v17.h, s6
	v_add3_u32 v16, v18, v16, 0x7fff
	v_and_b32_e32 v17, 1, v39
	v_cndmask_b16 v19.h, 0x7fff, v37.h, s7
	v_and_b32_e32 v37, 1, v135
	v_cmp_o_f32_e64 s6, v18, v18
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v21, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v17, v32, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_add3_u32 v21, v20, v37, 0x7fff
	v_mov_b16_e32 v37.l, v22.h
	v_mov_b16_e64 v37.h, v135.h
	v_mov_b16_e64 v135.l, v18.h
	v_cndmask_b16 v19.l, 0x7fff, v16.h, s6
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s7
	v_cndmask_b16 v20.l, 0x7fff, v17.h, s8
	v_and_b32_e32 v16, 1, v37
	v_and_b32_e32 v21, 1, v135
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v24, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v18, v18
	v_cmp_o_f32_e64 s7, v22, v22
	v_add3_u32 v16, v22, v16, 0x7fff
	v_add3_u32 v21, v18, v21, 0x7fff
	v_mov_b16_e64 v135.l, v17.h
	v_mov_b16_e32 v18.l, v23.h
	v_mov_b16_e64 v18.h, v135.h
	v_cndmask_b16 v21.l, 0x7fff, v16.h, s7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v27, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v22, 1, v135
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v26, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v18, 1, v18
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s6
	v_cmp_o_f32_e64 s6, v17, v17
	v_add3_u32 v22, v17, v22, 0x7fff
	v_mov_b16_e64 v135.l, v16.h
	v_add3_u32 v17, v23, v18, 0x7fff
	v_mov_b16_e32 v18.l, v24.h
	v_mov_b16_e64 v18.h, v135.h
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s6
	v_and_b32_e32 v26, 1, v135
	v_cmp_o_f32_e64 s6, v23, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v28, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v27.l, v25.h
	v_mov_b16_e64 v27.h, v135.h
	v_add3_u32 v26, v16, v26, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_mov_b16_e64 v135.l, v23.h
	v_cndmask_b16 v22.l, 0x7fff, v17.h, s6
	v_add3_u32 v16, v24, v18, 0x7fff
	v_and_b32_e32 v17, 1, v27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v29, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v24, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v31, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v26.h, s7
	v_and_b32_e32 v26, 1, v135
	v_mov_b16_e32 v28.l, v27.h
	v_mov_b16_e64 v28.h, v135.h
	v_mov_b16_e64 v135.l, v24.h
	v_add3_u32 v17, v25, v17, 0x7fff
	v_add3_u32 v26, v23, v26, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_cmp_o_f32_e64 s8, v25, v25
	v_cndmask_b16 v18.l, 0x7fff, v16.h, s6
	v_and_b32_e32 v16, 1, v28
	v_and_b32_e32 v25, 1, v135
	v_cndmask_b16 v23.h, 0x7fff, v26.h, s7
	v_cndmask_b16 v23.l, 0x7fff, v17.h, s8
	v_cmp_o_f32_e64 s6, v24, v24
	v_add3_u32 v16, v27, v16, 0x7fff
	v_add3_u32 v17, v24, v25, 0x7fff
	v_mov_b16_e64 v135.l, v9.h
	v_cmp_o_f32_e64 s7, v27, v27
	v_mov_b16_e32 v24.l, v8.h
	v_mov_b16_e64 v24.h, v135.h
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s6
	v_and_b32_e32 v25, 1, v135
	v_cndmask_b16 v17.l, 0x7fff, v16.h, s7
	v_mov_b16_e64 v135.l, v11.h
	v_and_b32_e32 v16, 1, v24
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v24, v9, v25, 0x7fff
	v_cmp_o_f32_e64 s7, v11, v11
	v_and_b32_e32 v25, 1, v135
	v_add3_u32 v9, v8, v16, 0x7fff
	v_mov_b16_e32 v16.l, v10.h
	v_mov_b16_e64 v16.h, v135.h
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s6
	v_cmp_o_f32_e64 s6, v8, v8
	v_mov_b16_e64 v135.l, v13.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v8, 1, v16
	v_add3_u32 v16, v11, v25, 0x7fff
	v_mov_b16_e32 v25.l, v12.h
	v_mov_b16_e64 v25.h, v135.h
	v_cndmask_b16 v24.l, 0x7fff, v9.h, s6
	v_add3_u32 v8, v10, v8, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v16.h, s7
	v_and_b32_e32 v16, 1, v135
	v_cmp_o_f32_e64 s6, v10, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v15, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v25
	v_cmp_o_f32_e64 s7, v13, v13
	v_add3_u32 v15, v13, v16, 0x7fff
	v_mov_b16_e32 v16.l, v14.h
	v_mov_b16_e64 v16.h, v135.h
	v_mov_b16_e64 v135.l, v10.h
	v_add3_u32 v9, v12, v9, 0x7fff
	v_cmp_o_f32_e64 s8, v12, v12
	v_cndmask_b16 v11.l, 0x7fff, v8.h, s6
	v_and_b32_e32 v8, 1, v16
	v_and_b32_e32 v13, 1, v135
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e64 v135.l, v1.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v44, v40, v48
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v15.h, s7
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s8
	v_add3_u32 v8, v14, v8, 0x7fff
	v_add3_u32 v9, v10, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v10, v10
	v_cmp_o_f32_e64 s7, v14, v14
	v_mov_b16_e32 v10.l, v0.h
	v_mov_b16_e64 v10.h, v135.h
	v_and_b32_e32 v13, 1, v135
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v46, v40
	v_div_fixup_f32 v4, v30, v137, v4
	v_div_fixup_f32 v5, v34, v137, v5
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_cndmask_b16 v9.l, 0x7fff, v8.h, s7
	v_and_b32_e32 v8, 1, v10
	v_add3_u32 v10, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v1, v1
	v_mov_b16_e32 v1.l, v2.h
	v_mov_b16_e64 v1.h, v135.h
	v_mov_b16_e64 v135.l, v3.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v33, v137, v6
	v_div_fixup_f32 v7, v35, v137, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v8, v0, v8, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s6
	v_cmp_o_f32_e64 s6, v0, v0
	v_and_b32_e32 v0, 1, v1
	v_and_b32_e32 v1, 1, v135
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.l, 0x7fff, v8.h, s6
	v_mov_b16_e64 v8.h, v135.h
	v_add3_u32 v1, v3, v1, 0x7fff
	v_mov_b16_e64 v135.l, v5.h
	v_mov_b16_e32 v8.l, v4.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v3, v3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v7, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v7, 1, v135
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v13.l, v6.h
	v_mov_b16_e64 v13.h, v135.h
	v_mov_b16_e64 v135.l, v3.h
	v_add3_u32 v0, v2, v0, 0x7fff
	v_cmp_o_f32_e64 s1, v2, v2
	v_add3_u32 v2, v4, v8, 0x7fff
	v_and_b32_e32 v8, 1, v13
	v_and_b32_e32 v13, 1, v135
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_add3_u32 v7, v5, v7, 0x7fff
	v_cmp_o_f32_e64 s6, v5, v5
	v_cmp_o_f32_e64 s7, v4, v4
	v_add3_u32 v4, v6, v8, 0x7fff
	v_add3_u32 v5, v3, v13, 0x7fff
	v_cmp_o_f32_e64 s8, v3, v3
	v_cmp_o_f32_e64 s9, v6, v6
	v_cndmask_b16 v1.l, 0x7fff, v0.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v7.h, s6
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s7
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s8
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s9
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v36, 1, v84
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v4, v38, v20, s0
	v_cndmask_b32_e64 v6, v19, v21, s0
	v_cndmask_b32_e64 v8, v22, v23, s0
	v_cndmask_b32_e64 v13, v17, v18, s0
	v_cndmask_b32_e64 v14, v18, v17, s0
	v_cndmask_b32_e64 v17, v0, v10, s0
	v_cndmask_b32_e64 v0, v10, v0, s0
	v_cndmask_b32_e64 v15, v12, v24, s0
	v_cndmask_b32_e64 v12, v24, v12, s0
	v_cndmask_b32_e64 v16, v9, v11, s0
	v_cndmask_b32_e64 v9, v11, v9, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v35, s31, v81
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v18, v2, v1, s0
	v_cndmask_b32_e64 v1, v1, v2, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v30, 16, v36
	s_mov_b32 s1, 0x76543210
	v_or_b32_e32 v33, 32, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v3, v20, v38, s0
	v_cndmask_b32_e64 v5, v21, v19, s0
	v_cndmask_b32_e64 v7, v23, v22, s0
	v_permlanex16_b32 v2, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v14, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v12, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v9, s1, 0xfedcba98 op_sel:[1,0]
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 48, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v19, v1, s1, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s31, v30
	v_cmp_gt_i32_e64 s5, s31, v36
	v_cmp_gt_i32_e64 s3, s31, v33
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v2, v3, v82
	v_perm_b32 v1, v2, v3, v83
	v_perm_b32 v2, v4, v5, v82
	v_perm_b32 v3, v4, v5, v83
	v_perm_b32 v4, v6, v7, v82
	v_perm_b32 v5, v6, v7, v83
	v_perm_b32 v6, v8, v13, v82
	v_perm_b32 v7, v8, v13, v83
	v_perm_b32 v12, v14, v17, v82
	v_perm_b32 v13, v14, v17, v83
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v35, v30, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v10, v15, v82
	v_perm_b32 v9, v10, v15, v83
	v_perm_b32 v10, v11, v16, v82
	v_perm_b32 v11, v11, v16, v83
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v35, v36, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s31, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v14, v19, v18, v82
	v_perm_b32 v15, v19, v18, v83
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v35, v33, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s0, s2, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v35, v34, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	s_mov_b32 s31, 0x31027000
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[28:31], 0 offen
	buffer_store_b128 v[4:7], v17, s[28:31], 0 offen
	buffer_store_b128 v[8:11], v18, s[28:31], 0 offen
	buffer_store_b128 v[12:15], v19, s[28:31], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp64:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
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
		.amdhsa_next_free_vgpr 185
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 185
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11860
; TotalNumSgprs: 46
; NumVgprs: 185
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 185
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
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
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
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
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     185
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
