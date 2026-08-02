	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s20, s[0:1], 0x84
	s_load_b32 s27, s[0:1], 0x60
	s_load_b64 s[8:9], s[0:1], 0x0
.Ltmp0:
	.loc	1 773 86 prologue_end           ; attention.py:773:86
	v_and_b32_e32 v42, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v74, 1, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s5, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s4, s3, 9
	s_mov_b32 s11, 0x31027000
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s26, s5, s4
	.loc	1 773 86 is_stmt 0              ; attention.py:773:86
	v_lshlrev_b32_e32 v1, 4, v42
	.loc	1 773 26                        ; attention.py:773:26
	v_or_b32_e32 v2, s26, v74
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v4, s5, v74
	s_mov_b32 s10, 0x7ffffffe
	s_load_b64 s[6:7], s[0:1], 0x7c
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v65, v0, 4, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v33, 1, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v48, 0x60, v0
	v_and_b32_e32 v45, 15, v0
	v_lshlrev_b32_e32 v78, 2, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v5, v33, 30, v65
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s27, v2, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s2, s27, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s9, s9, 0xffff
	v_lshlrev_b32_e32 v5, 2, v5
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v43, 1, v48
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v7, 4, v5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v66, v43, v45
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s5, s7
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[1:4], v1, s[8:11], 0 offen
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s20
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s5, v66
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s5, s6
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s8, s2, 0x200
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s20
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s8, s8, 15
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s9, s9, 0
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s10, s8, 31
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v6
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s10, s10, 28
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s34, s9, 0x7ffffff0
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s8, s8, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_b32 s35, s8, -16
	s_mov_b32 s8, 0
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cmp_lt_i32 s34, s35
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v44, v5, v1
	ds_bpermute_b32 v54, v5, v2
	ds_bpermute_b32 v50, v5, v3
	ds_bpermute_b32 v51, v5, v4
	ds_bpermute_b32 v56, v7, v1
	ds_bpermute_b32 v55, v7, v2
	ds_bpermute_b32 v52, v7, v3
	ds_bpermute_b32 v53, v7, v4
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v46, 2, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr46
.LBB0_3:                                ; %Flow97
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x38
	s_load_b32 s33, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v75, 0x70, v0
	v_or_b32_e32 v73, 2, v65
	v_or_b32_e32 v72, 4, v65
	v_or_b32_e32 v70, 6, v65
	v_or_b32_e32 v68, 8, v65
	v_or_b32_e32 v67, 10, v65
	v_or_b32_e32 v71, 12, v65
	v_or_b32_e32 v69, 14, v65
	v_dual_mov_b32 v7, v8 :: v_dual_and_b32 v76, 7, v0
	v_lshrrev_b32_e32 v77, 3, v0
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
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v41, v8
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v38, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v34, v8
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_23
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	.loc	1 780 17 is_stmt 1              ; attention.py:780:17
	v_or_b32_e32 v1, s26, v66
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x28
	s_load_b128 s[16:19], s[0:1], 0x68
	v_dual_mov_b32 v38, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v1
	v_dual_mov_b32 v39, 0x7632 :: v_dual_and_b32 v2, 16, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v35, 4, v75
	v_dual_mov_b32 v90, 0xff800000 :: v_dual_lshlrev_b32 v5, 2, v48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v6, 14, v0
	v_lshrrev_b32_e32 v7, 5, v48
	v_dual_mov_b32 v9, 0 :: v_dual_lshlrev_b32 v8, 2, v75
	v_dual_mov_b32 v151, 0xff800000 :: v_dual_and_b32 v10, 60, v33
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	v_cmp_eq_u32_e32 vcc_lo, 0, v42
	buffer_load_u16 v34, v1, s[28:31], 0 offen
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v4, 24, v33
	v_dual_mov_b32 v92, 0xff800000 :: v_dual_lshlrev_b32 v13, 5, v0
	v_dual_mov_b32 v33, 0 :: v_dual_lshlrev_b32 v46, 2, v45
	v_lshrrev_b32_e32 v3, 2, v48
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v36, 5, v42
	v_lshrrev_b32_e32 v37, 3, v48
	v_lshrrev_b32_e32 v11, 2, v75
	v_cndmask_b32_e64 v12, 0x90, 0, vcc_lo
	v_or_b32_e32 v79, s4, v77
	v_or_b32_e32 v80, s4, v65
	v_or_b32_e32 v81, s4, v73
	v_or_b32_e32 v82, s4, v72
	v_or_b32_e32 v83, s4, v70
	v_or_b32_e32 v84, s4, v68
	v_or_b32_e32 v85, s4, v67
	v_or_b32_e32 v86, s4, v71
	v_or_b32_e32 v87, s4, v69
	v_dual_mov_b32 v153, 0xff800000 :: v_dual_lshlrev_b32 v58, 1, v6
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s4, 0, v2
	v_lshrrev_b32_e32 v40, 1, v2
	v_mul_u32_u24_e32 v41, 0x48, v6
	v_lshl_or_b32 v57, v42, 2, v7
	v_lshl_or_b32 v59, v6, 8, v8
	v_lshl_or_b32 v108, v48, 4, v10
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v147, 48, v35
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v110, s5, v35
	v_lshl_or_b32 v113, v45, 3, v5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v60, 8, v35
	v_or_b32_e32 v63, 32, v35
	v_or_b32_e32 v148, 56, v35
	v_bfe_i32 v0, v0, 2, 1
	v_or_b32_e32 v62, 24, v35
	v_lshl_or_b32 v96, v45, 5, v4
	v_dual_mov_b32 v28, v33 :: v_dual_and_b32 v115, 0x160, v13
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v49, v51, v53, s4
	v_xor_b32_e32 v109, v12, v11
	v_xor_b32_e32 v111, v78, v3
	v_lshrrev_b32_e32 v112, 2, v2
	v_lshl_add_u32 v114, v6, 7, 0
	v_mov_b32_e32 v32, v33
	v_cndmask_b32_e64 v48, v50, v52, s4
	v_cndmask_b32_e64 v51, v53, v51, s4
	v_cndmask_b32_e64 v50, v52, v50, s4
	v_cndmask_b32_e64 v53, v54, v55, s4
	v_cndmask_b32_e64 v52, v44, v56, s4
	v_cndmask_b32_e64 v55, v55, v54, s4
	v_cndmask_b32_e64 v54, v56, v44, s4
	v_or3_b32 v106, v41, v57, v40
	v_or3_b32 v107, v59, v36, v58
	v_xor_b32_e32 v36, v113, v43
	v_xor_b32_e32 v37, v108, v37
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v56, s5, v147
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v57, s20, v110
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v40, s5, v60
	v_or_b32_e32 v43, s5, v63
	v_or_b32_e32 v58, s5, v148
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v61, 16, v35
	v_and_or_b32 v108, 0x90, v0, v115
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v0, s5, v62
	v_cndmask_b32_e64 v38, 0x1054, v38, s4
	v_cndmask_b32_e64 v39, 0x3276, v39, s4
	v_xor_b32_e32 v59, 8, v96
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_add_i32 s1, s3, s0
	v_mov_b32_e32 v27, v33
	v_dual_mov_b32 v30, v33 :: v_dual_add_nc_u32 v109, v114, v109
	v_mov_b32_e32 v21, v33
	v_dual_mov_b32 v23, v33 :: v_dual_add_nc_u32 v114, s7, v57
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s12, s1, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s13, s1, 3
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, 0x200, v110
	v_add_nc_u32_e32 v110, 0, v111
	v_or_b32_e32 v111, v36, v112
	v_lshl_or_b32 v112, v42, 6, v37
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v42, s20, v56
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v113, s6, v57
	v_xor_b32_e32 v56, 32, v106
	v_xor_b32_e32 v57, 48, v106
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v64, 40, v35
	v_dual_mov_b32 v29, v33 :: v_dual_add_nc_u32 v36, s20, v40
	v_dual_mov_b32 v19, v33 :: v_dual_add_nc_u32 v40, s20, v43
	v_dual_mov_b32 v22, v33 :: v_dual_add_nc_u32 v43, s20, v58
	v_xor_b32_e32 v58, 64, v106
	v_dual_mov_b32 v31, v33 :: v_dual_add_nc_u32 v0, s20, v0
	v_dual_mov_b32 v24, v33 :: v_dual_add_nc_u32 v115, 0, v59
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v41, s5, v61
	v_lshl_or_b32 v38, v38, 8, v38
	v_lshl_or_b32 v39, v39, 8, v39
	v_xor_b32_e32 v59, 0x50, v106
	v_dual_mov_b32 v5, v33 :: v_dual_add_nc_u32 v134, 0, v57
	.loc	1 929 25 is_stmt 1              ; attention.py:929:25
	s_mul_f32 s4, s16, 0x3fb8aa3b
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v44, s5, v64
	v_dual_mov_b32 v18, v33 :: v_dual_add_nc_u32 v135, 0, v58
	v_dual_mov_b32 v12, v33 :: v_dual_add_nc_u32 v37, s20, v41
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v119, s7, v36
	v_mov_b32_e32 v13, v33
	v_mov_b32_e32 v15, v33
	v_dual_mov_b32 v16, v33 :: v_dual_add_nc_u32 v123, s7, v0
	v_dual_mov_b32 v7, v33 :: v_dual_add_nc_u32 v136, 0, v59
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v118, s6, v36
	v_subrev_nc_u32_e32 v122, s6, v0
	v_and_b32_e32 v0, 0x540054, v38
	v_and_b32_e32 v36, 0x760076, v39
	v_dual_mov_b32 v20, v33 :: v_dual_add_nc_u32 v41, s20, v44
	v_dual_mov_b32 v14, v33 :: v_dual_add_nc_u32 v121, s7, v37
	v_lshl_or_b32 v105, s3, 8, v35
	v_xor_b32_e32 v116, 16, v96
	v_xor_b32_e32 v117, 24, v96
	v_xor_b32_e32 v44, 16, v106
	v_xor_b32_e32 v137, 0x60, v106
	v_xor_b32_e32 v138, 0x70, v106
	v_xor_b32_e32 v139, 4, v107
	v_xor_b32_e32 v140, 8, v107
	v_xor_b32_e32 v141, 12, v107
	v_xor_b32_e32 v142, 16, v107
	v_xor_b32_e32 v143, 20, v107
	v_xor_b32_e32 v144, 24, v107
	v_xor_b32_e32 v145, 28, v107
	v_xor_b32_e32 v146, 16, v108
	v_subrev_nc_u32_e32 v120, s6, v37
	v_xor_b32_e32 v37, 0x240, v111
	v_xor_b32_e32 v38, 0x810, v112
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s48, s3, 5
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s12
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v124, s6, v40
	v_subrev_nc_u32_e32 v126, s6, v41
	v_subrev_nc_u32_e32 v128, s6, v42
	v_subrev_nc_u32_e32 v130, s6, v43
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s3, s18, s3
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s6, s17, s13
	v_dual_mov_b32 v88, 0xff800000 :: v_dual_lshlrev_b32 v47, 2, v76
	v_dual_mov_b32 v89, 0xff800000 :: v_dual_mov_b32 v94, 0xff800000
	v_dual_mov_b32 v91, 0xff800000 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v93, 0xff800000 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v95, 0xff800000 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v156, 0xff800000
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v154, 0xff800000
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v152, 0xff800000
	v_dual_mov_b32 v155, 0xff800000 :: v_dual_mov_b32 v158, 0xff800000
	v_dual_mov_b32 v157, 0xff800000 :: v_dual_mov_b32 v26, v33
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s33, v46
	v_dual_mov_b32 v10, v33 :: v_dual_add_nc_u32 v117, 0, v117
	v_dual_mov_b32 v11, v33 :: v_dual_add_nc_u32 v116, 0, v116
	v_dual_mov_b32 v2, v33 :: v_dual_add_nc_u32 v125, s7, v40
	v_dual_mov_b32 v3, v33 :: v_dual_add_nc_u32 v132, 0, v44
	v_dual_mov_b32 v4, v33 :: v_dual_add_nc_u32 v127, s7, v41
	v_dual_mov_b32 v6, v33 :: v_dual_add_nc_u32 v129, s7, v42
	v_dual_mov_b32 v8, v33 :: v_dual_add_nc_u32 v131, s7, v43
	v_add_nc_u32_e32 v137, 0, v137
	v_dual_mov_b32 v159, 0xff800000 :: v_dual_add_nc_u32 v138, 0, v138
	v_add_nc_u32_e32 v139, 0, v139
	v_add_nc_u32_e32 v140, 0, v140
	v_add_nc_u32_e32 v141, 0, v141
	v_add_nc_u32_e32 v142, 0, v142
	v_add_nc_u32_e32 v143, 0, v143
	v_add_nc_u32_e32 v144, 0, v144
	v_add_nc_u32_e32 v145, 0, v145
	v_add_nc_u32_e32 v146, 0, v146
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s5, s19, s5
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_add_i32 s50, s3, s6
	s_mov_b32 s49, 0x76543210
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b64 s[22:23], s[38:39]
	s_and_b32 s45, s11, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s40, s14
	s_mov_b32 s44, s10
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s41, s15
	s_add_i32 s50, s50, s5
	.loc	1 910 31                        ; attention.py:910:31
	v_cmp_gt_i32_e32 vcc_lo, s27, v47
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	v_add_nc_u32_e32 v133, 0, v56
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[56:57], null, s19, v60, v[45:46]
	v_mad_u64_u32 v[57:58], null, s19, v61, v[45:46]
	v_mad_u64_u32 v[58:59], null, s19, v62, v[45:46]
	v_mad_u64_u32 v[59:60], null, s19, v63, v[45:46]
	v_mad_u64_u32 v[60:61], null, s19, v64, v[45:46]
	v_mad_u64_u32 v[61:62], null, s19, v147, v[45:46]
	v_mad_u64_u32 v[62:63], null, s19, v148, v[45:46]
	v_mad_u64_u32 v[63:64], null, s19, v35, v[45:46]
	v_lshl_or_b32 v35, v36, 4, v36
	v_add_nc_u32_e32 v64, 0, v37
	v_add_nc_u32_e32 v147, 0, v38
	v_and_b32_e32 v148, 0x5040504, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 928 41                        ; attention.py:928:41
	v_dual_mul_f32 v150, s4, v34 :: v_dual_and_b32 v149, 0x7060706, v35
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 41 is_stmt 0                ; attention.py:0:41
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 932 25 is_stmt 1              ; attention.py:932:25
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 962 34                        ; attention.py:962:34
	s_waitcnt vmcnt(0)
	v_and_b16 v160.h, 0xff, v44.h
	v_and_b16 v43.h, 0xff, v43.h
	v_and_b16 v161.h, 0xff, v44.l
	v_and_b16 v42.h, 0xff, v42.h
	v_and_b16 v42.l, 0xff, v42.l
	v_and_b16 v0.l, 0xff, v0.l
	v_and_b16 v0.h, 0xff, v0.h
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v169, v150, v34
	.loc	1 962 34                        ; attention.py:962:34
	v_and_b16 v34.l, 0xff, v43.l
	v_cmp_ne_u16_e64 s5, 0, v42.l
	v_cmp_ne_u16_e64 s4, 0, v0.l
	v_cmp_ne_u16_e64 s3, 0, v0.h
	v_cmp_ne_u16_e64 s6, 0, v42.h
	v_cmp_ne_u16_e64 s7, 0, v161.h
	v_cmp_ne_u16_e64 s8, 0, v43.h
	v_cmp_ne_u16_e64 s9, 0, v160.h
	v_cmp_ne_u16_e64 s10, 0, v34.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 962 25                        ; attention.py:962:25
	s_and_b32 s16, s11, s3
	s_and_b32 s17, s12, s4
	s_and_b32 s11, s18, s9
	s_and_b32 s18, s13, s5
	s_and_b32 s13, s14, s6
	s_and_b32 s14, s15, s7
	s_and_b32 s12, s20, s10
	s_and_b32 s15, s19, s8
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v44.l, 0
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e64 v44.h, v167.l
	v_mov_b16_e64 v168.h, v160.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v36, v36
	v_mul_f32_e32 v170, v150, v35
	v_mul_f32_e32 v172, v150, v37
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v42, 0, 1, s16
	v_cndmask_b32_e64 v43, 0, 1, s17
	v_cndmask_b32_e64 v0, 0, 1, s11
	v_cndmask_b32_e64 v34, 0, 1, s18
	v_cndmask_b32_e64 v37, 0, 1, s13
	v_cndmask_b32_e64 v35, 0, 1, s12
	v_cndmask_b32_e64 v160, 0, 1, s15
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e64 v166.h, v165.l
	v_mov_b16_e64 v165.l, v44.l
	v_mov_b16_e64 v165.h, v164.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v171, v150, v36
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v36, 0, 1, s14
	v_lshlrev_b16 v0.l, 8, v0.l
	v_lshlrev_b16 v0.h, 8, v34.l
	v_mov_b16_e32 v34.l, v42.l
	v_lshlrev_b16 v34.h, 8, v35.l
	v_mov_b16_e64 v35.l, v160.l
	v_lshlrev_b16 v35.h, 8, v37.l
	v_mov_b16_e32 v37.l, v43.l
	v_or_b16 v36.h, v36.l, v0.l
	v_or_b16 v36.l, v34.l, v0.h
	v_add_nc_u32_e32 v0, 0, v111
	v_or_b16 v34.h, v35.l, v34.h
	v_or_b16 v34.l, v37.l, v35.h
	v_add_nc_u32_e32 v35, 0, v106
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v0, v36
	ds_store_b32 v64, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v0, v35
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v0, v132
	ds_load_u8_d16 v34, v133
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v34, v134
	ds_load_u8_d16 v35, v135
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v35, v136
	ds_load_u8_d16 v36, v137
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v36, v138
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e64 v167.l, v44.l
	v_mov_b16_e64 v167.h, v166.l
	v_mov_b16_e64 v164.l, v44.l
	v_mov_b16_e64 v164.h, v163.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v37, v150, v38
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e64 v166.l, v44.l
	v_mov_b16_e64 v163.l, v44.l
	v_mov_b16_e64 v163.h, v162.l
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v0.l, 1, v0.l
	v_and_b16 v0.h, 1, v0.h
	v_and_b16 v34.l, 1, v34.l
	v_and_b16 v34.h, 1, v34.h
	v_and_b16 v35.l, 1, v35.l
	v_cmp_eq_u16_e64 s9, 1, v0.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v36.l
	v_cmp_eq_u16_e64 s10, 1, v0.h
	v_and_b16 v0.h, 1, v36.h
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e64 v162.l, v44.l
	v_mov_b16_e64 v162.h, v161.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v38, v150, v39
	v_mul_f32_e32 v39, v150, v40
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v35.h, 1, v35.h
	v_cmp_eq_u16_e64 s3, 1, v0.l
	v_cmp_eq_u16_e64 s4, 1, v0.h
	.loc	1 967 26                        ; attention.py:967:26
	v_add_nc_u32_e32 v0, 0, v107
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v40, v150, v41 :: v_dual_mul_f32 v37, v37, v164
	v_mul_f32_e32 v41, v169, v44
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e64 v168.l, v44.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v42, v170, v167
	v_dual_mul_f32 v160, v172, v165 :: v_dual_mul_f32 v43, v171, v166
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s7, 1, v34.l
	v_cmp_eq_u16_e64 s8, 1, v34.h
	v_cmp_eq_u16_e64 s6, 1, v35.l
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v161, v38, v163 :: v_dual_mul_f32 v162, v39, v162
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v38, 0xff800000, v41, s9
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s5, 1, v35.h
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v163, v40, v168
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v40, 0xff800000, v42, s10
	v_cndmask_b32_e64 v39, 0xff800000, v43, s7
	v_cndmask_b32_e64 v41, 0xff800000, v160, s8
	v_cndmask_b32_e64 v169, 0xff800000, v37, s6
	v_cndmask_b32_e64 v168, 0xff800000, v161, s5
	v_cndmask_b32_e64 v167, 0xff800000, v162, s3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v0, v38
	ds_store_b32 v139, v40
	ds_store_b32 v140, v39
	ds_store_b32 v141, v41
	ds_store_b32 v142, v169
	ds_store_b32 v143, v168
	v_add_nc_u32_e32 v0, 0, v112
	v_cndmask_b32_e64 v166, 0xff800000, v163, s4
	ds_store_b32 v144, v167
	ds_store_b32 v145, v166
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[34:35], v0 offset1:32
	ds_load_2addr_b32 v[36:37], v147 offset1:32
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s19, s34, 1
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_2addr_b32 v[173:174], v147 offset0:64 offset1:96
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v181, v41, v169, v168
.Ltmp2:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v94, v94, v94
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s20, 0xff800000, v156
	v_cmp_neq_f32_e64 s21, 0xff800000, v155
	.loc	1 962 25                        ; attention.py:962:25
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v89, v89, v89
	v_max_f32_e32 v91, v91, v91
	v_max_f32_e32 v93, v93, v93
	s_waitcnt lgkmcnt(2)
	v_dual_max_f32 v95, v95, v95 :: v_dual_mov_b32 v42, v34
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v161, v35
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v43, v36
.Ltmp4:
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_2addr_b32 v[171:172], v0 offset0:64 offset1:96
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v42, v42 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v161, v161 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v43, v43 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v160, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v42, v42, v42 :: v_dual_max_f32 v161, v161, v161
	v_dual_max_f32 v43, v43, v43 :: v_dual_max_f32 v42, v160, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v160, v36, v36 :: v_dual_mov_b32 v163, v42
	v_max_f32_e32 v160, v160, v43
	v_max_f32_e32 v162, v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v163, v163 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v43, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v161, v162, v161
	v_max_f32_e32 v163, v163, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v162, v161
.Ltmp10:
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v164, s19, v105
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s19, s34, 4
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v163, v42, v163
.Ltmp12:
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s19, s19, s48
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v162, v162 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v165, v43, v43
.Ltmp15:
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[42:43], null, v164, s33, v[46:47]
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s19, s19, s33
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v162, v162, v162 :: v_dual_mov_b32 v43, v163
	v_max_f32_e32 v160, v160, v165
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v165, v173, v173
.Ltmp17:
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s34, s34, 16
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v161, v161, v162
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v162, v160
.Ltmp20:
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v42, 0x80000000, v42, s0
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s34, s35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v0, v43, v43
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v162, v162 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v177, v42, s[44:47], 0 offen
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v0, v163, v0
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v164, v161
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v42, v162, v162
.Ltmp27:
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v162, s19, v46, 1
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s19, 0xff800000, v151
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v163, v0
	v_mov_b32_dpp v164, v164 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v42, v160, v42
.Ltmp30:
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v160, 0x80000000, v162, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v163, v163 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v43, v164, v164 :: v_dual_max_f32 v164, v37, v37
.Ltmp33:
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[175:176], v160, s[36:39], 0 offen
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v160, v163, v163 :: v_dual_mov_b32 v163, v37
	v_max_f32_e32 v43, v161, v43
.Ltmp35:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v0, v0, v160
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v163, v163 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v162, v43
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v163, v163, v163
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v161, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v162, v162 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v161, v161 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v160, v161, v161 :: v_dual_max_f32 v161, v162, v162
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v162, v171
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v43, v43, v161
	v_max_f32_e32 v161, v164, v163
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v164, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v162, v162 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v42, v42, v160
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v160, v173 :: v_dual_max_f32 v163, v171, v171
	v_mov_b32_dpp v164, v164 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v182, v167, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v164, v164, v164
	v_max_f32_e32 v162, v162, v162
	v_dual_max_f32 v162, v163, v162 :: v_dual_max_f32 v163, v172, v172
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v160, v160 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v179, v162
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v163, v163, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v160, v160, v160
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v179, v179 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v170, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v160, v165, v160 :: v_dual_max_f32 v165, v174, v174
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v170, v170 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v180, v160
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v170, v170, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v180, v180 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v178, v161
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v164, v165, v170
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v170, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v178, v178 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v170, v170 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v165, v178, v178
	v_max_f32_e32 v161, v161, v165
	v_max_f32_e32 v165, v179, v179
	v_max_f32_e32 v179, v180, v180
.Ltmp57:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v89, v89, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v180, v161
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v160, v160, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp60:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v36, v36, v89
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v180, v180 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v179, v160 :: v_dual_max_f32 v162, v162, v165
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v165, v170, v170
.Ltmp63:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v179, v179 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v163, v163, v165
	v_max_f32_e32 v165, v180, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_max_f32 v161, v161, v165 :: v_dual_mov_b32 v178, v164
.Ltmp66:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v36, 0, v36, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v178, v178 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v170, v178, v178
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v178, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v164, v164, v170
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v178, v178 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v170, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v180, v164 :: v_dual_max_f32 v165, v178, v178
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v178, v179, v179
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v170, v170 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v179, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v180, v180 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v162, v162, v165
	v_max_f32_e32 v165, v170, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v179, v179 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v170, v180, v180 :: v_dual_max_f32 v163, v163, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v160, v160, v178 :: v_dual_max_f32 v165, v179, v179
	v_max_f32_e32 v164, v164, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v170, v163
	v_dual_mov_b32 v180, v160 :: v_dual_max_f32 v161, v161, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v178, v162 :: v_dual_mov_b32 v179, v164
	v_mov_b32_dpp v170, v170 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v180, v180 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v91, v91, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v178, v178 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v179, v179 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v37, v37, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v165, v178, v178 :: v_dual_max_f32 v178, v180, v180
	v_max3_f32 v180, v38, v40, v39
.Ltmp82:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v162, v162, v165
	v_max_f32_e32 v165, v170, v170
	v_max_f32_e32 v170, v160, v178
	v_max_f32_e32 v160, v179, v179
	v_max3_f32 v178, v180, v181, v182
.Ltmp84:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v88, v88, v88
	v_dual_max_f32 v179, v156, v156 :: v_dual_max_f32 v180, v155, v155
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v163, v163, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp86:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v181, v154, v154 :: v_dual_max_f32 v88, v88, v0
	v_max_f32_e32 v0, v179, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_max_f32_e32 v42, v180, v42
	v_dual_max_f32 v179, v158, v158 :: v_dual_max_f32 v164, v164, v160
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v160, v178, s49, 0xfedcba98 op_sel:[1,0]
.Ltmp88:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v180, v157, v157
	v_max_f32_e32 v90, v90, v90
	v_dual_max_f32 v94, v94, v163 :: v_dual_max_f32 v95, v95, v164
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v165, v151, v178, v160
	v_max_f32_e32 v160, v153, v153
	v_max_f32_e32 v178, v152, v152
	v_max_f32_e32 v163, v180, v163
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v37, 0, v37, s13
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v41, v41, v165
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_max_f32_e32 v160, v160, v161
	v_max_f32_e32 v90, v90, v43
	v_dual_max_f32 v92, v92, v92 :: v_dual_max_f32 v161, v178, v162
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v178, v156, v0 :: v_dual_max_f32 v43, v181, v43
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v181, v159, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v35, v35, v90
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v92, v92, v162
	v_dual_max_f32 v162, v179, v170 :: v_dual_sub_f32 v169, v169, v165
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v178, v178
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v39, v39, v165
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v179, v155, v42 :: v_dual_sub_f32 v182, v152, v161
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v93, v93, v170 :: v_dual_sub_f32 v170, v151, v165
	v_dual_max_f32 v164, v181, v164 :: v_dual_sub_f32 v167, v167, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v179, v179
	v_exp_f32_e32 v182, v182
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 970 25 is_stmt 0              ; attention.py:970:25
	v_cndmask_b32_e64 v151, 0, v178, s20
.Ltmp89:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v178, v36 :: v_dual_sub_f32 v181, v153, v160
.Ltmp90:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s20, 0xff800000, v153
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v35, v35
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v185, v159, v164
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v178, v178 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v180, v154, v43
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 970 25 is_stmt 0              ; attention.py:970:25
	v_cndmask_b32_e64 v153, 0, v179, s21
	v_cmp_neq_f32_e64 s21, 0xff800000, v152
	.loc	1 971 62 is_stmt 1              ; attention.py:971:62
	v_sub_f32_e32 v38, v38, v165
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v36, v36, v178
.Ltmp94:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v170, v170
	v_exp_f32_e32 v181, v181
	.loc	1 970 25 is_stmt 0              ; attention.py:970:25
	v_cndmask_b32_e64 v155, 0, v182, s21
	v_cmp_neq_f32_e64 s21, 0xff800000, v159
	.loc	1 971 62 is_stmt 1              ; attention.py:971:62
	v_sub_f32_e32 v159, v171, v92
	v_sub_f32_e32 v171, v173, v93
	v_sub_f32_e32 v173, v174, v95
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v35, 0, v35, s18
.Ltmp95:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v178, v36
.Ltmp96:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v166, v166, v165
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v171, v171
	v_exp_f32_e32 v173, v173
.Ltmp97:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v179, v35
	v_mov_b32_dpp v178, v178 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v170, 0, v170, s19
	v_cmp_neq_f32_e64 s19, 0xff800000, v154
	v_cndmask_b32_e64 v154, 0, v181, s20
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v179, v179 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v36, v36, v178
.Ltmp101:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v178, v41
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v41, 0, v171, s15
	v_cndmask_b32_e64 v171, 0, v173, s12
.Ltmp102:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v173, v37
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v35, v35, v179
.Ltmp104:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v179, v38
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v180, v180
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v181, v166
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v173, v173 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v172, v172, v94
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v38, v35 :: v_dual_sub_f32 v183, v158, v162
.Ltmp108:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v159, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v37, v37, v173
.Ltmp110:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v172, v172
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v38, v38 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v152, 0, v180, s19
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v185, v185
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s19, 0xff800000, v158
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v183, v183
.Ltmp113:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v35, v35, v38
.Ltmp114:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s20, 0xff800000, v157
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v169, v169
	v_exp_f32_e32 v167, v167
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v166, 0, v172, s11
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v40, v40, v165
.Ltmp115:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v38, v35
.Ltmp116:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v158, 0, v185, s21
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v185.h, v44.l
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v25, v25, v170
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v180, v40
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v40, v36
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v156, 0, v183, s19
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v27, v27, v170
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v169, 0, v169, s6
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v38, v35, v38
.Ltmp121:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v167, 0, v167, s3
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v29, v29, v170
	v_mul_f32_e32 v28, v28, v170
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v36, v36, v40
.Ltmp123:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v34, v34, v88
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v172, v38 :: v_dual_mul_f32 v31, v31, v170
.Ltmp125:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v30, v30, v170
	v_mul_f32_e32 v12, v12, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v34, v34
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v172, v172 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v19, v19, v170
	v_mul_f32_e32 v17, v17, v170
	v_mul_f32_e32 v14, v14, v170
	v_mul_f32_e32 v16, v16, v170
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v38, v38, v172
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v172, v37 :: v_dual_mul_f32 v23, v23, v170
.Ltmp130:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v170
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v34, 0, v34, s16
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v4, v4, v170
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v172, v172 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp132:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v9, v9, v170
	v_mul_f32_e32 v6, v6, v170
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v174, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp134:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v8, v8, v170 :: v_dual_add_f32 v37, v37, v172
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v168, v168, v165 :: v_dual_mul_f32 v21, v21, v170
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v174, v174 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp136:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v11, v11, v170
	v_mul_f32_e32 v13, v13, v170
	v_mul_f32_e32 v15, v15, v170
	v_mul_f32_e32 v5, v5, v170
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v34, v34, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp138:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v7, v7, v170 :: v_dual_mov_b32 v174, v34
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v174, v174 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v34, v34, v174
.Ltmp141:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v174, v39
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v39, v34
.Ltmp143:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v10, v10, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp145:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v174, 0, v174, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v34, v34, v39
.Ltmp147:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v39, 0, v159, s14
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v159, v36
.Ltmp149:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s3, v174, v174
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v40, v34
	v_mov_b32_dpp v159, v159 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v40, v40 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v35, v36, v159 :: v_dual_mov_b32 v36, v41
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v159, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v34, v34, v40
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v40, v39 :: v_dual_fmac_f32 v35, v98, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v36, v36 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v159, v159 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v153, v160
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v40, v40 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp155:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v184, v157, v163
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v36, v41, v36 :: v_dual_add_f32 v159, v166, v159
	v_mov_b32_e32 v98, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v39, v39, v40
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v40, v171
	v_dual_mov_b32 v166, v36 :: v_dual_mov_b32 v173, v159
.Ltmp158:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v184, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v41, v39
	v_mov_b32_dpp v40, v40 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v166, v166 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v173, v173 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp160:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v40, v171, v40 :: v_dual_mov_b32 v171, v37
	v_dual_add_f32 v36, v36, v166 :: v_dual_add_f32 v159, v159, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v39, v39, v41
.Ltmp161:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v41, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v171, v171 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v172, v36 :: v_dual_mov_b32 v173, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v166, v39
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp162:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v37, v37, v171
.Ltmp163:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v172, v172 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v173, v173 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v166, v166 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp164:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp165:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v157, 0, v184, s20
.Ltmp166:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v171, v36, v172
	v_add_f32_e32 v159, v159, v173
	v_add_f32_e32 v41, v39, v166
.Ltmp167:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v39, v40 :: v_dual_mov_b32 v166, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v172, v171
	v_dual_mov_b32 v173, v159 :: v_dual_mov_b32 v36, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v166, v166 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v172, v172 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v173, v173 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp168:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v211, v40, v39
	v_add_f32_e32 v39, v37, v166
.Ltmp169:
	.loc	1 978 32                        ; attention.py:978:32
	s_waitcnt vmcnt(1)
	v_bfe_i32 v166, v177, 0, 8
.Ltmp170:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v40, v159, v173
	v_add_f32_e32 v36, v41, v36
.Ltmp171:
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v41.l, 4, v177.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v41.h, v177.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v159.l, v166.l
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v166, 8, v177
.Ltmp172:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v37, v171, v172
.Ltmp173:
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v41.l, v41.l, 15
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s12, 7, v41.h
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s11, 0, v159.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v173, v166, 0, 8
	v_mov_b16_e64 v171.l, v177.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v44.h, v41.l, -16
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v159.l, 0, -16, s12
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v184.h, v176.l
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v172, 24, v177
	v_bfe_i32 v171, v171, 0, 8
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v41.l, v41.l, v44.h, s11
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v159.l, v41.h, v159.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e64 v44.h, v175.l
.Ltmp174:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v212, v211 :: v_dual_and_b32 v175, 0xffff0000, v175
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp175:
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v183, v41, 0, 16
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v41.l, v166.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v41.h, 4, v166.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v166, v159, 0, 16
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v159.l, v173.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v183, v183
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v41.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v41.h, v41.h, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v166, v166
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v182, v172, 0, 8
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v173, v44, v183
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v159.h, 0, -16, s11
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s11, 0, v159.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v159.l, v41.h, -16
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_mul_f32_e32 v166, v44, v166
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e64 v183.l, v173.h
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_or_b16 v41.l, v41.l, v159.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v183.h, v44.l
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v159.l, v41.h, v159.l, s11
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v185.l, v166.h
	v_cmp_o_f32_e64 s11, v173, v173
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_bfe_i32 v41, v41, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v183, 1, v183
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v159, v159, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v185, 1, v185
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v44.h, v172.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_add3_u32 v183, v173, v183, 0x7fff
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v159, v159
	.loc	1 1000 41 is_stmt 1             ; attention.py:1000:41
	v_and_b32_e32 v173, 0xffff0000, v176
.Ltmp176:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v212, v212 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp177:
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v176, v175, v41
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_add3_u32 v41, v166, v185, 0x7fff
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v175, v175, v159
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v183.h, 0x7fff, v183.h, s11
	v_cmp_o_f32_e64 s11, v166, v166
	v_mov_b16_e64 v159.l, v176.h
	v_mov_b16_e64 v159.h, v44.l
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v41.l, v177.h, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v177, 20, v177
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v183.l, 0x7fff, v41.h, s11
	v_mov_b16_e64 v166.l, v175.h
	v_and_b32_e32 v185, 1, v159
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v159.l, v171.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v41.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v166.h, v44.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v41.h, v177.l, 15
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v171, v176, v185, 0x7fff
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s12, 0, v159.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v159.l, 0, -16, s11
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v44.h
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_and_b32_e32 v186, 1, v166
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v166.l, v182.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v159.h, 4, v172.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v166.h, v41.h, -16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v171.l, v41.l, v159.l
	v_cndmask_b16 v159.l, 0, -16, s11
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s13, 0, v166.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v41.l, v159.h, -16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v166.l, v41.h, v166.h, s12
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_bfe_i32 v172, v171, 0, 16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v159.l, v44.h, v159.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e64 v184.l, v44.l
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v41.l, v159.h, v41.l, s13
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v166, v166, 0, 16
	v_cvt_f32_i32_e32 v172, v172
	v_bfe_i32 v159, v159, 0, 16
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_add3_u32 v177, v175, v186, 0x7fff
	v_cmp_o_f32_e64 s11, v175, v175
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v41, v41, 0, 16
	v_cvt_f32_i32_e32 v166, v166
	v_mul_f32_e32 v172, v184, v172
	v_cvt_f32_i32_e32 v159, v159
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v175.h, 0x7fff, v177.h, s11
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v41, v41
	v_mul_f32_e32 v166, v184, v166
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v177.l, v172.h
	v_mov_b16_e64 v177.h, v44.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v159, v173, v159
	v_mul_f32_e32 v41, v173, v41
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v173.l, v166.h
	v_mov_b16_e64 v173.h, v44.l
	v_and_b32_e32 v177, 1, v177
	v_mov_b16_e64 v184.l, v159.h
	v_mov_b16_e64 v184.h, v44.l
	v_mov_b16_e64 v182.l, v41.h
	v_mov_b16_e64 v182.h, v44.l
	v_and_b32_e32 v173, 1, v173
	v_cmp_o_f32_e64 s11, v176, v176
	v_add3_u32 v176, v172, v177, 0x7fff
	v_and_b32_e32 v177, 1, v184
	v_and_b32_e32 v182, 1, v182
	v_add3_u32 v173, v166, v173, 0x7fff
	v_cmp_o_f32_e64 s12, v166, v166
	v_cmp_o_f32_e64 s15, v159, v159
	v_add3_u32 v166, v159, v177, 0x7fff
	v_cmp_o_f32_e64 s13, v172, v172
	v_add3_u32 v172, v41, v182, 0x7fff
	v_cmp_o_f32_e64 s14, v41, v41
	v_cndmask_b16 v175.l, 0x7fff, v171.h, s11
	v_cndmask_b16 v159.l, 0x7fff, v166.h, s15
	.loc	1 971 33 is_stmt 1              ; attention.py:971:33
	v_cndmask_b32_e64 v166, 0, v179, s9
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v41.h, 0x7fff, v173.h, s12
	v_cndmask_b16 v159.h, 0x7fff, v172.h, s14
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v171, 0, v180, s10
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v172.h, v44.l
	v_mov_b16_e64 v172.l, v166.h
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v173, 0, v178, s8
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v41.l, 0x7fff, v176.h, s13
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v1, v1, v170
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v176.l, v171.h
	v_mov_b16_e64 v176.h, v44.l
	v_and_b32_e32 v172, 1, v172
	v_mov_b16_e64 v177.l, v173.h
	v_mov_b16_e64 v177.h, v44.l
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v168, v168
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v3, v3, v170 :: v_dual_and_b32 v176, 1, v176
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v172, v166, v172, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v177, 1, v177
	v_cmp_o_f32_e64 s8, v166, v166
	v_cmp_o_f32_e64 s7, v171, v171
	v_add3_u32 v176, v171, v176, 0x7fff
	v_cmp_o_f32_e64 s9, v173, v173
	v_add3_u32 v171, v173, v177, 0x7fff
	v_cndmask_b16 v204.l, 0x7fff, v172.h, s8
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v172, 0, v181, s4
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v178.l, v174.h
	v_mov_b16_e64 v178.h, v44.l
	v_cndmask_b16 v204.h, 0x7fff, v176.h, s7
	v_cndmask_b16 v44.h, 0x7fff, v171.h, s9
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v168, 0, v168, s5
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v171.l, v169.h
	v_mov_b16_e64 v171.h, v44.l
	v_mov_b16_e64 v176.l, v172.h
	v_mov_b16_e64 v176.h, v44.l
	v_and_b32_e32 v166, 1, v178
	v_mov_b16_e64 v173.l, v168.h
	v_mov_b16_e64 v173.h, v44.l
	v_and_b32_e32 v171, 1, v171
	v_mov_b16_e64 v177.l, v167.h
	v_mov_b16_e64 v177.h, v44.l
	v_and_b32_e32 v176, 1, v176
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v26, v26, v170 :: v_dual_and_b32 v173, 1, v173
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v166, v174, v166, 0x7fff
	v_add3_u32 v171, v169, v171, 0x7fff
	v_and_b32_e32 v174, 1, v177
	v_cmp_o_f32_e64 s5, v169, v169
	v_add3_u32 v169, v172, v176, 0x7fff
	v_cmp_o_f32_e64 s6, v172, v172
	v_add3_u32 v173, v168, v173, 0x7fff
	v_cmp_o_f32_e64 s4, v168, v168
	v_add3_u32 v168, v167, v174, 0x7fff
	v_cmp_o_f32_e64 s7, v167, v167
	v_cndmask_b16 v167.h, 0x7fff, v169.h, s6
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add_nc_u32_e32 v169, 0, v108
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v44.l, 0x7fff, v166.h, s3
	v_cndmask_b16 v166.h, 0x7fff, v173.h, s4
	v_cndmask_b16 v166.l, 0x7fff, v171.h, s5
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v109, v183, v175 offset1:8
	ds_store_2addr_b32 v109, v41, v159 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[171:174], v169
	ds_load_b128 v[179:182], v169 offset:512
	ds_load_b128 v[187:190], v169 offset:1024
	ds_load_b128 v[195:198], v169 offset:1536
	ds_load_b128 v[175:178], v146
	ds_load_b128 v[183:186], v146 offset:512
	ds_load_b128 v[191:194], v146 offset:1024
	ds_load_b128 v[199:202], v146 offset:1536
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v167.l, 0x7fff, v168.h, s7
	v_permlanex16_b32 v41, v44, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v168, v204, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v159, v166, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v32, v32, v170 :: v_dual_fmac_f32 v37, v102, v156
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v169, v167, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v205, v41, v44, v148
	v_perm_b32 v206, v41, v44, v149
.Ltmp178:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v41, v211, v212
.Ltmp179:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v203, v168, v204, v148
	v_perm_b32 v204, v168, v204, v149
	v_perm_b32 v207, v159, v166, v148
	v_perm_b32 v208, v159, v166, v149
	v_perm_b32 v209, v169, v167, v148
	v_perm_b32 v210, v169, v167, v149
	.loc	1 1020 23                       ; attention.py:1020:23
	v_dual_fmac_f32 v34, v97, v151 :: v_dual_fmac_f32 v39, v100, v154
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v20, v20, v170
	.loc	1 1020 23                       ; attention.py:1020:23
	v_dual_fmac_f32 v38, v99, v152 :: v_dual_fmac_f32 v41, v104, v158
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v24, v24, v170
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v36, v101, v155
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v18, v18, v170
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v40, v103, v157
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v22, v22, v170 :: v_dual_mov_b32 v151, v165
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[171:178], v[203:210], v[25:32]
	v_mov_b32_e32 v97, v34
	v_dual_mov_b32 v99, v38 :: v_dual_mov_b32 v100, v39
	v_dual_mov_b32 v101, v36 :: v_dual_mov_b32 v102, v37
	v_mov_b32_e32 v103, v40
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[179:186], v[203:210], v[17:24]
	v_mov_b32_e32 v104, v41
	v_dual_mov_b32 v156, v0 :: v_dual_mov_b32 v155, v42
	v_mov_b32_e32 v154, v43
	v_mov_b32_e32 v152, v161
	v_dual_mov_b32 v158, v162 :: v_dual_mov_b32 v157, v163
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[187:194], v[203:210], v[9:16]
	v_mov_b32_e32 v159, v164
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[195:202], v[203:210], v[1:8]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc0 .LBB0_22
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 907 32                        ; attention.py:907:32
	v_add_nc_u32_e32 v0, s34, v79
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v36, v82, s34, 1
	v_add_lshl_u32 v37, v83, s34, 1
	v_add_lshl_u32 v38, v84, s34, 1
	v_add_lshl_u32 v39, v85, s34, 1
	.loc	1 907 32                        ; attention.py:907:32
	v_mad_u64_u32 v[34:35], null, v0, s27, v[47:48]
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v35, v81, s34, 1
	v_add_lshl_u32 v40, v86, s34, 1
	v_add_lshl_u32 v41, v87, s34, 1
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s5, s50, s34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v0, 0x80000000, v34, vcc_lo
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v34, v80, s34, 1
	.loc	1 908 32                        ; attention.py:908:32
	buffer_load_b32 v0, v0, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v110, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 923 37                        ; attention.py:923:37
	s_clause 0x7
	buffer_load_u16 v167, v34, s[40:43], 0 offen
	buffer_load_u16 v166, v35, s[40:43], 0 offen
	buffer_load_u16 v165, v36, s[40:43], 0 offen
	buffer_load_u16 v164, v37, s[40:43], 0 offen
	buffer_load_u16 v163, v38, s[40:43], 0 offen
	buffer_load_u16 v162, v39, s[40:43], 0 offen
	buffer_load_u16 v161, v40, s[40:43], 0 offen
	buffer_load_u16 v160, v41, s[40:43], 0 offen
	.loc	1 913 33                        ; attention.py:913:33
	v_dual_mov_b32 v39, v33 :: v_dual_add_nc_u32 v0, 0, v96
	.loc	1 908 32                        ; attention.py:908:32
	ds_load_b64 v[42:43], v0
	ds_load_b64 v[168:169], v115
	ds_load_b64 v[170:171], v116
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v40, v33
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v40, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	.loc	1 908 32                        ; attention.py:908:32
	ds_load_b64 v[172:173], v117
	v_mov_b16_e32 v0.l, 0
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[54:55], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v0.h, v0.l
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[168:169], v[50:51], v[34:41] neg_lo:[1,1,0]
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v168, s34, v45
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[170:171], v[52:53], v[34:41] neg_lo:[1,1,0]
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v168, v113
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v168, v114
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[172:173], v[48:49], v[34:41] neg_lo:[1,1,0]
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s3, s3, s4
	s_and_b32 s11, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s4, s11
	s_cbranch_execz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 955 25                        ; attention.py:955:25
	v_add_nc_u32_e32 v42, s5, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v43, 31, v42
	v_add_co_u32 v42, s3, s22, v42
	v_add_co_ci_u32_e64 v43, null, s23, v43, s3
	global_load_d16_hi_u8 v0, v[42:43], off
.LBB0_8:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v168, v118
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v168, v119
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s1, s3
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s4, s12
	s_cbranch_execz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v42, s5, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v43, 31, v42
	v_add_co_u32 v42, s3, s22, v42
	v_add_co_ci_u32_e64 v43, null, s23, v43, s3
	global_load_d16_u8 v0, v[42:43], off
.LBB0_10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	v_mov_b16_e32 v42.h, 0
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v168, v120
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v168, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v42.l, v42.h
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s3, s3, s4
	s_and_b32 s13, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s4, s13
	s_cbranch_execz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v43, s5, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v44, 31, v43
	v_add_co_u32 v43, s3, s22, v43
	v_add_co_ci_u32_e64 v44, null, s23, v44, s3
	global_load_d16_u8 v42, v[43:44], off
.LBB0_12:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v168, v122
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v168, v123
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s1, s3
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s4, s14
	s_cbranch_execz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v43, s5, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v44, 31, v43
	v_add_co_u32 v43, s3, s22, v43
	v_add_co_ci_u32_e64 v44, null, s23, v44, s3
	global_load_d16_hi_u8 v42, v[43:44], off
.LBB0_14:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	v_mov_b16_e32 v43.h, 0
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v168, v124
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v168, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v44.l, v43.h
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s3, s3, s4
	s_and_b32 s15, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s4, s15
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v44, s5, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v170, 31, v44
	v_add_co_u32 v169, s3, s22, v44
	v_add_co_ci_u32_e64 v170, null, s23, v170, s3
	global_load_d16_u8 v44, v[169:170], off
.LBB0_16:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v168, v126
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v168, v127
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s1, s3
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s4, s19
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v43, s5, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v170, 31, v43
	v_add_co_u32 v169, s3, s22, v43
	v_add_co_ci_u32_e64 v170, null, s23, v170, s3
	global_load_d16_hi_u8 v43, v[169:170], off
.LBB0_18:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v43.l, 0
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v168, v128
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v168, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v44.h, v43.l
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s3, s3, s4
	s_and_b32 s18, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s4, s18
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v169, s5, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v170, 31, v169
	v_add_co_u32 v169, s3, s22, v169
	v_add_co_ci_u32_e64 v170, null, s23, v170, s3
	global_load_d16_hi_u8 v44, v[169:170], off
.LBB0_20:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v168, v130
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v168, v131
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s1, s3
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s4, s20
	s_cbranch_execz .LBB0_5
; %bb.21:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v168, s5, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v169, 31, v168
	v_add_co_u32 v168, s3, s22, v168
	v_add_co_ci_u32_e64 v169, null, s23, v169, s3
	global_load_d16_u8 v43, v[168:169], off
	s_branch .LBB0_5
.LBB0_22:                               ; %Flow
	.loc	1 0 34                          ; attention.py:0:34
	v_mov_b32_e32 v46, v78
.LBB0_23:                               ; %._crit_edge
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_lshlrev_b32_e32 v0, 4, v76
	v_and_b32_e32 v33, 4, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v42, 0x80, v46
	v_and_b32_e32 v43, 8, v77
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v0, 0, v0, v33
	v_add_nc_u32_e32 v33, 0, v75
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	.loc	1 903 13                        ; attention.py:903:13
	ds_store_b128 v33, v[34:37]
	ds_store_b128 v33, v[38:41] offset:128
	v_add3_u32 v0, v0, v42, v43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v33, null, v0, v0, v25
	v_div_scale_f32 v37, null, v0, v0, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v46, v35
	v_div_scale_f32 v39, null, v0, v0, v28
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v45, v33
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v29
	v_rcp_f32_e32 v48, v39
	v_rcp_f32_e32 v52, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_div_scale_f32 v36, s0, v26, v0, v26
	v_rcp_f32_e32 v49, v41
	v_fma_f32 v54, -v33, v45, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_div_scale_f32 v38, s1, v27, v0, v27
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v45, v54, v45
	v_fmac_f32_e32 v47, v56, v47
	v_fma_f32 v54, -v43, v52, 1.0
	v_mul_f32_e32 v56, v36, v46
	v_fma_f32 v58, -v41, v49, 1.0
	v_fmac_f32_e32 v48, v57, v48
	v_div_scale_f32 v44, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v35, v56, v36
	v_mul_f32_e32 v55, v34, v45
	v_fmac_f32_e32 v52, v54, v52
	v_mul_f32_e32 v57, v38, v47
	v_dual_fmac_f32 v49, v58, v49 :: v_dual_fmac_f32 v56, v60, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v33, v55, v34
	v_div_scale_f32 v51, null, v0, v0, v32
	v_fma_f32 v61, -v37, v57, v38
	v_rcp_f32_e32 v53, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v55, v58, v45
	v_div_scale_f32 v40, s3, v28, v0, v28
	v_fmac_f32_e32 v57, v61, v47
	v_div_scale_f32 v42, s4, v29, v0, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v55, v34
	v_fma_f32 v34, -v35, v56, v36
	v_fma_f32 v35, -v37, v57, v38
	v_rcp_f32_e32 v38, v51
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v44, v53, 1.0
	v_div_fmas_f32 v33, v33, v45, v55
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v50, s5, v30, v0, v30
	v_fmac_f32_e32 v53, v37, v53
	v_div_fmas_f32 v34, v34, v46, v56
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v25, v33, v0, v25
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v37, -v51, v38, 1.0
	v_div_fmas_f32 v35, v35, v47, v57
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v34, v0, v26
	v_div_scale_f32 v46, null, v0, v0, v18
	v_dual_fmac_f32 v38, v37, v38 :: v_dual_mul_f32 v59, v40, v48
	v_mul_f32_e32 v54, v42, v49
	v_div_fixup_f32 v27, v35, v0, v27
	v_div_scale_f32 v35, null, v0, v0, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v39, v59, v40
	v_div_scale_f32 v37, s3, v32, v0, v32
	v_fma_f32 v34, -v41, v54, v42
	v_div_scale_f32 v47, null, v0, v0, v20
	v_fmac_f32_e32 v59, v62, v48
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v54, v34, v49
	v_div_scale_f32 v34, s1, v31, v0, v31
	v_fma_f32 v36, -v39, v59, v40
	v_rcp_f32_e32 v40, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v41, v54, v42
	v_div_fmas_f32 v33, v36, v48, v59
	v_mul_f32_e32 v36, v50, v52
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v49, v54
	v_div_fixup_f32 v28, v33, v0, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v43, v36, v50
	v_fma_f32 v45, -v35, v40, 1.0
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v29, v39, v0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v33, v52
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s4, v17, v0, v17
	v_mul_f32_e32 v33, v34, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v43, v36, v50
	v_mul_f32_e32 v43, v37, v38
	v_div_fmas_f32 v36, v41, v52, v36
	v_rcp_f32_e32 v41, v46
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v30, v36, v0, v30
	v_mul_f32_e32 v36, v45, v40
	v_fma_f32 v42, -v44, v33, v34
	v_fma_f32 v39, -v46, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v42, v53
	v_fma_f32 v42, -v51, v43, v37
	v_fmac_f32_e32 v41, v39, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v44, v33, v34
	v_fmac_f32_e32 v43, v42, v38
	v_div_scale_f32 v42, null, v0, v0, v19
	v_div_scale_f32 v44, s1, v18, v0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v51, v43, v37
	v_fma_f32 v37, -v35, v36, v45
	v_rcp_f32_e32 v39, v42
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v31, v33, v0, v31
	v_div_fmas_f32 v34, v34, v38, v43
	v_fmac_f32_e32 v36, v37, v40
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v37, v47
	v_mul_f32_e32 v38, v44, v41
	v_div_fixup_f32 v32, v34, v0, v32
	v_fma_f32 v33, -v35, v36, v45
	v_div_scale_f32 v45, null, v0, v0, v21
	v_fma_f32 v43, -v42, v39, 1.0
	v_fma_f32 v34, -v46, v38, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v40, v36
	v_rcp_f32_e32 v36, v45
	v_div_scale_f32 v35, s3, v19, v0, v19
	v_fmac_f32_e32 v39, v43, v39
	v_fma_f32 v43, -v47, v37, 1.0
	v_div_scale_f32 v40, s4, v20, v0, v20
	v_div_fixup_f32 v17, v33, v0, v17
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v45, v36, 1.0
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v49, v36
	v_fmac_f32_e32 v38, v34, v41
	v_mul_f32_e32 v34, v35, v39
	v_rcp_f32_e32 v48, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v35
	v_mul_f32_e32 v46, v40, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v44, v39
	v_div_fmas_f32 v33, v33, v41, v38
	v_div_scale_f32 v41, s1, v21, v0, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v47, v46, v40
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v18, v33, v0, v18
	v_fma_f32 v33, -v42, v34, v35
	v_mul_f32_e32 v35, v41, v36
	v_fma_f32 v44, -v43, v48, 1.0
	v_div_scale_f32 v42, null, v0, v0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v39, v34
	v_fma_f32 v39, -v45, v35, v41
	v_fmac_f32_e32 v46, v38, v37
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v38, s5, v22, v0, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v39, v36
	v_fma_f32 v34, -v47, v46, v40
	v_div_scale_f32 v47, null, v0, v0, v24
	v_div_fixup_f32 v19, v33, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v45, v35, v41
	v_div_fmas_f32 v34, v34, v37, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v37, v47
	v_fmac_f32_e32 v48, v44, v48
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v40, v42
	v_div_fmas_f32 v33, v33, v36, v35
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v44, v38, v48
	v_div_scale_f32 v45, null, v0, v0, v10
	v_div_fixup_f32 v20, v34, v0, v20
	v_div_scale_f32 v34, s3, v23, v0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v43, v44, v38
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_fixup_f32 v21, v33, v0, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v39, v48
	v_fma_f32 v39, -v47, v37, 1.0
	v_fmac_f32_e32 v40, v46, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v43, v44, v38
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s1, v24, v0, v24
	v_div_scale_f32 v38, null, v0, v0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v35, v35, v48, v44
	v_div_scale_f32 v48, null, v0, v0, v12
	v_rcp_f32_e32 v41, v38
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v22, v35, v0, v22
	v_rcp_f32_e32 v35, v45
	v_rcp_f32_e32 v50, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v45, v35, 1.0
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v35, v46, v35
	v_mul_f32_e32 v36, v34, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v47, v44, v39
	v_fma_f32 v43, -v42, v36, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v9, v0, v9
	v_fmac_f32_e32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	v_fmac_f32_e32 v41, v43, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v46, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v43, v46, v43
	v_div_fmas_f32 v34, v34, v40, v36
	v_fma_f32 v36, -v47, v44, v39
	v_mul_f32_e32 v39, v33, v41
	v_div_scale_f32 v40, s3, v10, v0, v10
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v46, s5, v11, v0, v11
	v_fma_f32 v47, -v38, v39, v33
	v_mul_f32_e32 v49, v40, v35
	v_div_fmas_f32 v36, v36, v37, v44
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v23, v34, v0, v23
	v_fmac_f32_e32 v39, v47, v41
	v_fma_f32 v37, -v45, v49, v40
	v_div_fixup_f32 v24, v36, v0, v24
	v_fma_f32 v36, -v48, v50, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v38, v39, v33
	v_fmac_f32_e32 v49, v37, v35
	v_div_scale_f32 v37, null, v0, v0, v13
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v12, v0, v12
	v_div_fmas_f32 v33, v33, v41, v39
	v_fma_f32 v38, -v45, v49, v40
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v39, v36, v50 :: v_dual_mul_f32 v44, v46, v43
	v_div_fixup_f32 v9, v33, v0, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v35, v38, v35, v49
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v40, null, v0, v0, v14
	v_fma_f32 v34, -v42, v44, v46
	v_div_fixup_f32 v10, v35, v0, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v9, 0, v9, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v37, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v13, v0, v13
	v_mul_f32_e32 v33, v41, v34
	v_fma_f32 v38, -v42, v44, v46
	v_rcp_f32_e32 v42, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v11, v38, v0, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v39, v43, v50
	v_div_scale_f32 v38, null, v0, v0, v15
	v_fma_f32 v43, -v37, v33, v41
	v_fma_f32 v35, -v40, v42, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v48, v39, v36
	v_rcp_f32_e32 v44, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v12, v36, v0, v12
	v_fma_f32 v36, -v37, v33, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v38, v44, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v41, v44
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_scale_f32 v36, s1, v15, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v0, v14
	v_rcp_f32_e32 v47, v41
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v34, null, v0, v0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v33, s3, v16, v0, v16
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v48, s4, v1, v0, v1
	v_fma_f32 v37, -v40, v39, v35
	v_fma_f32 v49, -v41, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v49, v47
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v49, s5, v2, v0, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v40, v39, v35
	v_mul_f32_e32 v40, v36, v44
	v_div_fmas_f32 v35, v35, v42, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v34, v37, 1.0
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v33, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v48, v37
	v_rcp_f32_e32 v50, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v44, v40
	v_fma_f32 v33, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v0, v0, v4
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v33, v33, v45, v42
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v0, v3
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v36, v39, v50
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v15, v35, v0, v15
	v_div_fmas_f32 v37, v37, v47, v38
	v_div_fixup_f32 v16, v33, v0, v16
	v_fma_f32 v41, -v46, v36, v39
	v_div_fixup_f32 v1, v34, v0, v1
	v_div_scale_f32 v34, null, v0, v0, v5
	v_div_fixup_f32 v2, v37, v0, v2
	v_div_scale_f32 v37, null, v0, v0, v7
	v_fmac_f32_e32 v36, v41, v50
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v37
	v_div_scale_f32 v44, null, v0, v0, v8
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v37, v41, 1.0
	v_fmac_f32_e32 v41, v48, v41
	v_fma_f32 v33, -v46, v36, v39
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v46, v44
	v_div_scale_f32 v48, s4, v7, v0, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	v_mul_f32_e32 v52, v48, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_div_fixup_f32 v3, v33, v0, v3
	v_fma_f32 v45, -v35, v39, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_fma_f32 v33, -v34, v36, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v51, v45, v39
	v_dual_mul_f32 v43, v38, v42 :: v_dual_fmac_f32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v40, v43, v38
	v_mul_f32_e32 v49, v33, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v0, v8
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	v_fmac_f32_e32 v51, v40, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_div_fmas_f32 v38, v38, v42, v43
	v_fma_f32 v33, -v34, v49, v33
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v44, v53, v50
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v33, v33, v36, v49
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v34, -v37, v52, v48
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v33, v0, v5
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v0, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v46, v53
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s33, v65
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
	v_mul_lo_u32 v32, s33, v66
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	s_mul_i32 s0, s33, s26
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 16, v65
	v_or_b32_e32 v35, 32, v65
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_add_nc_u32_e32 v34, v32, v65
	v_add_nc_u32_e32 v32, s0, v32
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 48, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s33, v35
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v34, v34, s0, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v37, v32, v65, 2
	v_add_lshl_u32 v38, v32, v73, 2
	v_add_lshl_u32 v39, v32, v72, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s33, v33
	v_cmp_gt_i32_e64 s3, s33, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x2
	buffer_store_b32 v8, v37, s[24:27], 0 offen
	buffer_store_b32 v25, v38, s[24:27], 0 offen
	buffer_store_b32 v26, v39, s[24:27], 0 offen
	v_add_lshl_u32 v8, v32, v70, 2
	v_add_lshl_u32 v25, v32, v68, 2
	v_add_lshl_u32 v26, v32, v67, 2
	v_add_lshl_u32 v37, v32, v71, 2
	v_add_lshl_u32 v38, v32, v69, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	s_clause 0x4
	buffer_store_b32 v27, v8, s[24:27], 0 offen
	buffer_store_b32 v28, v25, s[24:27], 0 offen
	buffer_store_b32 v29, v26, s[24:27], 0 offen
	buffer_store_b32 v30, v37, s[24:27], 0 offen
	buffer_store_b32 v31, v38, s[24:27], 0 offen
	v_add_lshl_u32 v8, v32, v33, 2
	v_add_nc_u32_e32 v25, 0x48, v34
	v_add_nc_u32_e32 v26, 0x50, v34
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v27, 0x58, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_nc_u32_e32 v28, 0x60, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v8, s[24:27], 0 offen
	buffer_store_b32 v18, v25, s[24:27], 0 offen
	buffer_store_b32 v19, v26, s[24:27], 0 offen
	v_add_nc_u32_e32 v17, 0x68, v34
	v_add_nc_u32_e32 v18, 0x70, v34
	v_cndmask_b32_e32 v8, 0x80000000, v28, vcc_lo
	v_add_nc_u32_e32 v19, 0x78, v34
	buffer_store_b32 v20, v27, s[24:27], 0 offen
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	buffer_store_b32 v21, v8, s[24:27], 0 offen
	v_add_lshl_u32 v8, v32, v35, 2
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v17, s[24:27], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v34
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v18, s[24:27], 0 offen
	buffer_store_b32 v24, v19, s[24:27], 0 offen
	buffer_store_b32 v9, v8, s[24:27], 0 offen
	v_add_nc_u32_e32 v8, 0x90, v34
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v34
	v_add_nc_u32_e32 v18, 0xa0, v34
	v_add_nc_u32_e32 v19, 0xa8, v34
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v10, v9, s[24:27], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v10, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	buffer_store_b32 v11, v8, s[24:27], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v34
	s_clause 0x2
	buffer_store_b32 v12, v9, s[24:27], 0 offen
	buffer_store_b32 v13, v10, s[24:27], 0 offen
	buffer_store_b32 v14, v17, s[24:27], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v34
	v_add_lshl_u32 v10, v32, v36, 2
	v_add_nc_u32_e32 v11, 0xc8, v34
	v_add_nc_u32_e32 v12, 0xd0, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v8, s[24:27], 0 offen
	buffer_store_b32 v16, v9, s[24:27], 0 offen
	buffer_store_b32 v1, v10, s[24:27], 0 offen
	buffer_store_b32 v2, v11, s[24:27], 0 offen
	buffer_store_b32 v3, v12, s[24:27], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v34
	v_add_nc_u32_e32 v2, 0xe0, v34
	v_add_nc_u32_e32 v3, 0xe8, v34
	v_add_nc_u32_e32 v8, 0xf0, v34
	v_add_nc_u32_e32 v9, 0xf8, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[24:27], 0 offen
	buffer_store_b32 v5, v2, s[24:27], 0 offen
	buffer_store_b32 v6, v3, s[24:27], 0 offen
	buffer_store_b32 v7, v8, s[24:27], 0 offen
	buffer_store_b32 v0, v9, s[24:27], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp180:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 213
		.amdhsa_next_free_sgpr 51
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 213
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12132
; TotalNumSgprs: 53
; NumVgprs: 213
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 213
; Occupancy: 7
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
	.short	968                             ; DW_AT_call_line
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
	.short	972                             ; DW_AT_call_line
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
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
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
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
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
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     213
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
