	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[84:87], s[0:1], 0x60
	v_dual_mov_b32 v43, 0x7632 :: v_dual_lshlrev_b32 v38, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b256 s[68:75], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v42, 0x5410 :: v_dual_and_b32 v1, 16, v38
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s6, v2
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s7, s6, s2
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v40, 15, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v39, 0x60, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v4
	s_mov_b32 s95, 0x31027000
	s_mov_b32 s94, 0x7ffffffe
	v_dual_mov_b32 v26, v25 :: v_dual_mov_b32 v75, 0xff800000
	v_and_b32_e32 v48, 24, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[121:122], null, s84, v2, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s84, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s93, s69, 0xffff
	s_mov_b32 s92, s68
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v45, 3, v0
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s84, s7, v[121:122]
	v_dual_mov_b32 v18, v25 :: v_dual_and_b32 v49, 12, v0
	s_clause 0x1
	s_load_b64 s[96:97], s[0:1], 0x20
	s_load_b128 s[88:91], s[0:1], 0x30
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v44, 2, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v39
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v135, 16, v0
	v_bfe_u32 v46, v0, 4, 1
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[33:36], v1, s[92:95], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v2, v40
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s93, s75, 0xffff
	s_mov_b32 s92, s74
	v_dual_mov_b32 v32, v25 :: v_dual_lshlrev_b32 v47, 1, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v132, s7, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v1
	v_dual_mov_b32 v20, v25 :: v_dual_lshlrev_b32 v139, 2, v0
	v_dual_mov_b32 v73, 0xff800000 :: v_dual_lshlrev_b32 v2, 1, v132
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	v_mov_b32_e32 v23, v25
	v_xor_b32_e32 v142, v38, v48
	v_and_b32_e32 v38, 0x80, v38
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v50, 48, v0
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v140, 5, v0
	v_dual_mov_b32 v17, v25 :: v_dual_lshlrev_b32 v48, 1, v49
	buffer_load_u16 v41, v1, s[92:95], 0 offen
	v_dual_mov_b32 v21, v25 :: v_dual_lshlrev_b32 v58, 11, v45
	v_dual_mov_b32 v22, v25 :: v_dual_lshlrev_b32 v37, 4, v45
	v_dual_mov_b32 v24, v25 :: v_dual_lshlrev_b32 v141, 3, v40
	v_dual_mov_b32 v14, v25 :: v_dual_lshlrev_b32 v57, 2, v39
	v_dual_mov_b32 v16, v25 :: v_dual_lshlrev_b32 v45, 5, v45
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v4, v25 :: v_dual_lshlrev_b32 v59, 6, v135
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v52, s6, v44
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v53, v47, 30, v46
	v_and_or_b32 v38, v139, 16, v38
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s1
	v_dual_mov_b32 v19, v25 :: v_dual_and_b32 v56, 0x260, v140
	v_dual_mov_b32 v12, v25 :: v_dual_lshlrev_b32 v55, 8, v49
	v_lshrrev_b32_e32 v54, 1, v50
	v_lshl_add_u32 v143, v40, 1, 0
	v_lshl_or_b32 v144, v40, 5, v48
	v_lshl_or_b32 v40, v50, 6, v141
	v_or_b32_e32 v48, v57, v48
	v_lshl_or_b32 v50, v49, 9, v45
	v_lshl_or_b32 v49, v49, 3, v57
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s1, s3, 0x10007
	v_mov_b32_e32 v11, v25
	v_dual_mov_b32 v2, v25 :: v_dual_lshlrev_b32 v39, 3, v39
	s_add_i32 s8, s3, s1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, 0x800, v52
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v52, 2, v53
	v_or3_b32 v38, v38, v58, v59
	v_or3_b32 v147, v55, v56, v48
	v_xor_b32_e32 v48, v50, v49
	v_mul_lo_u32 v49, s85, v44
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v51, 32, v44
	v_dual_mov_b32 v10, v25 :: v_dual_and_b32 v47, 0x80, v47
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v57, 4, v52
	v_or3_b32 v149, v38, v39, v45
	s_lshl_b32 s10, s85, 5
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[122:123], null, s5, v51, v[37:38]
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v47, 0, v47
	v_xor_b32_e32 v40, v40, v54
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s4, s4, s3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s3, s85, v37
	v_mad_u64_u32 v[123:124], null, s5, v44, v[37:38]
	v_xor_b32_e32 v38, 32, v149
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v156, v37, v49
	v_add3_u32 v157, v49, s10, v37
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 4
	v_dual_mov_b32 v146, v25 :: v_dual_add_nc_u32 v153, v47, v40
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s7, s0, 14
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s0, s87, s0
	v_xor_b32_e32 v39, 64, v149
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s87, s4, s0
	v_xor_b32_e32 v40, 0x60, v149
	v_dual_mov_b32 v76, 0xff800000 :: v_dual_add_nc_u32 v169, 0, v38
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v135
	v_dual_mov_b32 v145, v25 :: v_dual_add_nc_u32 v170, 0, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v171, 0, v40
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s8, s8, 0x80000
	v_cndmask_b32_e64 v42, 0x1054, v42, s0
	v_cndmask_b32_e64 v43, 0x3276, v43, s0
	s_sext_i32_i16 s8, s8
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s9, s86, 0x3fb8aa3b
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s8, s8, 10
	v_lshl_or_b32 v42, v42, 8, v42
	v_lshl_or_b32 v43, v43, 8, v43
	s_and_b32 s8, s8, 0xfffff800
	v_dual_mov_b32 v9, v25 :: v_dual_add_nc_u32 v60, 0, v135
	s_add_i32 s86, s8, s7
	v_xor_b32_e32 v53, 8, v142
	v_xor_b32_e32 v61, 8, v144
	v_xor_b32_e32 v62, 16, v144
	v_xor_b32_e32 v63, 24, v144
	v_xor_b32_e32 v44, 8, v147
	v_xor_b32_e32 v50, 16, v147
	v_xor_b32_e32 v51, 24, v147
	v_or_b32_e32 v155, s86, v46
	v_dual_mov_b32 v136, 0xff800000 :: v_dual_mov_b32 v137, 0xff800000
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v138, 0x7c, v0
	v_dual_mov_b32 v13, v25 :: v_dual_add_nc_u32 v148, 0, v53
	v_dual_mov_b32 v15, v25 :: v_dual_add_nc_u32 v150, 0, v61
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v152, 0, v63
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v154, v60, v48
	v_dual_mov_b32 v5, v25 :: v_dual_add_nc_u32 v158, 0, v44
	v_dual_mov_b32 v7, v25 :: v_dual_add_nc_u32 v160, 0, v51
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v151, 0, v62
	v_or_b32_e32 v161, 48, v155
	v_or_b32_e32 v162, 50, v155
	v_or_b32_e32 v163, 52, v155
	v_or_b32_e32 v164, 54, v155
	v_or_b32_e32 v165, 56, v155
	v_or_b32_e32 v166, 58, v155
	v_or_b32_e32 v167, 60, v155
	v_or_b32_e32 v168, 62, v155
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v172, 8, v156
	v_add_nc_u32_e32 v173, 8, v157
	s_mov_b32 s76, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s6, s5, s6
	s_and_b32 s71, s71, 0xffff
	s_mov_b32 s100, 0x76543210
	s_mov_b32 s98, s94
	s_mov_b32 s99, s95
	s_mov_b32 s77, s76
	s_mov_b32 s78, s76
	s_mov_b32 s79, s76
	s_mov_b32 s80, s76
	s_mov_b32 s81, s76
	s_mov_b32 s82, s76
	s_mov_b32 s83, s76
	s_mov_b32 s101, s76
	s_waitcnt lgkmcnt(0)
	s_and_b32 s97, s97, 0xffff
	s_and_b32 s73, s73, 0xffff
	s_add_i32 s87, s87, s6
	s_mov_b32 s74, s94
	s_mov_b32 s75, s95
	s_mov_b32 s92, s70
	s_mov_b32 s93, s71
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v37, v52, v33
	ds_bpermute_b32 v33, v57, v33
	ds_bpermute_b32 v38, v52, v34
	ds_bpermute_b32 v34, v57, v34
	ds_bpermute_b32 v39, v52, v35
	ds_bpermute_b32 v35, v57, v35
	ds_bpermute_b32 v40, v52, v36
	ds_bpermute_b32 v36, v57, v36
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v124, v33, v37, s0
	v_cndmask_b32_e64 v126, v37, v33, s0
	v_and_b32_e32 v33, 0x540054, v42
	v_and_b32_e32 v37, 0x760076, v43
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v125, v34, v38, s0
	v_cndmask_b32_e64 v127, v38, v34, s0
	v_lshl_or_b32 v33, v33, 4, v33
	v_lshl_or_b32 v34, v37, 4, v37
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v174, s9, v41 :: v_dual_add_nc_u32 v159, 0, v50
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v128, v35, v39, s0
	v_cndmask_b32_e64 v130, v39, v35, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v129, v36, v40, s0
	v_cndmask_b32_e64 v131, v40, v36, s0
	v_and_b32_e32 v133, 0x5040504, v33
	v_and_b32_e32 v134, 0x7060706, v34
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v109, 8, v70
	v_lshrrev_b32_e32 v110, 8, v69
	v_mov_b16_e32 v74.l, 0
	v_lshrrev_b32_e32 v111, 8, v72
	v_lshrrev_b32_e32 v114, 8, v71
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v77.h, 0xff, v69.l
	v_and_b16 v78.h, 0xff, v110.l
	v_and_b16 v79.h, 0xff, v69.h
	v_lshrrev_b32_e32 v110, 24, v69
	v_and_b16 v69.l, 0xff, v70.l
	v_and_b16 v69.h, 0xff, v109.l
	v_lshrrev_b32_e32 v109, 24, v70
	v_and_b16 v70.l, 0xff, v71.l
	v_and_b16 v81.h, 0xff, v71.h
	v_and_b16 v80.h, 0xff, v70.h
	v_and_b16 v70.h, 0xff, v114.l
	v_lshrrev_b32_e32 v114, 24, v71
	v_and_b16 v71.h, 0xff, v111.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v102.h, v101.l
	v_mov_b16_e32 v101.l, v74.l
	v_mov_b16_e32 v101.h, v100.l
	v_mov_b16_e32 v100.h, v99.l
	v_mov_b16_e32 v99.l, v74.l
	v_mov_b16_e32 v99.h, v98.l
	v_mov_b16_e32 v95.h, v94.l
	v_mov_b16_e32 v94.l, v74.l
	v_mov_b16_e32 v94.h, v93.l
	v_mov_b16_e32 v91.h, v90.l
	v_mov_b16_e32 v90.l, v74.l
	v_mov_b16_e32 v90.h, v89.l
	v_mov_b16_e32 v89.l, v74.l
	v_mov_b16_e32 v89.h, v88.l
	v_mov_b16_e32 v87.h, v86.l
	v_mov_b16_e32 v86.l, v74.l
	v_mov_b16_e32 v86.h, v85.l
	v_mov_b16_e32 v85.l, v74.l
	v_mov_b16_e32 v85.h, v84.l
	v_mov_b16_e32 v111.l, v74.l
	v_mov_b16_e32 v111.h, v81.l
	v_mov_b16_e32 v115.l, v74.l
	v_mov_b16_e32 v115.h, v80.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_mul_f32_e32 v184, v174, v36
	v_mul_f32_e32 v181, v174, v33
	v_mul_f32_e32 v176, v174, v44
	v_mul_f32_e32 v175, v174, v43
	v_mul_f32_e32 v185, v174, v37
	v_mul_f32_e32 v180, v174, v48
	v_mul_f32_e32 v177, v174, v45
	v_mul_f32_e32 v56, v174, v56
	v_mul_f32_e32 v51, v174, v51
	v_mul_f32_e32 v49, v174, v49
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v43, 8, v65
	v_and_b16 v82.h, 0xff, v72.h
	v_and_b16 v71.l, 0xff, v72.l
	v_lshrrev_b32_e32 v72, 24, v72
	v_cmp_ne_u16_e64 s13, 0, v70.l
	v_cmp_ne_u16_e64 s22, 0, v81.h
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v88.h, v87.l
	v_mov_b16_e32 v87.l, v74.l
	v_mov_b16_e32 v117.l, v74.l
	v_mov_b16_e32 v117.h, v78.l
	v_mov_b16_e32 v118.l, v74.l
	v_mov_b16_e32 v118.h, v77.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v35, v35
	v_mul_f32_e32 v187, v174, v39
	v_mul_f32_e32 v182, v174, v34
	v_mul_f32_e32 v188, v174, v40
	v_mul_f32_e32 v179, v174, v47
	v_mul_f32_e32 v120, v174, v42
	v_mul_f32_e32 v34, v51, v99
	v_dual_mul_f32 v59, v174, v59 :: v_dual_mul_f32 v36, v49, v101
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v42.h, 0xff, v43.l
	v_and_b16 v43.l, 0xff, v65.h
	v_and_b16 v43.h, 0xff, v66.l
	v_lshrrev_b32_e32 v49, 24, v66
	v_cmp_ne_u16_e64 s30, 0, v82.h
	v_cmp_ne_u16_e64 s31, 0, v72.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s23, s1, s13
	s_and_b32 s25, s1, s22
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v42.l, 0xff, v65.l
	v_lshrrev_b32_e32 v112, 8, v66
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v108.h, v107.l
	v_mov_b16_e32 v107.l, v74.l
	v_mov_b16_e32 v107.h, v106.l
	v_mov_b16_e32 v84.h, v83.l
	v_mov_b16_e32 v83.l, v74.l
	v_mov_b16_e32 v83.h, v82.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v55, v55
	v_mul_f32_e32 v183, v174, v35
	v_mul_f32_e32 v178, v174, v46
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v46, 8, v67
	v_cmp_ne_u16_e64 s36, 0, v43.l
	v_cmp_ne_u16_e64 s38, 0, v43.h
	v_cmp_ne_u16_e64 s43, 0, v49.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_cndmask_b32_e64 v49, 0, 1, s23
	v_cndmask_b32_e64 v43, 0, 1, s25
	s_and_b32 s30, s1, s30
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s4, 0, v77.h
	v_cmp_ne_u16_e64 s6, 0, v79.h
	v_cmp_ne_u16_e64 s11, 0, v80.h
	v_cmp_ne_u16_e64 s28, 0, v71.l
	v_cmp_ne_u16_e64 s29, 0, v71.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s31, s1, s31
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s33, 0, v42.l
	v_cmp_ne_u16_e64 s35, 0, v42.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v42, 0, 1, s30
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v113, 8, v68
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v74.h, v108.l
	v_mov_b16_e32 v106.l, v74.l
	v_mov_b16_e32 v106.h, v105.l
	v_mov_b16_e32 v96.h, v95.l
	v_mov_b16_e32 v95.l, v74.l
	v_mov_b16_e32 v93.h, v92.l
	v_mov_b16_e32 v92.l, v74.l
	v_mov_b16_e32 v92.h, v91.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v38, v38
	v_dual_mul_f32 v58, v174, v58 :: v_dual_mul_f32 v107, v59, v107
	v_mul_f32_e32 v60, v174, v60
	v_mul_f32_e32 v57, v174, v57
	v_mul_f32_e32 v55, v174, v55
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v48, 24, v65
	v_and_b16 v44.l, 0xff, v112.l
	v_and_b16 v44.h, 0xff, v66.h
	v_and_b16 v45.l, 0xff, v67.l
	v_and_b16 v45.h, 0xff, v46.l
	v_and_b16 v46.l, 0xff, v67.h
	v_and_b16 v46.h, 0xff, v68.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_cndmask_b32_e64 v59, 0, 1, s31
	v_lshlrev_b16 v42.h, 8, v43.l
	v_mov_b16_e32 v43.l, v49.l
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s5, 0, v78.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s9, s1, s4
	s_and_b32 s15, s1, s6
	s_and_b32 s20, s1, s11
	s_and_b32 s28, s1, s28
	s_and_b32 s29, s1, s29
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v104.h, v103.l
	v_mov_b16_e32 v103.l, v74.l
	v_mov_b16_e32 v103.h, v102.l
	v_mov_b16_e32 v98.h, v97.l
	v_mov_b16_e32 v97.l, v74.l
	v_mov_b16_e32 v97.h, v96.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v41, v41
	v_mul_f32_e32 v53, v174, v53
	v_mul_f32_e32 v186, v174, v38
	v_mul_f32_e32 v60, v60, v106
	v_dual_mul_f32 v189, v57, v74 :: v_dual_mul_f32 v38, v55, v95
	v_mul_f32_e32 v63, v174, v63
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v47.l, 0xff, v113.l
	v_and_b16 v47.h, 0xff, v68.h
	v_cmp_ne_u16_e64 s37, 0, v48.l
	v_cmp_ne_u16_e64 s40, 0, v44.l
	v_cmp_ne_u16_e64 s41, 0, v44.h
	v_cmp_ne_u16_e64 s44, 0, v45.l
	v_cmp_ne_u16_e64 s45, 0, v45.h
	v_cmp_ne_u16_e64 s46, 0, v46.l
	v_cmp_ne_u16_e64 s48, 0, v46.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_cndmask_b32_e64 v46, 0, 1, s9
	v_cndmask_b32_e64 v48, 0, 1, s15
	v_cndmask_b32_e64 v45, 0, 1, s20
	v_cndmask_b32_e64 v44, 0, 1, s28
	v_cndmask_b32_e64 v57, 0, 1, s29
	v_lshlrev_b16 v42.l, 8, v42.l
	v_or_b16 v49.l, v43.l, v42.h
	v_mov_b16_e32 v43.l, v59.l
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s8, 0, v69.l
	v_cmp_ne_u16_e64 s12, 0, v109.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s14, s1, s5
	s_and_b32 s36, s1, s36
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v51, 24, v68
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v105.l, v74.l
	v_mov_b16_e32 v105.h, v104.l
	v_mov_b16_e32 v104.l, v74.l
	v_mov_b16_e32 v100.l, v74.l
	v_mov_b16_e32 v93.l, v74.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v52, v52
	v_dual_mul_f32 v61, v174, v61 :: v_dual_mul_f32 v40, v63, v103
	v_mul_f32_e32 v62, v174, v62
	v_mul_f32_e32 v119, v174, v41
	v_mul_f32_e32 v50, v174, v50
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s50, 0, v47.l
	v_cmp_ne_u16_e64 s52, 0, v47.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_cndmask_b32_e64 v47, 0, 1, s14
	v_cndmask_b32_e64 v65, 0, 1, s36
	v_or_b16 v49.h, v44.l, v42.l
	v_mov_b16_e32 v42.l, v48.l
	v_lshlrev_b16 v42.h, 8, v45.l
	v_mov_b16_e32 v45.l, v46.l
	v_lshlrev_b16 v43.l, 8, v43.l
	v_mov_b16_e32 v46.l, v57.l
	s_and_b32 s18, s1, s8
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s7, 0, v110.l
	v_cmp_ne_u16_e64 s10, 0, v69.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s21, s1, s12
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s53, 0, v51.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v51, 0, 1, s18
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v102.l, v74.l
	v_mov_b16_e32 v98.l, v74.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v64, v64
	v_dual_mul_f32 v52, v174, v52 :: v_dual_mul_f32 v61, v61, v105
	v_dual_mul_f32 v41, v62, v104 :: v_dual_mul_f32 v62, v53, v97
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v53, 0, 1, s21
	v_lshlrev_b16 v42.l, 8, v42.l
	v_or_b16 v51.h, v46.l, v43.l
	v_mov_b16_e32 v46.l, v47.l
	v_mov_b16_e32 v47.l, v65.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v65, v119, v93
	v_mul_f32_e32 v35, v50, v100
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v50, 24, v67
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s16, s1, s7
	s_and_b32 s19, s1, s10
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v64, v174, v64 :: v_dual_mul_f32 v33, v52, v98
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s47, 0, v50.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_cndmask_b32_e64 v50, 0, 1, s16
	v_cndmask_b32_e64 v52, 0, 1, s19
	v_or_b16 v48.l, v45.l, v42.l
	v_mov_b16_e32 v42.l, v53.l
	s_and_b32 s46, s1, s46
	v_mov_b16_e32 v43.l, v50.l
	v_cndmask_b32_e64 v77, 0, 1, s46
	v_mov_b16_e32 v45.l, v52.l
	v_lshlrev_b16 v42.l, 8, v42.l
	s_and_b32 s42, s1, s41
	s_and_b32 s44, s1, s44
	v_cndmask_b32_e64 v69, 0, 1, s42
	v_cndmask_b32_e64 v71, 0, 1, s44
	v_lshlrev_b16 v43.l, 8, v43.l
	v_or_b16 v50.h, v45.l, v42.l
	v_mov_b16_e32 v42.l, v77.l
	s_and_b32 s39, s1, s38
	s_and_b32 s43, s1, s43
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s17, 0, v70.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v67, 0, 1, s39
	v_cndmask_b32_e64 v70, 0, 1, s43
	v_or_b16 v50.l, v46.l, v43.l
	v_mov_b16_e32 v43.l, v69.l
	v_lshlrev_b16 v42.l, 8, v42.l
	v_mov_b16_e32 v45.l, v71.l
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s26, 0, v114.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s40, s1, s40
	s_and_b32 s51, s1, s50
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v68, 0, 1, s40
	v_cndmask_b32_e64 v80, 0, 1, s51
	v_lshlrev_b16 v43.l, 8, v43.l
	v_mov_b16_e32 v46.l, v67.l
	v_or_b16 v53.l, v45.l, v42.l
	v_mov_b16_e32 v45.l, v70.l
	s_and_b32 s27, s1, s26
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v96.l, v74.l
	v_mov_b16_e32 v91.l, v74.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v55, 0, 1, s27
	v_mov_b16_e32 v44.l, v51.l
	v_or_b16 v52.h, v46.l, v43.l
	v_mov_b16_e32 v46.l, v80.l
	v_lshlrev_b16 v44.h, 8, v45.l
	v_mov_b16_e32 v45.l, v68.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v80, v184, v111 :: v_dual_mul_f32 v77, v181, v85
	v_mul_f32_e32 v68, v176, v90
	v_dual_mul_f32 v54, v174, v54 :: v_dual_mul_f32 v67, v175, v91
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s24, s1, s17
	v_or_b16 v48.h, v44.l, v42.h
	v_mov_b16_e32 v44.l, v55.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v54, v96
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v54, 0, 1, s24
	s_and_b32 s52, s1, s52
	s_and_b32 s49, s1, s48
	v_cndmask_b32_e64 v81, 0, 1, s52
	v_lshlrev_b16 v42.h, 8, v44.l
	v_mov_b16_e32 v44.l, v54.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v116.h, v79.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v79, 0, 1, s49
	s_and_b32 s34, s1, s33
	s_and_b32 s33, s1, s53
	v_or_b16 v51.l, v44.l, v42.h
	v_mov_b16_e32 v44.l, v81.l
	s_and_b32 s37, s1, s37
	s_and_b32 s47, s1, s47
	v_cndmask_b32_e64 v82, 0, 1, s33
	v_cndmask_b32_e64 v66, 0, 1, s37
	v_cndmask_b32_e64 v78, 0, 1, s47
	v_lshlrev_b16 v42.h, 8, v44.l
	v_mov_b16_e32 v44.l, v79.l
	s_and_b32 s35, s1, s35
	s_and_b32 s45, s1, s45
	v_cndmask_b32_e64 v63, 0, 1, s34
	v_mov_b16_e32 v42.l, v82.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v37, v64, v102
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v64, 0, 1, s35
	v_cndmask_b32_e64 v72, 0, 1, s45
	v_or_b16 v53.h, v44.l, v42.h
	v_lshlrev_b16 v42.h, 8, v47.l
	v_mov_b16_e32 v44.l, v78.l
	v_mov_b16_e32 v47.l, v66.l
	v_mov_b16_e32 v43.l, v63.l
	v_lshlrev_b16 v42.l, 8, v42.l
	v_or_b16 v54.h, v45.l, v44.h
	v_lshlrev_b16 v43.h, 8, v44.l
	v_mov_b16_e32 v44.l, v72.l
	v_lshlrev_b16 v45.h, 8, v47.l
	v_mov_b16_e32 v47.l, v64.l
	v_or_b16 v52.l, v43.l, v42.h
	v_or_b16 v55.h, v46.l, v42.l
	v_add_nc_u32_e32 v42, 0, v147
	v_or_b16 v55.l, v44.l, v43.h
	v_or_b16 v54.l, v47.l, v45.h
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b64 v153, v[48:49], v[52:53] offset1:32
	ds_store_2addr_b64 v153, v[50:51], v[54:55] offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[44:45], v42
	ds_load_b64 v[48:49], v158
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v81, v185, v115 :: v_dual_mul_f32 v72, v180, v86
	v_dual_mul_f32 v69, v177, v89 :: v_dual_mul_f32 v64, v56, v94
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_b64 v[52:53], v159
	ds_load_b64 v[56:57], v160
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v108.l, v74.l
	v_mov_b16_e32 v84.l, v74.l
	v_mov_b16_e32 v88.l, v74.l
	v_mov_b16_e32 v116.l, v74.l
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v58, v58, v108
	.loc	1 882 26                        ; attention.py:882:26
	s_barrier
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s69, 0xff800000, v73
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s70, s70, s85
	.loc	1 877 25                        ; attention.py:877:25
	v_lshrrev_b16 v42.l, 8, v45.l
	v_lshrrev_b16 v42.h, 8, v44.l
	v_and_b32_e32 v50, 0x1000000, v45
	v_and_b32_e32 v85, 0x10000, v45
	v_and_b32_e32 v46, 1, v45
	v_and_b16 v47.l, 1, v42.l
	v_and_b16 v43.l, 1, v42.h
	v_lshrrev_b16 v42.l, 8, v49.l
	v_lshrrev_b16 v42.h, 8, v48.l
	v_and_b32_e32 v45, 0x1000000, v44
	v_and_b32_e32 v86, 0x10000, v44
	v_and_b32_e32 v44, 1, v44
	v_and_b16 v54.l, 1, v42.l
	v_and_b16 v51.l, 1, v42.h
	v_lshrrev_b16 v42.l, 8, v53.l
	v_lshrrev_b16 v42.h, 8, v52.l
	v_cmp_eq_u32_e64 s67, 1, v44
	v_cmp_eq_u16_e64 s68, 1, v43.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v79, v183, v83
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v55.l, 1, v42.l
	v_and_b16 v54.h, 1, v42.h
	v_lshrrev_b16 v42.l, 8, v57.l
	v_lshrrev_b16 v42.h, 8, v56.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v83, v187, v117 :: v_dual_mul_f32 v78, v182, v84
	v_dual_mul_f32 v84, v188, v118 :: v_dual_and_b32 v95, 1, v53
	v_dual_mul_f32 v71, v179, v87 :: v_dual_mul_f32 v66, v120, v92
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v90, 0x1000000, v48
	v_and_b32_e32 v91, 0x10000, v48
	v_and_b32_e32 v92, 1, v48
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v70, v178, v88 :: v_dual_and_b32 v93, 0x1000000, v53
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v88, 0x10000, v49
	v_and_b32_e32 v96, 0x1000000, v52
	v_and_b32_e32 v97, 0x10000, v52
	v_and_b32_e32 v98, 1, v52
	v_and_b32_e32 v89, 1, v49
	v_and_b16 v63.l, 1, v42.l
	v_and_b32_e32 v102, 0x1000000, v56
	v_and_b32_e32 v103, 0x10000, v56
	v_and_b16 v59.l, 1, v42.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v42, 0xff800000, v189, s67
	v_cndmask_b32_e64 v43, 0xff800000, v58, s68
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v104, 1, v56
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v82, v186, v116 :: v_dual_and_b32 v99, 0x1000000, v57
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v87, 0x1000000, v49
	v_and_b32_e32 v100, 0x10000, v57
	v_and_b32_e32 v101, 1, v57
	v_cmp_ne_u32_e64 s65, 0, v86
	v_cmp_ne_u32_e64 s66, 0, v45
	v_cmp_eq_u16_e64 s63, 1, v47.l
	v_cmp_eq_u32_e64 s59, 1, v92
	v_cmp_eq_u16_e64 s60, 1, v51.l
	v_cmp_ne_u32_e64 s57, 0, v91
	v_cmp_ne_u32_e64 s58, 0, v90
	v_cmp_ne_u32_e64 s61, 0, v85
	v_cmp_ne_u32_e64 s62, 0, v50
	v_cmp_eq_u16_e64 s56, 1, v54.l
	v_cmp_ne_u32_e64 s53, 0, v88
	v_cmp_eq_u32_e64 s48, 1, v98
	v_cmp_eq_u16_e64 s50, 1, v54.h
	v_cmp_ne_u32_e64 s38, 0, v97
	v_cmp_ne_u32_e64 s41, 0, v96
	v_cmp_eq_u32_e64 s64, 1, v46
	v_cmp_eq_u32_e64 s12, 1, v104
	v_cmp_eq_u16_e64 s11, 1, v59.l
	v_cmp_ne_u32_e64 s8, 0, v103
	v_cmp_ne_u32_e64 s10, 0, v102
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, 0xff800000, v107, s65
	v_cndmask_b32_e64 v45, 0xff800000, v60, s66
	v_cndmask_b32_e64 v47, 0xff800000, v41, s63
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s55, 1, v89
	v_cmp_ne_u32_e64 s54, 0, v87
	v_cmp_eq_u32_e64 s22, 1, v95
	v_cmp_eq_u32_e64 s6, 1, v101
	v_cmp_eq_u16_e64 s7, 1, v63.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v41, 0, v149
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s4, 0, v100
	v_cmp_ne_u32_e64 s5, 0, v99
	v_and_b32_e32 v94, 0x10000, v53
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v50, 0xff800000, v36, s59
	v_cndmask_b32_e64 v51, 0xff800000, v35, s60
	v_cndmask_b32_e64 v52, 0xff800000, v34, s57
	v_cndmask_b32_e64 v53, 0xff800000, v33, s58
	v_cndmask_b32_e64 v48, 0xff800000, v40, s61
	v_cndmask_b32_e64 v49, 0xff800000, v37, s62
	v_cndmask_b32_e64 v34, 0xff800000, v39, s56
	v_cndmask_b32_e64 v35, 0xff800000, v38, s53
	v_cndmask_b32_e64 v37, 0xff800000, v65, s48
	v_cndmask_b32_e64 v38, 0xff800000, v66, s50
	v_cndmask_b32_e64 v39, 0xff800000, v67, s38
	v_cndmask_b32_e64 v40, 0xff800000, v68, s41
	v_cndmask_b32_e64 v46, 0xff800000, v61, s64
	v_cndmask_b32_e64 v58, 0xff800000, v77, s12
	v_cndmask_b32_e64 v59, 0xff800000, v78, s11
	v_cndmask_b32_e64 v60, 0xff800000, v79, s8
	v_cndmask_b32_e64 v61, 0xff800000, v80, s10
	v_cndmask_b32_e64 v33, 0xff800000, v62, s55
	v_cndmask_b32_e64 v36, 0xff800000, v64, s54
	v_cndmask_b32_e64 v54, 0xff800000, v69, s22
	v_cndmask_b32_e64 v62, 0xff800000, v81, s6
	v_cndmask_b32_e64 v63, 0xff800000, v82, s7
	v_cndmask_b32_e64 v64, 0xff800000, v83, s4
	v_cndmask_b32_e64 v65, 0xff800000, v84, s5
	ds_store_b128 v41, v[42:45]
	ds_store_b128 v169, v[50:53]
	ds_store_b128 v170, v[37:40]
	ds_store_b128 v171, v[58:61]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v154
	ds_load_b128 v[77:80], v154 offset:512
	ds_load_b128 v[81:84], v154 offset:1024
	ds_load_b128 v[85:88], v154 offset:1536
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s26, 1, v55.l
	v_cmp_ne_u32_e64 s13, 0, v94
	v_cmp_ne_u32_e64 s17, 0, v93
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v55, 0xff800000, v70, s26
	v_cndmask_b32_e64 v56, 0xff800000, v71, s13
	v_cndmask_b32_e64 v57, 0xff800000, v72, s17
	ds_store_b128 v41, v[46:49]
	ds_store_b128 v169, v[33:36]
	ds_store_b128 v170, v[54:57]
	ds_store_b128 v171, v[62:65]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[89:92], v154
	ds_load_b128 v[93:96], v154 offset:1024
	ds_load_b128 v[97:100], v154 offset:512
	ds_load_b128 v[101:104], v154 offset:1536
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v113, v64, v65
	v_max3_f32 v110, v55, v56, v57
	v_dual_max_f32 v70, v66, v66 :: v_dual_max_f32 v71, v77, v77
	v_max_f32_e32 v41, v81, v81
	v_max3_f32 v72, v82, v68, v83
	v_max3_f32 v111, v58, v59, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v41, v70, v41
	v_max_f32_e32 v70, v85, v85
	v_max3_f32 v41, v41, v67, v72
	s_delay_alu instid0(VALU_DEP_2)
	v_max_f32_e32 v70, v71, v70
	v_max3_f32 v71, v86, v79, v87
	s_waitcnt lgkmcnt(2)
	v_max3_f32 v106, v93, v90, v94
	v_max3_f32 v107, v91, v95, v92
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v108, v101, v98, v102
	v_max3_f32 v109, v99, v103, v100
	v_max3_f32 v105, v69, v84, v89
	v_max3_f32 v70, v70, v78, v71
	v_max3_f32 v72, v106, v107, v96
	v_max3_f32 v106, v80, v88, v97
	v_max3_f32 v71, v108, v109, v104
	v_max3_f32 v107, v33, v34, v35
	v_max3_f32 v108, v36, v37, v38
	v_max3_f32 v41, v41, v105, v72
	v_max3_f32 v105, v48, v49, v50
	v_max3_f32 v70, v70, v106, v71
	v_max3_f32 v106, v51, v52, v53
	v_max3_f32 v109, v39, v40, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v71, v41 :: v_dual_mov_b32 v72, v70
	v_mov_b32_dpp v71, v71 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v72, v72 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v71, v71, v71 :: v_dual_max_f32 v72, v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v41, v41, v71
	v_max_f32_e32 v71, v42, v43
	v_max_f32_e32 v70, v70, v72
	v_max3_f32 v72, v45, v46, v47
	v_max_f32_e32 v112, v61, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_max3_f32 v71, v71, v44, v72
	v_max3_f32 v72, v106, v107, v108
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v107, v70
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v108, v109, v110, v111
	v_max3_f32 v109, v112, v63, v113
	v_max3_f32 v71, v71, v105, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v107, v107 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v106, v41
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v71, v71, v108, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v105, v107, v107
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v106, v106 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp9:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v107, v137, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v105
	v_dual_max_f32 v72, v106, v106 :: v_dual_max_f32 v105, v76, v76
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v106, v71, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v41, v41, v72 :: v_dual_max_f32 v72, v75, v75
.Ltmp13:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v177, v73, v71, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v176, v105, v70
	v_max_f32_e32 v106, v136, v136
	v_max_f32_e32 v175, v72, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v71, v73, v177
	v_dual_sub_f32 v105, v76, v176 :: v_dual_max_f32 v136, v106, v41
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v137, v107, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v72, v75, v175
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v71, v71
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v51, v51, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_sub_f32 v67, v67, v136 :: v_dual_sub_f32 v78, v78, v137
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v72, v72
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v41, v66, v136 :: v_dual_sub_f32 v80, v80, v137
	v_dual_sub_f32 v66, v81, v136 :: v_dual_sub_f32 v79, v79, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v78, v78
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v70, 0, v71, s69
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v71, v82, v136 :: v_dual_sub_f32 v88, v88, v137
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s69, 0xff800000, v75
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v84, v136
	v_sub_f32_e32 v75, v89, v136
	v_sub_f32_e32 v81, v90, v136
	v_sub_f32_e32 v82, v94, v136
	v_sub_f32_e32 v84, v95, v136
	v_dual_sub_f32 v89, v92, v136 :: v_dual_sub_f32 v42, v42, v177
	v_dual_sub_f32 v90, v96, v136 :: v_dual_sub_f32 v95, v99, v137
	v_sub_f32_e32 v92, v101, v137
	v_sub_f32_e32 v94, v102, v137
	v_sub_f32_e32 v101, v38, v177
	v_sub_f32_e32 v102, v39, v177
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v67
	v_exp_f32_e32 v39, v71
	v_exp_f32_e32 v108, v51
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v78, s36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v99, v36, v177
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v41
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v178, 0, v72, s69
	v_cmp_neq_f32_e64 s69, 0xff800000, v76
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v68, v68, v136 :: v_dual_sub_f32 v77, v77, v137
	v_dual_sub_f32 v72, v83, v136 :: v_dual_sub_f32 v85, v85, v137
	v_dual_sub_f32 v69, v69, v136 :: v_dual_sub_f32 v86, v86, v137
	v_dual_sub_f32 v76, v93, v136 :: v_dual_sub_f32 v87, v87, v137
	v_sub_f32_e32 v33, v33, v177
	v_sub_f32_e32 v35, v35, v177
	v_sub_f32_e32 v83, v91, v136
	v_sub_f32_e32 v91, v97, v137
	v_sub_f32_e32 v96, v103, v137
	v_sub_f32_e32 v103, v40, v177
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v68
	v_exp_f32_e32 v41, v72
	v_exp_f32_e32 v68, v75
	v_exp_f32_e32 v110, v33
	v_exp_f32_e32 v112, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v36, s9
	v_cndmask_b32_e64 v35, 0, v38, s15
	v_cndmask_b32_e64 v36, 0, v39, s16
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v97, v100, v137
	v_sub_f32_e32 v100, v37, v177
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v66
	v_exp_f32_e32 v66, v69
	v_exp_f32_e32 v69, v76
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v177
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v73
	v_exp_f32_e32 v71, v81
	v_exp_f32_e32 v72, v82
	v_exp_f32_e32 v76, v89
	v_exp_f32_e32 v89, v94
	v_exp_f32_e32 v94, v42
	v_exp_f32_e32 v111, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v37, s14
	v_cndmask_b32_e64 v37, 0, v40, s18
	v_cndmask_b32_e64 v38, 0, v41, s19
	v_cndmask_b32_e64 v41, 0, v68, s23
	v_cndmask_b32_e64 v42, 0, v69, s24
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v105, v105
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v93, v98, v137
	v_sub_f32_e32 v98, v104, v137
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v73, v83
	v_exp_f32_e32 v75, v84
	v_exp_f32_e32 v81, v90
	v_exp_f32_e32 v79, v79
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v44, v44, v177 :: v_dual_add_f32 v33, v33, v34
	v_sub_f32_e32 v46, v46, v177
	v_sub_f32_e32 v48, v48, v177
.Ltmp14:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v34, v35, v36 :: v_dual_add_f32 v35, v37, v38
	v_add_f32_e32 v37, v41, v42
.Ltmp15:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v43, v177
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v66, s20
	v_cndmask_b32_e64 v40, 0, v67, s21
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v45, v177
	v_sub_f32_e32 v47, v47, v177
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v82, v85
	v_exp_f32_e32 v83, v86
	v_exp_f32_e32 v86, v91
	v_exp_f32_e32 v90, v95
	v_exp_f32_e32 v91, v96
	v_exp_f32_e32 v95, v43
	v_exp_f32_e32 v96, v44
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v71, s25
	v_cndmask_b32_e64 v44, 0, v72, s27
.Ltmp16:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v39, v40
.Ltmp17:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v179, 0, v105, s69
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v52, v177
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v84, v87
	v_exp_f32_e32 v85, v88
	v_exp_f32_e32 v87, v92
	v_exp_f32_e32 v88, v93
	v_exp_f32_e32 v92, v97
	v_exp_f32_e32 v93, v98
	v_exp_f32_e32 v97, v45
	v_exp_f32_e32 v98, v46
	v_exp_f32_e32 v104, v47
	v_exp_f32_e32 v105, v48
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v73, s28
	v_cndmask_b32_e64 v46, 0, v75, s29
	v_cndmask_b32_e64 v47, 0, v76, s30
	v_cndmask_b32_e64 v48, 0, v81, s31
	v_cndmask_b32_e64 v66, 0, v79, s39
.Ltmp18:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v33, v34
.Ltmp19:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v33, s70, v156, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v49, v49, v177 :: v_dual_add_f32 v38, v43, v44
	v_dual_sub_f32 v50, v50, v177 :: v_dual_add_f32 v39, v45, v46
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v34, s70, v172, 1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v80, s42
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v80, v35, v36
.Ltmp21:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v35, s70, v157, 1
	v_add_lshl_u32 v36, s70, v173, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v53, v53, v177 :: v_dual_add_f32 v40, v47, v48
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v107, v50
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v50, 0, v82, s35
.Ltmp22:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v82, v37, v38
.Ltmp23:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v34, s3
	v_cndmask_b32_e64 v41, 0x80000000, v35, s3
	v_cndmask_b32_e64 v45, 0x80000000, v36, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v109, v52
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v83, s37
.Ltmp24:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v83, v39, v40
.Ltmp25:
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[33:36], v33, s[72:75], 0 offen
	buffer_load_b128 v[37:40], v37, s[72:75], 0 offen
	buffer_load_b128 v[41:44], v41, s[72:75], 0 offen
	buffer_load_b128 v[45:48], v45, s[72:75], 0 offen
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v106, v49
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v84, s40
	v_cndmask_b32_e64 v69, 0, v85, s43
	v_cndmask_b32_e64 v71, 0, v86, s44
	v_cndmask_b32_e64 v72, 0, v87, s45
	v_cndmask_b32_e64 v73, 0, v88, s46
	v_cndmask_b32_e64 v75, 0, v89, s47
	v_cndmask_b32_e64 v76, 0, v90, s49
	v_cndmask_b32_e64 v78, 0, v92, s52
	v_cndmask_b32_e64 v49, 0, v77, s34
	v_cndmask_b32_e64 v77, 0, v91, s51
	v_cndmask_b32_e64 v81, 0, v93, s33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v54, v54, v177
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v56, v56, v177 :: v_dual_add_f32 v49, v49, v50
.Ltmp26:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v50, v51, v52 :: v_dual_add_f32 v51, v66, v67
	v_add_f32_e32 v52, v68, v69
	v_dual_add_f32 v66, v71, v72 :: v_dual_add_f32 v67, v73, v75
	v_add_f32_e32 v68, v76, v77
	v_dual_add_f32 v69, v78, v81 :: v_dual_mul_f32 v20, v20, v70
.Ltmp27:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v58, v58, v177 :: v_dual_add_f32 v49, v49, v50
	v_sub_f32_e32 v64, v64, v177
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v50, v51, v52 :: v_dual_add_f32 v51, v66, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v52, v68, v69 :: v_dual_mul_f32 v25, v25, v70
.Ltmp29:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v61, v61, v177
	v_dual_sub_f32 v62, v62, v177 :: v_dual_add_f32 v49, v49, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v50, v51, v52
.Ltmp31:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v60, v60, v177 :: v_dual_add_f32 v71, v82, v83
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v79, v80
.Ltmp33:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v57, v57, v177
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v49, v50
.Ltmp35:
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v18, v18, v70 :: v_dual_sub_f32 v55, v55, v177
	v_mul_f32_e32 v26, v26, v70
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v79, v71
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v50, v49
.Ltmp38:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v54
	v_exp_f32_e32 v75, v55
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v52.h, v74.l
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v51, v68
	v_mov_b32_dpp v50, v50 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v54, 0, v97, s66
	v_cndmask_b32_e64 v55, 0, v96, s65
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v76, v56
.Ltmp41:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v51, v51 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v180, v49, v50
.Ltmp43:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v95, s68
	v_cndmask_b32_e64 v50, 0, v94, s67
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v77, v58
.Ltmp44:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v182, v68, v51
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v51.h, v74.l
	v_mov_b16_e32 v51.l, v49.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v52.l, v50.h
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v183, v182
.Ltmp47:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v51, 1, v51
	v_cmp_o_f32_e64 s9, v49, v49
	v_and_b32_e32 v52, 1, v52
	v_mov_b16_e32 v56.l, v54.h
	v_mov_b16_e32 v56.h, v74.l
	v_add3_u32 v51, v49, v51, 0x7fff
	v_mov_b16_e32 v58.l, v55.h
	v_mov_b16_e32 v58.h, v74.l
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v183, v183 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v52, v50, v52, 0x7fff
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s9
	v_and_b32_e32 v51, 1, v56
	v_cmp_o_f32_e64 s9, v50, v50
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v56, 0, v98, s64
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v50, 1, v58
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v58, 0, v104, s63
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v68, v60
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v51, v54, v51, 0x7fff
	v_cmp_o_f32_e64 s14, v54, v54
	v_mov_b16_e32 v54.l, v56.h
	v_mov_b16_e32 v54.h, v74.l
	v_mov_b16_e32 v60.l, v58.h
	v_mov_b16_e32 v60.h, v74.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v49.l, 0x7fff, v52.h, s9
	v_add3_u32 v52, v55, v50, 0x7fff
	v_and_b32_e32 v54, 1, v54
	v_cndmask_b16 v50.h, 0x7fff, v51.h, s14
	v_and_b32_e32 v51, 1, v60
	v_cmp_o_f32_e64 s9, v55, v55
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v106, s62
	v_cndmask_b32_e64 v60, 0, v105, s61
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v78, v62
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v54, v56, v54, 0x7fff
	v_add3_u32 v51, v58, v51, 0x7fff
	v_cmp_o_f32_e64 s14, v58, v58
	v_mov_b16_e32 v58.l, v55.h
	v_mov_b16_e32 v58.h, v74.l
	v_mov_b16_e32 v62.l, v60.h
	v_mov_b16_e32 v62.h, v74.l
	v_cmp_o_f32_e64 s15, v56, v56
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v53
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v50.l, 0x7fff, v52.h, s9
	v_and_b32_e32 v52, 1, v58
	v_and_b32_e32 v56, 1, v62
	v_cndmask_b16 v51.l, 0x7fff, v54.h, s15
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v54, 0, v108, s60
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v55, v55
	v_add3_u32 v52, v55, v52, 0x7fff
	v_add3_u32 v55, v60, v56, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v56, 0, v107, s59
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v58.l, v54.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v64
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s9
	v_cmp_o_f32_e64 s9, v60, v60
	v_mov_b16_e32 v60.l, v56.h
	v_mov_b16_e32 v60.h, v74.l
	v_and_b32_e32 v58, 1, v58
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v62, 0, v53, s58
	v_cndmask_b32_e64 v64, 0, v109, s57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v14, v14, v70 :: v_dual_and_b32 v53, 1, v60
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v52.l, 0x7fff, v55.h, s9
	v_add3_u32 v55, v54, v58, 0x7fff
	v_mov_b16_e32 v58.l, v62.h
	v_mov_b16_e32 v60.l, v64.h
	v_mov_b16_e32 v58.h, v74.l
	v_cmp_o_f32_e64 s9, v54, v54
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v99
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s14
	v_add3_u32 v54, v56, v53, 0x7fff
	v_cmp_o_f32_e64 s14, v56, v56
	v_and_b32_e32 v56, 1, v60
	v_and_b32_e32 v58, 1, v58
	v_cndmask_b16 v53.h, 0x7fff, v55.h, s9
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v111, s56
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v53.l, 0x7fff, v54.h, s14
	v_add3_u32 v56, v64, v56, 0x7fff
	v_add3_u32 v54, v62, v58, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v58, 0, v110, s55
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v60.l, v55.h
	v_cmp_o_f32_e64 s14, v64, v64
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v101
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v62, v62
	v_mov_b16_e32 v62.l, v58.h
	v_mov_b16_e32 v62.h, v74.l
	v_and_b32_e32 v60, 1, v60
	v_cndmask_b16 v54.l, 0x7fff, v56.h, s14
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v56, 0, v66, s54
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v54.h, 0x7fff, v54.h, s9
	v_and_b32_e32 v62, 1, v62
	v_add3_u32 v60, v55, v60, 0x7fff
	v_cmp_o_f32_e64 s9, v55, v55
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v112, s53
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v66.l, v56.h
	v_mov_b16_e32 v66.h, v74.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v103
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v62, v58, v62, 0x7fff
	v_cndmask_b16 v55.h, 0x7fff, v60.h, s9
	v_mov_b16_e32 v60.l, v64.h
	v_mov_b16_e32 v60.h, v74.l
	v_and_b32_e32 v66, 1, v66
	v_cmp_o_f32_e64 s9, v58, v58
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v58, 0, v69, s50
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v65, v65, v177 :: v_dual_mul_f32 v32, v32, v70
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v102
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v17, v17, v70 :: v_dual_and_b32 v60, 1, v60
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v56, v66, 0x7fff
	v_cmp_o_f32_e64 s14, v56, v56
	v_mov_b16_e32 v69.l, v58.h
	v_mov_b16_e32 v69.h, v74.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v100
	v_exp_f32_e32 v65, v65
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v55.l, 0x7fff, v62.h, s9
	v_add3_u32 v60, v64, v60, 0x7fff
	v_cndmask_b16 v56.h, 0x7fff, v66.h, s14
	v_and_b32_e32 v66, 1, v69
	v_cmp_o_f32_e64 s9, v64, v64
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v72, s41
	v_cndmask_b32_e64 v69, 0, v71, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v71.h, v74.l
	v_add3_u32 v66, v58, v66, 0x7fff
	v_cmp_o_f32_e64 s14, v58, v58
	v_mov_b16_e32 v71.l, v64.h
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v181, v180 :: v_dual_mul_f32 v22, v22, v70
.Ltmp51:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v70
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s48
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v56.l, 0x7fff, v60.h, s9
	v_and_b32_e32 v60, 1, v71
	v_cndmask_b16 v58.h, 0x7fff, v66.h, s14
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v75, s26
	v_cndmask_b32_e64 v65, 0, v65, s5
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v59, v59, v177 :: v_dual_mul_f32 v28, v28, v70
	v_dual_sub_f32 v63, v63, v177 :: v_dual_mul_f32 v30, v30, v70
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v70
	v_mul_f32_e32 v11, v11, v70
	v_mul_f32_e32 v13, v13, v70
	v_mul_f32_e32 v16, v16, v70
	v_mul_f32_e32 v1, v1, v70
	v_mul_f32_e32 v2, v2, v70
	v_mul_f32_e32 v3, v3, v70
	v_mul_f32_e32 v4, v4, v70
	v_mul_f32_e32 v5, v5, v70
	v_mul_f32_e32 v7, v7, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v60, v64, v60, 0x7fff
	v_cmp_o_f32_e64 s9, v64, v64
	v_mov_b16_e32 v64.l, v66.h
	v_mov_b16_e32 v64.h, v74.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v71.l, v65.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v72.h, v74.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v70
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v181, v181 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v15, v15, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v70.l, v67.h
	v_mov_b16_e32 v70.h, v74.l
	v_cmp_o_f32_e64 s15, v67, v67
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v57, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v69, v69
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v59, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v62, 1, v70
	v_mov_b16_e32 v70.l, v69.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v61, v61
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v60.h, 0x7fff, v60.h, s9
	v_cmp_o_f32_e64 s9, v66, v66
	v_add3_u32 v62, v67, v62, 0x7fff
	v_and_b32_e32 v67, 1, v70
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v57, 0, v57, s17
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v63, v63
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v59, 0, v59, s11
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v58.l, 0x7fff, v62.h, s15
	v_add3_u32 v62, v69, v67, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v73, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.h, v74.l
	v_mov_b16_e32 v70.l, v57.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v61, 0, v61, s10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v60.l, 0x7fff, v62.h, s14
	v_mov_b16_e32 v69.l, v67.h
	v_and_b32_e32 v62, 1, v64
	v_and_b32_e32 v70, 1, v70
	v_cmp_o_f32_e64 s10, v61, v61
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v64, 1, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v76, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v62, v66, v62, 0x7fff
	v_mov_b16_e32 v66.h, v74.l
	v_cmp_o_f32_e64 s13, v67, v67
	v_add3_u32 v64, v67, v64, 0x7fff
	v_mov_b16_e32 v66.l, v69.h
	v_cndmask_b16 v62.h, 0x7fff, v62.h, s9
	v_add3_u32 v67, v57, v70, 0x7fff
	v_cmp_o_f32_e64 s9, v57, v57
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v57, 0, v77, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v66, 1, v66
	v_cmp_o_f32_e64 s12, v69, v69
	v_cndmask_b16 v62.l, 0x7fff, v64.h, s13
	v_cndmask_b16 v64.h, 0x7fff, v67.h, s9
	v_mov_b16_e32 v67.l, v57.h
	v_add3_u32 v66, v69, v66, 0x7fff
	v_mov_b16_e32 v67.h, v74.l
	v_mov_b16_e32 v66.l, v59.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v68, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v68.l, v61.h
	v_cndmask_b16 v64.l, 0x7fff, v66.h, s12
	v_mov_b16_e32 v66.h, v74.l
	v_mov_b16_e32 v68.h, v74.l
	v_and_b32_e32 v67, 1, v67
	v_cmp_o_f32_e64 s8, v59, v59
	v_cmp_o_f32_e64 s9, v57, v57
	v_and_b32_e32 v66, 1, v66
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v70, v57, v67, 0x7fff
	v_mov_b16_e32 v67.l, v69.h
	v_mov_b16_e32 v67.h, v74.l
	v_add3_u32 v66, v59, v66, 0x7fff
	v_add3_u32 v59, v61, v68, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v61, 0, v78, s6
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v57, 1, v67
	v_cndmask_b16 v67.h, 0x7fff, v66.h, s8
	v_cndmask_b16 v68.h, 0x7fff, v59.h, s10
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v59, 0, v63, s7
	v_cndmask_b32_e64 v66, 0, v79, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v67.l, 0x7fff, v70.h, s9
	v_mov_b16_e32 v70.h, v74.l
	v_add3_u32 v57, v69, v57, 0x7fff
	v_mov_b16_e32 v70.l, v59.h
	v_mov_b16_e32 v72.l, v66.h
	v_cmp_o_f32_e64 s4, v69, v69
	v_cmp_o_f32_e64 s5, v59, v59
	v_cmp_o_f32_e64 s8, v66, v66
	v_and_b32_e32 v70, 1, v70
	v_and_b32_e32 v69, 1, v72
	v_mov_b16_e32 v63.h, v74.l
	v_mov_b16_e32 v63.l, v61.h
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v70, v59, v70, 0x7fff
	v_add3_u32 v59, v66, v69, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v66, 0, v140
	s_waitcnt vmcnt(3)
	ds_store_b128 v66, v[33:36]
	s_waitcnt vmcnt(2)
	ds_store_b128 v66, v[37:40] offset:16
	s_waitcnt vmcnt(1)
	ds_store_b128 v66, v[41:44] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v66, v[45:48] offset:4112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v35, v143 offset:512
	ds_load_u16_d16 v66, v143 offset:288
	ds_load_u16_d16 v75, v143 offset:608
	ds_load_u16_d16 v74, v143 offset:352
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v63, 1, v63
	v_cmp_o_f32_e64 s6, v61, v61
	v_cmp_o_f32_e64 s7, v65, v65
	v_cndmask_b16 v68.l, 0x7fff, v57.h, s4
	v_cndmask_b16 v184.l, 0x7fff, v59.h, s8
	v_add3_u32 v63, v61, v63, 0x7fff
	v_add3_u32 v61, v65, v71, 0x7fff
	v_permlanex16_b32 v57, v49, s100, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v59, v50, s100, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v65, v53, s100, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v185.h, 0x7fff, v70.h, s5
	v_cndmask_b16 v185.l, 0x7fff, v63.h, s6
	v_perm_b32 v81, v57, v49, v133
	v_perm_b32 v82, v57, v49, v134
	v_perm_b32 v83, v59, v50, v133
	v_perm_b32 v84, v59, v50, v134
	v_perm_b32 v49, v65, v53, v133
	v_perm_b32 v50, v65, v53, v134
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v33, v143
	ds_load_u16_d16 v65, v143 offset:32
	ds_load_u16_d16 v34, v143 offset:256
	ds_load_u16_d16 v186, v143 offset:64
	ds_load_u16_d16 v187, v143 offset:320
	ds_load_u16_d16 v188, v143 offset:576
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v74, v143 offset:480
	ds_load_u16_d16 v73, v143 offset:96
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v184.h, 0x7fff, v61.h, s7
	v_permlanex16_b32 v61, v51, s100, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v63, v52, s100, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v69, v54, s100, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v70, v55, s100, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v71, v56, s100, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v76, v60, s100, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v77, v62, s100, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v78, v64, s100, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v79, v67, s100, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v68, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v85, v61, v51, v133
	v_perm_b32 v86, v61, v51, v134
	v_perm_b32 v87, v63, v52, v133
	v_perm_b32 v88, v63, v52, v134
	v_perm_b32 v51, v69, v54, v133
	v_perm_b32 v52, v69, v54, v134
	v_perm_b32 v53, v70, v55, v133
	v_perm_b32 v54, v70, v55, v134
	v_perm_b32 v55, v71, v56, v133
	v_perm_b32 v56, v71, v56, v134
	v_perm_b32 v59, v76, v60, v133
	v_perm_b32 v60, v76, v60, v134
	v_perm_b32 v61, v77, v62, v133
	v_perm_b32 v62, v77, v62, v134
	v_perm_b32 v63, v78, v64, v133
	v_perm_b32 v64, v78, v64, v134
	v_perm_b32 v41, v79, v67, v133
	v_perm_b32 v42, v79, v67, v134
	v_perm_b32 v43, v36, v68, v133
	v_perm_b32 v44, v36, v68, v134
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v33, v143 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v65, v143 offset:160
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v186, v143 offset:192
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v73, v143 offset:224
	ds_load_u16_d16_hi v34, v143 offset:384
	ds_load_u16_d16_hi v35, v143 offset:640
	ds_load_u16_d16 v36, v143 offset:768
	ds_load_u16_d16_hi v66, v143 offset:416
	ds_load_u16_d16 v189, v143 offset:832
	ds_load_u16_d16_hi v188, v143 offset:704
	ds_load_u16_d16 v67, v143 offset:544
	ds_load_u16_d16_hi v187, v143 offset:448
	ds_load_u16_d16 v190, v143 offset:1088
	ds_load_u16_d16 v37, v143 offset:1024
	ds_load_u16_d16 v68, v143 offset:800
	ds_load_u16_d16 v76, v143 offset:864
	ds_load_u16_d16 v191, v143 offset:1344
	ds_load_u16_d16 v38, v143 offset:1280
	ds_load_u16_d16 v69, v143 offset:1056
	ds_load_u16_d16 v77, v143 offset:1120
	ds_load_u16_d16 v192, v143 offset:1600
	ds_load_u16_d16 v39, v143 offset:1536
	ds_load_u16_d16 v70, v143 offset:1312
	ds_load_u16_d16 v78, v143 offset:1376
	ds_load_u16_d16 v40, v143 offset:1792
	ds_load_u16_d16 v71, v143 offset:1568
	ds_load_u16_d16 v193, v143 offset:1856
	ds_load_u16_d16 v79, v143 offset:1632
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v72, v58, s100, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v194, v143 offset:4160
	ds_load_u16_d16 v202, v143 offset:4096
	ds_load_u16_d16 v120, v143 offset:3872
	ds_load_u16_d16 v112, v143 offset:3936
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s4, s101, 64
	s_cmpk_lt_u32 s101, 0x7c0
	s_mov_b32 s101, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v57, v72, v58, v133
	v_perm_b32 v58, v72, v58, v134
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v189, v143 offset:960
	ds_load_u16_d16_hi v36, v143 offset:896
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v67, v143 offset:672
	ds_load_u16_d16_hi v75, v143 offset:736
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v190, v143 offset:1216
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v37, v143 offset:1152
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v68, v143 offset:928
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v76, v143 offset:992
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v191, v143 offset:1472
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v38, v143 offset:1408
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v69, v143 offset:1184
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v77, v143 offset:1248
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v192, v143 offset:1728
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v39, v143 offset:1664
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v70, v143 offset:1440
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v78, v143 offset:1504
	ds_load_u16_d16 v89, v143 offset:2112
	ds_load_u16_d16 v97, v143 offset:2048
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v40, v143 offset:1920
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v71, v143 offset:1696
	ds_load_u16_d16 v72, v143 offset:1824
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v193, v143 offset:1984
	ds_load_u16_d16 v80, v143 offset:1888
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v79, v143 offset:1760
	ds_load_u16_d16 v90, v143 offset:2368
	ds_load_u16_d16 v98, v143 offset:2304
	ds_load_u16_d16 v113, v143 offset:2080
	ds_load_u16_d16 v105, v143 offset:2144
	ds_load_u16_d16 v91, v143 offset:2624
	ds_load_u16_d16 v99, v143 offset:2560
	ds_load_u16_d16 v114, v143 offset:2336
	ds_load_u16_d16 v106, v143 offset:2400
	ds_load_u16_d16 v92, v143 offset:2880
	ds_load_u16_d16 v100, v143 offset:2816
	ds_load_u16_d16 v115, v143 offset:2592
	ds_load_u16_d16 v107, v143 offset:2656
	ds_load_u16_d16 v93, v143 offset:3136
	ds_load_u16_d16 v101, v143 offset:3072
	ds_load_u16_d16 v116, v143 offset:2848
	ds_load_u16_d16 v108, v143 offset:2912
	ds_load_u16_d16 v102, v143 offset:3328
	ds_load_u16_d16 v117, v143 offset:3104
	ds_load_u16_d16 v94, v143 offset:3392
	ds_load_u16_d16 v109, v143 offset:3168
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v89, v143 offset:2240
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v97, v143 offset:2176
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v72, v143 offset:1952
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v80, v143 offset:2016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v90, v143 offset:2496
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v98, v143 offset:2432
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v113, v143 offset:2208
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v105, v143 offset:2272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v91, v143 offset:2752
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v99, v143 offset:2688
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v114, v143 offset:2464
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v106, v143 offset:2528
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v92, v143 offset:3008
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v100, v143 offset:2944
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v115, v143 offset:2720
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v107, v143 offset:2784
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v93, v143 offset:3264
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v101, v143 offset:3200
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v116, v143 offset:2976
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v108, v143 offset:3040
	ds_load_u16_d16 v95, v143 offset:3648
	ds_load_u16_d16 v103, v143 offset:3584
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v102, v143 offset:3456
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v117, v143 offset:3232
	ds_load_u16_d16 v118, v143 offset:3360
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v94, v143 offset:3520
	ds_load_u16_d16 v110, v143 offset:3424
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v109, v143 offset:3296
	ds_load_u16_d16 v96, v143 offset:3904
	ds_load_u16_d16 v104, v143 offset:3840
	ds_load_u16_d16 v119, v143 offset:3616
	ds_load_u16_d16 v111, v143 offset:3680
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[81:88], v[25:32]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_permlanex16_b32 v34, v185, s100, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(29)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[65:72], v[81:88], v[17:24]
.Ltmp54:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v182, v183
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v35, v184, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v45, v34, v185, v133
	v_perm_b32 v46, v34, v185, v134
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v180, v181
.Ltmp57:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[186:193], v[81:88], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v195, v143 offset:4416
	ds_load_u16_d16 v203, v143 offset:4352
	ds_load_u16_d16 v65, v143 offset:4128
	ds_load_u16_d16 v186, v143 offset:4192
	ds_load_u16_d16 v196, v143 offset:4672
	ds_load_u16_d16 v204, v143 offset:4608
	ds_load_u16_d16 v66, v143 offset:4384
	ds_load_u16_d16 v187, v143 offset:4448
	ds_load_u16_d16 v205, v143 offset:4864
	ds_load_u16_d16 v67, v143 offset:4640
	ds_load_u16_d16 v197, v143 offset:4928
	ds_load_u16_d16 v188, v143 offset:4704
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v95, v143 offset:3776
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v103, v143 offset:3712
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v118, v143 offset:3488
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v110, v143 offset:3552
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v96, v143 offset:4032
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v104, v143 offset:3968
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v119, v143 offset:3744
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v111, v143 offset:3808
	ds_load_u16_d16_hi v194, v143 offset:4288
	ds_load_u16_d16_hi v202, v143 offset:4224
	ds_load_u16_d16_hi v120, v143 offset:4000
	ds_load_u16_d16_hi v112, v143 offset:4064
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v195, v143 offset:4544
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v203, v143 offset:4480
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v65, v143 offset:4256
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v186, v143 offset:4320
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v196, v143 offset:4800
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v204, v143 offset:4736
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v66, v143 offset:4512
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v187, v143 offset:4576
	ds_load_u16_d16 v198, v143 offset:5184
	ds_load_u16_d16 v206, v143 offset:5120
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v205, v143 offset:4992
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v67, v143 offset:4768
	ds_load_u16_d16 v68, v143 offset:4896
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v197, v143 offset:5056
	ds_load_u16_d16 v189, v143 offset:4960
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v188, v143 offset:4832
	ds_load_u16_d16 v199, v143 offset:5440
	ds_load_u16_d16 v207, v143 offset:5376
	ds_load_u16_d16 v69, v143 offset:5152
	ds_load_u16_d16 v190, v143 offset:5216
	ds_load_u16_d16 v200, v143 offset:5696
	ds_load_u16_d16 v208, v143 offset:5632
	ds_load_u16_d16 v70, v143 offset:5408
	ds_load_u16_d16 v191, v143 offset:5472
	ds_load_u16_d16 v201, v143 offset:5952
	ds_load_u16_d16 v209, v143 offset:5888
	ds_load_u16_d16 v71, v143 offset:5664
	ds_load_u16_d16 v192, v143 offset:5728
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v34, v146, v179
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v47, v35, v184, v133
	v_perm_b32 v48, v35, v184, v134
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v33, v145, v178
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(35)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[89:96], v[49:56], v[9:16]
	v_mov_b32_e32 v146, v34
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[81:88], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v73, v143 offset:6208
	ds_load_u16_d16 v81, v143 offset:6144
	ds_load_u16_d16 v72, v143 offset:5920
	ds_load_u16_d16 v193, v143 offset:5984
	ds_load_u16_d16 v82, v143 offset:6400
	ds_load_u16_d16 v210, v143 offset:6176
	ds_load_u16_d16 v74, v143 offset:6464
	ds_load_u16_d16 v218, v143 offset:6240
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v198, v143 offset:5312
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v206, v143 offset:5248
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v68, v143 offset:5024
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v189, v143 offset:5088
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v199, v143 offset:5568
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v207, v143 offset:5504
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v69, v143 offset:5280
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v190, v143 offset:5344
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v200, v143 offset:5824
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v208, v143 offset:5760
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v70, v143 offset:5536
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v191, v143 offset:5600
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v201, v143 offset:6080
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v209, v143 offset:6016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v71, v143 offset:5792
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v192, v143 offset:5856
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v73, v143 offset:6336
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v81, v143 offset:6272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v72, v143 offset:6048
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v193, v143 offset:6112
	ds_load_u16_d16 v75, v143 offset:6720
	ds_load_u16_d16 v83, v143 offset:6656
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v82, v143 offset:6528
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v210, v143 offset:6304
	ds_load_u16_d16 v211, v143 offset:6432
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v74, v143 offset:6592
	ds_load_u16_d16 v219, v143 offset:6496
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v218, v143 offset:6368
	ds_load_u16_d16 v76, v143 offset:6976
	ds_load_u16_d16 v84, v143 offset:6912
	ds_load_u16_d16 v212, v143 offset:6688
	ds_load_u16_d16 v220, v143 offset:6752
	ds_load_u16_d16 v77, v143 offset:7232
	ds_load_u16_d16 v85, v143 offset:7168
	ds_load_u16_d16 v213, v143 offset:6944
	ds_load_u16_d16 v221, v143 offset:7008
	ds_load_u16_d16 v78, v143 offset:7488
	ds_load_u16_d16 v86, v143 offset:7424
	ds_load_u16_d16 v214, v143 offset:7200
	ds_load_u16_d16 v222, v143 offset:7264
	ds_load_u16_d16 v79, v143 offset:7744
	ds_load_u16_d16 v87, v143 offset:7680
	ds_load_u16_d16 v215, v143 offset:7456
	ds_load_u16_d16 v223, v143 offset:7520
	ds_load_u16_d16 v80, v143 offset:8000
	ds_load_u16_d16 v88, v143 offset:7936
	ds_load_u16_d16 v216, v143 offset:7712
	ds_load_u16_d16 v224, v143 offset:7776
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v75, v143 offset:6848
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v83, v143 offset:6784
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v211, v143 offset:6560
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v219, v143 offset:6624
	ds_load_u16_d16 v217, v143 offset:7968
	ds_load_u16_d16 v225, v143 offset:8032
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v76, v143 offset:7104
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v84, v143 offset:7040
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v212, v143 offset:6816
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v220, v143 offset:6880
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v77, v143 offset:7360
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v85, v143 offset:7296
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v213, v143 offset:7072
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v221, v143 offset:7136
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v78, v143 offset:7616
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v86, v143 offset:7552
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v214, v143 offset:7328
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v222, v143 offset:7392
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v79, v143 offset:7872
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v87, v143 offset:7808
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v215, v143 offset:7584
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v223, v143 offset:7648
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v80, v143 offset:8128
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v88, v143 offset:8064
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v216, v143 offset:7840
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v224, v143 offset:7904
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v217, v143 offset:8096
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v225, v143 offset:8160
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[97:104], v[49:56], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[113:120], v[49:56], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[105:112], v[49:56], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[194:201], v[57:64], v[9:16]
	v_mov_b32_e32 v145, v33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[202:209], v[57:64], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[65:72], v[57:64], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[186:193], v[57:64], v[1:8]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[41:48], v[9:16]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[41:48], v[25:32]
	v_mov_b32_e32 v73, v177
	v_mov_b32_e32 v75, v175
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[210:217], v[41:48], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[218:225], v[41:48], v[1:8]
	v_mov_b32_e32 v76, v176
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_6
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s70, s101, s86
	v_or_b32_e32 v39, 2, v155
	v_mad_u64_u32 v[33:34], null, s70, s84, v[121:122]
	v_or_b32_e32 v40, 4, v155
	v_or_b32_e32 v41, 6, v155
	v_or_b32_e32 v42, 8, v155
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v37, 0, v142
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v38, s101, v155, 1
	v_or_b32_e32 v43, 10, v155
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	v_or_b32_e32 v44, 12, v155
	v_or_b32_e32 v45, 14, v155
	v_or_b32_e32 v46, 16, v155
	v_or_b32_e32 v47, 18, v155
	buffer_load_b128 v[33:36], v33, s[92:95], 0 offen
	v_or_b32_e32 v48, 20, v155
	v_or_b32_e32 v49, 22, v155
	v_or_b32_e32 v50, 24, v155
	v_or_b32_e32 v51, 26, v155
	v_or_b32_e32 v52, 28, v155
	v_or_b32_e32 v53, 30, v155
	v_or_b32_e32 v54, 32, v155
	v_or_b32_e32 v55, 34, v155
	v_or_b32_e32 v56, 36, v155
	v_or_b32_e32 v57, 38, v155
	v_or_b32_e32 v58, 40, v155
	v_or_b32_e32 v59, 42, v155
	v_or_b32_e32 v60, 44, v155
	v_or_b32_e32 v61, 46, v155
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v39, s101, v39, 1
	v_add_lshl_u32 v40, s101, v40, 1
	v_add_lshl_u32 v41, s101, v41, 1
	v_add_lshl_u32 v42, s101, v42, 1
	v_add_lshl_u32 v62, s101, v161, 1
	v_add_lshl_u32 v63, s101, v162, 1
	v_add_lshl_u32 v64, s101, v163, 1
	v_add_lshl_u32 v65, s101, v164, 1
	v_add_lshl_u32 v66, s101, v165, 1
	v_add_lshl_u32 v67, s101, v166, 1
	v_add_lshl_u32 v68, s101, v167, 1
	v_add_lshl_u32 v69, s101, v168, 1
	v_add_lshl_u32 v43, s101, v43, 1
	v_add_lshl_u32 v44, s101, v44, 1
	v_add_lshl_u32 v45, s101, v45, 1
	v_add_lshl_u32 v46, s101, v46, 1
	v_add_lshl_u32 v47, s101, v47, 1
	v_add_lshl_u32 v48, s101, v48, 1
	v_add_lshl_u32 v49, s101, v49, 1
	v_add_lshl_u32 v50, s101, v50, 1
	v_add_lshl_u32 v51, s101, v51, 1
	v_add_lshl_u32 v52, s101, v52, 1
	v_add_lshl_u32 v53, s101, v53, 1
	v_add_lshl_u32 v54, s101, v54, 1
	v_add_lshl_u32 v55, s101, v55, 1
	v_add_lshl_u32 v56, s101, v56, 1
	v_add_lshl_u32 v57, s101, v57, 1
	v_add_lshl_u32 v58, s101, v58, 1
	v_add_lshl_u32 v59, s101, v59, 1
	v_add_lshl_u32 v60, s101, v60, 1
	v_add_lshl_u32 v61, s101, v61, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s5, s87, s101
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[33:34]
	ds_store_b64 v148, v[35:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v108, v38, s[96:99], 0 offen
	buffer_load_u16 v107, v39, s[96:99], 0 offen
	buffer_load_u16 v106, v40, s[96:99], 0 offen
	buffer_load_u16 v105, v41, s[96:99], 0 offen
	buffer_load_u16 v104, v42, s[96:99], 0 offen
	buffer_load_u16 v103, v43, s[96:99], 0 offen
	buffer_load_u16 v102, v44, s[96:99], 0 offen
	buffer_load_u16 v101, v45, s[96:99], 0 offen
	buffer_load_u16 v100, v46, s[96:99], 0 offen
	buffer_load_u16 v99, v47, s[96:99], 0 offen
	buffer_load_u16 v98, v48, s[96:99], 0 offen
	buffer_load_u16 v97, v49, s[96:99], 0 offen
	buffer_load_u16 v96, v50, s[96:99], 0 offen
	buffer_load_u16 v95, v51, s[96:99], 0 offen
	buffer_load_u16 v94, v52, s[96:99], 0 offen
	buffer_load_u16 v93, v53, s[96:99], 0 offen
	buffer_load_u16 v92, v54, s[96:99], 0 offen
	buffer_load_u16 v91, v55, s[96:99], 0 offen
	buffer_load_u16 v90, v56, s[96:99], 0 offen
	buffer_load_u16 v89, v57, s[96:99], 0 offen
	buffer_load_u16 v88, v58, s[96:99], 0 offen
	buffer_load_u16 v87, v59, s[96:99], 0 offen
	buffer_load_u16 v86, v60, s[96:99], 0 offen
	buffer_load_u16 v85, v61, s[96:99], 0 offen
	buffer_load_u16 v84, v62, s[96:99], 0 offen
	buffer_load_u16 v83, v63, s[96:99], 0 offen
	buffer_load_u16 v82, v64, s[96:99], 0 offen
	buffer_load_u16 v81, v65, s[96:99], 0 offen
	buffer_load_u16 v80, v66, s[96:99], 0 offen
	buffer_load_u16 v79, v67, s[96:99], 0 offen
	buffer_load_u16 v78, v68, s[96:99], 0 offen
	buffer_load_u16 v77, v69, s[96:99], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v37, 0, v144
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v65, s76 :: v_dual_mov_b32 v70, s81
	v_mov_b32_e32 v68, s79
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v37 offset1:1
	ds_load_2addr_stride64_b64 v[109:112], v37 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[113:116], v150 offset1:1
	ds_load_2addr_stride64_b64 v[117:120], v150 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[175:178], v151 offset1:1
	ds_load_2addr_stride64_b64 v[179:182], v151 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[183:186], v152 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v66, s77 :: v_dual_mov_b32 v67, s78
	v_dual_mov_b32 v72, s83 :: v_dual_mov_b32 v69, s80
	v_mov_b32_e32 v71, s82
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[187:190], v152 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[33:34], v[124:125], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[35:36], v[124:125], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[109:110], v[124:125], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[111:112], v[124:125], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[113:114], v[128:129], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[115:116], v[128:129], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[117:118], v[128:129], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[119:120], v[128:129], v[33:40] neg_lo:[1,1,0]
	v_mov_b32_e32 v69, 0
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[175:176], v[126:127], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[177:178], v[126:127], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[179:180], v[126:127], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[181:182], v[126:127], v[33:40] neg_lo:[1,1,0]
	v_mov_b32_e32 v70, 0
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[183:184], v[130:131], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[185:186], v[130:131], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[187:188], v[130:131], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[189:190], v[130:131], v[33:40] neg_lo:[1,1,0]
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s6, s1
	s_cbranch_execz .LBB0_4
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	v_add_nc_u32_e32 v65, s5, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v66, 31, v65
	v_add_co_u32 v65, s4, s88, v65
	v_add_co_ci_u32_e64 v66, null, s89, v66, s4
	global_load_b128 v[69:72], v[65:66], off
.LBB0_4:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s6
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s6, s1
	s_cbranch_execz .LBB0_1
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v65, s5, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v66, 31, v65
	v_add_co_u32 v65, s4, s88, v65
	v_add_co_ci_u32_e64 v66, null, s89, v66, s4
	global_load_b128 v[65:68], v[65:66], off
	s_branch .LBB0_1
.LBB0_6:
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v35, 0x80, v139
	v_add_nc_u32_e32 v36, 0, v141
	v_lshl_add_u32 v37, v138, 1, 0
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	s_mov_b32 s11, 0x31027000
	ds_store_b64 v37, v[33:34]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v36, v35, v0
	s_barrier
	s_mov_b32 s10, 0x7ffffffe
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v25
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v37, null, v0, v0, v27
	v_div_scale_f32 v39, null, v0, v0, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v45, v33
	v_div_scale_f32 v41, null, v0, v0, v29
	v_rcp_f32_e32 v46, v35
	v_rcp_f32_e32 v47, v37
	v_rcp_f32_e32 v48, v39
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v49, v41
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s1, v26, v0, v26
	v_div_scale_f32 v38, s3, v27, v0, v27
	v_div_scale_f32 v40, s4, v28, v0, v28
	v_fma_f32 v58, -v41, v49, 1.0
	v_dual_fmac_f32 v46, v55, v46 :: v_dual_fmac_f32 v47, v56, v47
	v_fmac_f32_e32 v48, v57, v48
	v_mul_f32_e32 v54, v34, v45
	v_fma_f32 v59, -v43, v50, 1.0
	v_fmac_f32_e32 v49, v58, v49
	v_dual_mul_f32 v55, v36, v46 :: v_dual_mul_f32 v56, v38, v47
	v_mul_f32_e32 v57, v40, v48
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s5, v29, v0, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v37, v56, v38
	v_fma_f32 v61, -v39, v57, v40
	v_fmac_f32_e32 v50, v59, v50
	v_fma_f32 v59, -v35, v55, v36
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v62, v42, v49 :: v_dual_fmac_f32 v55, v59, v46
	v_fmac_f32_e32 v56, v60, v47
	v_fma_f32 v33, -v33, v54, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v53, v44
	v_fmac_f32_e32 v57, v61, v48
	v_fma_f32 v34, -v35, v55, v36
	v_fma_f32 v35, -v37, v56, v38
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v52, null, v0, v0, v32
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v51, s6, v30, v0, v30
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v25, v33, v0, v25
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_rcp_f32_e32 v37, v52
	v_div_fixup_f32 v26, v34, v0, v26
	v_mul_f32_e32 v34, v51, v50
	v_fma_f32 v58, -v41, v62, v42
	v_fmac_f32_e32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v17
	v_div_fixup_f32 v27, v35, v0, v27
	v_div_fixup_f32 v28, v33, v0, v28
	v_fma_f32 v33, -v43, v34, v51
	v_div_scale_f32 v35, s3, v31, v0, v31
	v_fma_f32 v38, -v52, v37, 1.0
	v_rcp_f32_e32 v40, v36
	v_fmac_f32_e32 v62, v58, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v34, v33, v50 :: v_dual_mul_f32 v33, v35, v53
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s4, v32, v0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v36, v40, 1.0
	v_mul_f32_e32 v43, v38, v37
	v_div_scale_f32 v46, null, v0, v0, v18
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v40, v45, v40
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	v_div_scale_f32 v45, s5, v17, v0, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v30, v34, v0, v30
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v35, v45, v40
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v29, v39, v0, v29
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	v_fma_f32 v38, -v36, v35, v45
	v_div_scale_f32 v42, null, v0, v0, v19
	v_fmac_f32_e32 v41, v39, v41
	v_div_scale_f32 v44, s3, v18, v0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v38, v40
	v_rcp_f32_e32 v39, v42
	v_div_scale_f32 v47, null, v0, v0, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v38, v44, v41
	v_div_fixup_f32 v31, v33, v0, v31
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v45, null, v0, v0, v21
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v36, s4, v19, v0, v19
	v_div_fmas_f32 v34, v34, v37, v43
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v40, v35
	v_rcp_f32_e32 v35, v45
	v_fma_f32 v43, -v42, v39, 1.0
	v_div_fixup_f32 v32, v34, v0, v32
	v_fma_f32 v34, -v46, v38, v44
	v_div_fixup_f32 v17, v33, v0, v17
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v39, v43, v39
	v_div_scale_f32 v40, s5, v20, v0, v20
	v_fma_f32 v43, -v47, v37, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v45, v35, 1.0
	v_fmac_f32_e32 v38, v34, v41
	v_mul_f32_e32 v34, v36, v39
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v49, v35
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v22
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v48, v43
	v_fmac_f32_e32 v34, v44, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v43, v48, 1.0
	v_fmac_f32_e32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_div_scale_f32 v41, s3, v21, v0, v21
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v18, v33, v0, v18
	v_fma_f32 v33, -v42, v34, v36
	v_mul_f32_e32 v36, v41, v35
	v_mul_f32_e32 v46, v40, v37
	v_div_scale_f32 v42, null, v0, v0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v39, v34
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v38, -v47, v46, v40
	v_fma_f32 v39, -v45, v36, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v19, v33, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v38, v37
	v_div_scale_f32 v38, s6, v22, v0, v22
	v_fmac_f32_e32 v36, v39, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v47, v46, v40
	v_div_scale_f32 v47, null, v0, v0, v24
	v_rcp_f32_e32 v40, v42
	v_fma_f32 v33, -v45, v36, v41
	v_div_fmas_f32 v34, v34, v37, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v47
	v_mul_f32_e32 v44, v38, v48
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v45, null, v0, v0, v10
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v39, -v43, v44, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_fixup_f32 v20, v34, v0, v20
	v_div_scale_f32 v34, s4, v23, v0, v23
	v_fmac_f32_e32 v44, v39, v48
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v39, -v47, v37, 1.0
	v_div_fixup_f32 v21, v33, v0, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v43, v44, v38
	v_div_scale_f32 v38, null, v0, v0, v9
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s3, v24, v0, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v41, v38
	v_fmac_f32_e32 v40, v46, v40
	v_div_fmas_f32 v35, v35, v48, v44
	v_div_scale_f32 v48, null, v0, v0, v12
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v36, v34, v40
	v_div_fixup_f32 v22, v35, v0, v22
	v_rcp_f32_e32 v35, v45
	v_rcp_f32_e32 v50, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v42, v36, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	v_fma_f32 v46, -v45, v35, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	v_fmac_f32_e32 v41, v43, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v46, v35
	v_div_fmas_f32 v34, v34, v40, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v42
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, s4, v10, v0, v10
	v_div_fixup_f32 v23, v34, v0, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v49, v40, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v42, v43, 1.0
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s6, v11, v0, v11
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s5, v9, v0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v47, v44, v39
	v_mul_f32_e32 v39, v33, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v37, v44
	v_fma_f32 v47, -v38, v39, v33
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v37, -v45, v49, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v24, v36, v0, v24
	v_fmac_f32_e32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v37, v35
	v_div_scale_f32 v37, null, v0, v0, v13
	v_fma_f32 v33, -v38, v39, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v0, v12
	v_fma_f32 v38, -v45, v49, v40
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v39, v36, v50 :: v_dual_mul_f32 v44, v46, v43
	v_div_fmas_f32 v35, v38, v35, v49
	v_div_scale_f32 v40, null, v0, v0, v14
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v34, -v42, v44, v46
	v_div_fixup_f32 v9, v33, v0, v9
	v_div_fixup_f32 v10, v35, v0, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v42, v44, v46
	v_rcp_f32_e32 v42, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v41, -v37, v34, 1.0
	v_fma_f32 v43, -v48, v39, v36
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v11, v38, v0, v11
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s4, v13, v0, v13
	v_fmac_f32_e32 v39, v43, v50
	v_div_scale_f32 v38, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v37, v33, v41
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s5, v14, v0, v14
	v_div_fmas_f32 v36, v36, v50, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v43, v34
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v36, v0, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_mul_f32_e32 v39, v35, v42
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v34, null, v0, v0, v1
	v_fmac_f32_e32 v44, v41, v44
	v_fma_f32 v37, -v40, v39, v35
	v_div_scale_f32 v36, s3, v15, v0, v15
	v_div_fixup_f32 v13, v33, v0, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v43, v45, 1.0
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v41, null, v0, v0, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v33, v45
	v_fma_f32 v35, -v40, v39, v35
	v_mul_f32_e32 v40, v36, v44
	v_div_scale_f32 v33, s4, v16, v0, v16
	v_rcp_f32_e32 v47, v41
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v34, v37, 1.0
	v_div_scale_f32 v48, s5, v1, v0, v1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v41, v47, 1.0
	v_mul_f32_e32 v51, v48, v37
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v33, v45
	v_fmac_f32_e32 v47, v49, v47
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	v_rcp_f32_e32 v50, v46
	v_div_scale_f32 v49, s6, v2, v0, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v38, v49, v47
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v44, v40
	v_fma_f32 v33, -v43, v42, v33
	v_div_scale_f32 v40, null, v0, v0, v4
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v39, -v46, v50, 1.0
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s3, v3, v0, v3
	v_div_fixup_f32 v15, v35, v0, v15
	v_fma_f32 v34, -v34, v51, v48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v16, v33, v0, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_fmas_f32 v34, v34, v37, v51
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	v_div_scale_f32 v35, null, v0, v0, v6
	v_div_fixup_f32 v1, v34, v0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_div_scale_f32 v34, null, v0, v0, v5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v2, v37, v0, v2
	v_fma_f32 v33, -v46, v36, v39
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v37, null, v0, v0, v7
	v_rcp_f32_e32 v46, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v45, -v35, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v45, v39
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	v_div_scale_f32 v45, s4, v6, v0, v6
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v50, -v44, v46, 1.0
	v_mul_f32_e32 v51, v45, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s5, v7, v0, v7
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s3, v5, v0, v5
	v_fma_f32 v47, -v40, v43, v38
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s6, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v33, v36
	v_dual_fmac_f32 v43, v47, v42 :: v_dual_mul_f32 v52, v48, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v47, -v34, v49, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v51, v40, v39
	v_div_fmas_f32 v38, v38, v42, v43
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v33, -v34, v49, v33
	v_fma_f32 v34, -v44, v53, v50
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v35, -v35, v51, v45
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v39, v51
	v_fma_f32 v36, -v44, v53, v50
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v33, v0, v5
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v25, s1
	v_cndmask_b32_e64 v25, 0, v26, s1
	v_cndmask_b32_e64 v26, 0, v27, s1
	v_cndmask_b32_e64 v27, 0, v28, s1
	v_cndmask_b32_e64 v28, 0, v29, s1
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v37, v8, 16, 1
	v_bfe_u32 v38, v25, 16, 1
	v_bfe_u32 v39, v26, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v30, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s5, v8, v8
	v_add3_u32 v37, v8, v37, 0x7fff
	v_add3_u32 v8, v25, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v25, v25
	v_add3_u32 v25, v26, v39, 0x7fff
	v_cmp_o_f32_e64 s7, v26, v26
	v_bfe_u32 v26, v27, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v31, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v28, 16, 1
	v_bfe_u32 v38, v29, 16, 1
	v_add3_u32 v26, v27, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v27, v27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v32, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s6
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s7
	v_add3_u32 v27, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v28, v28
	v_add3_u32 v28, v29, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v29, v29
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s5
	v_bfe_u32 v26, v30, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s6
	v_bfe_u32 v29, v31, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s7
	v_bfe_u32 v28, v17, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v30, v30
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_add3_u32 v28, v17, v28, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v26.h, s5
	v_bfe_u32 v26, v18, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v29.h, s6
	v_bfe_u32 v29, v19, 16, 1
	v_bfe_u32 v30, v20, 16, 1
	v_cmp_o_f32_e64 s5, v18, v18
	v_add3_u32 v26, v18, v26, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s7
	v_add3_u32 v18, v19, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v19, v20, v30, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v28.h, 0x7fff, v26.h, s5
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v26, v22, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_cmp_o_f32_e64 s5, v21, v21
	v_cmp_o_f32_e64 s6, v22, v22
	v_add3_u32 v20, v21, v20, 0x7fff
	v_add3_u32 v21, v22, v26, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s7
	v_bfe_u32 v19, v23, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s5
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v9, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v21, v9, v21, 0x7fff
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v24, v24
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v12, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s5
	v_bfe_u32 v22, v13, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v1, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v1, v1
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v0, 0, v0, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e64 s5, v4, v4
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s6, v5, v5
	v_bfe_u32 v5, v0, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s7
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v5, v0, v5, 0x7fff
	v_cmp_o_f32_e64 s9, v0, v0
	v_cndmask_b16 v0.l, 0x7fff, v13.h, s6
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s8
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s9
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v32, 1, v135
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v5, v8, v27, s0
	v_cndmask_b32_e64 v6, v17, v25, s0
	v_cndmask_b32_e64 v7, v25, v17, s0
	v_cndmask_b32_e64 v13, v28, v20, s0
	v_cndmask_b32_e64 v16, v12, v9, s0
	v_cndmask_b32_e64 v9, v9, v12, s0
	v_cndmask_b32_e64 v12, v11, v10, s0
	v_cndmask_b32_e64 v10, v10, v11, s0
	v_cndmask_b32_e64 v17, v0, v1, s0
	v_cndmask_b32_e64 v0, v1, v0, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s85, v132
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v15, v18, v19, s0
	v_cndmask_b32_e64 v1, v2, v3, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 16, v32
	s_mov_b32 s5, 0x76543210
	v_or_b32_e32 v34, 32, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v14, v19, v18, s0
	v_cndmask_b32_e64 v18, v3, v2, s0
	v_permlanex16_b32 v2, v5, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v13, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s5, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v4, v27, v8, s0
	v_cndmask_b32_e64 v8, v20, v28, s0
	v_permlanex16_b32 v9, v9, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 48, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v3, v7, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v15, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s85, v33
	v_cmp_gt_i32_e64 s4, s85, v32
	v_cmp_gt_i32_e64 s1, s85, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v10, v11, v12, v133
	v_perm_b32 v11, v11, v12, v134
	v_perm_b32 v12, v13, v17, v133
	v_perm_b32 v13, v13, v17, v134
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v36, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v2, v4, v133
	v_perm_b32 v1, v2, v4, v134
	v_perm_b32 v4, v5, v8, v133
	v_perm_b32 v5, v5, v8, v134
	v_perm_b32 v8, v9, v16, v133
	v_perm_b32 v9, v9, v16, v134
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v36, v32, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s85, v35
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v2, v3, v6, v133
	v_perm_b32 v3, v3, v6, v134
	v_perm_b32 v6, v7, v14, v133
	v_perm_b32 v7, v7, v14, v134
	v_perm_b32 v14, v15, v18, v133
	v_perm_b32 v15, v15, v18, v134
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s0, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v36, v35, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s9, s91, 0xffff
	s_mov_b32 s8, s90
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[8:11], 0 offen
	buffer_store_b128 v[4:7], v17, s[8:11], 0 offen
	buffer_store_b128 v[8:11], v18, s[8:11], 0 offen
	buffer_store_b128 v[12:15], v19, s[8:11], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp58:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 226
		.amdhsa_next_free_sgpr 102
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 226
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 102
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17056
; TotalNumSgprs: 104
; NumVgprs: 226
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 104
; NumVGPRsForWavesPerEU: 226
; Occupancy: 6
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
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
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
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     104
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     226
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
