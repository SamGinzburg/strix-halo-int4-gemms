	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s19, s[0:1], 0x84
	s_load_b32 s33, s[0:1], 0x60
	s_load_b64 s[8:9], s[0:1], 0x0
.Ltmp0:
	.loc	1 773 86 prologue_end           ; attention.py:773:86
	v_and_b32_e32 v42, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v67, 1, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s18, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s21, s3, 9
	s_mov_b32 s11, 0x31027000
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s4, s18, s21
	.loc	1 773 86 is_stmt 0              ; attention.py:773:86
	v_lshlrev_b32_e32 v1, 4, v42
	.loc	1 773 26                        ; attention.py:773:26
	v_or_b32_e32 v2, s4, v67
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v4, s18, v67
	s_mov_b32 s10, 0x7ffffffe
	s_load_b64 s[16:17], s[0:1], 0x7c
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v58, v0, 4, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v56, 1, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v44, 0x60, v0
	v_and_b32_e32 v45, 15, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v57, 16, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v6, v56, 30, v58
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s33, v2, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s2, s33, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s9, s9, 0xffff
	v_lshlrev_b32_e32 v6, 2, v6
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v43, 1, v44
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s20, 0, v57
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s2
	v_lshlrev_b32_e32 v71, 2, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	v_xor_b32_e32 v8, 4, v6
	v_lshrrev_b32_e32 v72, 1, v57
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s18, s17
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s18, s16
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[2:5], v1, s[8:11], 0 offen
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s19
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v43, v45
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s2, 64
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s19
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s5, 0x200
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s6, s6, 0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 15
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s18, v1
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s34, s6, 0x7ffffff0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s7, s7, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s5, s5, s7
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v7
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s35, s5, -16
	s_mov_b32 s5, 0
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s34, s35
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v54, v6, v2
	ds_bpermute_b32 v55, v6, v3
	ds_bpermute_b32 v52, v6, v4
	ds_bpermute_b32 v53, v6, v5
	ds_bpermute_b32 v59, v8, v2
	ds_bpermute_b32 v60, v8, v3
	ds_bpermute_b32 v61, v8, v4
	ds_bpermute_b32 v62, v8, v5
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b32_e32 v2, 0x5410
	v_dual_mov_b32 v3, 0x7632 :: v_dual_lshlrev_b32 v46, 2, v0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v33, 1, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v2, 0x1054, v2, s20
	v_cndmask_b32_e64 v3, 0x3276, v3, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 8, v2
	v_lshl_or_b32 v3, v3, 8, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v2, 0x540054, v2
	v_and_b32_e32 v3, 0x760076, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v3, v3, 4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v64, 0x5040504, v2
	v_and_b32_e32 v66, 0x7060706, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr66
.LBB0_3:                                ; %Flow97
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x38
	s_load_b32 s23, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v69, 7, v0
	v_and_b32_e32 v68, 0x70, v0
	v_or_b32_e32 v65, s4, v1
	v_lshrrev_b32_e32 v70, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
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
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_cbranch_vccnz .LBB0_23
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	v_dual_mov_b32 v10, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v65
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x28
	s_load_b128 s[12:15], s[0:1], 0x68
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v35, 4, v68
	v_dual_mov_b32 v33, 0 :: v_dual_lshlrev_b32 v4, 2, v44
	v_dual_mov_b32 v78, 0xff800000 :: v_dual_and_b32 v5, 14, v0
	v_lshrrev_b32_e32 v6, 5, v44
	v_dual_mov_b32 v80, 0xff800000 :: v_dual_lshlrev_b32 v7, 2, v68
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v11, 0x7632 :: v_dual_lshlrev_b32 v46, 2, v45
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v51, v55, v60, s20
	v_cndmask_b32_e64 v50, v54, v59, s20
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v55, v60, v55, s20
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v34, v1, s[28:31], 0 offen
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v54, v59, v54, s20
	v_lshrrev_b32_e32 v2, 2, v44
	v_dual_mov_b32 v76, 0xff800000 :: v_dual_and_b32 v3, 24, v56
	v_or_b32_e32 v73, s21, v58
	v_dual_mov_b32 v82, 0xff800000 :: v_dual_lshlrev_b32 v37, 5, v42
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v8, 60, v56
	v_cmp_eq_u32_e32 vcc_lo, 0, v42
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v14, 5, v0
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v66, 1, v5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v39, 8, v35
	v_or_b32_e32 v40, 16, v35
	v_or_b32_e32 v60, 32, v35
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v56, s18, v35
	v_lshl_or_b32 v58, v45, 3, v4
	v_mul_u32_u24_e32 v59, 0x48, v5
	v_lshl_or_b32 v64, v42, 2, v6
	v_lshl_or_b32 v100, v5, 8, v7
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e64 v48, v52, v61, s20
	v_cndmask_b32_e64 v52, v61, v52, s20
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v61, 40, v35
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v49, v53, v62, s20
	v_cndmask_b32_e64 v53, v62, v53, s20
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v62, 48, v35
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s0
	v_lshrrev_b32_e32 v36, 2, v57
	v_lshrrev_b32_e32 v38, 3, v44
	v_lshrrev_b32_e32 v12, 2, v68
	v_cndmask_b32_e64 v13, 0x90, 0, vcc_lo
	v_bfe_i32 v0, v0, 2, 1
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v102, 0x160, v14
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v41, 24, v35
	v_xor_b32_e32 v57, v71, v2
	v_lshl_or_b32 v83, v45, 5, v3
	v_lshl_or_b32 v44, v44, 4, v8
	v_cndmask_b32_e64 v104, 0x1054, v10, s20
	v_cndmask_b32_e64 v105, 0x3276, v11, s20
	v_mov_b32_e32 v27, v33
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s1, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s9, s1, 3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v107, s18, v39
	v_or_b32_e32 v108, s18, v40
	v_or3_b32 v100, v100, v37, v66
	v_or_b32_e32 v66, s18, v60
	v_xor_b32_e32 v43, v58, v43
	v_or3_b32 v101, v59, v64, v72
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, 0x200, v56
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v56, s19, v56
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v58, s18, v61
	v_or_b32_e32 v59, s18, v62
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v63, 56, v35
	v_xor_b32_e32 v103, v13, v12
	v_lshl_add_u32 v106, v5, 7, 0
	v_mov_b32_e32 v29, v33
	v_mov_b32_e32 v31, v33
	v_mov_b32_e32 v22, v33
	v_mov_b32_e32 v23, v33
	v_mov_b32_e32 v10, v33
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v37, s18, v41
	v_xor_b32_e32 v38, v44, v38
	v_and_or_b32 v102, 0x90, v0, v102
	v_xor_b32_e32 v0, 8, v83
	v_lshl_or_b32 v109, v104, 8, v104
	v_lshl_or_b32 v110, v105, 8, v105
	v_add_nc_u32_e32 v104, 0, v57
	v_or_b32_e32 v105, v43, v36
	.loc	1 762 27 is_stmt 1              ; attention.py:762:27
	v_add_nc_u32_e32 v36, s19, v107
	v_add_nc_u32_e32 v43, s19, v108
	v_add_nc_u32_e32 v57, s19, v66
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v107, s16, v56
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v108, s17, v56
	v_xor_b32_e32 v56, 32, v101
	v_dual_mov_b32 v19, v33 :: v_dual_add_nc_u32 v58, s19, v58
	v_dual_mov_b32 v12, v33 :: v_dual_add_nc_u32 v59, s19, v59
	v_xor_b32_e32 v64, 16, v83
	v_dual_mov_b32 v20, v33 :: v_dual_add_nc_u32 v103, v106, v103
	v_dual_mov_b32 v24, v33 :: v_dual_add_nc_u32 v37, s19, v37
	v_mov_b32_e32 v11, v33
	v_mov_b32_e32 v13, v33
	v_mov_b32_e32 v14, v33
	v_dual_mov_b32 v8, v33 :: v_dual_add_nc_u32 v119, s17, v57
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v44, s18, v63
	v_lshl_or_b32 v106, v42, 6, v38
	v_and_b32_e32 v38, 0x540054, v109
	v_and_b32_e32 v42, 0x760076, v110
	v_add_nc_u32_e32 v109, 0, v0
	v_xor_b32_e32 v0, 16, v101
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v118, s16, v57
	v_add_nc_u32_e32 v127, 0, v56
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[56:57], null, s15, v39, v[45:46]
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v120, s16, v58
	v_dual_mov_b32 v152, 0xff800000 :: v_dual_add_nc_u32 v121, s17, v58
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[57:58], null, s15, v40, v[45:46]
	v_dual_mov_b32 v15, v33 :: v_dual_add_nc_u32 v110, 0, v64
	v_xor_b32_e32 v64, 48, v101
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v122, s16, v59
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v123, s17, v59
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[58:59], null, s15, v41, v[45:46]
	v_mad_u64_u32 v[59:60], null, s15, v60, v[45:46]
	v_mad_u64_u32 v[60:61], null, s15, v61, v[45:46]
	v_dual_mov_b32 v21, v33 :: v_dual_add_nc_u32 v44, s19, v44
	v_dual_mov_b32 v2, v33 :: v_dual_add_nc_u32 v113, s17, v36
	v_dual_mov_b32 v3, v33 :: v_dual_add_nc_u32 v126, 0, v0
	v_dual_mov_b32 v6, v33 :: v_dual_add_nc_u32 v117, s17, v37
	v_xor_b32_e32 v111, 24, v83
	v_xor_b32_e32 v66, 64, v101
	v_xor_b32_e32 v130, 0x50, v101
	v_xor_b32_e32 v131, 0x60, v101
	v_xor_b32_e32 v132, 0x70, v101
	v_xor_b32_e32 v133, 4, v100
	v_xor_b32_e32 v134, 8, v100
	v_xor_b32_e32 v135, 12, v100
	v_xor_b32_e32 v136, 16, v100
	v_xor_b32_e32 v137, 20, v100
	v_xor_b32_e32 v138, 24, v100
	v_xor_b32_e32 v139, 28, v100
	v_xor_b32_e32 v140, 16, v102
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v112, s16, v36
	v_subrev_nc_u32_e32 v116, s16, v37
	v_lshl_or_b32 v36, v38, 4, v38
	v_lshl_or_b32 v37, v42, 4, v42
	v_xor_b32_e32 v0, 0x240, v105
	v_xor_b32_e32 v38, 0x810, v106
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[61:62], null, s15, v62, v[45:46]
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s48, s3, 5
	v_lshl_or_b32 v97, s3, 8, v35
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s8
	.loc	1 929 25                        ; attention.py:929:25
	s_mul_f32 s8, s12, 0x3fb8aa3b
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[62:63], null, s15, v63, v[45:46]
	v_dual_mov_b32 v5, v33 :: v_dual_add_nc_u32 v128, 0, v64
	v_mad_u64_u32 v[63:64], null, s15, v35, v[45:46]
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s3, s14, s3
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s9, s13, s9
	v_dual_mov_b32 v144, 0xff800000 :: v_dual_lshlrev_b32 v47, 2, v69
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v86, 0
	v_or_b32_e32 v74, s21, v70
	v_dual_mov_b32 v75, 0xff800000 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v77, 0xff800000 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v79, 0xff800000 :: v_dual_mov_b32 v150, 0xff800000
	v_dual_mov_b32 v81, 0xff800000 :: v_dual_mov_b32 v148, 0xff800000
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v146, 0xff800000
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v26, v33
	v_dual_mov_b32 v151, 0xff800000 :: v_dual_mov_b32 v28, v33
	v_dual_mov_b32 v149, 0xff800000 :: v_dual_mov_b32 v30, v33
	v_dual_mov_b32 v147, 0xff800000 :: v_dual_mov_b32 v32, v33
	v_dual_mov_b32 v145, 0xff800000 :: v_dual_mov_b32 v18, v33
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s23, v46
	v_dual_mov_b32 v16, v33 :: v_dual_add_nc_u32 v111, 0, v111
	v_dual_mov_b32 v4, v33 :: v_dual_add_nc_u32 v115, s17, v43
	v_dual_mov_b32 v7, v33 :: v_dual_add_nc_u32 v130, 0, v130
	v_or_b32_e32 v92, 2, v73
	v_or_b32_e32 v93, 4, v73
	v_or_b32_e32 v94, 6, v73
	v_or_b32_e32 v95, 8, v73
	v_or_b32_e32 v96, 10, v73
	v_or_b32_e32 v98, 12, v73
	v_or_b32_e32 v99, 14, v73
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v114, s16, v43
	v_subrev_nc_u32_e32 v124, s16, v44
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v125, s17, v44
	v_add_nc_u32_e32 v129, 0, v66
	v_add_nc_u32_e32 v131, 0, v131
	v_add_nc_u32_e32 v133, 0, v133
	v_add_nc_u32_e32 v134, 0, v134
	v_add_nc_u32_e32 v135, 0, v135
	v_add_nc_u32_e32 v136, 0, v136
	v_add_nc_u32_e32 v137, 0, v137
	v_add_nc_u32_e32 v138, 0, v138
	v_add_nc_u32_e32 v139, 0, v139
	v_add_nc_u32_e32 v140, 0, v140
	v_and_b32_e32 v64, 0x5040504, v36
	v_and_b32_e32 v66, 0x7060706, v37
	v_add_nc_u32_e32 v141, 0, v0
	v_add_nc_u32_e32 v142, 0, v38
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s12, s15, s18
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_add_i32 s50, s3, s9
	s_mov_b32 s49, 0x76543210
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b64 s[26:27], s[38:39]
	s_and_b32 s45, s7, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s40, s10
	s_mov_b32 s44, s6
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s28, s4
	s_mov_b32 s29, s5
	s_mov_b32 s41, s11
	s_add_i32 s50, s50, s12
	.loc	1 910 31                        ; attention.py:910:31
	v_cmp_gt_i32_e32 vcc_lo, s33, v47
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 928 41                        ; attention.py:928:41
	v_dual_mul_f32 v143, s8, v34 :: v_dual_add_nc_u32 v132, 0, v132
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 41 is_stmt 0                ; attention.py:0:41
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_waitcnt vmcnt(0)
	v_and_b16 v153.l, 0xff, v44.h
	v_and_b16 v42.l, 0xff, v42.l
	v_and_b16 v0.l, 0xff, v0.l
	v_and_b16 v0.h, 0xff, v0.h
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 962 34                        ; attention.py:962:34
	v_and_b16 v153.h, 0xff, v44.l
	v_cmp_ne_u16_e64 s5, 0, v42.l
	v_cmp_ne_u16_e64 s4, 0, v0.l
	v_cmp_ne_u16_e64 s3, 0, v0.h
	v_cmp_ne_u16_e64 s9, 0, v153.l
	v_and_b16 v42.h, 0xff, v42.h
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e64 v160.h, v161.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v161, v143, v34
	.loc	1 962 34                        ; attention.py:962:34
	v_and_b16 v34.l, 0xff, v43.l
	v_and_b16 v43.h, 0xff, v43.h
	v_cmp_ne_u16_e64 s7, 0, v153.h
	.loc	1 962 25 is_stmt 0              ; attention.py:962:25
	s_and_b32 s18, s11, s3
	s_and_b32 s17, s12, s4
	s_and_b32 s12, s19, s9
	s_and_b32 s19, s13, s5
	.loc	1 978 32 is_stmt 1              ; attention.py:978:32
	v_mov_b16_e32 v44.l, 0
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s6, 0, v42.h
	v_cmp_ne_u16_e64 s10, 0, v34.l
	.loc	1 962 25 is_stmt 0              ; attention.py:962:25
	v_cndmask_b32_e64 v42, 0, 1, s18
	v_cndmask_b32_e64 v0, 0, 1, s12
	v_cndmask_b32_e64 v34, 0, 1, s19
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s8, 0, v43.h
	.loc	1 962 25                        ; attention.py:962:25
	s_and_b32 s15, s15, s7
	.loc	1 923 37 is_stmt 1              ; attention.py:923:37
	v_mov_b16_e64 v44.h, v154.l
	v_mov_b16_e64 v154.l, v44.l
	v_mov_b16_e64 v154.h, v155.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v37, v37
	v_mul_f32_e32 v162, v143, v35
	v_mul_f32_e32 v163, v143, v36
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v36, 0, 1, s15
	v_lshlrev_b16 v0.l, 8, v0.l
	v_lshlrev_b16 v0.h, 8, v34.l
	v_mov_b16_e32 v34.l, v42.l
	s_and_b32 s14, s14, s6
	s_and_b32 s13, s21, s10
	s_and_b32 s16, s16, s8
	v_cndmask_b32_e64 v43, 0, 1, s17
	v_cndmask_b32_e64 v35, 0, 1, s13
	v_cndmask_b32_e64 v153, 0, 1, s16
	v_or_b16 v36.h, v36.l, v0.l
	v_or_b16 v36.l, v34.l, v0.h
	v_add_nc_u32_e32 v0, 0, v105
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v164, v143, v37
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v37, 0, 1, s14
	v_lshlrev_b16 v34.h, 8, v35.l
	v_mov_b16_e64 v35.l, v153.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b16 v35.h, 8, v37.l
	v_mov_b16_e32 v37.l, v43.l
	v_or_b16 v34.h, v35.l, v34.h
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 962 25                        ; attention.py:962:25
	v_or_b16 v34.l, v37.l, v35.h
	v_add_nc_u32_e32 v35, 0, v101
	ds_store_b32 v0, v36
	ds_store_b32 v141, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v0, v35
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v0, v126
	ds_load_u8_d16 v34, v127
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v34, v128
	ds_load_u8_d16 v35, v129
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v35, v130
	ds_load_u8_d16 v36, v131
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v36, v132
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e64 v155.l, v44.l
	v_mov_b16_e64 v155.h, v156.l
	v_mov_b16_e64 v156.l, v44.l
	v_mov_b16_e64 v156.h, v157.l
	v_mov_b16_e64 v157.l, v44.l
	v_mov_b16_e64 v157.h, v158.l
	v_mov_b16_e64 v158.l, v44.l
	v_mov_b16_e64 v158.h, v159.l
	v_mov_b16_e64 v159.h, v160.l
	v_mov_b16_e64 v160.l, v44.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v37, v143, v38
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v0.l, 1, v0.l
	v_and_b16 v0.h, 1, v0.h
	v_and_b16 v34.l, 1, v34.l
	v_and_b16 v34.h, 1, v34.h
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v38, v143, v39
	v_mul_f32_e32 v39, v143, v40
	v_mul_f32_e32 v40, v143, v41
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v35.l, 1, v35.l
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e64 v159.l, v44.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v41, v161, v44
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v35.h, 1, v35.h
	v_cmp_eq_u16_e64 s10, 1, v0.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v36.l
	v_cmp_eq_u16_e64 s11, 1, v0.h
	v_and_b16 v0.h, 1, v36.h
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v42, v162, v154 :: v_dual_mul_f32 v43, v163, v155
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s8, 1, v34.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v153, v164, v156
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s9, 1, v34.h
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v156, v40, v160 :: v_dual_mul_f32 v37, v37, v157
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s7, 1, v35.l
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v154, v38, v158 :: v_dual_mul_f32 v155, v39, v159
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v38, 0xff800000, v41, s10
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s6, 1, v35.h
	v_cmp_eq_u16_e64 s4, 1, v0.l
	v_cmp_eq_u16_e64 s5, 1, v0.h
	.loc	1 967 26                        ; attention.py:967:26
	v_add_nc_u32_e32 v0, 0, v100
	v_cndmask_b32_e64 v39, 0xff800000, v42, s11
	v_cndmask_b32_e64 v40, 0xff800000, v43, s8
	v_cndmask_b32_e64 v41, 0xff800000, v153, s9
	v_cndmask_b32_e64 v159, 0xff800000, v37, s7
	v_cndmask_b32_e64 v160, 0xff800000, v154, s6
	v_cndmask_b32_e64 v161, 0xff800000, v155, s4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v0, v38
	ds_store_b32 v133, v39
	ds_store_b32 v134, v40
	ds_store_b32 v135, v41
	ds_store_b32 v136, v159
	ds_store_b32 v137, v160
	v_add_nc_u32_e32 v0, 0, v106
	v_cndmask_b32_e64 v162, 0xff800000, v156, s5
	ds_store_b32 v138, v161
	ds_store_b32 v139, v162
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[34:35], v0 offset1:32
	ds_load_2addr_b32 v[36:37], v142 offset1:32
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s3, s34, 1
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_2addr_b32 v[164:165], v0 offset0:64 offset1:96
	ds_load_2addr_b32 v[166:167], v142 offset0:64 offset1:96
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v174, v41, v159, v160
.Ltmp2:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v77, v77, v77
	v_max_f32_e32 v79, v79, v79
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s21, 0xff800000, v151
	v_cmp_neq_f32_e64 s22, 0xff800000, v150
	.loc	1 962 25                        ; attention.py:962:25
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v76, v76, v76
	v_max_f32_e32 v80, v80, v80
	v_max_f32_e32 v78, v78, v78
	v_max_f32_e32 v82, v82, v82
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	s_waitcnt lgkmcnt(2)
	v_dual_mov_b32 v42, v34 :: v_dual_mov_b32 v43, v36
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v153, v34, v34 :: v_dual_mov_b32 v154, v35
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v163, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v42, v42 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v43, v43 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v154, v154 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v155, v35, v35 :: v_dual_max_f32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v43, v43, v43 :: v_dual_max_f32 v154, v154, v154
	v_dual_max_f32 v42, v153, v42 :: v_dual_max_f32 v153, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v156, v42 :: v_dual_max_f32 v153, v153, v43
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v154, v155, v154
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v156, v156 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v43, v153
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v155, v154 :: v_dual_max_f32 v156, v156, v156
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp10:
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v157, s3, v97
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v155, v155 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp12:
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s3, s34, 4
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v156, v42, v156
	v_max_f32_e32 v158, v43, v43
.Ltmp14:
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[42:43], null, v157, s23, v[46:47]
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s3, s3, s48
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v43, v156
.Ltmp16:
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s3, s3, s23
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s34, s34, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s34, s35
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp18:
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v42, 0x80000000, v42, s0
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v0, v43, v43
	v_max_f32_e32 v155, v155, v155
.Ltmp20:
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v170, v42, s[44:47], 0 offen
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v0, v156, v0 :: v_dual_max_f32 v153, v153, v158
	v_max_f32_e32 v154, v154, v155
	v_max_f32_e32 v158, v166, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v156, v0 :: v_dual_mov_b32 v155, v153
	v_mov_b32_dpp v156, v156 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v155, v155 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v157, v154 :: v_dual_max_f32 v42, v155, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v157, v157 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v155, s3, v46, 1
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v144
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v43, v157, v157
	v_max_f32_e32 v42, v153, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp25:
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v153, 0x80000000, v155, s0
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v43, v154, v43
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v154, v42
.Ltmp28:
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[168:169], v153, s[36:39], 0 offen
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v153, v156, v156 :: v_dual_mov_b32 v156, v37
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v155, v43
	v_mov_b32_dpp v154, v154 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v0, v0, v153
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v156, v156 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v155, v155 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v153, v154, v154
	v_max_f32_e32 v157, v37, v37
.Ltmp35:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v156, v156, v156
	v_dual_max_f32 v154, v155, v155 :: v_dual_mov_b32 v155, v164
	v_max_f32_e32 v42, v42, v153
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v153, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v43, v43, v154
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v155, v155 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v154, v157, v156
	v_dual_max_f32 v156, v164, v164 :: v_dual_mov_b32 v157, v165
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v153, v153 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v155, v155, v155 :: v_dual_max_f32 v76, v76, v42
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v157, v157 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v153, v153, v153
	v_max_f32_e32 v155, v156, v155
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v171, v154 :: v_dual_max_f32 v156, v165, v165
	v_mov_b32_dpp v163, v163 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v36, v36, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v172, v155
	v_mov_b32_dpp v171, v171 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v153, v158, v153 :: v_dual_max_f32 v158, v167, v167
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v36, v36
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v172, v172 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v157, v157, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v163, v163, v163 :: v_dual_max_f32 v156, v156, v157
	v_max_f32_e32 v157, v158, v163
	v_max_f32_e32 v158, v171, v171
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v36, 0, v36, s17
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v163, v156 :: v_dual_max_f32 v154, v154, v158
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v158, v172, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v163, v163 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v173, v153
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v155, v155, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v158, v163, v163
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v173, v173 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v156, v156, v158
	v_max_f32_e32 v172, v173, v173
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v171, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v171, v171 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v163, v171, v171
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v171, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v171, v171 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v173, v154
	v_mov_b32_dpp v173, v173 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v158, v173, v173
	v_dual_max_f32 v153, v153, v172 :: v_dual_max_f32 v154, v154, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v172, v153
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v158, v171, v171
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v172, v172 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v155, v155, v158
	v_dual_max_f32 v171, v172, v172 :: v_dual_mov_b32 v172, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v172, v172 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v157, v157, v163
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v163, v156
	v_mov_b32_dpp v163, v163 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v158, v163, v163
	v_max_f32_e32 v156, v156, v158
	v_dual_max_f32 v158, v172, v172 :: v_dual_mov_b32 v173, v157
	v_max_f32_e32 v153, v153, v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v171, v155 :: v_dual_max_f32 v154, v154, v158
	v_mov_b32_dpp v173, v173 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v171, v171 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v78, v78, v154 :: v_dual_max_f32 v163, v173, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v158, v171, v171
	v_max_f32_e32 v157, v157, v163
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v163, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v155, v155, v158 :: v_dual_mov_b32 v172, v157
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v163, v163 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v175, v161, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v172, v172 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v158, v163, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v156, v156, v158 :: v_dual_mov_b32 v173, v153
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v173, v173 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v171, v173, v173
	v_max3_f32 v173, v38, v39, v40
	v_max_f32_e32 v163, v153, v171
	v_dual_max_f32 v153, v172, v172 :: v_dual_max_f32 v172, v151, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max3_f32 v171, v173, v174, v175
.Ltmp82:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v173, v150, v150 :: v_dual_max_f32 v174, v149, v149
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v157, v157, v153
.Ltmp84:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v153, v171, s49, 0xfedcba98 op_sel:[1,0]
.Ltmp86:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v42, v173, v42
	v_max_f32_e32 v80, v80, v163
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v82, v82, v157 :: v_dual_max_f32 v75, v75, v0
	v_max_f32_e32 v0, v172, v0
	v_dual_max_f32 v172, v146, v146 :: v_dual_max_f32 v77, v77, v43
	v_max_f32_e32 v43, v174, v43
	v_max3_f32 v158, v144, v171, v153
	v_max_f32_e32 v153, v148, v148
	v_max_f32_e32 v171, v147, v147
	v_max_f32_e32 v81, v81, v81
	v_dual_max_f32 v173, v145, v145 :: v_dual_sub_f32 v34, v34, v75
	v_dual_max_f32 v174, v152, v152 :: v_dual_max_f32 v79, v79, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_max_f32 v153, v153, v154 :: v_dual_max_f32 v154, v171, v155
	v_dual_max_f32 v155, v172, v163 :: v_dual_sub_f32 v172, v150, v42
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v35, v35, v77
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v171, v151, v0 :: v_dual_sub_f32 v38, v38, v158
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v81, v81, v156
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v172, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v35, v35
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v171, v171
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v157, v174, v157 :: v_dual_sub_f32 v40, v40, v158
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v174, v148, v153
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v34, v34
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v156, v173, v156
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v173, v149, v43 :: v_dual_sub_f32 v160, v160, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v174, v174
	.loc	1 971 33 is_stmt 1              ; attention.py:971:33
	v_cndmask_b32_e64 v35, 0, v35, s19
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v163, v144, v158
	.loc	1 970 25 is_stmt 0              ; attention.py:970:25
	v_cndmask_b32_e64 v144, 0, v171, s21
	v_cmp_neq_f32_e64 s21, 0xff800000, v148
	v_cndmask_b32_e64 v148, 0, v172, s22
.Ltmp87:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v172, v35
.Ltmp88:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v163, v163
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v34, 0, v34, s18
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v175, v147, v154
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v173, v173
.Ltmp89:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v172, v172 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s22, 0xff800000, v147
	.loc	1 970 74 is_stmt 0              ; attention.py:970:74
	v_sub_f32_e32 v176, v146, v155
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v175, v175
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v177, v145, v156 :: v_dual_sub_f32 v162, v162, v158
.Ltmp91:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v35, v35, v172
.Ltmp92:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v37, v37, v78
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v172, v38
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cndmask_b32_e64 v163, 0, v163, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v149
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v38, v35
.Ltmp94:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v178, v152, v157
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v171, v36
.Ltmp96:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v37, v37
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v147, 0, v173, s3
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v38, v38 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v146
	v_cndmask_b32_e64 v146, 0, v174, s21
	v_cmp_neq_f32_e64 s21, 0xff800000, v145
	v_cndmask_b32_e64 v145, 0, v175, s22
	v_cmp_neq_f32_e64 s22, 0xff800000, v152
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v152, v164, v79
	v_sub_f32_e32 v164, v166, v80
	v_sub_f32_e32 v166, v167, v82
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v35, v35, v38
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v167, v34
	v_mov_b32_dpp v171, v171 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp101:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v164, v164
	v_exp_f32_e32 v152, v152
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v38, v35
	v_mov_b32_dpp v167, v167 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v36, v36, v171
.Ltmp104:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v166, v166
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v37, 0, v37, s14
.Ltmp105:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v34, v34, v167 :: v_dual_mov_b32 v171, v36
.Ltmp107:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v177, v177
	v_exp_f32_e32 v176, v176
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v38, v35, v38 :: v_dual_mov_b32 v167, v34
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v171, v171 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v39, v39, v158
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v151, v178
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v178.h, v44.l
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v167, v167 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v165, v165, v81 :: v_dual_add_f32 v36, v36, v171
	v_sub_f32_e32 v41, v41, v158
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v173, v39
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp113:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v34, v34, v167
.Ltmp114:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v167, v40
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v40, v36
.Ltmp116:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v171, v41
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v41, 0, v164, s16
.Ltmp117:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v39, v34
.Ltmp118:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v165, v165
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v161, v161, v158
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v164, 0, v166, s13
.Ltmp121:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp122:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v159, v159, v158 :: v_dual_add_f32 v36, v36, v40
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v166, v37
.Ltmp124:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v150, 0, v177, s21
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v34, v34, v39
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp126:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v174, v159
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v39, 0, v152, s15
.Ltmp127:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v152, v36
.Ltmp128:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v159, 0, v165, s12
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v40, v34
	v_mov_b32_e32 v165, v38
	v_mov_b32_dpp v166, v166 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v152, v152 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp130:
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e64 v177.l, v44.l
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v40, v40 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp132:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v149, 0, v176, s3
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v37, v37, v166
	v_dual_add_f32 v35, v36, v152 :: v_dual_mov_b32 v152, v159
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v34, v34, v40
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v40, v39
	v_mov_b32_dpp v165, v165 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v36, v41
	v_mov_b32_dpp v152, v152 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp135:
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v177.h, v169.l
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v40, v40 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v38, v38, v165
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v36, v36 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v165, v37 :: v_dual_add_f32 v152, v159, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v39, v39, v40 :: v_dual_mov_b32 v40, v164
	v_add_f32_e32 v36, v41, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v165, v165 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v166, v152 :: v_dual_mov_b32 v41, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v40, v40 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp141:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v160, v160
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v37, v37, v165
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v159, v36
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v40, v164, v40
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v166, v166 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v164, v37
	v_mov_b32_dpp v159, v159 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v39, v39, v41
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v41, v40
.Ltmp148:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v162, v162
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v164, v164 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v36, v36, v159 :: v_dual_mov_b32 v159, v39
	v_add_f32_e32 v152, v152, v166
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v37, v37, v164
.Ltmp153:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v25, v25, v163
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v159, v159 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v166, v152
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp156:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v161, v161
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v167, 0, v167, s8
.Ltmp157:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v41, v39, v159
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v165, v36
	v_mov_b32_e32 v159, v37
	v_mov_b32_dpp v166, v166 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp159:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v160, 0, v160, s6
	v_cndmask_b32_e64 v162, 0, v162, s5
.Ltmp160:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v165, v165 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v159, v159 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v152, v152, v166
.Ltmp162:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v161, 0, v161, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v21, v21, v163 :: v_dual_add_f32 v164, v36, v165
.Ltmp163:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v36, v41
	v_mov_b32_e32 v166, v152
.Ltmp164:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s4, v160, v160
	v_cmp_o_f32_e64 s6, v162, v162
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v151, 0, v151, s22
.Ltmp165:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v39, v40
	v_mov_b32_dpp v166, v166 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp166:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v20, v20, v163 :: v_dual_fmac_f32 v35, v85, v148
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp167:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v36, v41, v36
.Ltmp168:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp169:
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v41.l, 4, v170.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v41.h, v170.l, 15
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v23, v23, v163 :: v_dual_fmac_f32 v34, v84, v144
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp170:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v204, v40, v39
	v_add_f32_e32 v39, v37, v159
.Ltmp171:
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v159, v170, 0, 8
.Ltmp172:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v40, v152, v166
.Ltmp173:
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v41.l, v41.l, 15
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s12, 7, v41.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v24, v24, v163 :: v_dual_fmac_f32 v39, v87, v146
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v152.l, v159.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v44.h, v41.l, -16
	.loc	1 978 32 is_stmt 1              ; attention.py:978:32
	v_lshrrev_b32_e32 v159, 8, v170
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v27, v27, v163
	v_mul_f32_e32 v29, v29, v163
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s3, 0, v152.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v152.l, 0, -16, s12
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v166, v159, 0, 8
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v31, v31, v163
	v_dual_mul_f32 v9, v9, v163 :: v_dual_fmac_f32 v36, v88, v145
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v41.l, v41.l, v44.h, s3
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e64 v44.h, v168.l
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v152.l, v41.h, v152.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v168, 0xffff0000, v168
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v12, v12, v163 :: v_dual_mov_b32 v85, v35
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v176, v41, 0, 16
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v41.l, v159.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v41.h, 4, v159.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v159, v152, 0, 16
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v152.l, v166.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v176, v176
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v41.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v41.h, v41.h, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v159, v159
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v13, v13, v163 :: v_dual_mov_b32 v144, v158
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v166, v44, v176
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v152.h, 0, -16, s3
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v176.h, v44.l
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s3, 0, v152.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v152.l, v41.h, -16
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_mov_b16_e64 v176.l, v166.h
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v41.l, v41.l, v152.h
.Ltmp174:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v165, v164
.Ltmp175:
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v159, v44, v159
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v152.l, v41.h, v152.l, s3
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v176, 1, v176
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_bfe_i32 v41, v41, 0, 16
.Ltmp176:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v165, v165 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp177:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s3, v166, v166
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_bfe_i32 v152, v152, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v176, v166, v176, 0x7fff
	.loc	1 1000 41 is_stmt 1             ; attention.py:1000:41
	v_and_b32_e32 v166, 0xffff0000, v169
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v178.l, v159.h
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v41, v41
.Ltmp178:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v37, v164, v165
.Ltmp179:
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e64 v164.l, v170.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v152, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v169, v168, v41 :: v_dual_and_b32 v178, 1, v178
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v165, 24, v170
	v_bfe_i32 v164, v164, 0, 8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v168, v168, v152
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_add3_u32 v41, v159, v178, 0x7fff
	v_cndmask_b16 v176.h, 0x7fff, v176.h, s3
	v_cmp_o_f32_e64 s3, v159, v159
	v_mov_b16_e64 v152.l, v169.h
	v_mov_b16_e64 v152.h, v44.l
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v41.l, v170.h, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v175, v165, 0, 8
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v159.l, v168.h
	v_mov_b16_e64 v159.h, v44.l
	v_cndmask_b16 v176.l, 0x7fff, v41.h, s3
	v_and_b32_e32 v178, 1, v152
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v170, 20, v170
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v152.l, v164.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v41.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v44.h, v165.l, 15
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v179, 1, v159
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v41.h, v170.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s12, 0, v152.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v152.l, 0, -16, s3
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v159.l, v175.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v152.h, 4, v165.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v44.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v164, v169, v178, 0x7fff
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v159.h, v41.h, -16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v164.l, v41.l, v152.l
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s13, 0, v159.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v41.l, v152.h, -16
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b16 v152.l, 0, -16, s3
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v159.l, v41.h, v159.h, s12
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v165, v164, 0, 16
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_add3_u32 v170, v168, v179, 0x7fff
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b16 v41.l, v152.h, v41.l, s13
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v152.l, v44.h, v152.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v159, v159, 0, 16
	v_cvt_f32_i32_e32 v165, v165
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_cmp_o_f32_e64 s3, v168, v168
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v41, v41, 0, 16
	v_bfe_i32 v152, v152, 0, 16
	v_cvt_f32_i32_e32 v159, v159
	v_mul_f32_e32 v165, v177, v165
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v168.h, 0x7fff, v170.h, s3
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v152, v152
	v_mul_f32_e32 v159, v177, v159
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v170.l, v165.h
	v_mov_b16_e64 v170.h, v44.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v41, v166, v41
.Ltmp180:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v205, v204 :: v_dual_mul_f32 v152, v166, v152
.Ltmp181:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v166.l, v159.h
	v_mov_b16_e64 v166.h, v44.l
	v_and_b32_e32 v170, 1, v170
	v_mov_b16_e64 v177.h, v44.l
	v_mov_b16_e64 v177.l, v152.h
	v_mov_b16_e64 v175.l, v41.h
	v_mov_b16_e64 v175.h, v44.l
	v_and_b32_e32 v166, 1, v166
	v_cmp_o_f32_e64 s3, v169, v169
	v_add3_u32 v169, v165, v170, 0x7fff
	v_and_b32_e32 v170, 1, v177
	v_and_b32_e32 v175, 1, v175
	v_add3_u32 v166, v159, v166, 0x7fff
	v_cmp_o_f32_e64 s12, v159, v159
	v_cmp_o_f32_e64 s15, v152, v152
	v_add3_u32 v159, v152, v170, 0x7fff
	v_cmp_o_f32_e64 s13, v165, v165
	v_add3_u32 v165, v41, v175, 0x7fff
	v_cmp_o_f32_e64 s14, v41, v41
	v_cndmask_b16 v168.l, 0x7fff, v164.h, s3
	v_cndmask_b16 v41.h, 0x7fff, v166.h, s12
	v_cndmask_b16 v152.l, 0x7fff, v159.h, s15
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v159, 0, v172, s10
	v_cndmask_b32_e64 v164, 0, v173, s11
	v_cndmask_b32_e64 v166, 0, v171, s9
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v41.l, 0x7fff, v169.h, s13
	v_cndmask_b16 v152.h, 0x7fff, v165.h, s14
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v165.l, v159.h
	v_mov_b16_e64 v165.h, v44.l
	v_mov_b16_e64 v169.l, v164.h
	v_mov_b16_e64 v169.h, v44.l
	v_mov_b16_e64 v170.l, v166.h
	v_mov_b16_e64 v170.h, v44.l
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v26, v26, v163 :: v_dual_and_b32 v165, 1, v165
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v28, v28, v163 :: v_dual_and_b32 v169, 1, v169
	v_dual_mul_f32 v17, v17, v163 :: v_dual_and_b32 v170, 1, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v165, v159, v165, 0x7fff
	v_cmp_o_f32_e64 s3, v164, v164
	v_add3_u32 v169, v164, v169, 0x7fff
	v_cmp_o_f32_e64 s8, v159, v159
	v_add3_u32 v164, v166, v170, 0x7fff
	v_cmp_o_f32_e64 s9, v166, v166
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v166, 0, v174, s7
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v171.l, v167.h
	v_mov_b16_e64 v171.h, v44.l
	v_cndmask_b16 v197.h, 0x7fff, v169.h, s3
	v_cndmask_b16 v197.l, 0x7fff, v165.h, s8
	v_cndmask_b16 v44.h, 0x7fff, v164.h, s9
	v_mov_b16_e64 v164.l, v166.h
	v_mov_b16_e64 v164.h, v44.l
	v_mov_b16_e64 v165.l, v160.h
	v_mov_b16_e64 v165.h, v44.l
	v_mov_b16_e64 v169.l, v162.h
	v_mov_b16_e64 v169.h, v44.l
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v30, v30, v163
	v_mul_f32_e32 v18, v18, v163
	v_dual_mul_f32 v19, v19, v163 :: v_dual_and_b32 v164, 1, v164
	v_dual_mul_f32 v11, v11, v163 :: v_dual_fmac_f32 v40, v90, v150
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v159, 1, v171
	v_mov_b16_e64 v170.l, v161.h
	v_mov_b16_e64 v170.h, v44.l
	v_and_b32_e32 v165, 1, v165
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v32, v32, v163 :: v_dual_and_b32 v169, 1, v169
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s3, v167, v167
	v_add3_u32 v164, v166, v164, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v165, v160, v165, 0x7fff
	v_cmp_o_f32_e64 s5, v166, v166
	v_add3_u32 v166, v162, v169, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add_nc_u32_e32 v162, 0, v102
	v_mov_b32_e32 v90, v40
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v159, v167, v159, 0x7fff
	v_and_b32_e32 v167, 1, v170
	v_cmp_o_f32_e64 s7, v161, v161
	v_cndmask_b16 v159.l, 0x7fff, v164.h, s5
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v103, v176, v168 offset1:8
	ds_store_2addr_b32 v103, v41, v152 offset0:16 offset1:24
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v44.l, 0x7fff, v159.h, s3
	v_add3_u32 v160, v161, v167, 0x7fff
	v_cndmask_b16 v159.h, 0x7fff, v165.h, s4
	v_cndmask_b16 v161.h, 0x7fff, v166.h, s6
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[164:167], v162
	ds_load_b128 v[172:175], v162 offset:512
	ds_load_b128 v[180:183], v162 offset:1024
	ds_load_b128 v[188:191], v162 offset:1536
	ds_load_b128 v[168:171], v140
	ds_load_b128 v[176:179], v140 offset:512
	ds_load_b128 v[184:187], v140 offset:1024
	ds_load_b128 v[192:195], v140 offset:1536
.Ltmp182:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v205, v205 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp183:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v161.l, 0x7fff, v160.h, s7
	v_permlanex16_b32 v41, v44, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v22, v22, v163
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v160, v197, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v152, v159, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v162, v161, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v198, v41, v44, v64
	v_perm_b32 v199, v41, v44, v66
.Ltmp184:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v41, v204, v205 :: v_dual_mul_f32 v10, v10, v163
.Ltmp185:
	.loc	1 1020 23                       ; attention.py:1020:23
	v_dual_fmac_f32 v37, v89, v149 :: v_dual_mul_f32 v14, v14, v163
	v_mov_b32_e32 v87, v39
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v15, v15, v163 :: v_dual_mov_b32 v84, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v16, v16, v163 :: v_dual_mov_b32 v89, v37
	v_dual_mul_f32 v3, v3, v163 :: v_dual_mov_b32 v88, v36
	v_dual_mul_f32 v4, v4, v163 :: v_dual_mov_b32 v149, v43
	v_dual_mul_f32 v5, v5, v163 :: v_dual_mov_b32 v150, v42
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v196, v160, v197, v64
	v_perm_b32 v197, v160, v197, v66
	v_perm_b32 v200, v152, v159, v64
	v_perm_b32 v201, v152, v159, v66
	v_perm_b32 v202, v162, v161, v64
	v_perm_b32 v203, v162, v161, v66
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v6, v6, v163
	v_dual_mul_f32 v7, v7, v163 :: v_dual_mov_b32 v148, v153
	v_mul_f32_e32 v8, v8, v163
	.loc	1 1020 23                       ; attention.py:1020:23
	v_dual_fmac_f32 v38, v86, v147 :: v_dual_mov_b32 v145, v156
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v1, v1, v163
	.loc	1 1020 23                       ; attention.py:1020:23
	v_dual_fmac_f32 v41, v91, v151 :: v_dual_mov_b32 v152, v157
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v163
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[164:171], v[196:203], v[25:32]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[172:179], v[196:203], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[180:187], v[196:203], v[9:16]
	v_dual_mov_b32 v86, v38 :: v_dual_mov_b32 v91, v41
	v_mov_b32_e32 v151, v0
	v_mov_b32_e32 v147, v154
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[188:195], v[196:203], v[1:8]
	v_mov_b32_e32 v146, v155
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc0 .LBB0_22
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 907 32                        ; attention.py:907:32
	v_add_nc_u32_e32 v0, s34, v74
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v40, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v38, v33
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v153, s34, v45
	.loc	1 907 32                        ; attention.py:907:32
	v_mad_u64_u32 v[34:35], null, v0, s33, v[47:48]
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v35, v33
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s5, s50, s34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v153, v107
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v153, v108
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v37, v33
	v_dual_mov_b32 v39, v33 :: v_dual_cndmask_b32 v0, 0x80000000, v34
	v_mov_b32_e32 v34, v33
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s3, s3, s4
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v41, v40
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s11, s1, s3
	.loc	1 908 32                        ; attention.py:908:32
	buffer_load_b32 v0, v0, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v40, v39
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v104, v0
	v_add_nc_u32_e32 v0, 0, v83
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[42:43], v0
	ds_load_b64 v[154:155], v109
	ds_load_b64 v[156:157], v110
	ds_load_b64 v[158:159], v111
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v0, s34, v73, 1
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[54:55], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[154:155], v[52:53], v[34:41] neg_lo:[1,1,0]
	.loc	1 923 37                        ; attention.py:923:37
	buffer_load_u16 v154, v0, s[40:43], 0 offen
	v_add_lshl_u32 v0, v92, s34, 1
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[156:157], v[50:51], v[34:41] neg_lo:[1,1,0]
	.loc	1 923 37                        ; attention.py:923:37
	buffer_load_u16 v155, v0, s[40:43], 0 offen
	v_add_lshl_u32 v0, v93, s34, 1
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[158:159], v[48:49], v[34:41] neg_lo:[1,1,0]
	.loc	1 923 37                        ; attention.py:923:37
	buffer_load_u16 v156, v0, s[40:43], 0 offen
	v_add_lshl_u32 v0, v94, s34, 1
	buffer_load_u16 v157, v0, s[40:43], 0 offen
	v_add_lshl_u32 v0, v95, s34, 1
	buffer_load_u16 v158, v0, s[40:43], 0 offen
	v_add_lshl_u32 v0, v96, s34, 1
	buffer_load_u16 v159, v0, s[40:43], 0 offen
	v_add_lshl_u32 v0, v98, s34, 1
	buffer_load_u16 v160, v0, s[40:43], 0 offen
	v_add_lshl_u32 v0, v99, s34, 1
	buffer_load_u16 v161, v0, s[40:43], 0 offen
	v_mov_b16_e32 v0.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v0.h, v0.l
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s4, s11
	s_cbranch_execz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 955 25                        ; attention.py:955:25
	v_add_nc_u32_e32 v42, s5, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v43, 31, v42
	v_add_co_u32 v42, s3, s26, v42
	v_add_co_ci_u32_e64 v43, null, s27, v43, s3
	global_load_d16_hi_u8 v0, v[42:43], off
.LBB0_8:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v153, v112
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v153, v113
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
	v_add_co_u32 v42, s3, s26, v42
	v_add_co_ci_u32_e64 v43, null, s27, v43, s3
	global_load_d16_u8 v0, v[42:43], off
.LBB0_10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	v_mov_b16_e32 v42.h, 0
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v153, v114
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v153, v115
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
	v_add_co_u32 v43, s3, s26, v43
	v_add_co_ci_u32_e64 v44, null, s27, v44, s3
	global_load_d16_u8 v42, v[43:44], off
.LBB0_12:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v153, v116
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v153, v117
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
	v_add_co_u32 v43, s3, s26, v43
	v_add_co_ci_u32_e64 v44, null, s27, v44, s3
	global_load_d16_hi_u8 v42, v[43:44], off
.LBB0_14:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	v_mov_b16_e32 v43.h, 0
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v153, v118
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v153, v119
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
	v_ashrrev_i32_e32 v163, 31, v44
	v_add_co_u32 v162, s3, s26, v44
	v_add_co_ci_u32_e64 v163, null, s27, v163, s3
	global_load_d16_u8 v44, v[162:163], off
.LBB0_16:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v153, v120
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v153, v121
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s16, s1, s3
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s4, s16
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v43, s5, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v163, 31, v43
	v_add_co_u32 v162, s3, s26, v43
	v_add_co_ci_u32_e64 v163, null, s27, v163, s3
	global_load_d16_hi_u8 v43, v[162:163], off
.LBB0_18:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v43.l, 0
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v153, v122
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v153, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v44.h, v43.l
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s3, s3, s4
	s_and_b32 s19, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s4, s19
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v162, s5, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v163, 31, v162
	v_add_co_u32 v162, s3, s26, v162
	v_add_co_ci_u32_e64 v163, null, s27, v163, s3
	global_load_d16_hi_u8 v44, v[162:163], off
.LBB0_20:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v153, v124
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v153, v125
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s1, s3
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s4, s21
	s_cbranch_execz .LBB0_5
; %bb.21:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v153, s5, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v163, 31, v153
	v_add_co_u32 v162, s3, s26, v153
	v_add_co_ci_u32_e64 v163, null, s27, v163, s3
	global_load_d16_u8 v43, v[162:163], off
	s_branch .LBB0_5
.LBB0_22:                               ; %Flow
	.loc	1 0 34                          ; attention.py:0:34
	v_dual_mov_b32 v46, v71 :: v_dual_mov_b32 v33, v72
.LBB0_23:                               ; %._crit_edge
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_lshlrev_b32_e32 v0, 4, v69
	v_and_b32_e32 v42, 4, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v43, 0x80, v46
	v_and_b32_e32 v44, 8, v70
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v0, 0, v0, v42
	v_add_nc_u32_e32 v42, 0, v68
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	.loc	1 903 13                        ; attention.py:903:13
	ds_store_b128 v42, v[34:37]
	ds_store_b128 v42, v[38:41] offset:128
	v_add3_u32 v0, v0, v43, v44
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s26, 0x7ffffffe
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v36, null, v0, v0, v26
	v_div_scale_f32 v38, null, v0, v0, v27
	v_div_scale_f32 v34, null, v0, v0, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v36
	v_rcp_f32_e32 v48, v38
	v_div_scale_f32 v44, null, v0, v0, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v46, v34
	v_div_scale_f32 v40, null, v0, v0, v28
	v_div_scale_f32 v37, s0, v26, v0, v26
	v_div_scale_f32 v42, null, v0, v0, v29
	v_fma_f32 v56, -v36, v47, 1.0
	v_rcp_f32_e32 v53, v44
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v57, -v38, v48, 1.0
	v_rcp_f32_e32 v49, v40
	v_rcp_f32_e32 v50, v42
	v_fmac_f32_e32 v47, v56, v47
	v_fma_f32 v55, -v34, v46, 1.0
	v_fmac_f32_e32 v48, v57, v48
	v_div_scale_f32 v35, vcc_lo, v25, v0, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v57, v37, v47
	v_div_scale_f32 v39, s1, v27, v0, v27
	v_fma_f32 v58, -v40, v49, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v42, v50, 1.0
	v_fma_f32 v61, -v36, v57, v37
	v_fmac_f32_e32 v46, v55, v46
	v_fma_f32 v55, -v44, v53, 1.0
	v_dual_fmac_f32 v49, v58, v49 :: v_dual_mul_f32 v58, v39, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v57, v61, v47 :: v_dual_fmac_f32 v50, v59, v50
	v_fmac_f32_e32 v53, v55, v53
	v_mul_f32_e32 v56, v35, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v38, v58, v39
	v_div_scale_f32 v41, s3, v28, v0, v28
	v_div_scale_f32 v51, s5, v30, v0, v30
	v_fma_f32 v59, -v34, v56, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v62, v48
	v_div_scale_f32 v43, s4, v29, v0, v29
	v_mul_f32_e32 v60, v41, v49
	v_fmac_f32_e32 v56, v59, v46
	v_div_scale_f32 v45, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v55, v43, v50
	v_fma_f32 v63, -v40, v60, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v56, v35
	v_fma_f32 v35, -v36, v57, v37
	v_fma_f32 v36, -v38, v58, v39
	v_div_scale_f32 v52, null, v0, v0, v32
	v_div_fmas_f32 v34, v34, v46, v56
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v54, v45
	v_div_fmas_f32 v35, v35, v47, v57
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v60, v63, v49
	v_div_fmas_f32 v36, v36, v48, v58
	v_rcp_f32_e32 v39, v52
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v34, v0, v25
	v_fma_f32 v37, -v40, v60, v41
	v_div_fixup_f32 v27, v36, v0, v27
	v_div_scale_f32 v36, null, v0, v0, v17
	v_fma_f32 v38, -v45, v54, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v37, v49, v60
	v_mul_f32_e32 v37, v51, v53
	v_rcp_f32_e32 v41, v36
	v_div_fixup_f32 v26, v35, v0, v26
	v_fma_f32 v35, -v42, v55, v43
	v_fmac_f32_e32 v54, v38, v54
	v_fma_f32 v38, -v52, v39, 1.0
	v_div_fixup_f32 v28, v34, v0, v28
	v_fma_f32 v34, -v44, v37, v51
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v47, null, v0, v0, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v36, v41, 1.0
	v_fmac_f32_e32 v39, v38, v39
	v_div_scale_f32 v38, s3, v32, v0, v32
	v_fmac_f32_e32 v37, v34, v53
	v_fmac_f32_e32 v41, v46, v41
	v_fmac_f32_e32 v55, v35, v50
	v_div_scale_f32 v35, s1, v31, v0, v31
	v_div_scale_f32 v46, s4, v17, v0, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v42, v55, v43
	v_fma_f32 v42, -v44, v37, v51
	v_mul_f32_e32 v44, v38, v39
	v_div_scale_f32 v48, null, v0, v0, v20
	v_div_fmas_f32 v40, v40, v50, v55
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v42, v53, v37
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v42, v47
	v_div_fixup_f32 v29, v40, v0, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v30, v37, v0, v30
	v_dual_mul_f32 v37, v46, v41 :: v_dual_mul_f32 v34, v35, v54
	v_fma_f32 v43, -v45, v34, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v47, v42, 1.0
	v_fmac_f32_e32 v34, v43, v54
	v_fma_f32 v43, -v52, v44, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v45, v34, v35
	v_fmac_f32_e32 v44, v43, v39
	v_div_scale_f32 v43, null, v0, v0, v19
	v_div_scale_f32 v45, s1, v18, v0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v35, v54, v34
	v_fma_f32 v35, -v52, v44, v38
	v_fma_f32 v38, -v36, v37, v46
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v31, v34, v0, v31
	v_div_fmas_f32 v35, v35, v39, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v38, v41
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v38, v48
	v_div_fixup_f32 v32, v35, v0, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v36, v37, v46
	v_div_scale_f32 v46, null, v0, v0, v21
	v_div_scale_f32 v36, s3, v19, v0, v19
	v_div_fmas_f32 v34, v34, v41, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v37, v46
	v_div_scale_f32 v41, s4, v20, v0, v20
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v17, v34, v0, v17
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v46, v37, 1.0
	v_fmac_f32_e32 v42, v40, v42
	v_rcp_f32_e32 v40, v43
	v_fmac_f32_e32 v37, v50, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v39, v45, v42
	v_fma_f32 v35, -v47, v39, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v43, v40, 1.0
	v_dual_fmac_f32 v39, v35, v42 :: v_dual_fmac_f32 v40, v44, v40
	v_fma_f32 v44, -v48, v38, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v47, v39, v45
	v_mul_f32_e32 v35, v36, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v44, null, v0, v0, v22
	v_div_fmas_f32 v34, v34, v42, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v43, v35, v36
	v_div_scale_f32 v42, s1, v21, v0, v21
	v_rcp_f32_e32 v49, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v18, v34, v0, v18
	v_fmac_f32_e32 v35, v45, v40
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v43, v35, v36
	v_mul_f32_e32 v36, v42, v37
	v_div_scale_f32 v43, null, v0, v0, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v44, v49, 1.0
	v_div_fmas_f32 v34, v34, v40, v35
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v40, -v46, v36, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v45, v49
	v_mul_f32_e32 v47, v41, v38
	v_div_fixup_f32 v19, v34, v0, v19
	v_fmac_f32_e32 v36, v40, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v48, v47, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v46, v36, v42
	v_div_scale_f32 v46, null, v0, v0, v10
	v_fmac_f32_e32 v47, v39, v38
	v_div_scale_f32 v39, s5, v22, v0, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v48, v47, v41
	v_div_scale_f32 v48, null, v0, v0, v24
	v_rcp_f32_e32 v41, v43
	v_div_fmas_f32 v35, v35, v38, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v48
	v_mul_f32_e32 v45, v39, v49
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v34, v34, v37, v36
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v40, -v44, v45, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v43, v41, 1.0
	v_div_fixup_f32 v20, v35, v0, v20
	v_div_scale_f32 v35, s3, v23, v0, v23
	v_fmac_f32_e32 v45, v40, v49
	v_fma_f32 v40, -v48, v38, 1.0
	v_div_fixup_f32 v21, v34, v0, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v44, v45, v39
	v_div_scale_f32 v39, null, v0, v0, v9
	v_fmac_f32_e32 v38, v40, v38
	v_div_scale_f32 v40, s1, v24, v0, v24
	v_div_fmas_f32 v36, v36, v49, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v42, v39
	v_fmac_f32_e32 v41, v47, v41
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v0, v0, v12
	v_div_fixup_f32 v22, v36, v0, v22
	v_rcp_f32_e32 v36, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v51, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v47, -v46, v36, 1.0
	v_dual_mul_f32 v45, v40, v38 :: v_dual_fmac_f32 v36, v47, v36
	v_mul_f32_e32 v37, v35, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v48, v45, v40
	v_fma_f32 v44, -v43, v37, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v34, v38
	v_div_scale_f32 v34, s4, v9, v0, v9
	v_fmac_f32_e32 v37, v44, v41
	v_fma_f32 v44, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v43, v37, v35
	v_div_scale_f32 v43, null, v0, v0, v11
	v_fmac_f32_e32 v42, v44, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v43
	v_fma_f32 v47, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v44, v47, v44
	v_div_fmas_f32 v35, v35, v41, v37
	v_fma_f32 v37, -v48, v45, v40
	v_mul_f32_e32 v40, v34, v42
	v_div_scale_f32 v41, s3, v10, v0, v10
	v_div_scale_f32 v47, s5, v11, v0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v39, v40, v34
	v_mul_f32_e32 v50, v41, v36
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v23, v35, v0, v23
	v_div_fmas_f32 v37, v37, v38, v45
	v_dual_fmac_f32 v40, v48, v42 :: v_dual_mul_f32 v45, v47, v44
	v_fma_f32 v38, -v46, v50, v41
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v24, v37, v0, v24
	v_fma_f32 v37, -v49, v51, 1.0
	v_fma_f32 v35, -v43, v45, v47
	v_fmac_f32_e32 v50, v38, v36
	v_div_scale_f32 v38, null, v0, v0, v13
	v_fma_f32 v34, -v39, v40, v34
	v_fmac_f32_e32 v51, v37, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v39, -v46, v50, v41
	v_div_scale_f32 v37, s1, v12, v0, v12
	v_fmac_f32_e32 v45, v35, v44
	v_rcp_f32_e32 v35, v38
	v_div_fmas_f32 v34, v34, v42, v40
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v40, v37, v51
	v_div_fmas_f32 v36, v39, v36, v50
	v_fma_f32 v39, -v43, v45, v47
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v34, v0, v9
	v_div_scale_f32 v41, null, v0, v0, v14
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v42, -v38, v35, 1.0
	v_div_fmas_f32 v39, v39, v44, v45
	v_fma_f32 v44, -v49, v40, v37
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v43, v41
	v_fmac_f32_e32 v35, v42, v35
	v_div_scale_f32 v42, s3, v13, v0, v13
	v_div_fixup_f32 v11, v39, v0, v11
	v_div_scale_f32 v39, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v34, v42, v35
	v_div_fixup_f32 v10, v36, v0, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v45, v39
	v_fmac_f32_e32 v40, v44, v51
	v_fma_f32 v44, -v38, v34, v42
	v_fma_f32 v36, -v41, v43, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v49, v40, v37
	v_fmac_f32_e32 v34, v44, v35
	v_div_scale_f32 v44, null, v0, v0, v16
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v51, v40
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v46, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v37, v0, v12
	v_fma_f32 v37, -v38, v34, v42
	v_fma_f32 v42, -v39, v45, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v37, v35, v34
	v_fmac_f32_e32 v45, v42, v45
	v_div_scale_f32 v42, null, v0, v0, v2
	v_div_scale_f32 v35, null, v0, v0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v13, v34, v0, v13
	v_fma_f32 v34, -v44, v46, 1.0
	v_fmac_f32_e32 v43, v36, v43
	v_div_scale_f32 v36, s4, v14, v0, v14
	v_rcp_f32_e32 v48, v42
	v_fmac_f32_e32 v46, v34, v46
	v_div_scale_f32 v34, s3, v16, v0, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v40, v36, v43
	v_div_scale_f32 v37, s1, v15, v0, v15
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v49, s4, v1, v0, v1
	v_fma_f32 v38, -v41, v40, v36
	v_fma_f32 v50, -v42, v48, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v48, v50, v48
	v_fmac_f32_e32 v40, v38, v43
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v50, s5, v2, v0, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v41, v40, v36
	v_mul_f32_e32 v41, v37, v45
	v_div_fmas_f32 v36, v36, v43, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v35, v38, 1.0
	v_fma_f32 v40, -v39, v41, v37
	v_mul_f32_e32 v43, v34, v46
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v36, v0, v14
	v_fmac_f32_e32 v38, v47, v38
	v_div_scale_f32 v47, null, v0, v0, v3
	v_fmac_f32_e32 v41, v40, v45
	v_fma_f32 v40, -v44, v43, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v49, v38
	v_rcp_f32_e32 v51, v47
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v39, v41, v37
	v_fmac_f32_e32 v43, v40, v46
	v_fma_f32 v37, -v35, v52, v49
	v_mul_f32_e32 v39, v50, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v45, v41
	v_fma_f32 v34, -v44, v43, v34
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v47, v51, 1.0
	v_fmac_f32_e32 v52, v37, v38
	v_fma_f32 v37, -v42, v39, v50
	v_div_fmas_f32 v34, v34, v46, v43
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v51, v40, v51
	v_fma_f32 v35, -v35, v52, v49
	v_fmac_f32_e32 v39, v37, v48
	v_div_scale_f32 v40, s1, v3, v0, v3
	v_div_scale_f32 v41, null, v0, v0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v38, v52
	v_fma_f32 v38, -v42, v39, v50
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v37, v40, v51
	v_div_fixup_f32 v16, v34, v0, v16
	v_div_fixup_f32 v1, v35, v0, v1
	v_div_fmas_f32 v38, v38, v48, v39
	v_div_scale_f32 v35, null, v0, v0, v5
	v_fma_f32 v42, -v47, v37, v40
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v2, v38, v0, v2
	v_div_scale_f32 v38, null, v0, v0, v7
	v_fmac_f32_e32 v37, v42, v51
	v_rcp_f32_e32 v43, v41
	v_div_fixup_f32 v15, v36, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v42, v38
	v_div_scale_f32 v45, null, v0, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v41, v43, 1.0
	v_fma_f32 v49, -v38, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v42, v49, v42
	v_fma_f32 v34, -v47, v37, v40
	v_rcp_f32_e32 v47, v45
	v_div_scale_f32 v49, s4, v7, v0, v7
	v_div_fmas_f32 v34, v34, v51, v37
	v_rcp_f32_e32 v37, v35
	v_div_scale_f32 v39, vcc_lo, v4, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v53, v49, v42
	v_div_fixup_f32 v3, v34, v0, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v51, -v45, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v35, v37, 1.0
	v_fmac_f32_e32 v47, v51, v47
	v_div_scale_f32 v51, s5, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v34, v37
	v_div_scale_f32 v34, s1, v5, v0, v5
	v_fmac_f32_e32 v43, v36, v43
	v_div_scale_f32 v36, null, v0, v0, v6
	v_mul_f32_e32 v50, v34, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v39, v43
	v_rcp_f32_e32 v40, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v41, v44, v39
	v_fmac_f32_e32 v44, v48, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v36, v40, 1.0
	v_fma_f32 v48, -v35, v50, v34
	v_fma_f32 v39, -v41, v44, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v46, s3, v6, v0, v6
	v_fmac_f32_e32 v50, v48, v37
	v_fma_f32 v48, -v38, v53, v49
	v_mul_f32_e32 v54, v51, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v52, v46, v40
	v_div_fmas_f32 v39, v39, v43, v44
	v_fma_f32 v34, -v35, v50, v34
	v_fmac_f32_e32 v53, v48, v42
	v_fma_f32 v35, -v45, v54, v51
	v_fma_f32 v41, -v36, v52, v46
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v39, v0, v4
	v_div_fmas_f32 v34, v34, v37, v50
	v_fmac_f32_e32 v54, v35, v47
	v_fmac_f32_e32 v52, v41, v40
	v_fma_f32 v35, -v38, v53, v49
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v34, v0, v5
	v_fma_f32 v37, -v45, v54, v51
	v_fma_f32 v36, -v36, v52, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v34, 32, v33
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s23, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v40, v52
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v35, v35, v42, v53
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v6, v36, v0, v6
	v_div_fmas_f32 v37, v37, v47, v54
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s23, v65
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v35, v0, v7
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 48, v33
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v0, v37, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v37, v8, 16, 1
	v_bfe_u32 v38, v25, 16, 1
	v_bfe_u32 v39, v26, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v30, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s4, v8, v8
	v_add3_u32 v37, v8, v37, 0x7fff
	v_add3_u32 v8, v25, v38, 0x7fff
	v_cmp_o_f32_e64 s5, v25, v25
	v_add3_u32 v25, v26, v39, 0x7fff
	v_cmp_o_f32_e64 s6, v26, v26
	v_bfe_u32 v26, v27, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v31, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v37.h, s4
	v_bfe_u32 v37, v28, 16, 1
	v_bfe_u32 v38, v29, 16, 1
	v_add3_u32 v26, v27, v26, 0x7fff
	v_cmp_o_f32_e64 s4, v27, v27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s5
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s6
	v_add3_u32 v27, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v28, v29, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s4
	v_bfe_u32 v26, v30, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s5
	v_bfe_u32 v29, v31, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s6
	v_bfe_u32 v28, v17, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s4, v30, v30
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v28, v17, v28, 0x7fff
	v_cmp_o_f32_e64 s6, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v26.h, s4
	v_bfe_u32 v26, v18, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v29.h, s5
	v_bfe_u32 v29, v19, 16, 1
	v_bfe_u32 v30, v20, 16, 1
	v_cmp_o_f32_e64 s4, v18, v18
	v_add3_u32 v26, v18, v26, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s6
	v_add3_u32 v18, v19, v29, 0x7fff
	v_cmp_o_f32_e64 s5, v19, v19
	v_add3_u32 v19, v20, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v20, v20
	v_cndmask_b16 v28.h, 0x7fff, v26.h, s4
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v26, v22, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s5
	v_cmp_o_f32_e64 s4, v21, v21
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v20, v21, v20, 0x7fff
	v_add3_u32 v21, v22, v26, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s6
	v_bfe_u32 v19, v23, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s4
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s5
	v_bfe_u32 v21, v9, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s6, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	v_cmp_o_f32_e64 s5, v9, v9
	v_add3_u32 v21, v9, v21, 0x7fff
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s4, v24, v24
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s6
	v_cmp_o_f32_e64 s6, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s5
	v_bfe_u32 v21, v12, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s4
	v_bfe_u32 v22, v13, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s6, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s4
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s5
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s6
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s5, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v1, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s5
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s6
	v_bfe_u32 v14, v3, 16, 1
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v1, v1
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s6, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e64 s4, v4, v4
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s5
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s5, v5, v5
	v_bfe_u32 v5, v0, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s6
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s6, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v7, v7
	v_add3_u32 v5, v0, v5, 0x7fff
	v_cmp_o_f32_e64 s8, v0, v0
	v_cndmask_b16 v0.l, 0x7fff, v13.h, s5
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s6
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s4
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s7
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s8
	v_cndmask_b32_e64 v5, v8, v27, s20
	v_cndmask_b32_e64 v6, v17, v25, s20
	v_cndmask_b32_e64 v7, v25, v17, s20
	v_cndmask_b32_e64 v13, v28, v20, s20
	v_cndmask_b32_e64 v16, v12, v9, s20
	v_cndmask_b32_e64 v9, v9, v12, s20
	v_cndmask_b32_e64 v12, v11, v10, s20
	v_cndmask_b32_e64 v10, v10, v11, s20
	v_cndmask_b32_e64 v17, v0, v1, s20
	v_cndmask_b32_e64 v0, v1, v0, s20
	v_cndmask_b32_e64 v15, v18, v19, s20
	v_cndmask_b32_e64 v1, v2, v3, s20
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v32, 16, v33
	s_mov_b32 s4, 0x76543210
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v14, v19, v18, s20
	v_cndmask_b32_e64 v18, v3, v2, s20
	v_permlanex16_b32 v2, v5, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v13, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v10, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s4, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v4, v27, v8, s20
	v_cndmask_b32_e64 v8, v20, v28, s20
	v_permlanex16_b32 v9, v9, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v7, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v15, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s23, v32
	v_cmp_gt_i32_e64 s0, s23, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v10, v11, v12, v64
	v_perm_b32 v11, v11, v12, v66
	v_perm_b32 v12, v13, v17, v64
	v_perm_b32 v13, v13, v17, v66
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v36, v32, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v2, v4, v64
	v_perm_b32 v1, v2, v4, v66
	v_perm_b32 v4, v5, v8, v64
	v_perm_b32 v5, v5, v8, v66
	v_perm_b32 v8, v9, v16, v64
	v_perm_b32 v9, v9, v16, v66
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v36, v33, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s23, v35
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v2, v3, v6, v64
	v_perm_b32 v3, v3, v6, v66
	v_perm_b32 v6, v7, v14, v64
	v_perm_b32 v7, v7, v14, v66
	v_perm_b32 v14, v15, v18, v64
	v_perm_b32 v15, v15, v18, v66
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s3, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v36, v35, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v17, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v18, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v19, s[24:27], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp186:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 206
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 206
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13144
; TotalNumSgprs: 53
; NumVgprs: 206
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 206
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
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
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
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
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
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
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
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
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
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
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
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
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     206
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
