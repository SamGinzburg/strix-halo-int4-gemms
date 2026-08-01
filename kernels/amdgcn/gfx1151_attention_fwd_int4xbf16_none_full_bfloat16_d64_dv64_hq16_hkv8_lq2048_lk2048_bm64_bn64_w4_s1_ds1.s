	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x60
	s_load_b64 s[44:45], s[0:1], 0x20
	v_dual_mov_b32 v40, 0x7632 :: v_dual_lshlrev_b32 v91, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v4, 1, v0
	v_mov_b32_e32 v48, 0xff800000
	s_clause 0x2
	s_load_b256 s[16:23], s[0:1], 0x0
	s_load_b32 s4, s[0:1], 0x68
	s_load_b64 s[36:37], s[0:1], 0x38
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 16, v91
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s5, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s5, v4
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s6, s5, s2
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v37, 15, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v5
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v42, v0, 4, 1
	v_dual_mov_b32 v28, v24 :: v_dual_lshlrev_b32 v43, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[75:76], null, s34, v4, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s34, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s41, s17, 0xffff
	s_mov_b32 s40, s16
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v27, v24 :: v_dual_and_b32 v44, 24, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s34, s6, v[75:76]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v45, v43, 30, v42
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0xfff0
	v_dual_mov_b32 v25, v24 :: v_dual_lshlrev_b32 v36, 3, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	v_dual_mov_b32 v30, v24 :: v_dual_and_b32 v43, 24, v43
	v_mov_b32_e32 v31, v24
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[32:35], v1, s[40:43], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v4, 48, v37
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s41, s23, 0xffff
	s_mov_b32 s40, s22
	v_xor_b32_e32 v92, v91, v44
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s3, s1, 0x10007
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v88, s6, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s5, v1
	v_dual_mov_b32 v39, 0x5410 :: v_dual_lshlrev_b32 v44, 2, v45
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s1, s1, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v2, 1, v88
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s1, s1, 0x80000
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v41, 3, v0
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v36, 56, v36
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_lshl_add_u32 v93, v37, 1, 0
	v_lshl_or_b32 v94, v37, 5, v43
	v_xor_b32_e32 v37, 8, v92
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v43, 4, v44
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v38, v1, s[40:43], 0 offen
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s1, s1
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v89, 16, v0
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s1, s1, 10
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[76:77], null, s35, v41, v[36:37]
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s39, s1, 0xfffff800
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s35, v36
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s0, s0, 10
	v_dual_mov_b32 v16, v24 :: v_dual_add_nc_u32 v95, 0, v37
	s_and_b32 s0, s0, 0xffffc000
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[77:78], null, s35, 48, v[76:77]
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s39, s39, s0
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v89
	v_or_b32_e32 v97, s39, v42
	v_mov_b32_e32 v21, v24
	v_xor_b32_e32 v45, 8, v94
	v_xor_b32_e32 v46, 16, v94
	v_cndmask_b32_e64 v39, 0x1054, v39, s0
	v_cndmask_b32_e64 v40, 0x3276, v40, s0
	v_xor_b32_e32 v47, 24, v94
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s3, s4, 0x3fb8aa3b
	v_dual_mov_b32 v17, v24 :: v_dual_add_nc_u32 v96, 0, v45
	v_lshl_or_b32 v39, v39, 8, v39
	v_lshl_or_b32 v40, v40, 8, v40
	v_mov_b32_e32 v9, v24
	v_mov_b32_e32 v11, v24
	v_dual_mov_b32 v18, v24 :: v_dual_add_nc_u32 v99, 0, v47
	v_dual_mov_b32 v19, v24 :: v_dual_add_nc_u32 v98, 0, v46
	v_mov_b32_e32 v22, v24
	v_mov_b32_e32 v8, v24
	v_mov_b32_e32 v10, v24
	v_mov_b32_e32 v12, v24
	v_mov_b32_e32 v14, v24
	v_mov_b32_e32 v15, v24
	v_mov_b32_e32 v0, v24
	v_mov_b32_e32 v1, v24
	v_mov_b32_e32 v2, v24
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v5, v24
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v7, v24
	v_mov_b32_e32 v90, v24
	v_or_b32_e32 v100, 46, v97
	v_or_b32_e32 v101, 48, v97
	v_or_b32_e32 v102, 50, v97
	v_or_b32_e32 v103, 52, v97
	v_or_b32_e32 v104, 54, v97
	v_or_b32_e32 v105, 56, v97
	v_or_b32_e32 v106, 58, v97
	v_or_b32_e32 v107, 60, v97
	v_or_b32_e32 v109, 62, v97
	v_mov_b16_e32 v110.h, 0
	s_mov_b32 s24, 0
	s_and_b32 s19, s19, 0xffff
	s_mov_b32 s33, 0x76543210
	s_mov_b32 s25, s24
	s_mov_b32 s26, s24
	s_mov_b32 s27, s24
	s_mov_b32 s28, s24
	s_mov_b32 s29, s24
	s_mov_b32 s30, s24
	s_mov_b32 s31, s24
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	s_mov_b32 s38, s24
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s42
	s_mov_b32 s23, s43
	s_mov_b32 s40, s18
	s_mov_b32 s41, s19
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v36, v44, v32
	ds_bpermute_b32 v32, v43, v32
	ds_bpermute_b32 v37, v44, v33
	ds_bpermute_b32 v33, v43, v33
	ds_bpermute_b32 v41, v44, v34
	ds_bpermute_b32 v34, v43, v34
	ds_bpermute_b32 v42, v44, v35
	ds_bpermute_b32 v35, v43, v35
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v78, v32, v36, s0
	v_cndmask_b32_e64 v80, v36, v32, s0
	v_and_b32_e32 v32, 0x540054, v39
	v_and_b32_e32 v36, 0x760076, v40
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v79, v33, v37, s0
	v_cndmask_b32_e64 v81, v37, v33, s0
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v33, v36, 4, v36
	v_mov_b32_e32 v20, v24
	v_dual_mov_b32 v23, v24 :: v_dual_mul_f32 v108, s3, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v13, v24 :: v_dual_and_b32 v86, 0x5040504, v32
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v82, v34, v41, s0
	v_cndmask_b32_e64 v84, v41, v34, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v83, v35, v42, s0
	v_cndmask_b32_e64 v85, v42, v35, s0
	v_and_b32_e32 v87, 0x7060706, v33
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s3, s38, s39
	v_or_b32_e32 v56, 2, v97
	v_mad_u64_u32 v[40:41], null, s3, s34, v[75:76]
	v_or_b32_e32 v57, 4, v97
	v_or_b32_e32 v58, 6, v97
	v_or_b32_e32 v59, 8, v97
	v_or_b32_e32 v60, 10, v97
	v_or_b32_e32 v61, 12, v97
	v_or_b32_e32 v62, 14, v97
	v_or_b32_e32 v63, 16, v97
	v_or_b32_e32 v64, 18, v97
	v_or_b32_e32 v65, 20, v97
	v_or_b32_e32 v66, 22, v97
	v_or_b32_e32 v67, 24, v97
	v_or_b32_e32 v68, 26, v97
	v_or_b32_e32 v69, 28, v97
	v_or_b32_e32 v70, 30, v97
	v_or_b32_e32 v71, 32, v97
	v_or_b32_e32 v72, 34, v97
	v_or_b32_e32 v73, 36, v97
	v_or_b32_e32 v74, 38, v97
	v_or_b32_e32 v111, 40, v97
	v_or_b32_e32 v112, 42, v97
	v_or_b32_e32 v115, 44, v97
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v116, s35, 4, v76
	v_lshl_add_u32 v117, s35, 5, v76
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s4, s3, s35
	.loc	1 823 32                        ; attention.py:823:32
	v_dual_cndmask_b32 v40, 0x80000000, v40 :: v_dual_add_nc_u32 v55, 0, v91
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v114, s4, v76, 1
	v_add_lshl_u32 v113, s4, v77, 1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v41, s38, v56, 1
	v_add_lshl_u32 v56, s38, v57, 1
	v_add_lshl_u32 v57, s38, v58, 1
	v_add_lshl_u32 v58, s38, v59, 1
	v_add_lshl_u32 v59, s38, v60, 1
	v_add_lshl_u32 v60, s38, v61, 1
	v_add_lshl_u32 v61, s38, v62, 1
	v_add_lshl_u32 v62, s38, v63, 1
	v_add_lshl_u32 v63, s38, v64, 1
	v_add_lshl_u32 v64, s38, v65, 1
	v_add_lshl_u32 v65, s38, v66, 1
	v_add_lshl_u32 v66, s38, v67, 1
	v_add_lshl_u32 v67, s38, v68, 1
	v_add_lshl_u32 v68, s38, v69, 1
	v_add_lshl_u32 v69, s38, v70, 1
	v_add_lshl_u32 v70, s38, v71, 1
	v_add_lshl_u32 v71, s38, v72, 1
	v_add_lshl_u32 v72, s38, v73, 1
	v_add_lshl_u32 v73, s38, v74, 1
	v_add_lshl_u32 v74, s38, v111, 1
	v_add_lshl_u32 v111, s38, v112, 1
	v_add_lshl_u32 v112, s38, v115, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v115, s4, v116, 1
	v_add_lshl_u32 v116, s4, v117, 1
	v_cndmask_b32_e64 v117, 0x80000000, v114, s1
	v_cndmask_b32_e64 v118, 0x80000000, v113, s1
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v43, 0, v92
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v123, 0x80000000, v115, s1
	v_cndmask_b32_e64 v127, 0x80000000, v116, s1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[113:116], v40, s[40:43], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v39, s31 :: v_dual_add_nc_u32 v42, 0, v94
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v53, s38, v107, 1
	v_add_lshl_u32 v54, s38, v109, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v38, s30
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v44, s38, v97, 1
	v_add_lshl_u32 v45, s38, v100, 1
	v_add_lshl_u32 v46, s38, v101, 1
	v_add_lshl_u32 v49, s38, v102, 1
	v_add_lshl_u32 v50, s38, v103, 1
	v_add_lshl_u32 v47, s38, v104, 1
	v_add_lshl_u32 v52, s38, v105, 1
	v_add_lshl_u32 v51, s38, v106, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v37, s29 :: v_dual_mov_b32 v36, s28
	v_dual_mov_b32 v35, s27 :: v_dual_mov_b32 v34, s26
	v_dual_mov_b32 v33, s25 :: v_dual_mov_b32 v32, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v133.h, v110.h
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v48
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v131.h, v110.h
	v_mov_b16_e64 v132.h, v110.h
	v_mov_b16_e64 v134.h, v110.h
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v43, v[113:114]
	ds_store_b64 v95, v[115:116]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[119:122], v117, s[20:23], 0 offen
	buffer_load_b128 v[123:126], v123, s[20:23], 0 offen
	buffer_load_b128 v[127:130], v127, s[20:23], 0 offen
	buffer_load_b128 v[135:138], v118, s[20:23], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v147, v63, s[44:47], 0 offen
	buffer_load_u16 v148, v64, s[44:47], 0 offen
	buffer_load_u16 v149, v65, s[44:47], 0 offen
	buffer_load_u16 v150, v66, s[44:47], 0 offen
	buffer_load_u16 v151, v67, s[44:47], 0 offen
	buffer_load_u16 v152, v68, s[44:47], 0 offen
	buffer_load_u16 v153, v69, s[44:47], 0 offen
	buffer_load_u16 v154, v70, s[44:47], 0 offen
	buffer_load_u16 v155, v71, s[44:47], 0 offen
	buffer_load_u16 v72, v72, s[44:47], 0 offen
	buffer_load_u16 v73, v73, s[44:47], 0 offen
	buffer_load_u16 v74, v74, s[44:47], 0 offen
	buffer_load_u16 v156, v111, s[44:47], 0 offen
	buffer_load_u16 v157, v112, s[44:47], 0 offen
	buffer_load_u16 v158, v45, s[44:47], 0 offen
	buffer_load_u16 v159, v46, s[44:47], 0 offen
	buffer_load_u16 v160, v49, s[44:47], 0 offen
	buffer_load_u16 v161, v50, s[44:47], 0 offen
	buffer_load_u16 v162, v44, s[44:47], 0 offen
	buffer_load_u16 v163, v41, s[44:47], 0 offen
	buffer_load_u16 v164, v56, s[44:47], 0 offen
	buffer_load_u16 v165, v57, s[44:47], 0 offen
	buffer_load_u16 v166, v58, s[44:47], 0 offen
	buffer_load_u16 v167, v59, s[44:47], 0 offen
	buffer_load_u16 v168, v60, s[44:47], 0 offen
	buffer_load_u16 v169, v61, s[44:47], 0 offen
	buffer_load_u16 v170, v62, s[44:47], 0 offen
	buffer_load_u16 v171, v47, s[44:47], 0 offen
	buffer_load_u16 v172, v52, s[44:47], 0 offen
	buffer_load_u16 v53, v53, s[44:47], 0 offen
	buffer_load_u16 v54, v54, s[44:47], 0 offen
	buffer_load_u16 v173, v51, s[44:47], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[49:52], v42 offset1:1
	ds_load_2addr_stride64_b64 v[139:142], v42 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[143:146], v96 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[49:50], v[78:79], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[51:52], v[78:79], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[139:140], v[78:79], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[141:142], v[78:79], v[32:39] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[32:35], v96 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[36:39], v98 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[143:144], v[82:83], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[145:146], v[82:83], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[32:33], v[82:83], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[34:35], v[82:83], v[111:118] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[32:35], v98 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[36:37], v[80:81], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[38:39], v[80:81], v[56:63] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[36:39], v99 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[32:33], v[80:81], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[34:35], v[80:81], v[111:118] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[32:35], v99 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[36:37], v[84:85], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[38:39], v[84:85], v[56:63] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(35)
	ds_store_b128 v55, v[119:122]
	s_waitcnt vmcnt(34)
	ds_store_b128 v55, v[123:126] offset:2048
	s_waitcnt vmcnt(33)
	ds_store_b128 v55, v[127:130] offset:4096
	s_waitcnt vmcnt(32)
	ds_store_b128 v55, v[135:138] offset:6144
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[64:71], v[32:33], v[84:85], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[34:35], v[84:85], v[111:118] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v32, v40
	v_cvt_f32_i32_e32 v33, v41
	v_cvt_f32_i32_e32 v34, v42
	v_cvt_f32_i32_e32 v35, v43
	v_cvt_f32_i32_e32 v36, v44
	v_cvt_f32_i32_e32 v37, v45
	v_cvt_f32_i32_e32 v38, v46
	v_cvt_f32_i32_e32 v39, v47
	v_cvt_f32_i32_e32 v40, v56
	v_cvt_f32_i32_e32 v41, v57
	v_cvt_f32_i32_e32 v42, v58
	v_cvt_f32_i32_e32 v43, v59
	v_cvt_f32_i32_e32 v44, v60
	v_cvt_f32_i32_e32 v45, v61
	v_cvt_f32_i32_e32 v46, v62
	v_cvt_f32_i32_e32 v47, v63
	v_cvt_f32_i32_e32 v49, v64
	v_cvt_f32_i32_e32 v50, v65
	v_cvt_f32_i32_e32 v51, v66
	v_cvt_f32_i32_e32 v52, v67
	v_cvt_f32_i32_e32 v56, v68
	v_cvt_f32_i32_e32 v57, v69
	v_cvt_f32_i32_e32 v58, v70
	v_cvt_f32_i32_e32 v61, v112
	v_cvt_f32_i32_e32 v62, v113
	v_cvt_f32_i32_e32 v59, v71
	v_cvt_f32_i32_e32 v60, v111
	v_cvt_f32_i32_e32 v63, v114
	v_cvt_f32_i32_e32 v64, v115
	v_cvt_f32_i32_e32 v65, v116
	v_cvt_f32_i32_e32 v66, v117
	v_cvt_f32_i32_e32 v67, v118
	s_waitcnt vmcnt(30)
	v_dual_mul_f32 v41, v108, v41 :: v_dual_lshlrev_b32 v120, 16, v148
	v_dual_mul_f32 v42, v108, v42 :: v_dual_lshlrev_b32 v119, 16, v147
	s_waitcnt vmcnt(28)
	v_dual_mul_f32 v43, v108, v43 :: v_dual_lshlrev_b32 v122, 16, v150
	v_dual_mul_f32 v44, v108, v44 :: v_dual_lshlrev_b32 v121, 16, v149
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v45, v108, v45 :: v_dual_lshlrev_b32 v124, 16, v152
	v_dual_mul_f32 v46, v108, v46 :: v_dual_lshlrev_b32 v123, 16, v151
	s_waitcnt vmcnt(24)
	v_dual_mul_f32 v47, v108, v47 :: v_dual_lshlrev_b32 v126, 16, v154
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v49, v108, v49 :: v_dual_lshlrev_b32 v128, 16, v72
	v_dual_mul_f32 v50, v108, v50 :: v_dual_lshlrev_b32 v125, 16, v153
	s_waitcnt vmcnt(20)
	v_dual_mul_f32 v69, v108, v51 :: v_dual_lshlrev_b32 v130, 16, v74
	s_waitcnt vmcnt(18)
	v_dual_mul_f32 v111, v108, v52 :: v_dual_lshlrev_b32 v136, 16, v157
	v_dual_mul_f32 v112, v108, v56 :: v_dual_lshlrev_b32 v127, 16, v155
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v113, v108, v57 :: v_dual_lshlrev_b32 v138, 16, v159
	v_dual_mul_f32 v114, v108, v58 :: v_dual_lshlrev_b32 v129, 16, v73
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v61, v108, v61 :: v_dual_lshlrev_b32 v146, 16, v162
	v_dual_mul_f32 v62, v108, v62 :: v_dual_lshlrev_b32 v135, 16, v156
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v115, v108, v32 :: v_dual_lshlrev_b32 v152, 16, v166
	v_dual_mul_f32 v116, v108, v33 :: v_dual_lshlrev_b32 v147, 16, v163
	v_dual_mul_f32 v118, v108, v35 :: v_dual_lshlrev_b32 v145, 16, v161
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v139, v108, v36 :: v_dual_lshlrev_b32 v156, 16, v170
	v_dual_mul_f32 v140, v108, v37 :: v_dual_lshlrev_b32 v153, 16, v167
	v_dual_mul_f32 v142, v108, v39 :: v_dual_lshlrev_b32 v149, 16, v165
	v_dual_mul_f32 v59, v108, v59 :: v_dual_lshlrev_b32 v144, 16, v160
	v_dual_mul_f32 v60, v108, v60 :: v_dual_lshlrev_b32 v137, 16, v158
	v_dual_mul_f32 v117, v108, v34 :: v_dual_lshlrev_b32 v148, 16, v164
	v_dual_mul_f32 v141, v108, v38 :: v_dual_lshlrev_b32 v154, 16, v168
	v_dual_mul_f32 v40, v108, v40 :: v_dual_lshlrev_b32 v155, 16, v169
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v63, v108, v63 :: v_dual_lshlrev_b32 v158, 16, v172
	v_dual_mul_f32 v64, v108, v64 :: v_dual_lshlrev_b32 v157, 16, v171
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v66, v108, v66 :: v_dual_lshlrev_b32 v159, 16, v53
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v143, v108, v67 :: v_dual_lshlrev_b32 v160, 16, v54
	v_dual_mul_f32 v65, v108, v65 :: v_dual_mul_f32 v42, v42, v120
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v44, v44, v122 :: v_dual_lshlrev_b32 v161, 16, v173
	v_dual_mul_f32 v41, v41, v119 :: v_dual_mul_f32 v46, v46, v124
	v_dual_mul_f32 v43, v43, v121 :: v_dual_mul_f32 v50, v50, v127
	v_dual_mul_f32 v45, v45, v123 :: v_dual_mul_f32 v112, v112, v130
	v_dual_mul_f32 v47, v47, v125 :: v_dual_mul_f32 v120, v114, v136
	v_dual_mul_f32 v49, v49, v126 :: v_dual_mul_f32 v62, v62, v145
	v_dual_mul_f32 v69, v69, v128 :: v_dual_mul_f32 v60, v60, v138
	v_dual_mul_f32 v111, v111, v129 :: v_dual_mul_f32 v126, v117, v148
	v_dual_mul_f32 v119, v113, v135 :: v_dual_mul_f32 v124, v115, v146
	v_dual_mul_f32 v125, v116, v147 :: v_dual_mul_f32 v128, v139, v152
	v_dual_mul_f32 v127, v118, v149 :: v_dual_mul_f32 v40, v40, v156
	v_dual_mul_f32 v129, v140, v153 :: v_dual_mul_f32 v66, v66, v159
	v_dual_mul_f32 v59, v59, v137 :: v_dual_mul_f32 v130, v141, v154
	v_dual_mul_f32 v61, v61, v144 :: v_dual_mul_f32 v64, v64, v158
	v_dual_mul_f32 v135, v142, v155 :: v_dual_mul_f32 v136, v143, v160
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v141, 0xff800000, v41, s2
	v_cndmask_b32_e64 v142, 0xff800000, v42, s2
	v_cndmask_b32_e64 v143, 0xff800000, v43, s2
	v_cndmask_b32_e64 v144, 0xff800000, v44, s2
	v_cndmask_b32_e64 v145, 0xff800000, v45, s2
	v_cndmask_b32_e64 v146, 0xff800000, v46, s2
	v_cndmask_b32_e64 v147, 0xff800000, v47, s2
	v_cndmask_b32_e64 v113, 0xff800000, v49, s2
	v_cndmask_b32_e64 v114, 0xff800000, v50, s2
	v_cndmask_b32_e64 v41, 0xff800000, v124, s2
	v_cndmask_b32_e64 v43, 0xff800000, v125, s2
	v_cndmask_b32_e64 v44, 0xff800000, v127, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v63, v63, v157
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v45, 0xff800000, v128, s2
	v_cndmask_b32_e64 v46, 0xff800000, v129, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v65, v65, v161
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v115, 0xff800000, v69, s2
	v_cndmask_b32_e64 v116, 0xff800000, v111, s2
	v_cndmask_b32_e64 v117, 0xff800000, v112, s2
	v_cndmask_b32_e64 v118, 0xff800000, v119, s2
	v_cndmask_b32_e64 v119, 0xff800000, v120, s2
	v_cndmask_b32_e64 v120, 0xff800000, v59, s2
	v_cndmask_b32_e64 v121, 0xff800000, v60, s2
	v_cndmask_b32_e64 v122, 0xff800000, v61, s2
	v_cndmask_b32_e64 v123, 0xff800000, v62, s2
	v_cndmask_b32_e64 v47, 0xff800000, v126, s2
	v_cndmask_b32_e64 v49, 0xff800000, v130, s2
	v_cndmask_b32_e64 v59, 0xff800000, v135, s2
	v_cndmask_b32_e64 v148, 0xff800000, v40, s2
	v_cndmask_b32_e64 v126, 0xff800000, v63, s2
	v_cndmask_b32_e64 v127, 0xff800000, v64, s2
	v_cndmask_b32_e64 v124, 0xff800000, v66, s2
	v_cndmask_b32_e64 v125, 0xff800000, v136, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v40, v141, v142, v143
	v_max3_f32 v42, v144, v145, v146
	v_max3_f32 v50, v147, v113, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v63, v41, v43 :: v_dual_max_f32 v66, v124, v125
	v_max3_f32 v64, v44, v45, v46
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v128, 0xff800000, v65, s2
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v60, v115, v116, v117
	v_max3_f32 v61, v118, v119, v120
	v_max3_f32 v62, v121, v122, v123
	v_max_f32_e32 v65, v126, v127
	v_max3_f32 v111, v49, v59, v148
	v_max3_f32 v40, v40, v42, v50
	v_max3_f32 v63, v63, v47, v64
	v_max3_f32 v60, v60, v61, v62
	v_max3_f32 v61, v65, v128, v66
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v40, v63, v111, v40
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v151, v93 offset:608
	ds_load_u16_d16 v150, v93 offset:352
	ds_load_u16_d16 v53, v93 offset:512
	ds_load_u16_d16 v68, v93 offset:288
	ds_load_u16_d16 v74, v93 offset:1824
	ds_load_u16_d16 v54, v93 offset:768
	ds_load_u16_d16 v35, v93 offset:832
	ds_load_u16_d16 v55, v93 offset:1024
	ds_load_u16_d16 v70, v93 offset:800
	ds_load_u16_d16 v36, v93 offset:1088
	ds_load_u16_d16 v56, v93 offset:1280
	ds_load_u16_d16 v71, v93 offset:1056
	ds_load_u16_d16 v37, v93 offset:1344
	ds_load_u16_d16 v57, v93 offset:1536
	ds_load_u16_d16 v72, v93 offset:1312
	ds_load_u16_d16 v38, v93 offset:1600
	ds_load_u16_d16 v58, v93 offset:1792
	ds_load_u16_d16 v73, v93 offset:1568
	ds_load_u16_d16 v39, v93 offset:1856
	ds_load_u16_d16 v52, v93 offset:256
	ds_load_u16_d16 v51, v93
	ds_load_u16_d16 v67, v93 offset:32
	ds_load_u16_d16 v34, v93 offset:576
	ds_load_u16_d16 v32, v93 offset:64
	ds_load_u16_d16 v33, v93 offset:320
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v150, v93 offset:480
	ds_load_u16_d16 v149, v93 offset:96
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v52, v93 offset:384
	ds_load_u16_d16_hi v53, v93 offset:640
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v34, v93 offset:704
	ds_load_u16_d16 v69, v93 offset:544
	ds_load_u16_d16_hi v51, v93 offset:128
	ds_load_u16_d16_hi v67, v93 offset:160
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v32, v93 offset:192
	ds_load_u16_d16_hi v54, v93 offset:896
	ds_load_u16_d16_hi v35, v93 offset:960
	ds_load_u16_d16 v152, v93 offset:864
	ds_load_u16_d16_hi v55, v93 offset:1152
	ds_load_u16_d16_hi v36, v93 offset:1216
	ds_load_u16_d16 v153, v93 offset:1120
	ds_load_u16_d16_hi v56, v93 offset:1408
	ds_load_u16_d16_hi v37, v93 offset:1472
	ds_load_u16_d16 v154, v93 offset:1376
	ds_load_u16_d16_hi v57, v93 offset:1664
	ds_load_u16_d16_hi v38, v93 offset:1728
	ds_load_u16_d16 v155, v93 offset:1632
	ds_load_u16_d16_hi v58, v93 offset:1920
	ds_load_u16_d16_hi v39, v93 offset:1984
	ds_load_u16_d16 v50, v93 offset:2048
	ds_load_u16_d16 v42, v93 offset:2112
	ds_load_u16_d16 v156, v93 offset:1888
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v40, v40, v60, v61
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v149, v93 offset:224
	ds_load_u16_d16_hi v68, v93 offset:416
	ds_load_u16_d16_hi v33, v93 offset:448
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v69, v93 offset:672
	ds_load_u16_d16_hi v151, v93 offset:736
	ds_load_u16_d16_hi v70, v93 offset:928
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v152, v93 offset:992
	ds_load_u16_d16_hi v71, v93 offset:1184
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v153, v93 offset:1248
	ds_load_u16_d16_hi v72, v93 offset:1440
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v154, v93 offset:1504
	ds_load_u16_d16_hi v73, v93 offset:1696
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v155, v93 offset:1760
	ds_load_u16_d16_hi v74, v93 offset:1952
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v156, v93 offset:2016
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v60, v40, s33, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v66, v93 offset:2144
	ds_load_u16_d16_hi v42, v93 offset:2240
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v166.h, v110.h
	v_mov_b16_e64 v165.h, v110.h
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v112, v48, v40, v60
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v167.h, v110.h
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v43, v112
	v_sub_f32_e32 v44, v44, v112
	v_sub_f32_e32 v43, v47, v112
	v_sub_f32_e32 v47, v49, v112
	v_sub_f32_e32 v49, v59, v112
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v44, v44
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v124, v124, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v124, v124
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v135, 0, v40, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v138, 0, v44, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v110.l, v135.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s5, v138, v138
	v_and_b32_e32 v40, 1, v110
	v_mov_b16_e64 v110.l, v138.h
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v59, v48, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v40, v135, v40, 0x7fff
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v59, v59
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e64 v111, 0, v59, s3
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v41, v41, v112
	v_sub_f32_e32 v45, v45, v112
	v_sub_f32_e32 v46, v46, v112
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v135, v135
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v111
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v111
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v111
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v111
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v111
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v46, v46
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v136, 0, v41, s2
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v111
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v139, 0, v45, s2
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v111
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v43, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v131.l, v136.h
	v_cmp_o_f32_e64 s4, v136, v136
	v_mov_b16_e64 v133.l, v139.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v129, 0, v47, s2
	v_cndmask_b32_e64 v140, 0, v46, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v131
	v_mov_b16_e64 v132.l, v137.h
	v_and_b32_e32 v44, 1, v133
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.l, v129.h
	v_add3_u32 v41, v136, v41, 0x7fff
	v_and_b32_e32 v43, 1, v132
	v_cmp_o_f32_e64 s10, v129, v129
	v_cmp_o_f32_e64 s6, v137, v137
	v_and_b32_e32 v45, 1, v134
	v_cndmask_b16 v40.l, 0x7fff, v41.h, s4
	v_cmp_o_f32_e64 s7, v140, v140
	v_cmp_o_f32_e64 s8, v139, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v49, s2
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v111
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v41, v40, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v111
	v_mul_f32_e32 v9, v9, v111
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v130, v130
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v111
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v157, v41, v40, v86
	v_perm_b32 v158, v41, v40, v87
	v_and_b32_e32 v40, 1, v110
	v_mov_b16_e64 v110.l, v140.h
	v_add3_u32 v41, v137, v43, 0x7fff
	v_add3_u32 v43, v139, v44, 0x7fff
	v_add3_u32 v44, v129, v45, 0x7fff
	v_add3_u32 v40, v138, v40, 0x7fff
	v_and_b32_e32 v45, 1, v110
	v_mov_b16_e64 v110.l, v130.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v111
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s10
	v_cndmask_b16 v40.l, 0x7fff, v41.h, s6
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s5
	v_and_b32_e32 v44, 1, v110
	v_add3_u32 v45, v140, v45, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v43.h, s8
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v111
	v_mul_f32_e32 v12, v12, v111
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v44, v130, v44, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v45.h, s7
	v_permlanex16_b32 v45, v40, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v111
	v_mul_f32_e32 v14, v14, v111
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v43.h, 0x7fff, v44.h, s9
	v_permlanex16_b32 v44, v41, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v159, v45, v40, v86
	v_perm_b32 v160, v45, v40, v87
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v15, v15, v111
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v40, v43, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v161, v44, v41, v86
	v_perm_b32 v162, v44, v41, v87
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v111
	v_mul_f32_e32 v22, v22, v111
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v163, v40, v43, v86
	v_perm_b32 v164, v40, v43, v87
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v111
	v_dual_mul_f32 v17, v17, v111 :: v_dual_sub_f32 v134, v147, v112
	v_mul_f32_e32 v19, v19, v111
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(14)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[32:39], v[157:164], v[8:15]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v148, v112
	v_sub_f32_e32 v34, v141, v112
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v111
	v_mul_f32_e32 v23, v23, v111
	v_mul_f32_e32 v0, v0, v111
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v111
	v_mul_f32_e32 v2, v2, v111
	v_mul_f32_e32 v3, v3, v111
	v_mul_f32_e32 v4, v4, v111
	v_mul_f32_e32 v5, v5, v111
	v_mul_f32_e32 v6, v6, v111
	v_mul_f32_e32 v7, v7, v111
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v144, v112
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[67:74], v[157:164], v[16:23]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v143, v112
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[51:58], v[157:164], v[24:31]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[149:156], v[157:164], v[0:7]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v33, s2
	v_cndmask_b32_e64 v158, 0, v34, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v74.h, v110.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v142, v112
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v43, v93 offset:2368
	ds_load_u16_d16 v65, v93 offset:3872
	ds_load_u16_d16 v53, v93 offset:2816
	ds_load_u16_d16 v60, v93 offset:2592
	ds_load_u16_d16 v45, v93 offset:2880
	ds_load_u16_d16 v54, v93 offset:3072
	ds_load_u16_d16 v61, v93 offset:2848
	ds_load_u16_d16 v46, v93 offset:3136
	ds_load_u16_d16 v56, v93 offset:3584
	ds_load_u16_d16 v63, v93 offset:3360
	ds_load_u16_d16 v48, v93 offset:3648
	ds_load_u16_d16 v57, v93 offset:3840
	ds_load_u16_d16 v49, v93 offset:3904
	ds_load_u16_d16 v55, v93 offset:3328
	ds_load_u16_d16 v62, v93 offset:3104
	ds_load_u16_d16 v47, v93 offset:3392
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v74.l, v157.h
	v_mov_b16_e64 v110.l, v158.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v145, v112
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v161, 0, v37, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v33, 1, v74
	v_and_b32_e32 v37, 1, v110
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v146, v112
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v158, v158
	v_cmp_o_f32_e64 s4, v157, v157
	v_add3_u32 v33, v157, v33, 0x7fff
	v_add3_u32 v37, v158, v37, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v134, v134
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v159, 0, v35, s2
	v_cndmask_b32_e64 v160, 0, v36, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s4
	v_cndmask_b16 v33.h, 0x7fff, v37.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v162, 0, v38, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v131.l, v159.h
	v_mov_b16_e64 v110.l, v160.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v32, v93 offset:4160
	ds_load_u16_d16 v52, v93 offset:2560
	ds_load_u16_d16 v59, v93 offset:2336
	ds_load_u16_d16 v44, v93 offset:2624
	ds_load_u16_d16 v67, v93 offset:2400
	ds_load_u16_d16 v64, v93 offset:3616
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v48, v93 offset:3776
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v57, v93 offset:3968
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v49, v93 offset:4032
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v37, v33, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v163, 0, v39, s2
	v_cndmask_b32_e64 v164, 0, v134, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v34, 1, v131
	v_cmp_o_f32_e64 s5, v160, v160
	v_perm_b32 v141, v37, v33, v86
	v_perm_b32 v142, v37, v33, v87
	v_and_b32_e32 v33, 1, v110
	v_mov_b16_e64 v110.l, v162.h
	v_cmp_o_f32_e64 s6, v159, v159
	v_mov_b16_e64 v132.l, v161.h
	v_mov_b16_e64 v133.l, v163.h
	v_add3_u32 v34, v159, v34, 0x7fff
	v_and_b32_e32 v37, 1, v110
	v_add3_u32 v33, v160, v33, 0x7fff
	v_mov_b16_e64 v110.l, v164.h
	v_and_b32_e32 v35, 1, v132
	v_and_b32_e32 v36, 1, v133
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s6
	v_cndmask_b16 v34.h, 0x7fff, v33.h, s5
	v_and_b32_e32 v33, 1, v110
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v58, v93 offset:2080
	ds_load_u16_d16 v51, v93 offset:2304
	ds_load_u16_d16_hi v50, v93 offset:2176
	ds_load_u16_d16 v40, v93 offset:4096
	ds_load_u16_d16 v73, v93 offset:3936
	ds_load_u16_d16_hi v43, v93 offset:2496
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v52, v93 offset:2688
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v44, v93 offset:2752
	ds_load_u16_d16 v68, v93 offset:2656
	ds_load_u16_d16_hi v53, v93 offset:2944
	ds_load_u16_d16_hi v45, v93 offset:3008
	ds_load_u16_d16 v69, v93 offset:2912
	ds_load_u16_d16_hi v54, v93 offset:3200
	ds_load_u16_d16_hi v46, v93 offset:3264
	ds_load_u16_d16 v70, v93 offset:3168
	ds_load_u16_d16_hi v55, v93 offset:3456
	ds_load_u16_d16_hi v47, v93 offset:3520
	ds_load_u16_d16 v71, v93 offset:3424
	ds_load_u16_d16_hi v56, v93 offset:3712
	ds_load_u16_d16 v72, v93 offset:3680
	ds_load_u16_d16_hi v32, v93 offset:4288
	ds_load_u16_d16 v41, v93 offset:4352
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v162, v162
	v_cmp_o_f32_e64 s8, v161, v161
	v_cmp_o_f32_e64 s9, v164, v164
	v_cmp_o_f32_e64 s10, v163, v163
	v_add3_u32 v35, v161, v35, 0x7fff
	v_add3_u32 v36, v163, v36, 0x7fff
	v_add3_u32 v37, v162, v37, 0x7fff
	v_add3_u32 v33, v164, v33, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v51, v93 offset:2432
	ds_load_u16_d16_hi v58, v93 offset:2208
	ds_load_u16_d16_hi v66, v93 offset:2272
	ds_load_u16_d16_hi v59, v93 offset:2464
	ds_load_u16_d16_hi v67, v93 offset:2528
	ds_load_u16_d16_hi v60, v93 offset:2720
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v68, v93 offset:2784
	ds_load_u16_d16_hi v61, v93 offset:2976
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v69, v93 offset:3040
	ds_load_u16_d16_hi v62, v93 offset:3232
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v70, v93 offset:3296
	ds_load_u16_d16_hi v63, v93 offset:3488
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v71, v93 offset:3552
	ds_load_u16_d16_hi v64, v93 offset:3744
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v72, v93 offset:3808
	ds_load_u16_d16_hi v65, v93 offset:4000
	ds_load_u16_d16_hi v73, v93 offset:4064
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s8
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s10
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s7
	v_permlanex16_b32 v37, v34, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v36.h, 0x7fff, v33.h, s9
	v_mov_b32_e32 v74, v90
	v_mov_b16_e32 v90.h, v110.h
	v_permlanex16_b32 v33, v35, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v143, v37, v34, v86
	v_perm_b32 v144, v37, v34, v87
	v_permlanex16_b32 v34, v36, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_perm_b32 v145, v33, v35, v86
	v_perm_b32 v146, v33, v35, v87
	v_perm_b32 v147, v34, v36, v86
	v_perm_b32 v148, v34, v36, v87
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[50:57], v[141:148], v[24:31]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v57, v114, v112
	v_sub_f32_e32 v114, v116, v112
	v_sub_f32_e32 v116, v118, v112
	v_sub_f32_e32 v118, v120, v112
	v_sub_f32_e32 v120, v122, v112
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[58:65], v[141:148], v[16:23]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v114, v114
	v_exp_f32_e32 v116, v116
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[42:49], v[141:148], v[8:15]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v120, v120
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[66:73], v[141:148], v[0:7]
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v55, v139, v140
.Ltmp12:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v56, v113, v112
	v_sub_f32_e32 v122, v126, v112
	v_sub_f32_e32 v126, v128, v112
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v118, v118
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v114, s2
	v_cndmask_b32_e64 v139, 0, v116, s2
.Ltmp13:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v114, v129, v130
.Ltmp14:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v143, 0, v120, s2
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v113, v115, v112
	v_sub_f32_e32 v115, v117, v112
	v_sub_f32_e32 v117, v119, v112
	v_sub_f32_e32 v119, v121, v112
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v126, v126
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v57, v57
.Ltmp15:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v130, v55, v114
.Ltmp16:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v119, v119
	v_exp_f32_e32 v115, v115
	v_exp_f32_e32 v122, v122
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v118, s2
.Ltmp17:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v48, v136, v135
	v_add_f32_e32 v54, v137, v138
.Ltmp18:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v145, 0, v126, s2
	v_cndmask_b32_e64 v56, 0, v56, s2
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v118, v163, v164
.Ltmp20:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v121, v123, v112
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v142, 0, v119, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v123, v127, v112
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v127, 0, v57, s2
	v_cndmask_b32_e64 v144, 0, v122, s2
	v_cndmask_b32_e64 v122, 0, v124, s2
.Ltmp21:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v126, v142, v143
.Ltmp22:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v113, v113
	v_exp_f32_e32 v123, v123
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v119, v56, v127
	v_add_f32_e32 v129, v48, v54
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v49.h, v110.h
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v116, v159, v160
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v51.h, v110.h
	v_mov_b16_e32 v51.l, v56.h
	v_mov_b16_e32 v52.h, v110.h
	v_mov_b16_e32 v53.h, v110.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v57, 0, v113, s2
	v_cndmask_b32_e64 v113, 0, v115, s2
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v115, v157, v158
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v51, 1, v51
	v_mov_b16_e32 v110.l, v127.h
	v_mov_b16_e32 v52.l, v57.h
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v124, v113, v139
.Ltmp30:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v117, v117
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v53.l, v113.h
	v_mov_b16_e64 v165.l, v142.h
	v_and_b32_e32 v52, 1, v52
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v58, v93 offset:6208
	ds_load_u16_d16 v156, v93 offset:5984
	ds_load_u16_d16 v66, v93 offset:6144
	ds_load_u16_d16 v68, v93 offset:6656
	ds_load_u16_d16 v60, v93 offset:6720
	ds_load_u16_d16 v59, v93 offset:6464
	ds_load_u16_d16 v67, v93 offset:6400
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v167.l, v122.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v33, v93 offset:4416
	ds_load_u16_d16 v42, v93 offset:4608
	ds_load_u16_d16 v34, v93 offset:4672
	ds_load_u16_d16 v150, v93 offset:4448
	ds_load_u16_d16 v43, v93 offset:4864
	ds_load_u16_d16 v35, v93 offset:4928
	ds_load_u16_d16 v151, v93 offset:4704
	ds_load_u16_d16 v44, v93 offset:5120
	ds_load_u16_d16 v36, v93 offset:5184
	ds_load_u16_d16 v152, v93 offset:4960
	ds_load_u16_d16 v45, v93 offset:5376
	ds_load_u16_d16 v37, v93 offset:5440
	ds_load_u16_d16 v153, v93 offset:5216
	ds_load_u16_d16 v46, v93 offset:5632
	ds_load_u16_d16 v38, v93 offset:5696
	ds_load_u16_d16 v154, v93 offset:5472
	ds_load_u16_d16 v47, v93 offset:5888
	ds_load_u16_d16 v39, v93 offset:5952
	ds_load_u16_d16 v155, v93 offset:5728
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v56, v56
	v_cmp_o_f32_e64 s6, v127, v127
	v_cmp_o_f32_e64 s11, v142, v142
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v140, 0, v117, s2
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v117, v161, v162
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v159, 1, v167
	v_cmp_o_f32_e64 s18, v122, v122
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v132, v93 offset:6496
	ds_load_u16_d16 v69, v93 offset:6912
	ds_load_u16_d16 v61, v93 offset:6976
	ds_load_u16_d16 v133, v93 offset:6752
	ds_load_u16_d16 v70, v93 offset:7168
	ds_load_u16_d16 v62, v93 offset:7232
	ds_load_u16_d16 v134, v93 offset:7008
	ds_load_u16_d16 v71, v93 offset:7424
	ds_load_u16_d16 v63, v93 offset:7488
	ds_load_u16_d16 v135, v93 offset:7264
	ds_load_u16_d16 v72, v93 offset:7680
	ds_load_u16_d16 v64, v93 offset:7744
	ds_load_u16_d16 v136, v93 offset:7520
	ds_load_u16_d16 v73, v93 offset:7936
	ds_load_u16_d16 v65, v93 offset:8000
	ds_load_u16_d16 v137, v93 offset:7776
	ds_load_u16_d16 v138, v93 offset:8032
	ds_load_u16_d16 v131, v93 offset:6240
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v58, v93 offset:6336
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v59, v93 offset:6592
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v67, v93 offset:6528
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v148, v117, v118
.Ltmp34:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v121, v121
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v90.l, v140.h
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v147, v115, v116
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v140, v140
	v_cmp_o_f32_e64 s4, v57, v57
	v_add3_u32 v52, v57, v52, 0x7fff
	v_and_b32_e32 v90, 1, v90
	v_cmp_o_f32_e64 s7, v128, v128
	v_cmp_o_f32_e64 s5, v113, v113
	v_cmp_o_f32_e64 s8, v139, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v120, 0, v121, s2
	v_cndmask_b32_e64 v121, 0, v123, s2
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v123, v57, v128
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v90, v140, v90, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v50, v93 offset:4128
	ds_load_u16_d16 v149, v93 offset:4192
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v49.l, v120.h
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v54, v121, v145
.Ltmp40:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v125, v125, v112
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v48, v120, v144
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s12, v120, v120
	v_and_b32_e32 v49, 1, v49
	v_mov_b16_e64 v166.l, v121.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v125, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v121, v121
	v_cmp_o_f32_e64 s9, v141, v141
	v_add3_u32 v49, v120, v49, 0x7fff
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v120, v129, v130 :: v_dual_add_f32 v129, v147, v148
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v130.l, 0x7fff, v90.h, s10
	v_and_b32_e32 v158, 1, v166
	v_add3_u32 v51, v56, v51, 0x7fff
	v_cmp_o_f32_e64 s13, v143, v143
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v146, 0, v125, s2
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v125, v140, v141
	v_add_f32_e32 v90, v120, v129
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v121, v121, v158, 0x7fff
	v_cndmask_b16 v49.l, 0x7fff, v51.h, s3
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v55, v122, v146 :: v_dual_add_f32 v124, v124, v125
	v_dual_add_f32 v125, v126, v48 :: v_dual_mov_b32 v48, v112
	v_add_f32_e32 v123, v119, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_add_f32 v126, v54, v55 :: v_dual_and_b32 v53, 1, v53
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v122, v122, v159, 0x7fff
	v_cmp_o_f32_e64 s14, v144, v144
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v123, v123, v124 :: v_dual_add_f32 v124, v125, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v53, v113, v53, 0x7fff
	v_cndmask_b16 v147.l, 0x7fff, v122.h, s18
	v_cndmask_b16 v125.l, 0x7fff, v52.h, s4
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v41, v93 offset:4480
	s_waitcnt lgkmcnt(42)
	ds_load_u16_d16_hi v33, v93 offset:4544
	ds_load_u16_d16 v51, v93 offset:4384
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v42, v93 offset:4736
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v34, v93 offset:4800
	ds_load_u16_d16 v52, v93 offset:4640
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v43, v93 offset:4992
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v35, v93 offset:5056
	ds_load_u16_d16 v53, v93 offset:4896
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v44, v93 offset:5248
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v36, v93 offset:5312
	ds_load_u16_d16 v54, v93 offset:5152
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v45, v93 offset:5504
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v37, v93 offset:5568
	ds_load_u16_d16 v55, v93 offset:5408
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v46, v93 offset:5760
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v38, v93 offset:5824
	ds_load_u16_d16 v56, v93 offset:5664
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v47, v93 offset:6016
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v39, v93 offset:6080
	ds_load_u16_d16 v57, v93 offset:5920
	ds_load_u16_d16_hi v66, v93 offset:6272
	ds_load_u16_d16 v112, v93 offset:6176
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v120, v123, v124 :: v_dual_and_b32 v157, 1, v165
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	s_waitcnt lgkmcnt(14)
	v_cndmask_b16 v126.l, 0x7fff, v53.h, s5
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v113, v93 offset:6432
	ds_load_u16_d16_hi v68, v93 offset:6784
	ds_load_u16_d16_hi v60, v93 offset:6848
	ds_load_u16_d16 v114, v93 offset:6688
	ds_load_u16_d16_hi v69, v93 offset:7040
	ds_load_u16_d16_hi v61, v93 offset:7104
	ds_load_u16_d16 v115, v93 offset:6944
	ds_load_u16_d16_hi v70, v93 offset:7296
	ds_load_u16_d16_hi v62, v93 offset:7360
	ds_load_u16_d16 v116, v93 offset:7200
	ds_load_u16_d16_hi v71, v93 offset:7552
	ds_load_u16_d16_hi v63, v93 offset:7616
	ds_load_u16_d16 v117, v93 offset:7456
	ds_load_u16_d16_hi v72, v93 offset:7808
	ds_load_u16_d16_hi v64, v93 offset:7872
	ds_load_u16_d16 v118, v93 offset:7712
	ds_load_u16_d16_hi v73, v93 offset:8064
	ds_load_u16_d16_hi v65, v93 offset:8128
	ds_load_u16_d16 v119, v93 offset:7968
	ds_load_u16_d16_hi v40, v93 offset:4224
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v145, v145
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v90, v90, v120
.Ltmp54:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v140, v142, v157, 0x7fff
	v_cndmask_b16 v142.l, 0x7fff, v121.h, s16
	v_cndmask_b16 v140.l, 0x7fff, v49.h, s12
	v_cmp_o_f32_e64 s17, v146, v146
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v120, v90, s33, 0xfedcba98 op_sel:[1,0]
.Ltmp56:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v50, v93 offset:4256
	ds_load_u16_d16_hi v149, v93 offset:4320
	ds_load_u16_d16_hi v51, v93 offset:4512
	ds_load_u16_d16_hi v150, v93 offset:4576
	ds_load_u16_d16_hi v52, v93 offset:4768
	ds_load_u16_d16_hi v151, v93 offset:4832
	ds_load_u16_d16_hi v53, v93 offset:5024
	ds_load_u16_d16_hi v152, v93 offset:5088
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v54, v93 offset:5280
	ds_load_u16_d16_hi v153, v93 offset:5344
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v55, v93 offset:5536
	ds_load_u16_d16_hi v154, v93 offset:5600
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v56, v93 offset:5792
	ds_load_u16_d16_hi v155, v93 offset:5856
	s_waitcnt lgkmcnt(36)
	ds_load_u16_d16_hi v57, v93 offset:6048
	ds_load_u16_d16_hi v156, v93 offset:6112
	s_waitcnt lgkmcnt(36)
	ds_load_u16_d16_hi v112, v93 offset:6304
	ds_load_u16_d16_hi v131, v93 offset:6368
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v113, v93 offset:6560
	ds_load_u16_d16_hi v132, v93 offset:6624
	s_waitcnt lgkmcnt(36)
	ds_load_u16_d16_hi v114, v93 offset:6816
	ds_load_u16_d16_hi v133, v93 offset:6880
	s_waitcnt lgkmcnt(35)
	ds_load_u16_d16_hi v115, v93 offset:7072
	ds_load_u16_d16_hi v134, v93 offset:7136
	s_waitcnt lgkmcnt(34)
	ds_load_u16_d16_hi v116, v93 offset:7328
	ds_load_u16_d16_hi v135, v93 offset:7392
	s_waitcnt lgkmcnt(33)
	ds_load_u16_d16_hi v117, v93 offset:7584
	ds_load_u16_d16_hi v136, v93 offset:7648
	s_waitcnt lgkmcnt(32)
	ds_load_u16_d16_hi v118, v93 offset:7840
	ds_load_u16_d16_hi v137, v93 offset:7904
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v119, v93 offset:8096
	ds_load_u16_d16_hi v138, v93 offset:8160
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v90, v90, v120
.Ltmp58:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v120, 1, v110
	v_mov_b16_e64 v110.l, v128.h
	v_cndmask_b16 v129.l, 0x7fff, v140.h, s11
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s38, 64
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v90, v74, v111
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v120, v127, v120, 0x7fff
	v_and_b32_e32 v121, 1, v110
	v_mov_b16_e64 v110.l, v139.h
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s38, 0x7c0
	s_mov_b32 s38, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v49.h, 0x7fff, v120.h, s6
	v_add3_u32 v120, v128, v121, 0x7fff
	v_and_b32_e32 v122, 1, v110
	v_mov_b16_e64 v110.l, v141.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v123, v49, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v125.h, 0x7fff, v120.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v122, v139, v122, 0x7fff
	v_and_b32_e32 v121, 1, v110
	v_mov_b16_e64 v110.l, v143.h
	v_perm_b32 v120, v123, v49, v86
	v_permlanex16_b32 v127, v125, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v126.h, 0x7fff, v122.h, s8
	v_add3_u32 v124, v141, v121, 0x7fff
	v_perm_b32 v121, v123, v49, v87
	v_and_b32_e32 v49, 1, v110
	v_mov_b16_e64 v110.l, v144.h
	v_perm_b32 v122, v127, v125, v86
	v_cndmask_b16 v130.h, 0x7fff, v124.h, s9
	v_permlanex16_b32 v128, v126, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v123, v127, v125, v87
	v_and_b32_e32 v127, 1, v110
	v_mov_b16_e64 v110.l, v145.h
	v_add3_u32 v49, v143, v49, 0x7fff
	v_permlanex16_b32 v139, v130, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v124, v128, v126, v86
	v_perm_b32 v125, v128, v126, v87
	v_and_b32_e32 v128, 1, v110
	v_mov_b16_e64 v110.l, v146.h
	v_cndmask_b16 v129.h, 0x7fff, v49.h, s13
	v_add3_u32 v49, v144, v127, 0x7fff
	v_perm_b32 v126, v139, v130, v86
	v_perm_b32 v127, v139, v130, v87
	v_and_b32_e32 v130, 1, v110
	v_permlanex16_b32 v139, v129, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v140.h, 0x7fff, v49.h, s14
	v_add3_u32 v49, v145, v128, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[32:39], v[120:127], v[8:15]
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v146, v130, 0x7fff
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(32)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[40:47], v[120:127], v[24:31]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v35, v140, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v142.h, 0x7fff, v49.h, s15
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[50:57], v[120:127], v[16:23]
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v147.h, 0x7fff, v34.h, s17
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[149:156], v[120:127], v[0:7]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v32, v139, v129, v86
	v_permlanex16_b32 v37, v142, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v139, v129, v87
	v_permlanex16_b32 v39, v147, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v34, v35, v140, v86
	v_perm_b32 v35, v35, v140, v87
	v_perm_b32 v36, v37, v142, v86
	v_perm_b32 v37, v37, v142, v87
	v_perm_b32 v38, v39, v147, v86
	v_perm_b32 v39, v39, v147, v87
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[66:73], v[32:39], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[112:119], v[32:39], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[58:65], v[32:39], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[131:138], v[32:39], v[0:7]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v32, null, v90, v90, v24
	v_div_scale_f32 v33, null, v90, v90, v25
	v_div_scale_f32 v36, null, v90, v90, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v34, v32
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v37, vcc_lo, v24, v90, v24
	v_div_scale_f32 v38, s1, v25, v90, v25
	v_rcp_f32_e32 v39, v36
	v_div_scale_f32 v43, null, v90, v90, v27
	v_div_scale_f32 v47, null, v90, v90, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v40, -v32, v34, 1.0
	v_fma_f32 v41, -v33, v35, 1.0
	v_div_scale_f32 v42, s3, v26, v90, v26
	v_div_scale_f32 v49, null, v90, v90, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v34, v40, v34 :: v_dual_fmac_f32 v35, v41, v35
	v_rcp_f32_e32 v41, v43
	v_fma_f32 v44, -v36, v39, 1.0
	v_div_scale_f32 v40, s4, v27, v90, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v45, v37, v34 :: v_dual_mul_f32 v46, v38, v35
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
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
	v_div_scale_f32 v38, null, v90, v90, v30
	v_fmac_f32_e32 v45, v44, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v45, v37
	v_div_fmas_f32 v32, v32, v34, v45
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v34, v49
	v_div_fmas_f32 v33, v33, v35, v46
	v_fma_f32 v35, -v47, v48, 1.0
	v_div_fixup_f32 v24, v32, v90, v24
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v90
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v25, v33, v90, v25
	v_fmac_f32_e32 v48, v35, v48
	v_mul_f32_e32 v44, v42, v39
	v_div_scale_f32 v35, s5, v28, v90, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v36, v44, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v110.l, v25.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v44, v37, v39 :: v_dual_mul_f32 v37, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v36, v44, v42
	v_fma_f32 v33, -v43, v37, v40
	v_fma_f32 v36, -v49, v34, 1.0
	v_div_scale_f32 v42, null, v90, v90, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v39, v44
	v_dual_fmac_f32 v37, v33, v41 :: v_dual_fmac_f32 v34, v36, v34
	v_rcp_f32_e32 v36, v38
	v_mul_f32_e32 v33, v35, v48
	v_div_scale_f32 v39, s3, v29, v90, v29
	v_rcp_f32_e32 v44, v42
	v_div_fixup_f32 v26, v32, v90, v26
	v_fma_f32 v32, -v43, v37, v40
	v_fma_f32 v40, -v47, v33, v35
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v45, -v38, v36, 1.0
	v_mul_f32_e32 v43, v39, v34
	v_div_fmas_f32 v32, v32, v41, v37
	v_fmac_f32_e32 v33, v40, v48
	v_div_scale_f32 v40, s4, v30, v90, v30
	v_fmac_f32_e32 v36, v45, v36
	v_fma_f32 v37, -v49, v43, v39
	v_fma_f32 v41, -v42, v44, 1.0
	v_div_fixup_f32 v27, v32, v90, v27
	v_fma_f32 v32, -v47, v33, v35
	v_mul_f32_e32 v35, v40, v36
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v44, v41, v44
	v_fmac_f32_e32 v43, v37, v34
	v_div_scale_f32 v37, s6, v31, v90, v31
	v_div_scale_f32 v41, null, v90, v90, v16
	v_div_fmas_f32 v32, v32, v48, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v49, v43, v39
	v_fma_f32 v39, -v38, v35, v40
	v_rcp_f32_e32 v45, v41
	v_mul_f32_e32 v46, v37, v44
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v32, v32, v90, v28
	v_fmac_f32_e32 v35, v39, v36
	v_div_scale_f32 v47, null, v90, v90, v17
	v_fma_f32 v39, -v42, v46, v37
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	v_cndmask_b32_e64 v26, 0, v26, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v39, v44
	v_div_fmas_f32 v33, v33, v34, v43
	v_fma_f32 v43, -v41, v45, 1.0
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v34, v47
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v32, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v28, v33, v90, v29
	v_fma_f32 v29, -v38, v35, v40
	v_fmac_f32_e32 v45, v43, v45
	v_div_scale_f32 v33, s3, v16, v90, v16
	v_div_scale_f32 v43, null, v90, v90, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v29, v29, v36, v35
	v_fma_f32 v35, -v42, v46, v37
	v_mul_f32_e32 v36, v33, v45
	v_div_scale_f32 v37, null, v90, v90, v18
	v_fma_f32 v38, -v47, v34, 1.0
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v41, v36, v33
	v_rcp_f32_e32 v39, v37
	v_div_fmas_f32 v35, v35, v44, v46
	v_fmac_f32_e32 v34, v38, v34
	v_div_scale_f32 v38, s4, v17, v90, v17
	v_fmac_f32_e32 v36, v40, v45
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v30, v29, v90, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v42, v38, v34
	v_div_fixup_f32 v29, v35, v90, v31
	v_fma_f32 v40, -v37, v39, 1.0
	v_fma_f32 v33, -v41, v36, v33
	v_div_scale_f32 v41, null, v90, v90, v20
	v_rcp_f32_e32 v35, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v40, v39
	v_div_fmas_f32 v33, v33, v45, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v40, v41
	v_div_scale_f32 v46, null, v90, v90, v21
	v_fma_f32 v31, -v47, v42, v38
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v33, v90, v16
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v43, v35, 1.0
	v_fmac_f32_e32 v42, v31, v34
	v_div_scale_f32 v31, s5, v18, v90, v18
	v_fma_f32 v45, -v41, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v44, v35
	v_fma_f32 v36, -v47, v42, v38
	v_div_scale_f32 v44, s3, v19, v90, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v45, v40
	v_rcp_f32_e32 v45, v46
	v_div_fmas_f32 v34, v36, v34, v42
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v47, s4, v20, v90, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v34, v90, v17
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v34, v47, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v46, v45, 1.0
	v_mul_f32_e32 v38, v31, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v45, v48, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v37, v38, v31
	v_div_scale_f32 v48, s6, v21, v90, v21
	v_fmac_f32_e32 v38, v36, v39
	v_div_scale_f32 v36, null, v90, v90, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v31, -v37, v38, v31
	v_rcp_f32_e32 v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v31, v31, v39, v38
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v31, v31, v90, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v36, v37, 1.0
	v_dual_mul_f32 v42, v44, v35 :: v_dual_fmac_f32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v43, v42, v44
	v_div_scale_f32 v39, null, v90, v90, v23
	v_fmac_f32_e32 v42, v33, v35
	v_fma_f32 v33, -v41, v34, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v43, v42, v44
	v_dual_fmac_f32 v34, v33, v40 :: v_dual_mul_f32 v33, v48, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v38, v35, v42
	v_fma_f32 v38, -v41, v34, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v46, v33, v48
	v_div_scale_f32 v42, s3, v22, v90, v22
	v_div_fmas_f32 v34, v38, v40, v34
	v_rcp_f32_e32 v38, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v41, v45
	v_div_fixup_f32 v19, v35, v90, v19
	v_div_scale_f32 v35, null, v90, v90, v8
	v_div_fixup_f32 v18, v34, v90, v20
	v_fma_f32 v20, -v46, v33, v48
	s_mov_b32 vcc_lo, s6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v39, v38, 1.0
	v_div_fmas_f32 v20, v20, v45, v33
	v_rcp_f32_e32 v33, v35
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, null, v90, v90, v9
	v_div_fixup_f32 v20, v20, v90, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v41
	v_mul_f32_e32 v40, v42, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v36, v40, v42
	v_fmac_f32_e32 v40, v34, v37
	v_div_scale_f32 v34, s4, v23, v90, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v36, v40, v42
	v_mul_f32_e32 v36, v34, v38
	v_fma_f32 v42, -v35, v33, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v21, v37, v40
	v_fma_f32 v37, -v39, v36, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v42, v33
	v_div_scale_f32 v42, null, v90, v90, v10
	v_div_scale_f32 v40, s3, v8, v90, v8
	v_fmac_f32_e32 v36, v37, v38
	v_fma_f32 v37, -v41, v43, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v42
	v_div_fixup_f32 v21, v21, v90, v22
	v_mul_f32_e32 v22, v40, v33
	v_fma_f32 v34, -v39, v36, v34
	v_fmac_f32_e32 v43, v37, v43
	v_div_scale_f32 v37, s5, v9, v90, v9
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v39, -v35, v22, v40
	v_div_fmas_f32 v34, v34, v38, v36
	v_mul_f32_e32 v36, v37, v43
	v_fma_f32 v38, -v42, v44, 1.0
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v22, v39, v33
	v_div_scale_f32 v39, null, v90, v90, v11
	v_fma_f32 v45, -v41, v36, v37
	v_fmac_f32_e32 v44, v38, v44
	v_div_scale_f32 v38, s4, v10, v90, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v39
	v_div_fixup_f32 v23, v34, v90, v23
	v_fma_f32 v34, -v35, v22, v40
	v_dual_fmac_f32 v36, v45, v43 :: v_dual_mul_f32 v35, v38, v44
	v_div_scale_f32 v40, null, v90, v90, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v22, v34, v33, v22
	v_fma_f32 v33, -v41, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v34, -v42, v35, v38
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v37, -v39, v46, 1.0
	v_div_fixup_f32 v8, v22, v90, v8
	v_div_fmas_f32 v33, v33, v43, v36
	v_fmac_f32_e32 v35, v34, v44
	v_rcp_f32_e32 v34, v40
	v_div_scale_f32 v36, null, v90, v90, v13
	v_fmac_f32_e32 v46, v37, v46
	v_div_scale_f32 v37, s3, v11, v90, v11
	v_div_fixup_f32 v9, v33, v90, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v33, v36
	v_fma_f32 v22, -v42, v35, v38
	v_mul_f32_e32 v38, v37, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v41, -v40, v34, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v45, null, v90, v90, v15
	v_div_fmas_f32 v22, v22, v44, v35
	v_fma_f32 v35, -v39, v38, v37
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s4, v12, v90, v12
	v_fma_f32 v42, -v36, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v35, v46
	v_div_scale_f32 v35, null, v90, v90, v14
	v_mul_f32_e32 v43, v41, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v42, v33
	v_div_scale_f32 v42, s5, v13, v90, v13
	v_rcp_f32_e32 v44, v35
	v_div_fixup_f32 v10, v22, v90, v10
	v_fma_f32 v22, -v39, v38, v37
	v_fma_f32 v37, -v40, v43, v41
	v_mul_f32_e32 v39, v42, v33
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v22, v22, v46, v38
	v_fmac_f32_e32 v43, v37, v34
	v_fma_f32 v37, -v36, v39, v42
	v_fma_f32 v38, -v35, v44, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v11, v22, v90, v11
	v_fma_f32 v22, -v40, v43, v41
	v_fmac_f32_e32 v39, v37, v33
	v_div_scale_f32 v40, null, v90, v90, v0
	v_fmac_f32_e32 v44, v38, v44
	v_rcp_f32_e32 v37, v45
	v_div_scale_f32 v38, s3, v14, v90, v14
	v_div_fmas_f32 v22, v22, v34, v43
	v_fma_f32 v34, -v36, v39, v42
	v_rcp_f32_e32 v42, v40
	v_div_scale_f32 v43, null, v90, v90, v1
	v_mul_f32_e32 v36, v38, v44
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v45, v37, 1.0
	v_div_fmas_f32 v33, v34, v33, v39
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v34, -v35, v36, v38
	v_div_fixup_f32 v12, v22, v90, v12
	v_fma_f32 v46, -v40, v42, 1.0
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s4, v15, v90, v15
	v_fmac_f32_e32 v36, v34, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v42, v46, v42
	v_div_scale_f32 v46, null, v90, v90, v2
	v_div_fixup_f32 v13, v33, v90, v13
	v_fma_f32 v33, -v43, v39, 1.0
	v_mul_f32_e32 v22, v41, v37
	v_div_scale_f32 v34, s5, v0, v90, v0
	v_fma_f32 v35, -v35, v36, v38
	v_rcp_f32_e32 v38, v46
	v_fmac_f32_e32 v39, v33, v39
	v_div_scale_f32 v33, s6, v1, v90, v1
	v_fma_f32 v47, -v45, v22, v41
	v_mul_f32_e32 v48, v34, v42
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v49, v33, v39
	v_div_fmas_f32 v35, v35, v44, v36
	v_fmac_f32_e32 v22, v47, v37
	v_fma_f32 v36, -v40, v48, v34
	v_fma_f32 v47, -v46, v38, 1.0
	v_fma_f32 v44, -v43, v49, v33
	v_div_fixup_f32 v14, v35, v90, v14
	v_fma_f32 v35, -v45, v22, v41
	v_fmac_f32_e32 v48, v36, v42
	v_fmac_f32_e32 v38, v47, v38
	v_div_scale_f32 v36, s3, v2, v90, v2
	v_fmac_f32_e32 v49, v44, v39
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v41, null, v90, v90, v3
	v_div_fmas_f32 v22, v35, v37, v22
	v_mul_f32_e32 v35, v36, v38
	v_fma_f32 v34, -v40, v48, v34
	v_fma_f32 v33, -v43, v49, v33
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v37, v41
	v_fma_f32 v40, -v46, v35, v36
	v_div_fmas_f32 v34, v34, v42, v48
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v15, v22, v90, v15
	v_div_fmas_f32 v33, v33, v39, v49
	v_fmac_f32_e32 v35, v40, v38
	v_div_fixup_f32 v0, v34, v90, v0
	v_div_scale_f32 v39, null, v90, v90, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v33, v90, v1
	v_div_scale_f32 v33, null, v90, v90, v4
	v_fma_f32 v22, -v41, v37, 1.0
	v_fma_f32 v34, -v46, v35, v36
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v36, v33
	v_rcp_f32_e32 v40, v39
	v_fmac_f32_e32 v37, v22, v37
	v_div_scale_f32 v22, s4, v3, v90, v3
	v_div_fmas_f32 v34, v34, v38, v35
	v_div_scale_f32 v35, null, v90, v90, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v38, v22, v37
	v_div_scale_f32 v44, null, v90, v90, v7
	v_rcp_f32_e32 v42, v35
	v_div_fixup_f32 v2, v34, v90, v2
	v_fma_f32 v34, -v33, v36, 1.0
	v_fma_f32 v43, -v41, v38, v22
	v_fma_f32 v45, -v39, v40, 1.0
	v_rcp_f32_e32 v46, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v36, v34, v36
	v_div_scale_f32 v34, s3, v4, v90, v4
	v_fmac_f32_e32 v38, v43, v37
	v_fma_f32 v43, -v35, v42, 1.0
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s5, v5, v90, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v47, v34, v36 :: v_dual_fmac_f32 v42, v43, v42
	v_div_scale_f32 v43, s6, v6, v90, v6
	v_fma_f32 v48, -v44, v46, 1.0
	v_fma_f32 v22, -v41, v38, v22
	v_mul_f32_e32 v49, v45, v40
	v_fma_f32 v41, -v33, v47, v34
	v_mul_f32_e32 v50, v43, v42
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s7, v7, v90, v7
	v_div_fmas_f32 v22, v22, v37, v38
	v_fma_f32 v37, -v39, v49, v45
	v_fmac_f32_e32 v47, v41, v36
	v_fma_f32 v38, -v35, v50, v43
	v_mul_f32_e32 v41, v48, v46
	v_div_fixup_f32 v3, v22, v90, v3
	v_fmac_f32_e32 v49, v37, v40
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v37.l, v24.h
	v_mov_b16_e32 v37.h, v110.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v33, v47, v34
	v_fmac_f32_e32 v50, v38, v42
	v_fma_f32 v33, -v44, v41, v48
	v_fma_f32 v34, -v39, v49, v45
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v110
	v_and_b32_e32 v37, 1, v37
	v_mov_b16_e32 v110.l, v27.h
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v41, v33, v46
	v_div_fmas_f32 v22, v22, v36, v47
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v33, -v35, v50, v43
	v_div_fmas_f32 v34, v34, v40, v49
	s_mov_b32 vcc_lo, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v25, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v25, v25
	v_add3_u32 v25, v24, v37, 0x7fff
	v_mov_b16_e32 v37.l, v26.h
	v_mov_b16_e32 v37.h, v110.h
	v_and_b32_e32 v39, 1, v110
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v42, v50
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s6
	v_cmp_o_f32_e64 s6, v24, v24
	v_and_b32_e32 v24, 1, v37
	v_add3_u32 v37, v27, v39, 0x7fff
	v_cmp_o_f32_e64 s7, v27, v27
	v_mov_b16_e32 v110.l, v28.h
	v_mov_b16_e32 v39.l, v32.h
	v_mov_b16_e32 v39.h, v110.h
	v_cndmask_b16 v38.l, 0x7fff, v25.h, s6
	v_add3_u32 v24, v26, v24, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v37.h, s7
	v_and_b32_e32 v37, 1, v110
	v_cmp_o_f32_e64 s6, v26, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v29, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v25, 1, v39
	v_cmp_o_f32_e64 s7, v28, v28
	v_add3_u32 v29, v28, v37, 0x7fff
	v_mov_b16_e32 v37.l, v30.h
	v_mov_b16_e32 v37.h, v110.h
	v_mov_b16_e32 v110.l, v26.h
	v_add3_u32 v25, v32, v25, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v24.h, s6
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s7
	v_and_b32_e32 v24, 1, v37
	v_and_b32_e32 v29, 1, v110
	v_cndmask_b16 v28.l, 0x7fff, v25.h, s8
	v_cmp_o_f32_e64 s6, v26, v26
	v_mov_b16_e32 v110.l, v17.h
	v_add3_u32 v24, v30, v24, 0x7fff
	v_add3_u32 v25, v26, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_mov_b16_e32 v26.l, v16.h
	v_mov_b16_e32 v26.h, v110.h
	v_and_b32_e32 v29, 1, v110
	v_mov_b16_e32 v110.l, v19.h
	v_cndmask_b16 v25.l, 0x7fff, v24.h, s7
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s6
	v_and_b32_e32 v24, 1, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v31, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v17, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v17, v17
	v_and_b32_e32 v30, 1, v110
	v_add3_u32 v17, v16, v24, 0x7fff
	v_mov_b16_e32 v24.l, v26.h
	v_mov_b16_e32 v24.h, v110.h
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s6
	v_cmp_o_f32_e64 s6, v16, v16
	v_cmp_o_f32_e64 s7, v19, v19
	v_mov_b16_e32 v110.l, v20.h
	v_and_b32_e32 v16, 1, v24
	v_add3_u32 v24, v19, v30, 0x7fff
	v_mov_b16_e32 v30.l, v18.h
	v_mov_b16_e32 v30.h, v110.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v29.l, 0x7fff, v17.h, s6
	v_add3_u32 v16, v26, v16, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v24.h, s7
	v_and_b32_e32 v17, 1, v30
	v_and_b32_e32 v24, 1, v110
	v_cmp_o_f32_e64 s6, v26, v26
	v_mov_b16_e32 v26.l, v21.h
	v_mov_b16_e32 v26.h, v110.h
	v_mov_b16_e32 v110.l, v23.h
	v_add3_u32 v17, v18, v17, 0x7fff
	v_add3_u32 v24, v20, v24, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cmp_o_f32_e64 s8, v18, v18
	v_cndmask_b16 v19.l, 0x7fff, v16.h, s6
	v_and_b32_e32 v16, 1, v26
	v_and_b32_e32 v20, 1, v110
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v24.h, s7
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s8
	v_add3_u32 v16, v21, v16, 0x7fff
	v_add3_u32 v17, v23, v20, 0x7fff
	v_mov_b16_e32 v110.l, v9.h
	v_cmp_o_f32_e64 s7, v21, v21
	v_mov_b16_e32 v20.l, v8.h
	v_mov_b16_e32 v20.h, v110.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v23, v23
	v_and_b32_e32 v21, 1, v110
	v_cndmask_b16 v17.l, 0x7fff, v16.h, s7
	v_and_b32_e32 v16, 1, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v110.l, v11.h
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s6
	v_add3_u32 v20, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v9, v8, v16, 0x7fff
	v_mov_b16_e32 v16.l, v10.h
	v_mov_b16_e32 v16.h, v110.h
	v_and_b32_e32 v21, 1, v110
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v8, v8
	v_and_b32_e32 v8, 1, v16
	v_add3_u32 v16, v11, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v11, v11
	v_mov_b16_e32 v110.l, v13.h
	v_mov_b16_e32 v21.l, v12.h
	v_mov_b16_e32 v21.h, v110.h
	v_cndmask_b16 v20.l, 0x7fff, v9.h, s6
	v_add3_u32 v8, v10, v8, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v16.h, s7
	v_and_b32_e32 v16, 1, v110
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v10, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v15, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v21
	v_add3_u32 v15, v13, v16, 0x7fff
	v_mov_b16_e32 v16.l, v14.h
	v_mov_b16_e32 v16.h, v110.h
	v_mov_b16_e32 v110.l, v10.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v12, v9, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_cmp_o_f32_e64 s8, v12, v12
	v_cndmask_b16 v11.l, 0x7fff, v8.h, s6
	v_and_b32_e32 v8, 1, v16
	v_and_b32_e32 v13, 1, v110
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v110.l, v1.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v44, v41, v48
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v15.h, s7
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s8
	v_add3_u32 v8, v14, v8, 0x7fff
	v_add3_u32 v9, v10, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v10, v10
	v_cmp_o_f32_e64 s7, v14, v14
	v_mov_b16_e32 v10.l, v0.h
	v_mov_b16_e32 v10.h, v110.h
	v_and_b32_e32 v13, 1, v110
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v46, v41
	v_div_fixup_f32 v4, v22, v90, v4
	v_div_fixup_f32 v5, v34, v90, v5
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_cndmask_b16 v9.l, 0x7fff, v8.h, s7
	v_and_b32_e32 v8, 1, v10
	v_add3_u32 v10, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v1, v1
	v_mov_b16_e32 v1.l, v2.h
	v_mov_b16_e32 v1.h, v110.h
	v_mov_b16_e32 v110.l, v3.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v33, v90, v6
	v_div_fixup_f32 v7, v35, v90, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v8, v0, v8, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s6
	v_cmp_o_f32_e64 s6, v0, v0
	v_and_b32_e32 v0, 1, v1
	v_and_b32_e32 v1, 1, v110
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.l, 0x7fff, v8.h, s6
	v_mov_b16_e32 v8.h, v110.h
	v_add3_u32 v1, v3, v1, 0x7fff
	v_mov_b16_e32 v110.l, v5.h
	v_mov_b16_e32 v8.l, v4.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v3, v3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v7, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v7, 1, v110
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v13.l, v6.h
	v_mov_b16_e32 v13.h, v110.h
	v_mov_b16_e32 v110.l, v3.h
	v_add3_u32 v0, v2, v0, 0x7fff
	v_cmp_o_f32_e64 s1, v2, v2
	v_add3_u32 v2, v4, v8, 0x7fff
	v_and_b32_e32 v8, 1, v13
	v_and_b32_e32 v13, 1, v110
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
	v_lshrrev_b32_e32 v36, 1, v89
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v4, v38, v28, s0
	v_cndmask_b32_e64 v6, v27, v25, s0
	v_cndmask_b32_e64 v8, v29, v18, s0
	v_cndmask_b32_e64 v13, v17, v19, s0
	v_cndmask_b32_e64 v14, v19, v17, s0
	v_cndmask_b32_e64 v17, v0, v10, s0
	v_cndmask_b32_e64 v0, v10, v0, s0
	v_cndmask_b32_e64 v15, v12, v20, s0
	v_cndmask_b32_e64 v12, v20, v12, s0
	v_cndmask_b32_e64 v16, v9, v11, s0
	v_cndmask_b32_e64 v9, v11, v9, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v35, s35, v88
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v7, v18, v29, s0
	v_cndmask_b32_e64 v18, v2, v1, s0
	v_cndmask_b32_e64 v1, v1, v2, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v22, 16, v36
	s_mov_b32 s1, 0x76543210
	v_or_b32_e32 v33, 32, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v3, v28, v38, s0
	v_cndmask_b32_e64 v5, v25, v27, s0
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
	v_cmp_gt_i32_e32 vcc_lo, s35, v22
	v_cmp_gt_i32_e64 s5, s35, v36
	v_cmp_gt_i32_e64 s3, s35, v33
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v2, v3, v86
	v_perm_b32 v1, v2, v3, v87
	v_perm_b32 v2, v4, v5, v86
	v_perm_b32 v3, v4, v5, v87
	v_perm_b32 v4, v6, v7, v86
	v_perm_b32 v5, v6, v7, v87
	v_perm_b32 v6, v8, v13, v86
	v_perm_b32 v7, v8, v13, v87
	v_perm_b32 v12, v14, v17, v86
	v_perm_b32 v13, v14, v17, v87
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v35, v22, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v10, v15, v86
	v_perm_b32 v9, v10, v15, v87
	v_perm_b32 v10, v11, v16, v86
	v_perm_b32 v11, v11, v16, v87
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v35, v36, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s35, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v14, v19, v18, v86
	v_perm_b32 v15, v19, v18, v87
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
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[36:39], 0 offen
	buffer_store_b128 v[4:7], v17, s[36:39], 0 offen
	buffer_store_b128 v[8:11], v18, s[36:39], 0 offen
	buffer_store_b128 v[12:15], v19, s[36:39], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp59:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 174
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 174
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13288
; TotalNumSgprs: 50
; NumVgprs: 174
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 174
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp23-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp23-.Lfunc_begin0
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     174
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
