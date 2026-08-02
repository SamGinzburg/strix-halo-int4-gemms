	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s14, s[0:1], 0x88
	s_load_b32 s78, s[0:1], 0x60
.Ltmp0:
	.loc	1 773 86 prologue_end           ; attention.py:773:86
	v_lshlrev_b32_e32 v43, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v7, 1, v0
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x80
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 6
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 16, v43
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s79, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s4, v7
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s5, s4, s79
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v74, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v42, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v44, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[45:46], null, s78, v7, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s3, s78, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, s14
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s78, s5, v[45:46]
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s6, s2, 0x200
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s6, s6, 63
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v2, v7, 48, v42
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s7, s6, 31
	s_lshr_b32 s7, s7, 26
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[3:6], v1, s[8:11], 0 offen
	v_and_or_b32 v1, v44, 30, v74
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v46, s4, v2
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s4, s4, s12
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s93, s6, s7
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s4, s4, s14
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v1, 2, v1
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s4, s4, 0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v46
	v_or_b32_e32 v91, s5, v2
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s92, s4, 0x7fffffc0
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v7, 4, v1
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s93, s93, 63
	s_mov_b32 s4, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s92, s93
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v34, v1, v3
	ds_bpermute_b32 v35, v1, v4
	ds_bpermute_b32 v36, v1, v5
	ds_bpermute_b32 v38, v1, v6
	ds_bpermute_b32 v37, v7, v3
	ds_bpermute_b32 v39, v7, v4
	ds_bpermute_b32 v40, v7, v5
	ds_bpermute_b32 v41, v7, v6
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v33, s5, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 24 is_stmt 0                ; attention.py:0:24
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow106
	s_clause 0x1
	s_load_b64 s[76:77], s[0:1], 0x38
	s_load_b32 s67, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v90, 2, v74
	v_or_b32_e32 v89, 4, v74
	v_or_b32_e32 v88, 6, v74
	v_or_b32_e32 v87, 8, v74
	v_or_b32_e32 v86, 10, v74
	v_or_b32_e32 v85, 12, v74
	v_or_b32_e32 v84, 14, v74
	v_or_b32_e32 v83, 16, v74
	v_or_b32_e32 v82, 18, v74
	v_or_b32_e32 v81, 20, v74
	v_or_b32_e32 v80, 22, v74
	v_or_b32_e32 v79, 24, v74
	v_or_b32_e32 v78, 26, v74
	v_or_b32_e32 v77, 28, v74
	v_or_b32_e32 v76, 30, v74
	v_or_b32_e32 v75, 32, v74
	v_or_b32_e32 v73, 34, v74
	v_or_b32_e32 v72, 36, v74
	v_or_b32_e32 v71, 38, v74
	v_or_b32_e32 v70, 40, v74
	v_or_b32_e32 v69, 42, v74
	v_or_b32_e32 v68, 44, v74
	v_or_b32_e32 v67, 46, v74
	v_or_b32_e32 v66, 48, v74
	v_or_b32_e32 v65, 50, v74
	v_or_b32_e32 v64, 52, v74
	v_or_b32_e32 v61, 54, v74
	v_or_b32_e32 v59, 56, v74
	v_or_b32_e32 v63, 58, v74
	v_or_b32_e32 v62, 60, v74
	v_or_b32_e32 v60, 62, v1
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v92, v8
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_lshlrev_b32_e32 v1, 1, v91
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v56, 7, v0
	v_and_b32_e32 v5, 24, v44
	v_mov_b32_e32 v44, 0x5410
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	s_load_b32 s1, s[0:1], 0x68
	v_dual_mov_b32 v55, 0x7632 :: v_dual_add_nc_u32 v2, s14, v46
	v_dual_mov_b32 v18, v17 :: v_dual_and_b32 v3, 0x7f0, v43
	v_dual_mov_b32 v21, v17 :: v_dual_and_b32 v4, 24, v0
	v_bfe_i32 v6, v0, 3, 1
	v_dual_mov_b32 v19, v17 :: v_dual_and_b32 v54, 0x78, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v101, v3, v4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s81, s9, 0xffff
	s_mov_b32 s80, s8
	v_mov_b32_e32 v150, 0xff800000
	buffer_load_u16 v33, v1, s[80:83], 0 offen
	v_and_b32_e32 v1, 16, v0
	v_dual_mov_b32 v27, v17 :: v_dual_and_b32 v58, 0x410, v6
	v_mul_u32_u24_e32 v92, 0x90, v56
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v1
	v_lshl_or_b32 v102, v42, 5, v5
	v_dual_mov_b32 v25, v17 :: v_dual_lshlrev_b32 v42, 4, v56
	v_xor_b32_e32 v103, v92, v58
	v_cndmask_b32_e64 v47, v38, v41, s0
	v_cndmask_b32_e64 v49, v35, v39, s0
	v_cndmask_b32_e64 v51, v41, v38, s0
	v_cndmask_b32_e64 v53, v39, v35, s0
	v_cndmask_b32_e64 v38, 0x1054, v44, s0
	v_cndmask_b32_e64 v39, 0x3276, v55, s0
	v_cndmask_b32_e64 v46, v36, v40, s0
	v_cndmask_b32_e64 v48, v34, v37, s0
	v_cndmask_b32_e64 v50, v40, v36, s0
	v_cndmask_b32_e64 v52, v37, v34, s0
	v_xor_b32_e32 v34, 8, v101
	v_xor_b32_e32 v35, 8, v102
	v_xor_b32_e32 v36, 16, v102
	v_xor_b32_e32 v37, 24, v102
	v_xor_b32_e32 v40, v42, v54
	v_lshl_or_b32 v38, v38, 8, v38
	v_lshl_or_b32 v39, v39, 8, v39
	v_dual_mov_b32 v22, v17 :: v_dual_lshlrev_b32 v43, 3, v56
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v57, 1, v54
	v_dual_mov_b32 v24, v17 :: v_dual_add_nc_u32 v105, 0, v34
	v_dual_mov_b32 v26, v17 :: v_dual_add_nc_u32 v107, 0, v36
	v_dual_mov_b32 v28, v17 :: v_dual_and_b32 v39, 0x760076, v39
	v_dual_mov_b32 v29, v17 :: v_dual_add_nc_u32 v106, 0, v35
	v_dual_mov_b32 v31, v17 :: v_dual_add_nc_u32 v108, 0, v37
	v_dual_mov_b32 v9, v17 :: v_dual_and_b32 v38, 0x540054, v38
	v_lshl_or_b32 v104, v56, 10, v40
	v_xor_b32_e32 v40, 16, v103
	v_xor_b32_e32 v41, 32, v103
	v_xor_b32_e32 v42, 48, v103
	v_xor_b32_e32 v34, 0x60, v103
	v_xor_b32_e32 v35, 0x70, v103
	v_xor_b32_e32 v36, 0x820, v103
	v_xor_b32_e32 v37, 0x830, v103
	v_xor_b32_e32 v131, 0x1870, v103
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s0, s1, 0x3fb8aa3b
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[54:55], null, s67, v57, v[43:44]
	v_dual_mov_b32 v30, v17 :: v_dual_add_nc_u32 v109, 0, v40
	v_dual_mov_b32 v32, v17 :: v_dual_add_nc_u32 v111, 0, v42
	v_dual_mov_b32 v11, v17 :: v_dual_add_nc_u32 v110, 0, v41
	v_dual_mov_b32 v12, v17 :: v_dual_add_nc_u32 v115, 0, v35
	v_dual_mov_b32 v14, v17 :: v_dual_add_nc_u32 v117, 0, v37
	v_dual_mov_b32 v15, v17 :: v_dual_add_nc_u32 v114, 0, v34
	v_dual_mov_b32 v1, v17 :: v_dual_add_nc_u32 v116, 0, v36
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e32 vcc_lo, s67, v43
	v_xor_b32_e32 v43, 64, v103
	v_xor_b32_e32 v44, 0x50, v103
	v_xor_b32_e32 v55, 0x810, v103
	v_xor_b32_e32 v56, 0x860, v103
	v_xor_b32_e32 v57, 0x870, v103
	v_xor_b32_e32 v58, 0x840, v103
	v_xor_b32_e32 v92, 0x850, v103
	v_xor_b32_e32 v123, 0x1040, v103
	v_xor_b32_e32 v124, 0x1050, v103
	v_xor_b32_e32 v125, 0x1060, v103
	v_xor_b32_e32 v126, 0x1070, v103
	v_xor_b32_e32 v127, 0x1010, v103
	v_xor_b32_e32 v128, 0x1020, v103
	v_xor_b32_e32 v129, 0x1030, v103
	v_xor_b32_e32 v130, 0x1860, v103
	v_xor_b32_e32 v132, 0x1840, v103
	v_xor_b32_e32 v133, 0x1850, v103
	v_xor_b32_e32 v134, 0x1820, v103
	v_xor_b32_e32 v135, 0x1830, v103
	v_xor_b32_e32 v136, 0x1810, v103
	v_xor_b32_e32 v34, 0x90, v104
	v_xor_b32_e32 v35, 0x120, v104
	v_xor_b32_e32 v36, 0x1b0, v104
	v_xor_b32_e32 v37, 0x240, v104
	v_xor_b32_e32 v40, 0x2d0, v104
	v_xor_b32_e32 v41, 0x360, v104
	v_xor_b32_e32 v42, 0x3f0, v104
	v_lshl_or_b32 v38, v38, 4, v38
	v_lshl_or_b32 v39, v39, 4, v39
	v_or_b32_e32 v0, s79, v66
	v_or_b32_e32 v93, s79, v65
	v_or_b32_e32 v94, s79, v64
	v_or_b32_e32 v95, s79, v61
	v_or_b32_e32 v96, s79, v59
	v_or_b32_e32 v97, s79, v63
	v_or_b32_e32 v98, s79, v62
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v99, s12, v2
	v_dual_mov_b32 v23, v17 :: v_dual_add_nc_u32 v100, s13, v2
	v_dual_mov_b32 v10, v17 :: v_dual_add_nc_u32 v113, 0, v44
	v_dual_mov_b32 v13, v17 :: v_dual_add_nc_u32 v112, 0, v43
	v_dual_mov_b32 v16, v17 :: v_dual_add_nc_u32 v119, 0, v56
	v_dual_mov_b32 v2, v17 :: v_dual_add_nc_u32 v121, 0, v58
	v_dual_mov_b32 v3, v17 :: v_dual_add_nc_u32 v118, 0, v55
	v_dual_mov_b32 v4, v17 :: v_dual_add_nc_u32 v123, 0, v123
	v_dual_mov_b32 v5, v17 :: v_dual_add_nc_u32 v120, 0, v57
	v_dual_mov_b32 v6, v17 :: v_dual_add_nc_u32 v125, 0, v125
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v122, 0, v92
	v_dual_mov_b32 v8, v17 :: v_dual_add_nc_u32 v127, 0, v127
	v_add_nc_u32_e32 v128, 0, v128
	v_add_nc_u32_e32 v130, 0, v130
	v_add_nc_u32_e32 v132, 0, v132
	v_dual_mov_b32 v92, v17 :: v_dual_add_nc_u32 v133, 0, v133
	v_add_nc_u32_e32 v134, 0, v134
	v_add_nc_u32_e32 v135, 0, v135
	v_add_nc_u32_e32 v136, 0, v136
	v_add_nc_u32_e32 v137, 0, v34
	v_add_nc_u32_e32 v138, 0, v35
	v_add_nc_u32_e32 v139, 0, v36
	v_add_nc_u32_e32 v140, 0, v37
	v_add_nc_u32_e32 v141, 0, v40
	v_add_nc_u32_e32 v143, 0, v41
	v_add_nc_u32_e32 v144, 0, v42
	v_and_b32_e32 v145, 0x5040504, v38
	v_and_b32_e32 v146, 0x7060706, v39
	s_mov_b32 s68, 0
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s94, s67, 1
	s_mul_i32 s95, s67, 3
	s_mov_b32 s96, 0x76543210
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s86, s82
	s_mov_b32 s87, s83
	s_mov_b32 s90, s82
	s_mov_b32 s91, s83
	s_and_b32 s89, s7, 0xffff
	s_mov_b32 s84, s10
	s_mov_b32 s88, s6
	s_mov_b32 s80, s4
	s_mov_b32 s81, s5
	s_mov_b32 s85, s11
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v142, s0, v33 :: v_dual_add_nc_u32 v131, 0, v131
	v_add_nc_u32_e32 v124, 0, v124
	v_add_nc_u32_e32 v126, 0, v126
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v148, v142 :: v_dual_add_nc_u32 v129, 0, v129
	v_mov_b32_e32 v147, v142
	v_mov_b32_e32 v149, v142
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s0, s92, s79
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v55, 0, v102
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[42:43], null, s0, s78, v[45:46]
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s68 :: v_dual_mov_b32 v38, s73
	v_mov_b32_e32 v36, s71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[43:44], null, s0, s67, v[54:55]
	v_dual_mov_b32 v34, s69 :: v_dual_add_nc_u32 v41, 0, v101
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v35, s70 :: v_dual_mov_b32 v40, s75
	v_dual_mov_b32 v37, s72 :: v_dual_lshlrev_b32 v44, 1, v43
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[153:156], v42, s[80:83], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v56, v43, s67, 1
	v_add_lshl_u32 v57, v43, s94, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v39, s74
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v221, 0x80000000, v56 :: v_dual_cndmask_b32 v42, 0x80000000, v57
	v_add_lshl_u32 v43, v43, s95, 1
	v_cndmask_b32_e32 v172, 0x80000000, v44, vcc_lo
	v_or_b32_e32 v175, s79, v87
	v_or_b32_e32 v216, s79, v72
	v_or_b32_e32 v176, s79, v86
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	v_or_b32_e32 v217, s79, v71
	v_or_b32_e32 v177, s79, v85
	v_or_b32_e32 v218, s79, v70
	v_or_b32_e32 v178, s79, v84
	v_or_b32_e32 v219, s79, v69
	v_or_b32_e32 v151, s79, v74
	v_or_b32_e32 v173, s79, v89
	v_or_b32_e32 v174, s79, v88
	v_or_b32_e32 v179, s79, v83
	v_or_b32_e32 v180, s79, v82
	v_or_b32_e32 v181, s79, v81
	v_or_b32_e32 v185, s79, v77
	v_or_b32_e32 v220, s79, v68
	v_or_b32_e32 v152, s79, v90
	v_or_b32_e32 v182, s79, v80
	v_or_b32_e32 v183, s79, v79
	v_or_b32_e32 v184, s79, v78
	v_or_b32_e32 v186, s79, v76
	v_or_b32_e32 v206, s79, v75
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v151, v151, s92, 1
	v_add_lshl_u32 v173, v173, s92, 1
	v_add_lshl_u32 v174, v174, s92, 1
	v_add_lshl_u32 v179, v179, s92, 1
	v_add_lshl_u32 v152, v152, s92, 1
	v_add_lshl_u32 v182, v182, s92, 1
	v_add_lshl_u32 v183, v183, s92, 1
	v_add_lshl_u32 v184, v184, s92, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v41, v[153:154]
	ds_store_b64 v105, v[155:156]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[193:196], v55 offset1:1
	ds_load_2addr_stride64_b64 v[55:58], v55 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[212:215], v106 offset0:2 offset1:3
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[208:211], v42, s[88:91], 0 offen
	buffer_load_b128 v[41:44], v43, s[88:91], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[156:163], v[193:194], v[52:53], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[164:171], v[57:58], v[52:53], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[187:194], v[55:56], v[52:53], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[198:205], v[195:196], v[52:53], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v106 offset1:1
	ds_load_2addr_stride64_b64 v[37:40], v107 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[164:171], v[214:215], v[50:51], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[187:194], v[212:213], v[50:51], v[187:194] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[212:215], v172, s[88:91], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[156:163], v[33:34], v[50:51], v[156:163] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[198:205], v[35:36], v[50:51], v[198:205] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v107 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[164:171], v[39:40], v[48:49], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[187:194], v[37:38], v[48:49], v[187:194] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[37:40], v108 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[156:163], v[33:34], v[48:49], v[156:163] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[198:205], v[35:36], v[48:49], v[198:205] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v108 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[156:163], v[37:38], v[46:47], v[156:163] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[198:205], v[39:40], v[46:47], v[198:205] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v154, v156
	v_cvt_f32_i32_e32 v197, v199
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v199, v181, s92, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v155, v157
	v_cvt_f32_i32_e32 v156, v159
	v_cvt_f32_i32_e32 v157, v158
	v_cvt_f32_i32_e32 v158, v162
	v_cvt_f32_i32_e32 v159, v163
	v_dual_mul_f32 v154, v142, v154 :: v_dual_mul_f32 v155, v147, v155
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v157, v148, v157
	v_cvt_f32_i32_e32 v161, v161
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[164:171], v[35:36], v[46:47], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[187:194], v[33:34], v[46:47], v[187:194] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[33:36], v221, s[88:91], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v172, v205
	v_dual_mul_f32 v156, v149, v156 :: v_dual_mul_f32 v161, v147, v161
	v_cvt_f32_i32_e32 v207, v164
	v_cvt_f32_i32_e32 v164, v187
	v_or_b32_e32 v187, s79, v67
	v_cvt_f32_i32_e32 v222, v189
	v_cvt_f32_i32_e32 v223, v190
	v_or_b32_e32 v189, s79, v73
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v190, v175, s92, 1
	v_add_lshl_u32 v175, v216, s92, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v224, v191
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v191, v176, s92, 1
	v_add_lshl_u32 v176, v217, s92, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v226, v193
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v193, v177, s92, 1
	v_add_lshl_u32 v177, v218, s92, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v227, v194
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v194, v178, s92, 1
	v_add_lshl_u32 v178, v219, s92, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v196, v165
	v_cvt_f32_i32_e32 v40, v169
	v_cvt_f32_i32_e32 v225, v192
	v_cvt_f32_i32_e32 v169, v200
	v_cvt_f32_i32_e32 v165, v198
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v192, v93, s92, 1
	v_add_lshl_u32 v198, v180, s92, 1
	v_add_lshl_u32 v200, v185, s92, 1
	v_add_lshl_u32 v180, v220, s92, 1
	v_add_lshl_u32 v181, v187, s92, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v162, v167
	v_cvt_f32_i32_e32 v163, v168
	v_cvt_f32_i32_e32 v37, v170
	v_cvt_f32_i32_e32 v153, v171
	v_cvt_f32_i32_e32 v195, v166
	v_cvt_f32_i32_e32 v166, v188
	v_cvt_f32_i32_e32 v170, v201
	v_cvt_f32_i32_e32 v171, v202
	v_cvt_f32_i32_e32 v167, v203
	v_cvt_f32_i32_e32 v168, v204
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v188, v0, s92, 1
	v_add_lshl_u32 v203, v186, s92, 1
	v_add_lshl_u32 v204, v206, s92, 1
	v_add_lshl_u32 v187, v189, s92, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v196, v149, v196 :: v_dual_mul_f32 v195, v148, v195
	v_dual_mul_f32 v164, v149, v164 :: v_dual_mul_f32 v167, v142, v167
	v_dual_mul_f32 v171, v149, v171 :: v_dual_mul_f32 v168, v147, v168
	v_mul_f32_e32 v166, v147, v166
	v_cvt_f32_i32_e32 v160, v160
	v_dual_mul_f32 v158, v148, v158 :: v_dual_mul_f32 v159, v149, v159
	v_dual_mul_f32 v165, v142, v165 :: v_dual_mul_f32 v40, v148, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v160, v142, v160 :: v_dual_mul_f32 v163, v147, v163
	v_dual_mul_f32 v162, v142, v162 :: v_dual_mul_f32 v37, v149, v37
	v_dual_mul_f32 v169, v147, v169 :: v_dual_mul_f32 v170, v148, v170
	v_dual_mul_f32 v197, v142, v197 :: v_dual_mul_f32 v172, v148, v172
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v202.l, v208.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v202.h, v41.l
	v_mov_b16_e64 v41.l, v208.h
	v_mov_b16_e64 v58.l, v209.l
	v_mov_b16_e32 v58.h, v42.l
	v_mov_b16_e64 v42.l, v209.h
	v_mov_b16_e64 v56.l, v210.l
	v_mov_b16_e32 v56.h, v43.l
	v_mov_b16_e32 v39.h, v44.l
	v_mov_b16_e64 v44.l, v211.h
	v_mov_b16_e64 v43.l, v210.h
	v_mov_b16_e64 v39.l, v211.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v201.l, v212.l
	v_mov_b16_e64 v57.l, v213.l
	v_mov_b16_e64 v55.l, v214.l
	v_mov_b16_e64 v38.l, v215.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v201.h, v33.l
	v_mov_b16_e64 v33.l, v212.h
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x19
	buffer_load_u16 v205, v175, s[84:87], 0 offen
	buffer_load_u16 v206, v176, s[84:87], 0 offen
	buffer_load_u16 v208, v177, s[84:87], 0 offen
	buffer_load_u16 v209, v178, s[84:87], 0 offen
	buffer_load_u16 v210, v180, s[84:87], 0 offen
	buffer_load_u16 v211, v181, s[84:87], 0 offen
	buffer_load_u16 v176, v151, s[84:87], 0 offen
	buffer_load_u16 v177, v152, s[84:87], 0 offen
	buffer_load_u16 v175, v173, s[84:87], 0 offen
	buffer_load_u16 v178, v174, s[84:87], 0 offen
	buffer_load_u16 v173, v190, s[84:87], 0 offen
	buffer_load_u16 v174, v191, s[84:87], 0 offen
	buffer_load_u16 v180, v193, s[84:87], 0 offen
	buffer_load_u16 v181, v194, s[84:87], 0 offen
	buffer_load_u16 v212, v188, s[84:87], 0 offen
	buffer_load_u16 v179, v179, s[84:87], 0 offen
	buffer_load_u16 v198, v198, s[84:87], 0 offen
	buffer_load_u16 v189, v199, s[84:87], 0 offen
	buffer_load_u16 v190, v182, s[84:87], 0 offen
	buffer_load_u16 v191, v183, s[84:87], 0 offen
	buffer_load_u16 v185, v184, s[84:87], 0 offen
	buffer_load_u16 v186, v200, s[84:87], 0 offen
	buffer_load_u16 v193, v203, s[84:87], 0 offen
	buffer_load_u16 v200, v192, s[84:87], 0 offen
	buffer_load_u16 v194, v204, s[84:87], 0 offen
	buffer_load_u16 v192, v187, s[84:87], 0 offen
	v_add_lshl_u32 v151, v94, s92, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v153, v149, v153
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v57.h, v34.l
	v_mov_b16_e64 v34.l, v213.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v207, v148, v207
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v199, v151, s[84:87], 0 offen
	v_add_lshl_u32 v151, v95, s92, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v55.h, v35.l
	v_mov_b16_e64 v35.l, v214.h
	v_mov_b16_e32 v38.h, v36.l
	v_mov_b16_e64 v36.l, v215.h
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v182, v151, s[84:87], 0 offen
	v_add_lshl_u32 v151, v96, s92, 1
	buffer_load_u16 v183, v151, s[84:87], 0 offen
	v_add_lshl_u32 v151, v97, s92, 1
	buffer_load_u16 v184, v151, s[84:87], 0 offen
	v_add_lshl_u32 v151, v98, s92, 1
	buffer_load_u16 v187, v151, s[84:87], 0 offen
	v_add_lshl_u32 v151, s0, v60, 1
	buffer_load_u16 v188, v151, s[84:87], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v151, 0, v104
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v151, v[201:202]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s15, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v65
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s14, s15
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s17, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v66
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, s16, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s18, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s19, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v67
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s16, s18, s19
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s0, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s4, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v69
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s0, s2, s14
	s_and_b32 s1, s2, s16
	s_and_b32 s5, s4, s5
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v70
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s2, s17
	s_and_b32 s5, s2, s5
	s_and_b32 s6, s6, s7
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v71
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s2, s6
	s_and_b32 s6, s2, s15
	s_and_b32 s8, s8, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v72
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s2, s8
	s_and_b32 s9, s10, s11
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s13, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v73
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s2, s9
	s_and_b32 s10, s12, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s20, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s21, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v75
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, s2, s10
	s_and_b32 s11, s20, s21
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s22, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s23, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v76
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, s2, s11
	s_and_b32 s12, s22, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s24, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s25, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v77
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s12, s2, s12
	s_and_b32 s13, s24, s25
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s26, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s27, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v78
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s2, s13
	s_and_b32 s19, s26, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s28, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s29, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v79
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s2, s19
	s_and_b32 s20, s28, s29
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s30, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s31, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v80
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s2, s20
	s_and_b32 s21, s30, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s33, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s34, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v81
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s2, s21
	s_and_b32 s22, s33, s34
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s35, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s36, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v82
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s2, s22
	s_and_b32 s23, s35, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s37, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s38, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v83
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s2, s23
	s_and_b32 s24, s37, s38
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s39, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s40, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v84
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s2, s24
	s_and_b32 s35, s39, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s41, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s42, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v85
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s36, s41, s42
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s43, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s44, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v86
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s37, s43, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s45, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s46, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v87
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s45, s46
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s47, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s48, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v88
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, s47, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s49, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s50, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v89
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, s2, s26
	s_and_b32 s27, s49, s50
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s51, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s52, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v90
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s27, s2, s27
	s_and_b32 s28, s51, s52
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s53, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s54, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v74
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s2, s28
	s_and_b32 s28, s2, s36
	s_and_b32 s29, s53, s54
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s55, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s56, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v60
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s2, s29
	s_and_b32 s29, s2, s25
	s_and_b32 s25, s2, s35
	s_and_b32 s31, s55, s56
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s57, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s58, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v62
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s34, s2, s31
	s_and_b32 s31, s2, s37
	s_and_b32 s38, s57, s58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s59, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s60, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v63
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, s2, s38
	s_and_b32 s39, s59, s60
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s61, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s62, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v59
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s16, s2, s39
	s_and_b32 s40, s61, s62
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s63, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s64, v151, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s92, v61
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s2, s40
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s92, s92, 64
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s41, s63, s64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s65, v151, v99
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s66, v151, v100
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v151, v142, v222
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, s2, s41
	s_and_b32 s42, s65, s66
	s_and_b32 s17, s2, s42
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s92, s93
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v152, 16, v205
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(30)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v201, v151, v152 :: v_dual_lshlrev_b32 v152, 16, v206
	v_mul_f32_e32 v151, v147, v223
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v206, 16, v211
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v202, v151, v152
	v_mul_f32_e32 v151, v148, v224
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v152, 16, v208
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v208, 16, v212
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v198, 16, v198
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v190, 16, v190
	v_lshlrev_b32_e32 v189, 16, v189
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v203, v151, v152
	v_mul_f32_e32 v197, v197, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v151, v149, v225 :: v_dual_mul_f32 v170, v170, v190
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v169, v169, v189 :: v_dual_lshlrev_b32 v194, 16, v194
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v193, 16, v193
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v207, v207, v208 :: v_dual_lshlrev_b32 v152, 16, v209
	v_dual_mul_f32 v164, v164, v194 :: v_dual_lshlrev_b32 v191, 16, v191
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v172, v172, v193 :: v_dual_lshlrev_b32 v199, 16, v199
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v200, 16, v200
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v171, v171, v191 :: v_dual_lshlrev_b32 v186, 16, v186
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v185, 16, v185
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v195, v195, v199 :: v_dual_mul_f32 v196, v196, v200
	v_mul_f32_e32 v168, v168, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v167, v167, v185 :: v_dual_lshlrev_b32 v192, 16, v192
	v_dual_mul_f32 v204, v151, v152 :: v_dual_lshlrev_b32 v177, 16, v177
	v_mul_f32_e32 v151, v142, v226
	v_mul_f32_e32 v166, v166, v192
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v177, v155, v177 :: v_dual_lshlrev_b32 v176, 16, v176
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v175, 16, v175
	v_lshlrev_b32_e32 v152, 16, v210
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v155, 0xff800000, v201, s10
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v176, v154, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v175, v157, v175 :: v_dual_lshlrev_b32 v178, 16, v178
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v181, 16, v181
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v205, v151, v152
	v_mul_f32_e32 v152, v147, v227
	v_mul_f32_e32 v178, v156, v178
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v159, v159, v181 :: v_dual_lshlrev_b32 v180, 16, v180
	v_dual_mul_f32 v206, v152, v206 :: v_dual_lshlrev_b32 v173, 16, v173
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v152, 0, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v158, v158, v180 :: v_dual_lshlrev_b32 v179, 16, v179
	v_mul_f32_e32 v160, v160, v173
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v174, 16, v174
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v156, 0xff800000, v164, s12
	v_cndmask_b32_e64 v164, 0xff800000, v172, s18
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v173, v165, v179 :: v_dual_lshlrev_b32 v184, 16, v184
	v_mul_f32_e32 v161, v161, v174
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v187, 16, v187
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v165, 0xff800000, v167, s20
	v_cndmask_b32_e64 v157, 0xff800000, v166, s11
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v180, v40, v184
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v181, v37, v187 :: v_dual_lshlrev_b32 v188, 16, v188
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v182, 16, v182
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v40, v33
	ds_store_b64 v137, v[40:41]
	ds_store_b64 v138, v[57:58]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v179, v153, v188
	v_dual_mul_f32 v162, v162, v182 :: v_dual_lshlrev_b32 v183, 16, v183
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v41, v34
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v167, 0xff800000, v170, s22
	v_cndmask_b32_e64 v166, 0xff800000, v171, s21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v174, v163, v183 :: v_dual_mov_b32 v37, v44
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v163, 0xff800000, v168, s19
	v_cndmask_b32_e64 v168, 0xff800000, v169, s23
	v_cndmask_b32_e64 v169, 0xff800000, v197, s24
	v_cndmask_b32_e64 v183, 0xff800000, v161, s29
	v_cndmask_b32_e64 v184, 0xff800000, v160, s26
	v_cndmask_b32_e64 v185, 0xff800000, v177, s33
	v_cndmask_b32_e64 v186, 0xff800000, v176, s34
	v_cndmask_b32_e64 v191, 0xff800000, v178, s27
	v_cndmask_b32_e64 v33, 0xff800000, v196, s6
	v_cndmask_b32_e64 v34, 0xff800000, v207, s1
	v_cndmask_b32_e64 v40, 0xff800000, v206, s4
	v_cndmask_b32_e64 v44, 0xff800000, v205, s5
	v_cndmask_b32_e64 v58, 0xff800000, v203, s8
	v_cndmask_b32_e64 v154, 0xff800000, v202, s9
	v_cndmask_b32_e64 v153, 0xff800000, v204, s7
	v_cndmask_b32_e64 v57, 0xff800000, v195, s0
	v_cndmask_b32_e64 v192, 0xff800000, v175, s30
	v_cndmask_b32_e64 v170, 0xff800000, v173, s25
	v_cndmask_b32_e64 v193, 0xff800000, v159, s28
	v_cndmask_b32_e64 v194, 0xff800000, v158, s31
	v_cndmask_b32_e64 v158, 0xff800000, v181, s16
	v_cndmask_b32_e64 v160, 0xff800000, v174, s15
	v_cndmask_b32_e64 v162, 0xff800000, v162, s17
	v_cndmask_b32_e64 v159, 0xff800000, v179, s13
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v139, v[41:42]
	ds_store_b64 v140, v[55:56]
	v_dual_mov_b32 v42, v35 :: v_dual_max_f32 v173, v186, v185
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v56, v164, v156, v157
	v_max3_f32 v171, v169, v168, v167
	v_max3_f32 v172, v166, v165, v163
	v_max3_f32 v174, v191, v184, v183
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v161, 0xff800000, v180, s14
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v35, v155, v154, v58
	v_max3_f32 v41, v153, v44, v40
	v_max3_f32 v55, v34, v33, v57
	v_max3_f32 v195, v194, v193, v170
	v_max_f32_e32 v175, v162, v160
	v_max_f32_e32 v176, v158, v159
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v141, v[42:43]
	ds_store_b64 v143, v[38:39]
	ds_store_b64 v144, v[36:37]
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v36, v171, v172, v56
	v_max3_f32 v37, v173, v192, v174
	v_max3_f32 v35, v35, v41, v55
	v_max3_f32 v38, v175, v161, v176
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v151.h, 0
	s_waitcnt lgkmcnt(0)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v36, v37, v195, v36
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	ds_load_b128 v[171:174], v152
	ds_load_b128 v[179:182], v116
	ds_load_b128 v[175:178], v109
	ds_load_b128 v[187:190], v110
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v208.h, v151.h
	v_mov_b16_e64 v200.h, v151.h
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v35, v36, v35, v38
.Ltmp10:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v198.h, v151.h
	v_mov_b16_e64 v199.h, v151.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v35, s96, 0xfedcba98 op_sel:[1,0]
.Ltmp12:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v35, v150, v35, v36
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v192, v35
	v_sub_f32_e32 v43, v194, v35
	v_sub_f32_e32 v36, v185, v35
	v_sub_f32_e32 v37, v186, v35
	v_sub_f32_e32 v42, v183, v35
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v42, v42
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v55, v193, v35
	v_sub_f32_e32 v165, v165, v35
	v_sub_f32_e32 v169, v169, v35
	v_sub_f32_e32 v170, v170, v35
	v_sub_f32_e32 v167, v167, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s30
	v_cndmask_b32_e64 v43, 0, v43, s31
	v_cndmask_b32_e64 v56, 0, v36, s33
	v_cndmask_b32_e64 v37, 0, v37, s34
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v55
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v200.l, v38.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v191, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v198.l, v43.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v184, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v208.l, v37.h
	v_and_b32_e32 v184, 1, v200
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v186, 1, v198
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v151.l, v56.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v36, 1, v208
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v55, s28
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v166, v166, v35
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v183, 1, v151
	v_cmp_o_f32_e64 s29, v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v36, v37, v36, 0x7fff
	v_add3_u32 v183, v56, v183, 0x7fff
	v_mov_b16_e64 v151.l, v39.h
	v_cmp_o_f32_e64 s26, v56, v56
	v_mov_b16_e64 v199.l, v41.h
	v_cndmask_b16 v183.l, 0x7fff, v36.h, s27
	v_cmp_o_f32_e64 s28, v39, v39
	v_and_b32_e32 v191, 1, v151
	v_mov_b16_e64 v151.l, v42.h
	v_and_b32_e32 v185, 1, v199
	v_cmp_o_f32_e64 s30, v42, v42
	v_cmp_o_f32_e64 s31, v41, v41
	v_add3_u32 v184, v38, v184, 0x7fff
	v_and_b32_e32 v36, 1, v151
	v_add3_u32 v185, v41, v185, 0x7fff
	v_mov_b16_e64 v151.l, v55.h
	v_add3_u32 v191, v39, v191, 0x7fff
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v56
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v36, v42, v36, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v166, v166
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v183.h, 0x7fff, v183.h, s26
	v_cndmask_b16 v184.l, 0x7fff, v184.h, s29
	v_cndmask_b16 v185.l, 0x7fff, v185.h, s31
	v_and_b32_e32 v192, 1, v151
	v_cndmask_b16 v184.h, 0x7fff, v191.h, s28
	v_cndmask_b16 v185.h, 0x7fff, v36.h, s30
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v165, v165
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s33, v55, v55
	v_cmp_o_f32_e64 s34, v43, v43
	v_add3_u32 v186, v43, v186, 0x7fff
	v_permlanex16_b32 v193, v183, s96, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v194, v55, v192, 0x7fff
	v_permlanex16_b32 v195, v184, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v185, s96, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v218, 0, v166, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v186.l, 0x7fff, v186.h, s34
	v_perm_b32 v191, v193, v183, v145
	v_perm_b32 v192, v193, v183, v146
	v_cndmask_b16 v186.h, 0x7fff, v194.h, s33
	v_perm_b32 v193, v195, v184, v145
	v_perm_b32 v194, v195, v184, v146
	v_perm_b32 v195, v36, v185, v145
	v_perm_b32 v196, v36, v185, v146
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v219, 0, v165, s20
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v165.h, v151.h
	v_mov_b16_e64 v165.l, v218.h
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v36, v150, v35
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cmp_neq_f32_e64 s26, 0xff800000, v150
	.loc	1 886 49 is_stmt 1              ; attention.py:886:49
	v_exp_f32_e32 v169, v169
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v183, v186, s96, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v165, 1, v165
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v36, v36
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v170, v170
	v_exp_f32_e32 v167, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v197, v183, v186, v145
	v_perm_b32 v198, v183, v186, v146
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[199:202], v152 offset:2048
	ds_load_b128 v[183:186], v117
	ds_load_b128 v[203:206], v118
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v150.h, v151.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v216, 0, v169, s24
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v163, v163, v35
	v_sub_f32_e32 v164, v164, v35
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v36, 0, v36, s26
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v215, 0, v170, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v151.l, v216.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v217, 0, v167, s22
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v163, v163
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v36
	v_mul_f32_e32 v25, v25, v36
	v_mul_f32_e32 v32, v32, v36
	v_mul_f32_e32 v17, v17, v36
	v_mul_f32_e32 v18, v18, v36
	v_mul_f32_e32 v19, v19, v36
	v_mul_f32_e32 v20, v20, v36
	v_mul_f32_e32 v21, v21, v36
	v_mul_f32_e32 v22, v22, v36
	v_mul_f32_e32 v23, v23, v36
	v_mul_f32_e32 v24, v24, v36
	v_mul_f32_e32 v26, v26, v36
	v_mul_f32_e32 v29, v29, v36
	v_dual_mul_f32 v30, v30, v36 :: v_dual_and_b32 v169, 1, v151
	v_mul_f32_e32 v12, v12, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v150.l, v215.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v151.l, v217.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v36
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[171:178], v[191:198], v[17:24]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_and_b32_e32 v150, 1, v150
	.loc	1 886 33 is_stmt 1              ; attention.py:886:33
	v_cndmask_b32_e64 v220, 0, v163, s19
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v36
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[179:186], v[191:198], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[175:178], v123
	ds_load_b128 v[179:182], v124
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v36
	v_mul_f32_e32 v13, v13, v36
	v_dual_mul_f32 v15, v15, v36 :: v_dual_add_f32 v38, v38, v39
	v_dual_mul_f32 v16, v16, v36 :: v_dual_add_f32 v39, v41, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v167.h, v151.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v163.h, v151.h
	v_mov_b16_e64 v163.l, v220.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v14, v14, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s24, v216, v216
	v_cmp_o_f32_e64 s25, v215, v215
	v_add3_u32 v150, v215, v150, 0x7fff
	v_and_b32_e32 v163, 1, v163
	v_add3_u32 v169, v216, v169, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v1, v1, v36 :: v_dual_sub_f32 v56, v156, v35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v150.l, 0x7fff, v150.h, s25
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[175:182], v[191:198], v[9:16]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[175:178], v130
	ds_load_b128 v[179:182], v131
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v150.h, 0x7fff, v169.h, s24
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v2, v2, v36 :: v_dual_add_f32 v41, v43, v55
	v_mul_f32_e32 v3, v3, v36
	v_mul_f32_e32 v4, v4, v36
	v_dual_mul_f32 v5, v5, v36 :: v_dual_sub_f32 v154, v154, v35
	v_dual_mul_f32 v6, v6, v36 :: v_dual_sub_f32 v155, v155, v35
	v_dual_mul_f32 v7, v7, v36 :: v_dual_sub_f32 v58, v58, v35
	v_dual_mul_f32 v8, v8, v36 :: v_dual_add_f32 v55, v218, v219
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v169, v150, s96, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v40, v40, v35 :: v_dual_add_f32 v41, v39, v41
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v155, v155
	v_exp_f32_e32 v154, v154
	v_exp_f32_e32 v56, v56
	.loc	1 896 23 is_stmt 1              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[175:182], v[191:198], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_perm_b32 v175, v169, v150, v145
	v_perm_b32 v176, v169, v150, v146
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v150, v168, v35
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v168, 1, v151
	v_mov_b16_e64 v151.l, v219.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v155, 0, v155, s10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v150, v150
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v154, 0, v154, s9
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v44, v35
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v166, 1, v151
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v56, 0, v56, s12
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v164, v164
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s20, v219, v219
	v_cmp_o_f32_e64 s22, v217, v217
	v_add3_u32 v166, v219, v166, 0x7fff
	v_add3_u32 v168, v217, v168, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v150, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v218, v218
	v_add3_u32 v165, v218, v165, 0x7fff
	v_cmp_o_f32_e64 s19, v220, v220
	v_add3_u32 v163, v220, v163, 0x7fff
	v_mov_b16_e64 v167.l, v150.h
	v_cmp_o_f32_e64 s23, v150, v150
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v43, v150, v217
.Ltmp16:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v221, 0, v164, s18
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[191:194], v111
	ds_load_b128 v[195:198], v112
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v167, 1, v167
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v153, v153, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v165.l, 0x7fff, v165.h, s21
	v_mov_b16_e64 v151.l, v221.h
	v_cmp_o_f32_e64 s18, v221, v221
	v_add3_u32 v167, v150, v167, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v150, v157, v35
	v_sub_f32_e32 v157, v160, v35
	v_sub_f32_e32 v160, v161, v35
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v161, 0, v40, s4
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v156, v162, v35
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v150, v150
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v164, 1, v151
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v160, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v167.l, 0x7fff, v167.h, s23
	v_cndmask_b16 v167.h, 0x7fff, v168.h, s22
	v_cndmask_b16 v165.h, 0x7fff, v166.h, s20
	v_add3_u32 v164, v221, v164, 0x7fff
	v_cndmask_b16 v163.l, 0x7fff, v163.h, s19
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v58, v58
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v168, v167, s96, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v150, s11
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v162, 0, v160, s14
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v159, v159, v35 :: v_dual_add_f32 v160, v37, v38
.Ltmp17:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v155, v154
.Ltmp18:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v157, v157
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v159, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v163.h, 0x7fff, v164.h, s18
	v_permlanex16_b32 v166, v165, s96, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v177, v168, v167, v145
	v_perm_b32 v178, v168, v167, v146
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v58, 0, v58, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v164, v163, s96, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v179, v166, v165, v145
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v180, v166, v165, v146
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v219, 0, v159, s13
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v159, v56, v150
.Ltmp20:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v57, v57, v35
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v44, v161
.Ltmp22:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v156, v156
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v181, v164, v163, v145
	v_perm_b32 v182, v164, v163, v146
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v57, v57
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[163:166], v125
	ds_load_b128 v[167:170], v126
	ds_load_b128 v[183:186], v132
	ds_load_b128 v[207:210], v129
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[187:194], v[175:182], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[187:190], v133
	ds_load_b128 v[211:214], v134
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v42, v215, v216 :: v_dual_add_f32 v41, v160, v41
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v151.l, v150.h
	v_cmp_o_f32_e64 s5, v44, v44
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v57, s0
	v_cndmask_b32_e64 v57, 0, v156, s17
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v158, v158, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v157, s15
	v_cndmask_b32_e64 v34, 0, v34, s1
.Ltmp25:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v150, v150
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v158, v158
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s0, v56, v56
	v_cmp_o_f32_e64 s1, v155, v155
	v_cmp_o_f32_e64 s10, v154, v154
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[163:170], v[175:182], v[9:16]
	v_mov_b32_e32 v163, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v92.h, v151.h
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[183:190], v[175:182], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v164.h, v151.h
	v_mov_b16_e64 v165.h, v151.h
	.loc	1 886 33 is_stmt 1              ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v158, s16
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v158, v220, v221
.Ltmp28:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v153, v153
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v166.h, v151.h
	v_mov_b16_e64 v183.h, v151.h
	v_mov_b16_e32 v92.l, v56.h
	v_mov_b16_e64 v164.l, v155.h
	v_mov_b16_e64 v165.l, v58.h
	v_mov_b16_e64 v166.l, v44.h
	v_mov_b16_e64 v183.l, v34.h
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v43, v55, v158
	v_add_f32_e32 v158, v159, v37
.Ltmp30:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v153, s7
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v33, v33, v35
.Ltmp31:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v40, v57
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v184.h, v151.h
	v_mov_b16_e64 v184.l, v40.h
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v58, v153
.Ltmp34:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s12, v161, v161
	v_cmp_o_f32_e64 s4, v58, v58
	v_cmp_o_f32_e64 s11, v153, v153
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v159, v38, v39 :: v_dual_add_f32 v38, v156, v162
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v39, 1, v92
	v_and_b32_e32 v92, 1, v164
	v_and_b32_e32 v164, 1, v165
	v_mov_b16_e64 v185.h, v151.h
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v185.l, v156.h
	v_add3_u32 v92, v155, v92, 0x7fff
	v_add3_u32 v58, v58, v164, 0x7fff
	v_mov_b16_e64 v186.h, v151.h
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v55, v34, v33
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v186.l, v157.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[171:174], v115
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s4
	v_cmp_o_f32_e64 s7, v40, v40
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v55, v55, v37
	v_add_f32_e32 v37, v157, v219
	v_dual_add_f32 v42, v42, v43 :: v_dual_and_b32 v165, 1, v166
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v166, 1, v183
	v_and_b32_e32 v183, 1, v184
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v184, v38, v37
	v_dual_add_f32 v43, v158, v159 :: v_dual_add_f32 v220, v41, v42
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v151
	v_mov_b16_e64 v151.l, v154.h
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v55, v55, v184
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v44, v44, v165, 0x7fff
	v_add3_u32 v56, v56, v39, 0x7fff
	v_add3_u32 v41, v150, v41, 0x7fff
	v_and_b32_e32 v42, 1, v151
	v_mov_b16_e64 v151.l, v153.h
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v55, v43, v55
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v92.l, 0x7fff, v44.h, s5
	v_cndmask_b16 v44.h, 0x7fff, v41.h, s9
	v_add3_u32 v42, v154, v42, 0x7fff
	v_and_b32_e32 v43, 1, v151
	v_mov_b16_e64 v151.l, v161.h
	v_cndmask_b16 v44.l, 0x7fff, v56.h, s0
	v_cndmask_b16 v56.l, 0x7fff, v92.h, s1
	v_cndmask_b16 v56.h, 0x7fff, v42.h, s10
	v_add3_u32 v42, v153, v43, 0x7fff
	v_and_b32_e32 v41, 1, v151
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v55, v220, v55
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v151.l, v33.h
	v_permlanex16_b32 v43, v44, s96, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v58.h, 0x7fff, v42.h, s11
	v_add3_u32 v41, v161, v41, 0x7fff
	v_add3_u32 v164, v40, v183, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[199:206], v[175:182], v[25:32]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[199:202], v113
	ds_load_b128 v[167:170], v114
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v34, v34
	v_cndmask_b16 v92.h, 0x7fff, v41.h, s12
	v_permlanex16_b32 v41, v58, s96, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v34, v34, v166, 0x7fff
	v_cmp_o_f32_e64 s13, v157, v157
	v_perm_b32 v153, v43, v44, v145
	v_permlanex16_b32 v42, v92, s96, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v154, v43, v44, v146
	v_perm_b32 v158, v41, v58, v146
	v_cmp_o_f32_e64 s0, v33, v33
	v_permlanex16_b32 v150, v56, s96, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v159, v42, v92, v145
	v_perm_b32 v160, v42, v92, v146
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v92, v55, s96, 0xfedcba98 op_sel:[1,0]
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v37, 1, v185
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s6
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[175:178], v119
	ds_load_b128 v[179:182], v120
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v156, v156
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v92, v55, v92 :: v_dual_and_b32 v155, 1, v186
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v165, v156, v37, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[37:40], v152 offset:4096
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v55, 1, v151
	v_mov_b16_e64 v151.l, v57.h
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v92, v163, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v166, v157, v155, 0x7fff
	v_perm_b32 v157, v41, v58, v145
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[183:186], v152 offset:6144
	ds_load_b128 v[41:44], v127
	ds_load_b128 v[203:206], v128
	ds_load_b128 v[215:218], v135
	ds_load_b128 v[187:190], v136
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v33, v55, 0x7fff
	v_and_b32_e32 v55, 1, v151
	v_mov_b16_e64 v151.l, v162.h
	v_perm_b32 v155, v150, v56, v145
	v_perm_b32 v156, v150, v56, v146
	v_cndmask_b16 v34.h, 0x7fff, v33.h, s0
	v_cmp_o_f32_e64 s1, v57, v57
	v_and_b32_e32 v33, 1, v151
	v_mov_b16_e64 v151.l, v219.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(9)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[195:202], v[153:160], v[17:24]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[191:194], v121
	ds_load_b128 v[195:198], v122
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v162, v162
	v_cmp_o_f32_e64 s5, v219, v219
	v_and_b32_e32 v151, 1, v151
	v_add3_u32 v55, v57, v55, 0x7fff
	v_add3_u32 v33, v162, v33, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[37:44], v[153:160], v[9:16]
	v_mov_b32_e32 v150, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v39, v219, v151, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v164.h, s7
	v_cndmask_b16 v56.l, 0x7fff, v165.h, s8
	v_cndmask_b16 v58.l, 0x7fff, v166.h, s13
	v_permlanex16_b32 v57, v34, s96, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v35.h, 0x7fff, v55.h, s1
	v_cndmask_b16 v56.h, 0x7fff, v33.h, s4
	v_cndmask_b16 v58.h, 0x7fff, v39.h, s5
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[175:182], v[153:160], v[25:32]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v37, v57, v34, v145
	v_permlanex16_b32 v40, v35, s96, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v38, v57, v34, v146
	v_permlanex16_b32 v33, v56, s96, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v58, s96, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[211:218], v[153:160], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v39, v40, v35, v145
	v_perm_b32 v40, v40, v35, v146
	v_perm_b32 v41, v33, v56, v145
	v_perm_b32 v42, v33, v56, v146
	v_perm_b32 v43, v34, v58, v145
	v_perm_b32 v44, v34, v58, v146
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[167:174], v[37:44], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[191:198], v[37:44], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[203:210], v[37:44], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[183:190], v[37:44], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v33, v91
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v0, null, v92, v92, v17
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v34, null, v92, v92, v18
	v_div_scale_f32 v35, null, v92, v92, v19
	v_rcp_f32_e32 v36, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, vcc_lo, v17, v92, v17
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v18, v92, v18
	v_div_scale_f32 v43, null, v92, v92, v20
	v_div_scale_f32 v49, s3, v20, v92, v20
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v0, v36, 1.0
	v_fma_f32 v42, -v34, v37, 1.0
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s77, s77, 0xffff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v35, v38, 1.0
	s_mov_b32 s79, 0x31027000
	v_dual_fmac_f32 v36, v41, v36 :: v_dual_fmac_f32 v37, v42, v37
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v41, s1, v19, v92, v19
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	s_mov_b32 s78, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v43, v42, 1.0
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v92, v92, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v0, -v0, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v45, v40
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v92, v92, v22
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v36, v49, v42
	v_div_fmas_f32 v34, v34, v37, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v92, v17
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v17, v34, v92, v18
	v_div_scale_f32 v34, s4, v21, v92, v21
	v_fma_f32 v37, -v43, v36, v49
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v45, null, v92, v92, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v92, v92, v23
	v_fma_f32 v51, -v35, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v45
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v92
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v51, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v18, -v35, v46, v41
	v_mul_f32_e32 v41, v34, v39
	v_fma_f32 v35, -v40, v44, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v18, v18, v38, v46
	v_fma_f32 v38, -v43, v36, v49
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s1, v22, v92, v22
	v_div_fixup_f32 v18, v18, v92, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v34
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v19, v36, v92, v20
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v38, null, v92, v92, v25
	v_div_scale_f32 v36, s3, v23, v92, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v47, v41, v34
	v_rcp_f32_e32 v49, v38
	v_fmac_f32_e32 v44, v35, v44
	v_rcp_f32_e32 v35, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v43, v44
	v_fma_f32 v20, -v40, v42, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v37, v35, 1.0
	v_dual_fmac_f32 v42, v20, v44 :: v_dual_fmac_f32 v35, v46, v35
	v_fma_f32 v46, -v45, v48, 1.0
	v_div_fmas_f32 v20, v34, v39, v41
	v_fma_f32 v41, -v38, v49, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v40, v42, v43
	v_dual_mul_f32 v47, v36, v35 :: v_dual_fmac_f32 v48, v46, v48
	v_div_scale_f32 v46, s5, v24, v92, v24
	v_div_scale_f32 v43, null, v92, v92, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v37, v47, v36
	v_mul_f32_e32 v40, v46, v48
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v49, v41, v49
	v_div_fmas_f32 v34, v34, v44, v42
	v_fmac_f32_e32 v47, v39, v35
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v42, -v45, v40, v46
	v_div_scale_f32 v41, s1, v25, v92, v25
	v_div_fixup_f32 v20, v20, v92, v21
	v_div_fixup_f32 v21, v34, v92, v22
	v_fma_f32 v22, -v37, v47, v36
	v_fmac_f32_e32 v40, v42, v48
	v_div_scale_f32 v37, null, v92, v92, v27
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v34, v41, v49
	v_div_fmas_f32 v22, v22, v35, v47
	v_fma_f32 v35, -v45, v40, v46
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_div_scale_f32 v45, null, v92, v92, v28
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v42, -v38, v34, v41
	v_div_scale_f32 v44, s3, v26, v92, v26
	v_div_fmas_f32 v35, v35, v48, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v42, v49
	v_mul_f32_e32 v42, v44, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_fixup_f32 v22, v22, v92, v23
	v_div_fixup_f32 v23, v35, v92, v24
	v_fma_f32 v24, -v38, v34, v41
	v_fma_f32 v35, -v43, v42, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v38, s4, v27, v92, v27
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_scale_f32 v46, null, v92, v92, v29
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v39
	v_div_fmas_f32 v24, v24, v49, v34
	v_mul_f32_e32 v34, v38, v36
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v41, s1, v28, v92, v28
	v_div_scale_f32 v47, null, v92, v92, v30
	v_div_fixup_f32 v24, v24, v92, v25
	v_fma_f32 v25, -v43, v42, v44
	v_fma_f32 v43, -v37, v34, v38
	v_mul_f32_e32 v44, v41, v40
	v_rcp_f32_e32 v48, v47
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v49, -v46, v35, 1.0
	v_div_fmas_f32 v25, v25, v39, v42
	v_fmac_f32_e32 v34, v43, v36
	v_fma_f32 v39, -v45, v44, v41
	v_div_scale_f32 v42, s3, v29, v92, v29
	v_fmac_f32_e32 v35, v49, v35
	v_div_fixup_f32 v25, v25, v92, v26
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v48, 1.0
	v_fma_f32 v26, -v37, v34, v38
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v92, v92, v31
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v37, v42, v35 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s5, v30, v92, v30
	v_div_fmas_f32 v26, v26, v36, v34
	v_fma_f32 v34, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v36, -v46, v37, v42
	v_mul_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v92, v92, v32
	v_div_fmas_f32 v34, v34, v40, v44
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v40, -v47, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v44, -v39, v41, 1.0
	v_div_fixup_f32 v26, v26, v92, v27
	v_div_fixup_f32 v27, v34, v92, v28
	v_fma_f32 v28, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v34, s1, v31, v92, v31
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_fmas_f32 v28, v28, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	v_mul_f32_e32 v37, v34, v41
	v_div_scale_f32 v38, null, v92, v92, v9
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v36, v40, v36
	v_div_fmas_f32 v35, v35, v48, v43
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v43, -v39, v37, v34
	v_div_scale_f32 v40, s3, v32, v92, v32
	v_div_scale_f32 v46, null, v92, v92, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v37, v43, v41 :: v_dual_mul_f32 v44, v40, v36
	v_div_fixup_f32 v28, v28, v92, v29
	v_div_fixup_f32 v29, v35, v92, v30
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fma_f32 v34, -v39, v37, v34
	v_div_scale_f32 v39, null, v92, v92, v11
	v_fma_f32 v30, -v45, v44, v40
	v_fmac_f32_e32 v42, v43, v42
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v39
	v_div_fmas_f32 v34, v34, v41, v37
	v_fmac_f32_e32 v44, v30, v36
	v_fma_f32 v47, -v46, v35, 1.0
	v_div_scale_f32 v41, s1, v10, v92, v10
	v_div_scale_f32 v30, s4, v9, v92, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v45, v44, v40
	v_fmac_f32_e32 v35, v47, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_scale_f32 v48, null, v92, v92, v12
	v_dual_mul_f32 v40, v30, v42 :: v_dual_mul_f32 v49, v41, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s5, v11, v92, v11
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v46, v49, v41
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v47, -v38, v40, v30
	v_div_fixup_f32 v31, v34, v92, v31
	v_div_fixup_f32 v32, v36, v92, v32
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v39, v44, v45
	v_div_scale_f32 v37, null, v92, v92, v13
	v_fmac_f32_e32 v40, v47, v42
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v30, -v38, v40, v30
	v_fma_f32 v38, -v46, v49, v41
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v92, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v30, v30, v42, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v92, v92, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v50
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v92, v13
	v_div_fixup_f32 v9, v30, v92, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v35, v92, v10
	v_mul_f32_e32 v30, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v92, v11
	v_fma_f32 v43, -v37, v30, v41
	v_div_scale_f32 v38, null, v92, v92, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v92, v14
	v_div_fmas_f32 v36, v36, v50, v39
	v_fmac_f32_e32 v30, v43, v34
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v36, v92, v12
	v_fma_f32 v36, -v37, v30, v41
	v_div_scale_f32 v43, null, v92, v92, v16
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v30, v36, v34, v30
	v_div_scale_f32 v34, null, v92, v92, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s1, v15, v92, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v92, v92, v2
	v_div_fixup_f32 v13, v30, v92, v13
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v30, v45
	v_div_scale_f32 v30, s3, v16, v92, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v92, v92, v3
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v30, v45
	v_div_scale_f32 v48, s4, v1, v92, v1
	v_fma_f32 v49, -v41, v47, 1.0
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v30
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v92, v2
	v_div_fixup_f32 v14, v35, v92, v14
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v30, -v43, v42, v30
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v92, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v92, v92, v4
	v_div_fmas_f32 v30, v30, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v92, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v16, v30, v92, v16
	v_div_fixup_f32 v1, v34, v92, v1
	v_div_scale_f32 v34, null, v92, v92, v5
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, null, v92, v92, v8
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v30, -v46, v36, v39
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v2, v37, v92, v2
	v_div_fmas_f32 v30, v30, v50, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v92, v92, v6
	v_div_scale_f32 v37, null, v92, v92, v7
	v_div_scale_f32 v38, vcc_lo, v4, v92, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v30, v92, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v30, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v30, v36
	v_div_scale_f32 v30, s1, v5, v92, v5
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v30, v36
	v_dual_fmac_f32 v46, v50, v46 :: v_dual_fmac_f32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v92, v6
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v92, v7
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v30
	v_div_scale_f32 v50, s5, v8, v92, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v51, v45, v39 :: v_dual_mul_f32 v52, v48, v41
	v_fmac_f32_e32 v49, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fma_f32 v47, -v37, v52, v48
	v_fma_f32 v30, -v34, v49, v30
	v_fma_f32 v34, -v44, v53, v50
	v_div_fmas_f32 v38, v38, v42, v43
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v52, v47, v41
	v_div_fmas_f32 v30, v30, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v37, v52, v48
	v_div_fixup_f32 v5, v30, v92, v5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v32, s67, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v38, v92, v4
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v92, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s67, v74
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v74, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v92, v7
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v34, v32, v90, 2
	v_add_lshl_u32 v35, v32, v89, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v36, v92, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x2
	buffer_store_b32 v0, v33, s[76:79], 0 offen
	buffer_store_b32 v17, v34, s[76:79], 0 offen
	buffer_store_b32 v18, v35, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v88, 2
	v_add_lshl_u32 v17, v32, v87, 2
	v_add_lshl_u32 v18, v32, v86, 2
	v_add_lshl_u32 v33, v32, v85, 2
	v_add_lshl_u32 v34, v32, v84, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	v_cndmask_b32_e64 v26, 0, v26, s0
	v_cndmask_b32_e64 v27, 0, v27, s0
	v_cndmask_b32_e64 v28, 0, v28, s0
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s67, v83
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_clause 0x4
	buffer_store_b32 v19, v0, s[76:79], 0 offen
	buffer_store_b32 v20, v17, s[76:79], 0 offen
	buffer_store_b32 v21, v18, s[76:79], 0 offen
	buffer_store_b32 v22, v33, s[76:79], 0 offen
	buffer_store_b32 v23, v34, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v83, 2
	v_add_lshl_u32 v17, v32, v82, 2
	v_add_lshl_u32 v18, v32, v81, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v32, v80, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	v_add_lshl_u32 v20, v32, v79, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x2
	buffer_store_b32 v24, v0, s[76:79], 0 offen
	buffer_store_b32 v25, v17, s[76:79], 0 offen
	buffer_store_b32 v26, v18, s[76:79], 0 offen
	v_add_lshl_u32 v17, v32, v78, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s67, v75
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v0, 0x80000000, v20, vcc_lo
	buffer_store_b32 v27, v19, s[76:79], 0 offen
	v_add_lshl_u32 v18, v32, v77, 2
	v_add_lshl_u32 v19, v32, v76, 2
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	buffer_store_b32 v28, v0, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v75, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v29, v17, s[76:79], 0 offen
	v_add_lshl_u32 v17, v32, v73, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x2
	buffer_store_b32 v30, v18, s[76:79], 0 offen
	buffer_store_b32 v31, v19, s[76:79], 0 offen
	buffer_store_b32 v9, v0, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v72, 2
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	v_add_lshl_u32 v17, v32, v71, 2
	v_add_lshl_u32 v18, v32, v70, 2
	v_add_lshl_u32 v19, v32, v69, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b32 v10, v9, s[76:79], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v10, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s67, v66
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v11, v0, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v68, 2
	s_clause 0x2
	buffer_store_b32 v12, v9, s[76:79], 0 offen
	buffer_store_b32 v13, v10, s[76:79], 0 offen
	buffer_store_b32 v14, v17, s[76:79], 0 offen
	v_add_lshl_u32 v9, v32, v67, 2
	v_add_lshl_u32 v10, v32, v66, 2
	v_add_lshl_u32 v11, v32, v65, 2
	v_add_lshl_u32 v12, v32, v64, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v0, s[76:79], 0 offen
	buffer_store_b32 v16, v9, s[76:79], 0 offen
	buffer_store_b32 v1, v10, s[76:79], 0 offen
	buffer_store_b32 v2, v11, s[76:79], 0 offen
	buffer_store_b32 v3, v12, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v61, 2
	v_add_lshl_u32 v1, v32, v59, 2
	v_add_lshl_u32 v2, v32, v63, 2
	v_add_lshl_u32 v3, v32, v62, 2
	v_add_lshl_u32 v9, v32, v60, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[76:79], 0 offen
	buffer_store_b32 v5, v1, s[76:79], 0 offen
	buffer_store_b32 v6, v2, s[76:79], 0 offen
	buffer_store_b32 v7, v3, s[76:79], 0 offen
	buffer_store_b32 v8, v9, s[76:79], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp53:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 228
		.amdhsa_next_free_sgpr 97
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 228
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 97
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12288
; TotalNumSgprs: 99
; NumVgprs: 228
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 99
; NumVGPRsForWavesPerEU: 228
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     99
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     228
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
