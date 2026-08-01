	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[80:83], s[0:1], 0x60
	v_dual_mov_b32 v42, 0x5410 :: v_dual_lshlrev_b32 v39, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b256 s[64:71], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v224, 0xff800000 :: v_dual_and_b32 v1, 16, v39
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s6, v2
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s7, s6, s2
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v40, 0x60, v0
	v_dual_mov_b32 v158, 0xff800000 :: v_dual_and_b32 v41, 15, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v4
	s_mov_b32 s91, 0x31027000
	s_mov_b32 s90, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v125, v0, 4, 1
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v48, 24, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[113:114], null, s80, v2, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s80, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s89, s65, 0xffff
	s_mov_b32 s88, s64
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v61, 22, v125
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v45, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s80, s7, v[113:114]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v49, 12, v0
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v46, 16, v0
	v_dual_mov_b32 v30, v25 :: v_dual_lshlrev_b32 v47, 1, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v40
	v_dual_mov_b32 v17, v25 :: v_dual_lshlrev_b32 v160, 2, v0
	v_mov_b32_e32 v14, v25
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[33:36], v1, s[88:91], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v2, v41
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s89, s71, 0xffff
	s_mov_b32 s88, s70
	v_xor_b32_e32 v164, v39, v48
	v_and_b32_e32 v39, 0x80, v39
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v2, s7, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v1
	v_dual_mov_b32 v43, 0x7632 :: v_dual_and_b32 v50, 48, v0
	v_mov_b32_e32 v31, v25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off
	scratch_store_b32 off, v61, off offset:4
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	v_dual_mov_b32 v19, v25 :: v_dual_lshlrev_b32 v38, 4, v45
	v_dual_mov_b32 v20, v25 :: v_dual_lshlrev_b32 v163, 3, v41
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_dual_mov_b32 v21, v25 :: v_dual_lshlrev_b32 v48, 1, v49
	v_dual_mov_b32 v9, v25 :: v_dual_lshlrev_b32 v58, 11, v45
	buffer_load_u16 v37, v1, s[88:91], 0 offen
	v_dual_mov_b32 v10, v25 :: v_dual_lshlrev_b32 v57, 2, v40
	v_dual_mov_b32 v12, v25 :: v_dual_lshlrev_b32 v45, 5, v45
	s_clause 0x1
	s_load_b64 s[92:93], s[0:1], 0x20
	s_load_b128 s[84:87], s[0:1], 0x30
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v16, v25 :: v_dual_lshlrev_b32 v59, 6, v46
	s_lshr_b32 s0, s0, 28
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v53, v47, 30, v125
	v_and_or_b32 v39, v160, 16, v39
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v44, 2, v0
	v_dual_mov_b32 v24, v25 :: v_dual_lshlrev_b32 v55, 8, v49
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_lshrrev_b32_e32 v54, 1, v50
	v_lshl_add_u32 v165, v41, 1, 0
	v_lshl_or_b32 v168, v41, 5, v48
	v_lshl_or_b32 v41, v50, 6, v163
	v_lshl_or_b32 v50, v49, 3, v57
	v_lshl_or_b32 v49, v49, 9, v45
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	v_dual_mov_b32 v18, v25 :: v_dual_lshlrev_b32 v161, 5, v0
	v_dual_mov_b32 v11, v25 :: v_dual_lshlrev_b32 v40, 3, v40
	v_dual_mov_b32 v2, v25 :: v_dual_lshlrev_b32 v53, 2, v53
	v_or3_b32 v39, v39, v58, v59
	s_sub_i32 s1, s3, s1
	v_xor_b32_e32 v49, v49, v50
	v_mul_lo_u32 v50, s81, v44
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s7, s0, 4
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s0, s1, 0x10007
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v51, 32, v44
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v47, 0x80, v47
	v_dual_mov_b32 v23, v25 :: v_dual_and_b32 v56, 0x260, v161
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s8, s1, s0
	v_or_b32_e32 v48, v57, v48
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v57, 4, v53
	v_or3_b32 v171, v39, v40, v45
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s8, s8, 0x80000
	s_lshl_b32 s10, s81, 5
	s_sext_i32_i16 s8, s8
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[114:115], null, s5, v51, v[38:39]
	v_dual_mov_b32 v26, v25 :: v_dual_and_b32 v1, 0x7c, v0
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v47, 0, v47
	v_dual_mov_b32 v166, v25 :: v_dual_add_nc_u32 v209, v38, v50
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 2, v125
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v52, s6, v44
	v_or3_b32 v169, v55, v56, v48
	v_xor_b32_e32 v41, v41, v54
	.loc	1 872 27 is_stmt 1              ; attention.py:872:27
	s_mul_i32 s4, s4, s1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s81, v38
	v_mad_u64_u32 v[115:116], null, s5, v44, v[38:39]
	.loc	1 818 13                        ; attention.py:818:13
	v_add3_u32 v210, v50, s10, v38
	v_xor_b32_e32 v38, 64, v171
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s8, s8, 10
	s_lshl_b32 s3, s7, 14
	s_and_b32 s8, s8, 0xfffff800
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v64, 4, v125
	v_or_b32_e32 v63, 18, v125
	v_or_b32_e32 v62, 20, v125
	v_or_b32_e32 v66, 62, v125
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s9, s82, 0x3fb8aa3b
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s82, s8, s3
	v_xor_b32_e32 v39, 8, v169
	v_xor_b32_e32 v40, 16, v169
	v_add_nc_u32_e32 v172, v47, v41
	v_xor_b32_e32 v41, 24, v169
	.loc	1 759 31                        ; attention.py:759:31
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v65, off offset:20
	scratch_store_b32 off, v1, off offset:28
	scratch_store_b32 off, v64, off offset:16
	scratch_store_b32 off, v63, off offset:12
	scratch_store_b32 off, v62, off offset:8
	scratch_store_b32 off, v66, off offset:24
	v_mov_b32_e32 v1, v25
	v_add_nc_u32_e32 v215, 0, v38
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s3, 0, v46
	v_dual_mov_b32 v7, v25 :: v_dual_add_nc_u32 v212, 0, v40
	v_dual_mov_b32 v222, 0xff800000 :: v_dual_add_nc_u32 v211, 0, v39
	v_add_nc_u32_e32 v213, 0, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v41, 0x1054, v42, s3
	v_cndmask_b32_e64 v42, 0x3276, v43, s3
	v_xor_b32_e32 v47, 0x60, v171
	v_dual_mov_b32 v13, v25 :: v_dual_add_nc_u32 v60, 0, v46
	v_lshl_or_b32 v41, v41, 8, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v42, v42, 8, v42
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v128, 6, v125
	v_or_b32_e32 v127, 8, v125
	v_or_b32_e32 v126, 10, v125
	v_or_b32_e32 v124, 12, v125
	v_or_b32_e32 v159, 14, v125
	v_or_b32_e32 v129, 16, v125
	v_or_b32_e32 v156, 24, v125
	v_or_b32_e32 v155, 26, v125
	v_or_b32_e32 v154, 28, v125
	v_or_b32_e32 v153, 30, v125
	v_or_b32_e32 v152, 32, v125
	v_or_b32_e32 v151, 34, v125
	v_or_b32_e32 v150, 36, v125
	v_or_b32_e32 v149, 38, v125
	v_or_b32_e32 v148, 40, v125
	v_or_b32_e32 v147, 42, v125
	v_or_b32_e32 v146, 44, v125
	v_or_b32_e32 v145, 46, v125
	v_or_b32_e32 v144, 48, v125
	v_or_b32_e32 v143, 50, v125
	v_or_b32_e32 v142, 52, v125
	v_or_b32_e32 v141, 54, v125
	v_or_b32_e32 v140, 56, v125
	v_or_b32_e32 v139, 58, v125
	v_or_b32_e32 v138, 60, v125
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, 0x800, v52
	v_xor_b32_e32 v52, 8, v164
	v_xor_b32_e32 v48, 8, v168
	v_xor_b32_e32 v55, 16, v168
	v_xor_b32_e32 v54, 24, v168
	v_xor_b32_e32 v45, 32, v171
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s7, s83, s7
	v_dual_mov_b32 v157, 0xff800000 :: v_dual_mov_b32 v162, 0xff800000
	v_dual_mov_b32 v15, v25 :: v_dual_add_nc_u32 v170, 0, v52
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v174, 0, v55
	v_dual_mov_b32 v5, v25 :: v_dual_add_nc_u32 v176, v60, v49
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v173, 0, v48
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v175, 0, v54
	v_dual_mov_b32 v167, v25 :: v_dual_add_nc_u32 v214, 0, v45
	v_or_b32_e32 v177, s82, v125
	v_or_b32_e32 v178, s82, v65
	v_or_b32_e32 v179, s82, v64
	v_or_b32_e32 v180, s82, v128
	v_or_b32_e32 v181, s82, v127
	v_or_b32_e32 v182, s82, v126
	v_or_b32_e32 v183, s82, v124
	v_or_b32_e32 v184, s82, v159
	v_or_b32_e32 v185, s82, v129
	v_or_b32_e32 v186, s82, v63
	v_or_b32_e32 v187, s82, v62
	v_or_b32_e32 v188, s82, v61
	v_or_b32_e32 v189, s82, v156
	v_or_b32_e32 v190, s82, v155
	v_or_b32_e32 v191, s82, v154
	v_or_b32_e32 v192, s82, v153
	v_or_b32_e32 v193, s82, v152
	v_or_b32_e32 v194, s82, v151
	v_or_b32_e32 v195, s82, v150
	v_or_b32_e32 v196, s82, v149
	v_or_b32_e32 v197, s82, v148
	v_or_b32_e32 v198, s82, v147
	v_or_b32_e32 v199, s82, v146
	v_or_b32_e32 v200, s82, v145
	v_or_b32_e32 v201, s82, v144
	v_or_b32_e32 v202, s82, v143
	v_or_b32_e32 v203, s82, v142
	v_or_b32_e32 v204, s82, v141
	v_or_b32_e32 v205, s82, v140
	v_or_b32_e32 v206, s82, v139
	v_or_b32_e32 v207, s82, v138
	v_or_b32_e32 v208, s82, v66
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v217, 8, v209
	v_add_nc_u32_e32 v218, 8, v210
	s_mov_b32 s72, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s6, s5, s6
	s_and_b32 s67, s67, 0xffff
	s_add_i32 s83, s4, s7
	s_mov_b32 s96, 0x76543210
	s_mov_b32 s94, s90
	s_mov_b32 s95, s91
	s_mov_b32 s73, s72
	s_mov_b32 s74, s72
	s_mov_b32 s75, s72
	s_mov_b32 s76, s72
	s_mov_b32 s77, s72
	s_mov_b32 s78, s72
	s_mov_b32 s79, s72
	s_mov_b32 s97, s72
	s_waitcnt lgkmcnt(0)
	s_and_b32 s93, s93, 0xffff
	s_and_b32 s69, s69, 0xffff
	s_add_i32 s83, s83, s6
	s_mov_b32 s70, s90
	s_mov_b32 s71, s91
	s_mov_b32 s88, s66
	s_mov_b32 s89, s67
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v44, v53, v33
	ds_bpermute_b32 v33, v57, v33
	ds_bpermute_b32 v38, v53, v34
	ds_bpermute_b32 v34, v57, v34
	ds_bpermute_b32 v39, v53, v35
	ds_bpermute_b32 v35, v57, v35
	ds_bpermute_b32 v40, v53, v36
	ds_bpermute_b32 v36, v57, v36
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v116, v33, v44, s3
	v_cndmask_b32_e64 v118, v44, v33, s3
	v_and_b32_e32 v33, 0x540054, v41
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	v_add_nc_u32_e32 v216, 0, v47
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v117, v34, v38, s3
	v_cndmask_b32_e64 v119, v38, v34, s3
	v_lshl_or_b32 v33, v33, 4, v33
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v219, s9, v37
	v_and_b32_e32 v37, 0x760076, v42
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v120, v35, v39, s3
	v_cndmask_b32_e64 v122, v39, v35, s3
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v121, v36, v40, s3
	v_cndmask_b32_e64 v123, v40, v36, s3
	v_lshl_or_b32 v34, v37, 4, v37
	v_and_b32_e32 v220, 0x5040504, v33
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v221, 0x7060706, v34
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v110, v59
	v_cvt_f32_i32_e32 v59, v54
	v_cvt_f32_i32_e32 v54, v41
	v_cvt_f32_i32_e32 v41, v36
	v_cvt_f32_i32_e32 v36, v37
	.loc	1 877 34                        ; attention.py:877:34
	s_waitcnt vmcnt(0)
	v_and_b16 v37.l, 0xff, v67.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v108, v61
	v_cvt_f32_i32_e32 v61, v52
	v_cvt_f32_i32_e32 v52, v43
	v_cvt_f32_i32_e32 v43, v34
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s6, 0, v37.l
	v_and_b16 v37.l, 0xff, v67.h
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v34, v39
	v_cvt_f32_i32_e32 v106, v63
	v_cvt_f32_i32_e32 v63, v50
	v_cvt_f32_i32_e32 v50, v45
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s4, 0, v37.l
	v_and_b16 v37.l, 0xff, v68.h
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v45, v48
	v_cvt_f32_i32_e32 v109, v60
	v_cvt_f32_i32_e32 v60, v53
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s4, s0, s4
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v37.l
	v_and_b16 v37.l, 0xff, v68.l
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v53, v42
	v_cvt_f32_i32_e32 v42, v35
	v_cvt_f32_i32_e32 v35, v38
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s3, s0, s3
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s5, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s3
	v_cndmask_b32_e64 v38, 0, 1, s4
	s_and_b32 s6, s0, s6
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v105, v64
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s5, s0, s5
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v39, 0, 1, s5
	v_lshlrev_b16 v37.h, 8, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s6
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v64, v49
	v_cvt_f32_i32_e32 v49, v46
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v48.h, v39.l, v37.l
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v66.h
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v48.l, v38.l, v37.h
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v46, v47
	v_cvt_f32_i32_e32 v107, v62
	v_cvt_f32_i32_e32 v62, v51
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s7, 0, v37.l
	v_and_b16 v37.l, 0xff, v66.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v51, v44
	v_cvt_f32_i32_e32 v44, v33
	v_cvt_f32_i32_e32 v33, v40
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s8, s0, s7
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s9, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s8
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v111, v58
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s9, s0, s9
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v38, 0, 1, s9
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v58, v55
	v_cvt_f32_i32_e32 v55, v56
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v56, 24, v65
	v_lshrrev_b32_e32 v112, 8, v71
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_or_b16 v47.h, v38.l, v37.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v65.h
	v_mov_b16_e64 v223.l, 0
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v36, v219, v36
	v_mul_f32_e32 v34, v219, v34
	v_mul_f32_e32 v33, v219, v33
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s7, 0, v37.l
	v_and_b16 v37.l, 0xff, v65.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v223.h, v102.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v35, v219, v35
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s12, s0, s7
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s10, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s12
	.loc	1 889 30 is_stmt 1              ; attention.py:889:30
	s_mul_i32 s98, s98, s81
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s14, s0, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v38, 0, 1, s14
	v_or_b16 v47.l, v38.l, v37.l
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v71.l
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s13, 0, v37.l
	v_and_b16 v37.l, 0xff, v71.h
	v_lshrrev_b32_e32 v71, 24, v71
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s13, s0, s13
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s10, 0, v37.l
	v_and_b16 v37.l, 0xff, v72.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s10, s0, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s7, 0, v37.l
	v_and_b16 v37.l, 0xff, v72.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v38, 0, 1, s10
	s_and_b32 s7, s0, s7
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s11, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v37.h, 8, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s13
	s_and_b32 s11, s0, s11
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v39, 0, 1, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v39.h, v39.l, v37.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v70.h
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v39.l, v38.l, v37.h
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s15, 0, v37.l
	v_and_b16 v37.l, 0xff, v70.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s15, s0, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s16, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s15
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_nc_u32_e32 v130, 0, v161
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s16, s0, s16
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v38, 0, 1, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v38.h, v38.l, v37.l
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v69.h
	v_cmp_ne_u16_e64 s17, 0, v37.l
	v_and_b16 v37.l, 0xff, v69.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s17, s0, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s18, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s17
	s_and_b32 s18, s0, s18
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v40, 0, 1, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v38.l, v40.l
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v40, 8, v66
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v38.l, v38.l, v37.l
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v37, 8, v67
	.loc	1 877 25                        ; attention.py:877:25
	ds_store_2addr_b64 v172, v[47:48], v[38:39] offset1:32
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v38, 8, v68
	v_lshrrev_b32_e32 v48, 24, v68
	v_and_b16 v37.l, 0xff, v37.l
	v_lshrrev_b32_e32 v39, 24, v67
	v_lshrrev_b32_e32 v47, 8, v65
	v_lshrrev_b32_e32 v65, 24, v66
	v_cmp_ne_u16_e64 s19, 0, v48.l
	v_cmp_ne_u16_e64 s20, 0, v37.l
	v_and_b16 v37.l, 0xff, v38.l
	v_cmp_ne_u16_e64 s21, 0, v39.l
	v_lshrrev_b32_e32 v67, 8, v72
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s19, s0, s19
	s_and_b32 s25, s0, s20
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s23, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s19
	s_and_b32 s22, s0, s21
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s20, 0, v65.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v38, 0, 1, s22
	s_and_b32 s21, s0, s23
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v39, 0, 1, s21
	s_and_b32 s27, s0, s20
	v_lshlrev_b16 v37.h, 8, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s25
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s20, 0, v56.l
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v48.h, v39.l, v37.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v40.l
	v_lshrrev_b32_e32 v72, 24, v72
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v48.l, v38.l, v37.h
	s_and_b32 s31, s0, s20
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v66, 8, v70
	v_cmp_ne_u16_e64 s23, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s27
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s20, 0, v72.l
	v_lshrrev_b32_e32 v70, 24, v70
	v_lshrrev_b32_e32 v68, 8, v69
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s29, s0, s23
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v38, 0, 1, s29
	s_and_b32 s20, s0, s20
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v69, 24, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v47.h, v38.l, v37.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v47.l
	v_cmp_ne_u16_e64 s33, 0, v69.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e64 s23, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s31
	s_and_b32 s33, s0, s33
	s_and_b32 s34, s0, s23
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v38, 0, 1, s34
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s23, 0, v71.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v47.l, v38.l, v37.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v112.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s24, s0, s23
	v_cndmask_b32_e64 v38, 0, 1, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s26, 0, v37.l
	v_and_b16 v37.l, 0xff, v67.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s26, s0, s26
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s28, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s20
	v_lshlrev_b16 v37.h, 8, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s26
	s_and_b32 s23, s0, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v39, 0, 1, s23
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s28, 0, v70.l
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v39.h, v39.l, v37.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v66.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s28, s0, s28
	v_or_b16 v39.l, v38.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s30, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s28
	s_and_b32 s30, s0, s30
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v38, 0, 1, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v38.h, v38.l, v37.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v68.l
	v_cmp_ne_u16_e64 s35, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s33
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v37.h, v104.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s35, s0, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v40, 0, 1, s35
	v_mov_b16_e32 v38.l, v40.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v38.l, v38.l, v37.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v37.l, v223.l
	.loc	1 877 25                        ; attention.py:877:25
	ds_store_2addr_b64 v172, v[47:48], v[38:39] offset0:64 offset1:96
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v38, v219, v111
	v_mul_f32_e32 v39, v219, v110
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v38, v38, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v103.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v40, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v101.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v100.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v108
	v_mul_f32_e32 v48, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v99.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v56, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v98.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v106
	v_mul_f32_e32 v65, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v97.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v96.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v64
	v_mul_f32_e32 v64, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v95.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v63, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v94.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v62
	v_mul_f32_e32 v62, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v93.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v61, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v92.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v60
	v_mul_f32_e32 v60, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v91.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v59, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v90.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v58
	v_mul_f32_e32 v58, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v89.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v55, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v87.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v54
	v_mul_f32_e32 v54, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v86.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v53, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v85.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v52
	v_mul_f32_e32 v52, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v84.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v51, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v83.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v50
	v_mul_f32_e32 v50, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v82.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v81.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v46
	v_mul_f32_e32 v67, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v80.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v79.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v44
	v_mul_f32_e32 v69, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v78.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v77.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v42
	v_mul_f32_e32 v71, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v76.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v219, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v39, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v75.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v75, v36, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v36.h, v74.l
	v_mov_b16_e64 v36.l, v223.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v74, v35, v36
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v35.h, v73.l
	v_mov_b16_e64 v35.l, v223.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v73, v34, v35
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v34.h, v88.l
	v_mov_b16_e64 v34.l, v223.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v76, v33, v34 :: v_dual_add_nc_u32 v33, 0, v169
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_b64 v[34:35], v33
	ds_load_b64 v[36:37], v211
	ds_load_b64 v[43:44], v212
	ds_load_b64 v[45:46], v213
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 877 25                        ; attention.py:877:25
	v_lshrrev_b16 v33.l, 8, v35.l
	v_lshrrev_b16 v41.l, 8, v37.l
	v_lshrrev_b16 v42.l, 8, v43.l
	v_lshrrev_b16 v39.l, 8, v36.l
	v_lshrrev_b16 v41.h, 8, v44.l
	v_lshrrev_b16 v33.h, 8, v34.l
	v_and_b16 v41.l, 1, v41.l
	v_and_b32_e32 v86, 1, v36
	v_and_b32_e32 v97, 0x1000000, v43
	v_and_b32_e32 v98, 0x10000, v43
	v_and_b32_e32 v99, 1, v43
	v_cmp_eq_u16_e64 s54, 1, v41.l
	v_and_b16 v41.l, 1, v42.l
	v_and_b32_e32 v100, 0x1000000, v46
	v_and_b32_e32 v101, 0x10000, v46
	v_lshrrev_b16 v43.l, 8, v45.l
	v_and_b16 v39.l, 1, v39.l
	v_cmp_eq_u16_e64 s50, 1, v41.l
	v_and_b16 v41.l, 1, v41.h
	v_and_b16 v33.h, 1, v33.h
	v_and_b16 v33.l, 1, v33.l
	v_lshrrev_b16 v42.h, 8, v46.l
	v_cmp_eq_u16_e64 s58, 1, v39.l
	v_cmp_eq_u32_e64 s59, 1, v86
	v_cmp_eq_u16_e64 s45, 1, v41.l
	v_and_b16 v41.l, 1, v43.l
	v_cmp_ne_u32_e64 s36, 0, v101
	v_cmp_ne_u32_e64 s37, 0, v100
	v_and_b32_e32 v77, 0x1000000, v35
	v_and_b32_e32 v78, 0x10000, v35
	v_and_b32_e32 v79, 1, v35
	v_and_b32_e32 v80, 0x1000000, v34
	v_and_b32_e32 v35, 0x10000, v34
	v_and_b32_e32 v34, 1, v34
	v_cmp_eq_u16_e64 s66, 1, v33.h
	v_cmp_eq_u16_e64 s61, 1, v33.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v33, v219, v57
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v81, 0x1000000, v37
	v_and_b32_e32 v82, 0x10000, v37
	v_and_b32_e32 v83, 1, v37
	v_and_b32_e32 v84, 0x1000000, v36
	v_and_b32_e32 v85, 0x10000, v36
	v_and_b32_e32 v88, 0x1000000, v44
	v_and_b32_e32 v87, 0x10000, v44
	v_and_b32_e32 v44, 1, v44
	v_and_b32_e32 v46, 1, v46
	v_and_b32_e32 v102, 0x1000000, v45
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v89, 0xff800000, v64, s59
	v_cndmask_b32_e64 v90, 0xff800000, v63, s58
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s42, 1, v41.l
	v_and_b16 v41.l, 1, v42.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v63, 0xff800000, v73, s36
	v_cndmask_b32_e64 v64, 0xff800000, v76, s37
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v103, 0x10000, v45
	v_and_b32_e32 v45, 1, v45
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v33, v33, v223
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s67, 1, v34
	v_cmp_ne_u32_e64 s64, 0, v35
	v_cmp_ne_u32_e64 s65, 0, v80
	v_cmp_eq_u32_e64 s62, 1, v79
	v_cmp_ne_u32_e64 s60, 0, v78
	v_cmp_ne_u32_e64 s63, 0, v77
	v_cmp_ne_u32_e64 s56, 0, v85
	v_cmp_ne_u32_e64 s57, 0, v84
	v_cmp_eq_u32_e64 s55, 1, v83
	v_cmp_ne_u32_e64 s52, 0, v82
	v_cmp_ne_u32_e64 s53, 0, v81
	v_cmp_eq_u32_e64 s51, 1, v99
	v_cmp_ne_u32_e64 s48, 0, v98
	v_cmp_ne_u32_e64 s49, 0, v97
	v_cmp_eq_u32_e64 s46, 1, v44
	v_cmp_ne_u32_e64 s44, 0, v87
	v_cmp_ne_u32_e64 s47, 0, v88
	v_cmp_eq_u32_e64 s43, 1, v45
	v_cmp_ne_u32_e64 s40, 0, v103
	v_cmp_eq_u16_e64 s38, 1, v41.l
	v_cmp_ne_u32_e64 s41, 0, v102
	v_cmp_eq_u32_e64 s39, 1, v46
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, 0xff800000, v33, s67
	v_cndmask_b32_e64 v34, 0xff800000, v38, s66
	v_cndmask_b32_e64 v35, 0xff800000, v40, s64
	v_cndmask_b32_e64 v36, 0xff800000, v47, s65
	v_cndmask_b32_e64 v37, 0xff800000, v48, s62
	v_cndmask_b32_e64 v38, 0xff800000, v56, s61
	v_cndmask_b32_e64 v39, 0xff800000, v65, s60
	v_cndmask_b32_e64 v40, 0xff800000, v66, s63
	v_add_nc_u32_e32 v65, 0, v171
	v_cndmask_b32_e64 v91, 0xff800000, v62, s56
	v_cndmask_b32_e64 v92, 0xff800000, v61, s57
	v_cndmask_b32_e64 v93, 0xff800000, v60, s55
	v_cndmask_b32_e64 v94, 0xff800000, v59, s54
	v_cndmask_b32_e64 v95, 0xff800000, v58, s52
	v_cndmask_b32_e64 v96, 0xff800000, v55, s53
	v_cndmask_b32_e64 v81, 0xff800000, v54, s51
	v_cndmask_b32_e64 v82, 0xff800000, v53, s50
	v_cndmask_b32_e64 v83, 0xff800000, v52, s48
	v_cndmask_b32_e64 v84, 0xff800000, v51, s49
	v_cndmask_b32_e64 v85, 0xff800000, v50, s46
	v_cndmask_b32_e64 v86, 0xff800000, v49, s45
	v_cndmask_b32_e64 v87, 0xff800000, v67, s44
	v_cndmask_b32_e64 v88, 0xff800000, v68, s47
	v_cndmask_b32_e64 v57, 0xff800000, v69, s43
	v_cndmask_b32_e64 v58, 0xff800000, v70, s42
	v_cndmask_b32_e64 v59, 0xff800000, v71, s40
	v_cndmask_b32_e64 v60, 0xff800000, v72, s41
	v_cndmask_b32_e64 v61, 0xff800000, v75, s39
	v_cndmask_b32_e64 v62, 0xff800000, v74, s38
	ds_store_b128 v65, v[33:36]
	ds_store_b128 v214, v[89:92]
	ds_store_b128 v215, v[81:84]
	ds_store_b128 v216, v[57:60]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[53:56], v176
	ds_load_b128 v[45:48], v176 offset:512
	ds_load_b128 v[49:52], v176 offset:1024
	ds_load_b128 v[41:44], v176 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[37:40]
	ds_store_b128 v214, v[93:96]
	ds_store_b128 v215, v[85:88]
	ds_store_b128 v216, v[61:64]
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v65, s98, v209, 1
	v_add_lshl_u32 v66, s98, v217, 1
	v_add_lshl_u32 v67, s98, v210, 1
	v_add_lshl_u32 v68, s98, v218, 1
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	v_cndmask_b32_e64 v66, 0x80000000, v66, s1
	v_cndmask_b32_e64 v67, 0x80000000, v67, s1
	v_cndmask_b32_e64 v68, 0x80000000, v68, s1
	.loc	1 882 26                        ; attention.py:882:26
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[97:100], v65, s[68:71], 0 offen
	buffer_load_b128 v[101:104], v66, s[68:71], 0 offen
	buffer_load_b128 v[105:108], v67, s[68:71], 0 offen
	buffer_load_b128 v[109:112], v68, s[68:71], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[77:80], v176
	ds_load_b128 v[69:72], v176 offset:512
	ds_load_b128 v[73:76], v176 offset:1024
	ds_load_b128 v[65:68], v176 offset:1536
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v130, v[97:100]
	s_waitcnt vmcnt(2)
	ds_store_b128 v130, v[101:104] offset:16
	s_waitcnt vmcnt(1)
	ds_store_b128 v130, v[105:108] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v130, v[109:112] offset:4112
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v97, v90, v91, v92
	v_max3_f32 v98, v93, v94, v95
	v_max3_f32 v99, v96, v81, v82
	v_max3_f32 v100, v57, v58, v59
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v97, v97, v98, v99
	v_max3_f32 v98, v83, v84, v85
	v_max3_f32 v99, v86, v87, v88
	v_max3_f32 v98, v98, v99, v100
	v_max_f32_e32 v99, v33, v34
	v_max3_f32 v100, v36, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v99, v99, v35, v100
	v_max3_f32 v100, v39, v40, v89
	v_max3_f32 v97, v99, v100, v97
	v_dual_max_f32 v99, v60, v61 :: v_dual_max_f32 v100, v63, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v99, v99, v62, v100
	v_max3_f32 v97, v97, v98, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v98, v97, s96, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v97, v224, v97, v98
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v98.h, v223.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v97
	v_sub_f32_e32 v33, v33, v97
	v_sub_f32_e32 v36, v36, v97
	v_sub_f32_e32 v35, v35, v97
	v_sub_f32_e32 v38, v38, v97
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v38, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v37, v97
	v_sub_f32_e32 v40, v40, v97
	v_sub_f32_e32 v39, v39, v97
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s66
	v_cndmask_b32_e64 v33, 0, v33, s67
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v36, 0, v36, s65
	v_cndmask_b32_e64 v35, 0, v35, s64
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v38, 0, v38, s61
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v98.l, v34.h
	v_cmp_o_f32_e64 s66, v34, v34
	v_cmp_o_f32_e64 s67, v33, v33
	v_cmp_o_f32_e64 s65, v36, v36
	v_cmp_o_f32_e64 s64, v35, v35
	v_and_b32_e32 v98, 1, v98
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s61, v38, v38
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v98, v34, v98, 0x7fff
	v_mov_b16_e32 v34.l, v33.h
	v_mov_b16_e64 v34.h, v223.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_cndmask_b16 v98.h, 0x7fff, v98.h, s66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v34, 1, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v39, 0, v39, s60
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s62, v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v34, v33, v34, 0x7fff
	v_cmp_o_f32_e64 s60, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v98.l, 0x7fff, v34.h, s67
	v_permlanex16_b32 v34, v98, s96, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v34, v98, v220
	v_perm_b32 v34, v34, v98, v221
	v_mov_b16_e32 v98.l, v36.h
	v_mov_b16_e64 v98.h, v223.l
	v_and_b32_e32 v98, 1, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v98, v36, v98, 0x7fff
	v_mov_b16_e32 v36.l, v35.h
	v_mov_b16_e64 v36.h, v223.l
	v_cndmask_b16 v98.h, 0x7fff, v98.h, s65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v35, v36, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v98.l, 0x7fff, v36.h, s64
	v_permlanex16_b32 v36, v98, s96, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v36, v98, v220
	v_perm_b32 v36, v36, v98, v221
	v_mov_b16_e32 v98.l, v38.h
	v_mov_b16_e64 v98.h, v223.l
	v_and_b32_e32 v98, 1, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v98, v38, v98, 0x7fff
	v_mov_b16_e32 v38.l, v37.h
	v_mov_b16_e64 v38.h, v223.l
	v_cndmask_b16 v98.h, 0x7fff, v98.h, s61
	v_cmp_o_f32_e64 s61, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v37, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v98.l, 0x7fff, v38.h, s62
	v_permlanex16_b32 v38, v98, s96, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v38, v98, v220
	v_perm_b32 v38, v38, v98, v221
	v_mov_b16_e32 v98.l, v40.h
	v_mov_b16_e64 v98.h, v223.l
	v_and_b32_e32 v98, 1, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v98, v40, v98, 0x7fff
	v_mov_b16_e32 v40.l, v39.h
	v_mov_b16_e64 v40.h, v223.l
	v_cndmask_b16 v98.h, 0x7fff, v98.h, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v39, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v98.l, 0x7fff, v40.h, s60
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s60, 0xff800000, v224
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v40, v98, s96, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v40, v98, v220
	v_perm_b32 v40, v40, v98, v221
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v98, v224, v97
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v101, v165 offset:608
	ds_load_u16_d16 v100, v165 offset:352
	ds_load_u16_d16 v224, v165
	ds_load_u16_d16 v226, v165 offset:512
	ds_load_u16_d16 v225, v165 offset:256
	ds_load_u16_d16 v227, v165 offset:768
	ds_load_u16_d16 v234, v165 offset:576
	ds_load_u16_d16 v235, v165 offset:832
	ds_load_u16_d16 v228, v165 offset:1024
	ds_load_u16_d16 v236, v165 offset:1088
	ds_load_u16_d16 v229, v165 offset:1280
	ds_load_u16_d16 v237, v165 offset:1344
	ds_load_u16_d16 v230, v165 offset:1536
	ds_load_u16_d16 v231, v165 offset:1792
	ds_load_u16_d16 v238, v165 offset:1600
	ds_load_u16_d16 v232, v165 offset:64
	ds_load_u16_d16 v233, v165 offset:320
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v100, v165 offset:480
	ds_load_u16_d16 v99, v165 offset:96
	ds_load_u16_d16 v240, v165 offset:32
	ds_load_u16_d16 v241, v165 offset:288
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v224, v165 offset:128
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v225, v165 offset:384
	ds_load_u16_d16_hi v226, v165 offset:640
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v234, v165 offset:704
	ds_load_u16_d16_hi v227, v165 offset:896
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v235, v165 offset:960
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v228, v165 offset:1152
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v236, v165 offset:1216
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v229, v165 offset:1408
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v237, v165 offset:1472
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v230, v165 offset:1664
	ds_load_u16_d16 v239, v165 offset:1856
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v238, v165 offset:1728
	ds_load_u16_d16_hi v231, v165 offset:1920
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v98, v98
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e64 v107, 0, v98, s60
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v240, v165 offset:160
	ds_load_u16_d16_hi v232, v165 offset:192
	ds_load_u16_d16_hi v99, v165 offset:224
	ds_load_u16_d16 v242, v165 offset:544
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v241, v165 offset:416
	ds_load_u16_d16_hi v233, v165 offset:448
	ds_load_u16_d16 v102, v165 offset:864
	ds_load_u16_d16 v103, v165 offset:1120
	ds_load_u16_d16 v104, v165 offset:1376
	ds_load_u16_d16 v105, v165 offset:1632
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v239, v165 offset:1984
	ds_load_u16_d16 v98, v165 offset:2048
	ds_load_u16_d16 v248, v165 offset:2112
	ds_load_u16_d16 v106, v165 offset:1888
	ds_load_u16_d16 v243, v165 offset:800
	ds_load_u16_d16 v244, v165 offset:1056
	ds_load_u16_d16 v245, v165 offset:1312
	ds_load_u16_d16 v246, v165 offset:1568
	ds_load_u16_d16 v247, v165 offset:1824
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v242, v165 offset:672
	ds_load_u16_d16_hi v101, v165 offset:736
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v107
	v_mul_f32_e32 v26, v26, v107
	v_mul_f32_e32 v27, v27, v107
	v_mul_f32_e32 v28, v28, v107
	v_mul_f32_e32 v29, v29, v107
	v_mul_f32_e32 v30, v30, v107
	v_mul_f32_e32 v31, v31, v107
	v_mul_f32_e32 v32, v32, v107
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v243, v165 offset:928
	ds_load_u16_d16_hi v102, v165 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v244, v165 offset:1184
	ds_load_u16_d16_hi v103, v165 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v245, v165 offset:1440
	ds_load_u16_d16_hi v104, v165 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v246, v165 offset:1696
	ds_load_u16_d16_hi v105, v165 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v247, v165 offset:1952
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[224:231], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v106, v165 offset:2016
	ds_load_u16_d16 v249, v165 offset:2368
	ds_load_u16_d16_hi v248, v165 offset:2240
	ds_load_u16_d16 v224, v165 offset:2080
	ds_load_u16_d16 v130, v165 offset:2144
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v107
	v_mul_f32_e32 v18, v18, v107
	v_mul_f32_e32 v19, v19, v107
	v_mul_f32_e32 v20, v20, v107
	v_mul_f32_e32 v21, v21, v107
	v_mul_f32_e32 v22, v22, v107
	v_mul_f32_e32 v23, v23, v107
	v_mul_f32_e32 v24, v24, v107
	v_mul_f32_e32 v9, v9, v107
	v_mul_f32_e32 v10, v10, v107
	v_mul_f32_e32 v11, v11, v107
	v_mul_f32_e32 v12, v12, v107
	v_mul_f32_e32 v13, v13, v107
	v_mul_f32_e32 v14, v14, v107
	v_mul_f32_e32 v15, v15, v107
	v_mul_f32_e32 v16, v16, v107
	v_mul_f32_e32 v1, v1, v107
	v_mul_f32_e32 v2, v2, v107
	v_mul_f32_e32 v3, v3, v107
	v_mul_f32_e32 v4, v4, v107
	v_mul_f32_e32 v5, v5, v107
	v_mul_f32_e32 v6, v6, v107
	v_mul_f32_e32 v7, v7, v107
	v_mul_f32_e32 v8, v8, v107
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[240:247], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[232:239], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v225, v165 offset:2336
	ds_load_u16_d16 v226, v165 offset:2592
	ds_load_u16_d16 v227, v165 offset:2848
	ds_load_u16_d16 v228, v165 offset:3104
	ds_load_u16_d16 v229, v165 offset:3360
	ds_load_u16_d16 v230, v165 offset:3616
	ds_load_u16_d16 v231, v165 offset:3872
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v224, v165 offset:2208
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v130, v165 offset:2272
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[99:106], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v90, v97
	v_sub_f32_e32 v33, v89, v97
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v89.h, v223.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v92, v97
	v_sub_f32_e32 v35, v91, v97
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v94, v97
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v93, v97
	v_sub_f32_e32 v40, v96, v97
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v95, v97
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v100, v165 offset:2560
	ds_load_u16_d16 v250, v165 offset:2624
	ds_load_u16_d16 v101, v165 offset:2816
	ds_load_u16_d16 v251, v165 offset:2880
	ds_load_u16_d16 v102, v165 offset:3072
	ds_load_u16_d16 v252, v165 offset:3136
	ds_load_u16_d16 v103, v165 offset:3328
	ds_load_u16_d16 v253, v165 offset:3392
	ds_load_u16_d16 v104, v165 offset:3584
	ds_load_u16_d16 v254, v165 offset:3648
	ds_load_u16_d16 v105, v165 offset:3840
	ds_load_u16_d16 v99, v165 offset:2304
	ds_load_u16_d16_hi v98, v165 offset:2176
	ds_load_u16_d16_hi v249, v165 offset:2496
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s58
	v_cndmask_b32_e64 v33, 0, v33, s59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s57
	v_cndmask_b32_e64 v35, 0, v35, s56
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v89.l, v34.h
	v_cmp_o_f32_e64 s58, v34, v34
	v_cmp_o_f32_e64 s59, v33, v33
	v_cmp_o_f32_e64 s57, v36, v36
	v_cmp_o_f32_e64 s56, v35, v35
	v_and_b32_e32 v89, 1, v89
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s54
	v_cndmask_b32_e64 v37, 0, v37, s55
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v89, v34, v89, 0x7fff
	v_mov_b16_e32 v34.l, v33.h
	v_mov_b16_e64 v34.h, v223.l
	v_cmp_o_f32_e64 s54, v38, v38
	v_cmp_o_f32_e64 s55, v37, v37
	v_cndmask_b16 v89.h, 0x7fff, v89.h, s58
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v100, v165 offset:2688
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v250, v165 offset:2752
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v101, v165 offset:2944
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v251, v165 offset:3008
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v102, v165 offset:3200
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v252, v165 offset:3264
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v103, v165 offset:3456
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v253, v165 offset:3520
	ds_load_u16_d16 v255, v165 offset:3904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v104, v165 offset:3712
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v254, v165 offset:3776
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v105, v165 offset:3968
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v99, v165 offset:2432
	ds_load_u16_d16 v131, v165 offset:2400
	ds_load_u16_d16 v132, v165 offset:2656
	ds_load_u16_d16 v133, v165 offset:2912
	ds_load_u16_d16 v134, v165 offset:3168
	ds_load_u16_d16 v135, v165 offset:3424
	ds_load_u16_d16 v136, v165 offset:3680
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v34, 1, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s53
	v_cndmask_b32_e64 v39, 0, v39, s52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v33, v34, 0x7fff
	v_cmp_o_f32_e64 s53, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s52, v39, v39
	v_cndmask_b16 v89.l, 0x7fff, v34.h, s59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v89, s96, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v34, v89, v220
	v_perm_b32 v34, v34, v89, v221
	v_mov_b16_e32 v89.l, v36.h
	v_mov_b16_e64 v89.h, v223.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v89, 1, v89
	v_add3_u32 v89, v36, v89, 0x7fff
	v_mov_b16_e32 v36.l, v35.h
	v_mov_b16_e64 v36.h, v223.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v89.h, 0x7fff, v89.h, s57
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v36, v35, v36, 0x7fff
	v_cndmask_b16 v89.l, 0x7fff, v36.h, s56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v36, v89, s96, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v36, v89, v220
	v_perm_b32 v36, v36, v89, v221
	v_mov_b16_e32 v89.l, v38.h
	v_mov_b16_e64 v89.h, v223.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v89, 1, v89
	v_add3_u32 v89, v38, v89, 0x7fff
	v_mov_b16_e32 v38.l, v37.h
	v_mov_b16_e64 v38.h, v223.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v89.h, 0x7fff, v89.h, s54
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v38, v37, v38, 0x7fff
	v_cndmask_b16 v89.l, 0x7fff, v38.h, s55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v38, v89, s96, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v38, v89, v220
	v_perm_b32 v38, v38, v89, v221
	v_mov_b16_e32 v89.l, v40.h
	v_mov_b16_e64 v89.h, v223.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v89, 1, v89
	v_add3_u32 v89, v40, v89, 0x7fff
	v_mov_b16_e32 v40.l, v39.h
	v_mov_b16_e64 v40.h, v223.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v89.h, 0x7fff, v89.h, s53
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v40, v39, v40, 0x7fff
	v_cndmask_b16 v89.l, 0x7fff, v40.h, s52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v40, v89, s96, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v40, v89, v220
	v_perm_b32 v40, v40, v89, v221
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v255, v165 offset:4032
	ds_load_u16_d16 v89, v165 offset:4096
	ds_load_u16_d16 v232, v165 offset:4160
	ds_load_u16_d16 v137, v165 offset:3936
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[98:105], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v225, v165 offset:2464
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v131, v165 offset:2528
	ds_load_u16_d16_hi v226, v165 offset:2720
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v132, v165 offset:2784
	ds_load_u16_d16_hi v227, v165 offset:2976
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v133, v165 offset:3040
	ds_load_u16_d16_hi v228, v165 offset:3232
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v134, v165 offset:3296
	ds_load_u16_d16_hi v229, v165 offset:3488
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v135, v165 offset:3552
	ds_load_u16_d16_hi v230, v165 offset:3744
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v136, v165 offset:3808
	ds_load_u16_d16_hi v231, v165 offset:4000
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v137, v165 offset:4064
	ds_load_u16_d16 v233, v165 offset:4416
	ds_load_u16_d16_hi v232, v165 offset:4288
	ds_load_u16_d16 v98, v165 offset:4128
	ds_load_u16_d16 v240, v165 offset:4192
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[248:255], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v91, v165 offset:4608
	ds_load_u16_d16 v234, v165 offset:4672
	ds_load_u16_d16 v92, v165 offset:4864
	ds_load_u16_d16 v235, v165 offset:4928
	ds_load_u16_d16 v93, v165 offset:5120
	ds_load_u16_d16 v236, v165 offset:5184
	ds_load_u16_d16 v94, v165 offset:5376
	ds_load_u16_d16 v237, v165 offset:5440
	ds_load_u16_d16 v95, v165 offset:5632
	ds_load_u16_d16 v238, v165 offset:5696
	ds_load_u16_d16 v96, v165 offset:5888
	ds_load_u16_d16 v90, v165 offset:4352
	ds_load_u16_d16_hi v89, v165 offset:4224
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v233, v165 offset:4544
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[224:231], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[130:137], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v82, v97
	v_sub_f32_e32 v33, v81, v97
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v81.h, v223.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v84, v97
	v_sub_f32_e32 v35, v83, v97
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v86, v97
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v85, v97
	v_sub_f32_e32 v40, v88, v97
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v87, v97
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v91, v165 offset:4736
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v234, v165 offset:4800
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v92, v165 offset:4992
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v235, v165 offset:5056
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v93, v165 offset:5248
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v236, v165 offset:5312
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v94, v165 offset:5504
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v237, v165 offset:5568
	ds_load_u16_d16 v239, v165 offset:5952
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v95, v165 offset:5760
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v238, v165 offset:5824
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v96, v165 offset:6016
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v90, v165 offset:4480
	ds_load_u16_d16 v241, v165 offset:4448
	ds_load_u16_d16 v242, v165 offset:4704
	ds_load_u16_d16 v243, v165 offset:4960
	ds_load_u16_d16 v244, v165 offset:5216
	ds_load_u16_d16 v245, v165 offset:5472
	ds_load_u16_d16 v246, v165 offset:5728
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s50
	v_cndmask_b32_e64 v33, 0, v33, s51
	v_cndmask_b32_e64 v36, 0, v36, s49
	v_cndmask_b32_e64 v35, 0, v35, s48
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v81.l, v34.h
	v_cmp_o_f32_e64 s50, v34, v34
	v_cmp_o_f32_e64 s51, v33, v33
	v_cmp_o_f32_e64 s49, v36, v36
	v_cmp_o_f32_e64 s48, v35, v35
	v_and_b32_e32 v81, 1, v81
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s45
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s46
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v81, v34, v81, 0x7fff
	v_mov_b16_e32 v34.l, v33.h
	v_mov_b16_e64 v34.h, v223.l
	v_cmp_o_f32_e64 s45, v38, v38
	v_cmp_o_f32_e64 s46, v37, v37
	v_cndmask_b16 v81.h, 0x7fff, v81.h, s50
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v99, v165 offset:4384
	ds_load_u16_d16 v100, v165 offset:4640
	ds_load_u16_d16 v101, v165 offset:4896
	ds_load_u16_d16 v102, v165 offset:5152
	ds_load_u16_d16 v103, v165 offset:5408
	ds_load_u16_d16 v104, v165 offset:5664
	ds_load_u16_d16 v105, v165 offset:5920
	ds_load_u16_d16_hi v98, v165 offset:4256
	ds_load_u16_d16_hi v240, v165 offset:4320
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v34, 1, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s47
	v_cndmask_b32_e64 v39, 0, v39, s44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v33, v34, 0x7fff
	v_cmp_o_f32_e64 s44, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v81.l, 0x7fff, v34.h, s51
	v_permlanex16_b32 v34, v81, s96, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v34, v81, v220
	v_perm_b32 v34, v34, v81, v221
	v_mov_b16_e32 v81.l, v36.h
	v_mov_b16_e64 v81.h, v223.l
	v_and_b32_e32 v81, 1, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v81, v36, v81, 0x7fff
	v_mov_b16_e32 v36.l, v35.h
	v_mov_b16_e64 v36.h, v223.l
	v_cndmask_b16 v81.h, 0x7fff, v81.h, s49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v35, v36, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v81.l, 0x7fff, v36.h, s48
	v_permlanex16_b32 v36, v81, s96, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v36, v81, v220
	v_perm_b32 v36, v36, v81, v221
	v_mov_b16_e32 v81.l, v38.h
	v_mov_b16_e64 v81.h, v223.l
	v_and_b32_e32 v81, 1, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v81, v38, v81, 0x7fff
	v_mov_b16_e32 v38.l, v37.h
	v_mov_b16_e64 v38.h, v223.l
	v_cndmask_b16 v81.h, 0x7fff, v81.h, s45
	v_cmp_o_f32_e64 s45, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v37, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v81.l, 0x7fff, v38.h, s46
	v_permlanex16_b32 v38, v81, s96, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v38, v81, v220
	v_perm_b32 v38, v38, v81, v221
	v_mov_b16_e32 v81.l, v40.h
	v_mov_b16_e64 v81.h, v223.l
	v_and_b32_e32 v81, 1, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v81, v40, v81, 0x7fff
	v_mov_b16_e32 v40.l, v39.h
	v_mov_b16_e64 v40.h, v223.l
	v_cndmask_b16 v81.h, 0x7fff, v81.h, s45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v39, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v81.l, 0x7fff, v40.h, s44
	v_permlanex16_b32 v40, v81, s96, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v40, v81, v220
	v_perm_b32 v40, v40, v81, v221
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v239, v165 offset:6080
	ds_load_u16_d16 v81, v165 offset:6144
	ds_load_u16_d16 v130, v165 offset:6208
	ds_load_u16_d16 v247, v165 offset:5984
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(19)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[89:96], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v99, v165 offset:4512
	ds_load_u16_d16_hi v241, v165 offset:4576
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v100, v165 offset:4768
	ds_load_u16_d16_hi v242, v165 offset:4832
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v101, v165 offset:5024
	ds_load_u16_d16_hi v243, v165 offset:5088
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v102, v165 offset:5280
	ds_load_u16_d16_hi v244, v165 offset:5344
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v103, v165 offset:5536
	ds_load_u16_d16_hi v245, v165 offset:5600
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v104, v165 offset:5792
	ds_load_u16_d16_hi v246, v165 offset:5856
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v105, v165 offset:6048
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v247, v165 offset:6112
	ds_load_u16_d16 v131, v165 offset:6464
	ds_load_u16_d16_hi v130, v165 offset:6336
	ds_load_u16_d16 v89, v165 offset:6176
	ds_load_u16_d16 v224, v165 offset:6240
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[232:239], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v83, v165 offset:6656
	ds_load_u16_d16 v132, v165 offset:6720
	ds_load_u16_d16 v84, v165 offset:6912
	ds_load_u16_d16 v133, v165 offset:6976
	ds_load_u16_d16 v85, v165 offset:7168
	ds_load_u16_d16 v134, v165 offset:7232
	ds_load_u16_d16 v86, v165 offset:7424
	ds_load_u16_d16 v135, v165 offset:7488
	ds_load_u16_d16 v87, v165 offset:7680
	ds_load_u16_d16 v136, v165 offset:7744
	ds_load_u16_d16 v88, v165 offset:7936
	ds_load_u16_d16 v82, v165 offset:6400
	ds_load_u16_d16_hi v81, v165 offset:6272
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v131, v165 offset:6592
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[98:105], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[240:247], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v58, v97
	v_sub_f32_e32 v35, v59, v97
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v41, v41
	v_max_f32_e32 v59, v45, v45
.Ltmp7:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v60, v97
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v60, v71, v67, v72
.Ltmp9:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v38, v62, v97
.Ltmp10:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v59, v58
	v_max3_f32 v59, v42, v47, v43
.Ltmp11:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v40, v64, v97
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v83, v165 offset:6784
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v132, v165 offset:6848
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v84, v165 offset:7040
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v133, v165 offset:7104
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v85, v165 offset:7296
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v134, v165 offset:7360
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v86, v165 offset:7552
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v135, v165 offset:7616
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v87, v165 offset:7808
	ds_load_u16_d16 v137, v165 offset:8000
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v136, v165 offset:7872
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v88, v165 offset:8064
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v82, v165 offset:6528
	ds_load_u16_d16 v225, v165 offset:6496
	ds_load_u16_d16 v226, v165 offset:6752
	ds_load_u16_d16 v227, v165 offset:7008
	ds_load_u16_d16 v228, v165 offset:7264
	ds_load_u16_d16 v229, v165 offset:7520
	ds_load_u16_d16 v230, v165 offset:7776
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v58, v58, v46, v59
	v_max3_f32 v59, v65, v70, v66
.Ltmp13:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s42
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s41
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v137, v165 offset:8128
	ds_load_u16_d16 v231, v165 offset:8032
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v59, v59, v60, v68
	v_max3_f32 v60, v48, v44, v69
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s42, v34, v34
	v_cmp_o_f32_e64 s41, v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s38
	v_cndmask_b32_e64 v40, 0, v40, s37
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v58, v58, v60, v59
.Ltmp17:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v90, v165 offset:6432
	ds_load_u16_d16 v91, v165 offset:6688
	ds_load_u16_d16 v92, v165 offset:6944
	ds_load_u16_d16 v93, v165 offset:7200
	ds_load_u16_d16 v94, v165 offset:7456
	ds_load_u16_d16 v95, v165 offset:7712
	ds_load_u16_d16 v96, v165 offset:7968
	ds_load_u16_d16_hi v89, v165 offset:6304
	ds_load_u16_d16_hi v224, v165 offset:6368
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v90, v165 offset:6560
	ds_load_u16_d16_hi v225, v165 offset:6624
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v91, v165 offset:6816
	ds_load_u16_d16_hi v226, v165 offset:6880
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v92, v165 offset:7072
	ds_load_u16_d16_hi v227, v165 offset:7136
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v93, v165 offset:7328
	ds_load_u16_d16_hi v228, v165 offset:7392
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v94, v165 offset:7584
	ds_load_u16_d16_hi v229, v165 offset:7648
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v95, v165 offset:7840
	ds_load_u16_d16_hi v230, v165 offset:7904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v96, v165 offset:8096
	ds_load_u16_d16_hi v231, v165 offset:8160
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v59, v58
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s38, v38, v38
	v_cmp_o_f32_e64 s37, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v59 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v58, v58, v59
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v59, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v59, v59 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v58, v58, v59
.Ltmp24:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v59, v158, v158
	v_dual_max_f32 v158, v59, v58 :: v_dual_sub_f32 v33, v57, v97
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v57.l, v34.h
	v_mov_b16_e64 v57.h, v223.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v37, v61, v97 :: v_dual_sub_f32 v64, v66, v158
	v_sub_f32_e32 v60, v70, v158
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v62, v72, v158 :: v_dual_and_b32 v57, 1, v57
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v39, v63, v97 :: v_dual_sub_f32 v66, v68, v158
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v57, v34, v57, 0x7fff
	v_mov_b16_e64 v34.h, v223.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v47, v158
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s43
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v57.h, 0x7fff, v57.h, s42
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s40
	v_cndmask_b32_e64 v37, 0, v37, s39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s43, v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v43, v158
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s40, v35, v35
	v_cmp_o_f32_e64 s39, v37, v37
	v_and_b32_e32 v34, 1, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s36
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v45, v45, v158
	v_sub_f32_e32 v41, v41, v158
	v_sub_f32_e32 v59, v69, v158
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v34, v33, v34, 0x7fff
	v_cmp_o_f32_e64 s36, v39, v39
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v61, v71, v158
	v_sub_f32_e32 v63, v65, v158
	v_sub_f32_e32 v65, v67, v158
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v57.l, 0x7fff, v34.h, s43
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v46, v158
	v_sub_f32_e32 v42, v42, v158
	v_sub_f32_e32 v48, v48, v158
	v_sub_f32_e32 v44, v44, v158
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v34, v57, s96, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v34, v57, v220
	v_perm_b32 v34, v34, v57, v221
	v_mov_b16_e32 v57.l, v36.h
	v_mov_b16_e64 v57.h, v223.l
	v_and_b32_e32 v57, 1, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v57, v36, v57, 0x7fff
	v_mov_b16_e32 v36.l, v35.h
	v_mov_b16_e64 v36.h, v223.l
	v_cndmask_b16 v57.h, 0x7fff, v57.h, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v35, v36, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v57.l, 0x7fff, v36.h, s40
	v_permlanex16_b32 v36, v57, s96, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v36, v57, v220
	v_perm_b32 v36, v36, v57, v221
	v_mov_b16_e32 v57.l, v38.h
	v_mov_b16_e64 v57.h, v223.l
	v_and_b32_e32 v57, 1, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v57, v38, v57, 0x7fff
	v_mov_b16_e32 v38.l, v37.h
	v_mov_b16_e64 v38.h, v223.l
	v_cndmask_b16 v57.h, 0x7fff, v57.h, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v37, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v57.l, 0x7fff, v38.h, s39
	v_permlanex16_b32 v38, v57, s96, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v38, v57, v220
	v_perm_b32 v38, v38, v57, v221
	v_mov_b16_e32 v57.l, v40.h
	v_mov_b16_e64 v57.h, v223.l
	v_and_b32_e32 v57, 1, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v57, v40, v57, 0x7fff
	v_mov_b16_e64 v40.h, v223.l
	v_mov_b16_e32 v40.l, v39.h
	v_cndmask_b16 v57.h, 0x7fff, v57.h, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v39, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v57.l, 0x7fff, v40.h, s36
	v_permlanex16_b32 v40, v57, s96, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_perm_b32 v39, v40, v57, v220
	v_perm_b32 v40, v40, v57, v221
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[89:96], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[130:137], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[224:231], v[33:40], v[1:8]
.Ltmp25:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v49, v49
	v_max_f32_e32 v34, v53, v53
	v_max3_f32 v35, v79, v75, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v224, v97 :: v_dual_max_f32 v33, v34, v33
	v_max3_f32 v34, v50, v55, v51
	v_max3_f32 v33, v33, v54, v34
	v_max3_f32 v34, v73, v78, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v34, v34, v35, v76
	v_max3_f32 v35, v56, v52, v77
	v_max3_f32 v33, v33, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v35, v33, v34
.Ltmp30:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v157, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v157, v33, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v53, v157
	v_sub_f32_e32 v38, v49, v157
	v_sub_f32_e32 v34, v54, v157
	v_sub_f32_e32 v39, v50, v157
	v_sub_f32_e32 v37, v56, v157
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v34, v34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v55, v157
	v_sub_f32_e32 v40, v51, v157
	v_sub_f32_e32 v49, v52, v157
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v50, v77, v157
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v54, v73, v157
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s14
	v_cndmask_b32_e64 v38, 0, v38, s34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v56, v75, v157
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s12
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v79, v157
	v_sub_f32_e32 v51, v78, v157
.Ltmp31:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v38
.Ltmp32:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v39
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s9
	v_cndmask_b32_e64 v37, 0, v37, s8
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v54
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v55, v74, v157
	v_sub_f32_e32 v53, v80, v157
	v_sub_f32_e32 v57, v76, v157
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s31
	v_cndmask_b32_e64 v39, 0, v39, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v38
.Ltmp34:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v40
	v_exp_f32_e32 v40, v55
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp36:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s29
	v_cndmask_b32_e64 v40, 0, v40, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v38
.Ltmp38:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v49
	v_exp_f32_e32 v49, v56
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v49, 0, v49, s21
.Ltmp39:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp40:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v50
	v_exp_f32_e32 v50, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v36, v37
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp42:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s6
	v_cndmask_b32_e64 v50, 0, v50, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp44:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v51
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v40
.Ltmp46:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v52
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v38, v39
.Ltmp48:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v45
	v_exp_f32_e32 v39, v41
	v_exp_f32_e32 v41, v43
	v_exp_f32_e32 v43, v63
	v_exp_f32_e32 v45, v65
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
.Ltmp49:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v49
.Ltmp50:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v53
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s18
	v_cndmask_b32_e64 v39, 0, v39, s35
	v_cndmask_b32_e64 v41, 0, v41, s30
	v_cndmask_b32_e64 v43, 0, v43, s26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v45, 0, v45, s23
.Ltmp51:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp52:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v46
	v_exp_f32_e32 v46, v66
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s3
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v162
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v49, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp54:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s17
	v_cndmask_b32_e64 v46, 0, v46, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v40, v49
.Ltmp56:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v42
	v_exp_f32_e32 v42, v44
	v_exp_f32_e32 v44, v64
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_add_f32_e32 v33, v33, v36
.Ltmp58:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v42, 0, v42, s28
	v_cndmask_b32_e64 v44, 0, v44, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v36, v33 :: v_dual_add_f32 v39, v39, v40
.Ltmp60:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v47
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v34, v38, v39 :: v_dual_add_f32 v33, v33, v36
.Ltmp63:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp65:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v48
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp66:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v42
.Ltmp67:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v59
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_e32 v34, v34, v38
.Ltmp69:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp71:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v60
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp72:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v43, v43, v44
.Ltmp73:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v61
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v42, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp75:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s11
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v44, v44, v45
.Ltmp77:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s7
.Ltmp78:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v45, v45, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v40, v44, v45
	v_add_f32_e32 v37, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v34, v34, v37
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v36, v33 :: v_dual_mov_b32 v37, v34
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v33, v33, v36 :: v_dual_max_f32 v36, v162, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v34, v34, v37 :: v_dual_max_f32 v35, v36, v35
.Ltmp83:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v36, v162, v35
	v_mov_b32_e32 v162, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v36, v36
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v36, 0, v36, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v222
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v33, v167, v36 :: v_dual_max_f32 v36, v222, v222
	v_dual_mov_b32 v167, v33 :: v_dual_max_f32 v36, v36, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v37, v222, v36 :: v_dual_mov_b32 v222, v36
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v37, 0, v37, s3
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s3, s97, 64
	s_cmpk_lt_u32 s97, 0x7c0
	s_mov_b32 s97, s3
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v34, v166, v37
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v166, v34
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_6
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s98, s97, s82
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v37, 0, v164
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[33:34], null, s98, s80, v[113:114]
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v65, s72 :: v_dual_mov_b32 v70, s77
	v_dual_mov_b32 v66, s73 :: v_dual_mov_b32 v67, s74
	v_dual_mov_b32 v72, s79 :: v_dual_mov_b32 v69, s76
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v71, s78
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s4, s83, s97
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v68, s75
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[33:36], v33, s[88:91], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[33:34]
	ds_store_b64 v170, v[35:36]
	v_add_nc_u32_e32 v37, 0, v168
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[33:36], v37 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v37 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[37:40], v173 offset1:1
	ds_load_2addr_stride64_b64 v[77:80], v173 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[41:44], v174 offset1:1
	ds_load_2addr_stride64_b64 v[81:84], v174 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[45:48], v175 offset1:1
	ds_load_2addr_stride64_b64 v[85:88], v175 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[33:34], v[116:117], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[35:36], v[116:117], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[37:38], v[120:121], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[39:40], v[120:121], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[75:76], v[116:117], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[41:42], v[118:119], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[43:44], v[118:119], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[79:80], v[120:121], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[45:46], v[122:123], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[47:48], v[122:123], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[116:117], v[65:72] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v65, s97, v177, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[83:84], v[118:119], v[33:40] neg_lo:[1,1,0]
	v_mov_b32_e32 v66, 0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[77:78], v[120:121], v[41:48] neg_lo:[1,1,0]
	v_mov_b32_e32 v67, 0
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v102, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v178, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[87:88], v[122:123], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[81:82], v[118:119], v[41:48] neg_lo:[1,1,0]
	v_mov_b32_e32 v68, 0
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v104, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v179, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[85:86], v[122:123], v[41:48] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v103, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v180, 1
	buffer_load_u16 v101, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v181, 1
	buffer_load_u16 v100, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v182, 1
	buffer_load_u16 v99, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v183, 1
	buffer_load_u16 v98, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v184, 1
	buffer_load_u16 v97, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v185, 1
	buffer_load_u16 v96, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v186, 1
	buffer_load_u16 v95, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v187, 1
	buffer_load_u16 v94, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v188, 1
	buffer_load_u16 v93, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v189, 1
	buffer_load_u16 v92, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v190, 1
	buffer_load_u16 v91, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v191, 1
	buffer_load_u16 v90, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v192, 1
	buffer_load_u16 v89, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v193, 1
	buffer_load_u16 v87, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v194, 1
	buffer_load_u16 v86, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v195, 1
	buffer_load_u16 v85, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v196, 1
	buffer_load_u16 v84, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v197, 1
	buffer_load_u16 v83, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v198, 1
	buffer_load_u16 v82, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v199, 1
	buffer_load_u16 v81, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v200, 1
	buffer_load_u16 v80, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v201, 1
	buffer_load_u16 v79, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v202, 1
	buffer_load_u16 v78, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v203, 1
	buffer_load_u16 v77, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v204, 1
	buffer_load_u16 v76, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v205, 1
	buffer_load_u16 v75, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v206, 1
	buffer_load_u16 v74, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v207, 1
	buffer_load_u16 v73, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s97, v208, 1
	buffer_load_u16 v88, v65, s[92:95], 0 offen
	v_mov_b32_e32 v65, 0
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s5, s0
	s_cbranch_execz .LBB0_4
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	v_add_nc_u32_e32 v65, s4, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v66, 31, v65
	v_add_co_u32 v65, s3, s84, v65
	v_add_co_ci_u32_e64 v66, null, s85, v66, s3
	global_load_b128 v[65:68], v[65:66], off
.LBB0_4:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s5, s0
	s_cbranch_execz .LBB0_1
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v69, s4, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v70, 31, v69
	v_add_co_u32 v69, s3, s84, v69
	v_add_co_ci_u32_e64 v70, null, s85, v70, s3
	global_load_b128 v[69:72], v[69:70], off
	s_branch .LBB0_1
.LBB0_6:
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	scratch_load_b32 v37, off, off offset:28 ; 4-byte Folded Reload
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v35, 0x80, v160
	v_add_nc_u32_e32 v36, 0, v163
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v0, 4, v0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v0, v36, v35, v0
	s_waitcnt vmcnt(0)
	v_lshl_add_u32 v37, v37, 1, 0
	ds_store_b64 v37, v[33:34]
	s_waitcnt lgkmcnt(0)
	s_barrier
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
	v_div_scale_f32 v36, s0, v26, v0, v26
	v_div_scale_f32 v38, s1, v27, v0, v27
	v_div_scale_f32 v40, s3, v28, v0, v28
	v_fma_f32 v58, -v41, v49, 1.0
	v_dual_fmac_f32 v46, v55, v46 :: v_dual_fmac_f32 v47, v56, v47
	v_fmac_f32_e32 v48, v57, v48
	v_mul_f32_e32 v54, v34, v45
	v_fma_f32 v59, -v43, v50, 1.0
	v_fmac_f32_e32 v49, v58, v49
	v_dual_mul_f32 v55, v36, v46 :: v_dual_mul_f32 v56, v38, v47
	v_mul_f32_e32 v57, v40, v48
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s4, v29, v0, v29
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
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v52, null, v0, v0, v32
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v51, s5, v30, v0, v30
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
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
	v_div_scale_f32 v35, s1, v31, v0, v31
	v_fma_f32 v38, -v52, v37, 1.0
	v_rcp_f32_e32 v40, v36
	v_fmac_f32_e32 v62, v58, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v34, v33, v50 :: v_dual_mul_f32 v33, v35, v53
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s3, v32, v0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v36, v40, 1.0
	v_mul_f32_e32 v43, v38, v37
	v_div_scale_f32 v46, null, v0, v0, v18
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v40, v45, v40
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	v_div_scale_f32 v45, s4, v17, v0, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v30, v34, v0, v30
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v35, v45, v40
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v29, v39, v0, v29
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	v_fma_f32 v38, -v36, v35, v45
	v_div_scale_f32 v42, null, v0, v0, v19
	v_fmac_f32_e32 v41, v39, v41
	v_div_scale_f32 v44, s1, v18, v0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v38, v40
	v_rcp_f32_e32 v39, v42
	v_div_scale_f32 v47, null, v0, v0, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v38, v44, v41
	v_div_fixup_f32 v31, v33, v0, v31
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v45, null, v0, v0, v21
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v36, s3, v19, v0, v19
	v_div_fmas_f32 v34, v34, v37, v43
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v40, v35
	v_rcp_f32_e32 v35, v45
	v_fma_f32 v43, -v42, v39, 1.0
	v_div_fixup_f32 v32, v34, v0, v32
	v_fma_f32 v34, -v46, v38, v44
	v_div_fixup_f32 v17, v33, v0, v17
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v39, v43, v39
	v_div_scale_f32 v40, s4, v20, v0, v20
	v_fma_f32 v43, -v47, v37, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v45, v35, 1.0
	v_fmac_f32_e32 v38, v34, v41
	v_mul_f32_e32 v34, v36, v39
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v49, v35
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v22
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v48, v43
	v_fmac_f32_e32 v34, v44, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v43, v48, 1.0
	v_fmac_f32_e32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_div_scale_f32 v41, s1, v21, v0, v21
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v18, v33, v0, v18
	v_fma_f32 v33, -v42, v34, v36
	v_mul_f32_e32 v36, v41, v35
	v_mul_f32_e32 v46, v40, v37
	v_div_scale_f32 v42, null, v0, v0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v39, v34
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v47, v46, v40
	v_fma_f32 v39, -v45, v36, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v19, v33, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v38, v37
	v_div_scale_f32 v38, s5, v22, v0, v22
	v_fmac_f32_e32 v36, v39, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
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
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v0, v0, v10
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v39, -v43, v44, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_fixup_f32 v20, v34, v0, v20
	v_div_scale_f32 v34, s3, v23, v0, v23
	v_fmac_f32_e32 v44, v39, v48
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v39, -v47, v37, 1.0
	v_div_fixup_f32 v21, v33, v0, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v43, v44, v38
	v_div_scale_f32 v38, null, v0, v0, v9
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s1, v24, v0, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v41, v38
	v_fmac_f32_e32 v40, v46, v40
	v_div_fmas_f32 v35, v35, v48, v44
	v_div_scale_f32 v48, null, v0, v0, v12
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v36, v34, v40
	v_div_fixup_f32 v22, v35, v0, v22
	v_rcp_f32_e32 v35, v45
	v_rcp_f32_e32 v50, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v42, v36, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
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
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, s3, v10, v0, v10
	v_div_fixup_f32 v23, v34, v0, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v49, v40, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v42, v43, 1.0
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v11, v0, v11
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v9, v0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v47, v44, v39
	v_mul_f32_e32 v39, v33, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v37, v44
	v_fma_f32 v47, -v38, v39, v33
	s_mov_b32 vcc_lo, s4
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
	v_div_scale_f32 v36, s1, v12, v0, v12
	v_fma_f32 v38, -v45, v49, v40
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v39, v36, v50 :: v_dual_mul_f32 v44, v46, v43
	v_div_fmas_f32 v35, v38, v35, v49
	v_div_scale_f32 v40, null, v0, v0, v14
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v34, -v42, v44, v46
	v_div_fixup_f32 v9, v33, v0, v9
	v_div_fixup_f32 v10, v35, v0, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v42, v44, v46
	v_rcp_f32_e32 v42, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v41, -v37, v34, 1.0
	v_fma_f32 v43, -v48, v39, v36
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v11, v38, v0, v11
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v13, v0, v13
	v_fmac_f32_e32 v39, v43, v50
	v_div_scale_f32 v38, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v37, v33, v41
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v0, v14
	v_div_fmas_f32 v36, v36, v50, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v43, v34
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v36, v0, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_mul_f32_e32 v39, v35, v42
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v34, null, v0, v0, v1
	v_fmac_f32_e32 v44, v41, v44
	v_fma_f32 v37, -v40, v39, v35
	v_div_scale_f32 v36, s1, v15, v0, v15
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
	v_div_scale_f32 v33, s3, v16, v0, v16
	v_rcp_f32_e32 v47, v41
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v34, v37, 1.0
	v_div_scale_f32 v48, s4, v1, v0, v1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
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
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	v_rcp_f32_e32 v50, v46
	v_div_scale_f32 v49, s5, v2, v0, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v38, v49, v47
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v44, v40
	v_fma_f32 v33, -v43, v42, v33
	v_div_scale_f32 v40, null, v0, v0, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v39, -v46, v50, 1.0
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v0, v3
	v_div_fixup_f32 v15, v35, v0, v15
	v_fma_f32 v34, -v34, v51, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v33, v0, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_fmas_f32 v34, v34, v37, v51
	s_mov_b32 vcc_lo, s5
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
	v_cndmask_b32_e64 v15, 0, v15, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v2, v37, v0, v2
	v_fma_f32 v33, -v46, v36, v39
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v37, null, v0, v0, v7
	v_rcp_f32_e32 v46, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v45, -v35, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v45, v39
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v50, -v44, v46, 1.0
	v_mul_f32_e32 v51, v45, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v0, v7
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	v_fma_f32 v47, -v40, v43, v38
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v33, v36
	v_dual_fmac_f32 v43, v47, v42 :: v_dual_mul_f32 v52, v48, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
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
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v34, v49, v33
	v_fma_f32 v34, -v44, v53, v50
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v35, -v35, v51, v45
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v39, v51
	v_fma_f32 v36, -v44, v53, v50
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v33, v0, v5
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	scratch_load_b32 v35, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1051 17                       ; attention.py:1051:17
	scratch_load_b32 v34, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s81, v125
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	v_cndmask_b32_e64 v29, 0, v30, s0
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	scratch_load_b32 v32, off, off          ; 4-byte Folded Reload
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s5, s87, 0xffff
	s_mov_b32 s4, s86
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s81, v129
	v_cmp_gt_i32_e64 s1, s81, v152
	v_cmp_gt_i32_e64 s3, s81, v144
	.loc	1 1046 24                       ; attention.py:1046:24
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v32, s81, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v125, 2
	v_add_lshl_u32 v34, v32, v34, 2
	v_add_lshl_u32 v35, v32, v35, 2
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x2
	buffer_store_b32 v8, v33, s[4:7], 0 offen
	buffer_store_b32 v25, v34, s[4:7], 0 offen
	buffer_store_b32 v26, v35, s[4:7], 0 offen
	v_add_lshl_u32 v8, v32, v128, 2
	v_add_lshl_u32 v25, v32, v127, 2
	v_add_lshl_u32 v26, v32, v126, 2
	v_add_lshl_u32 v33, v32, v124, 2
	v_add_lshl_u32 v34, v32, v159, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x4
	buffer_store_b32 v27, v8, s[4:7], 0 offen
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v33, s[4:7], 0 offen
	buffer_store_b32 v31, v34, s[4:7], 0 offen
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v25, off, off offset:12
	scratch_load_b32 v26, off, off offset:8
	scratch_load_b32 v27, off, off offset:4
	v_add_lshl_u32 v8, v32, v129, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v28, v32, v156, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v25, v32, v25, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v26, v32, v26, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v27, v32, v27, 2
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v27, 0x80000000, v27
	s_clause 0x2
	buffer_store_b32 v17, v8, s[4:7], 0 offen
	buffer_store_b32 v18, v25, s[4:7], 0 offen
	buffer_store_b32 v19, v26, s[4:7], 0 offen
	v_add_lshl_u32 v17, v32, v155, 2
	v_add_lshl_u32 v19, v32, v153, 2
	v_cndmask_b32_e32 v8, 0x80000000, v28, vcc_lo
	v_add_lshl_u32 v18, v32, v154, 2
	buffer_store_b32 v20, v27, s[4:7], 0 offen
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	buffer_store_b32 v21, v8, s[4:7], 0 offen
	v_add_lshl_u32 v8, v32, v152, 2
	buffer_store_b32 v22, v17, s[4:7], 0 offen
	v_add_lshl_u32 v17, v32, v151, 2
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v18, s[4:7], 0 offen
	buffer_store_b32 v24, v19, s[4:7], 0 offen
	buffer_store_b32 v9, v8, s[4:7], 0 offen
	v_add_lshl_u32 v8, v32, v150, 2
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	v_add_lshl_u32 v17, v32, v149, 2
	v_add_lshl_u32 v18, v32, v148, 2
	v_add_lshl_u32 v19, v32, v147, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v10, v9, s[4:7], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v10, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	buffer_store_b32 v11, v8, s[4:7], 0 offen
	v_add_lshl_u32 v8, v32, v146, 2
	s_clause 0x2
	buffer_store_b32 v12, v9, s[4:7], 0 offen
	buffer_store_b32 v13, v10, s[4:7], 0 offen
	buffer_store_b32 v14, v17, s[4:7], 0 offen
	v_add_lshl_u32 v9, v32, v145, 2
	v_add_lshl_u32 v10, v32, v144, 2
	v_add_lshl_u32 v11, v32, v143, 2
	v_add_lshl_u32 v12, v32, v142, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v8, s[4:7], 0 offen
	buffer_store_b32 v16, v9, s[4:7], 0 offen
	buffer_store_b32 v1, v10, s[4:7], 0 offen
	buffer_store_b32 v2, v11, s[4:7], 0 offen
	buffer_store_b32 v3, v12, s[4:7], 0 offen
	scratch_load_b32 v9, off, off offset:24 ; 4-byte Folded Reload
	v_add_lshl_u32 v1, v32, v141, 2
	v_add_lshl_u32 v2, v32, v140, 2
	v_add_lshl_u32 v3, v32, v139, 2
	v_add_lshl_u32 v8, v32, v138, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v9, v32, v9, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x4
	buffer_store_b32 v4, v1, s[4:7], 0 offen
	buffer_store_b32 v5, v2, s[4:7], 0 offen
	buffer_store_b32 v6, v3, s[4:7], 0 offen
	buffer_store_b32 v7, v8, s[4:7], 0 offen
	buffer_store_b32 v0, v9, s[4:7], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp84:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 36
		.amdhsa_kernarg_size 152
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 99
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 99
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 36
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16724
; TotalNumSgprs: 101
; NumVgprs: 256
; ScratchSize: 36
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 101
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 36
    .sgpr_count:     101
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 8
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
