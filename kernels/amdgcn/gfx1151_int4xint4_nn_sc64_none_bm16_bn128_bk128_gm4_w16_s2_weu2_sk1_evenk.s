	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	v_dual_mov_b32 v28, 0 :: v_dual_and_b32 v91, 15, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v2, 5, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v3, 4, v0
	v_dual_mov_b32 v32, 0 :: v_dual_and_b32 v17, 31, v0
	s_load_b64 s[24:25], s[0:1], 0x20
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v8, 3, v0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s26, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s5, s5, 2
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v42, 0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s5
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v44, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v48, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v1
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v60, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v62, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	s_mul_i32 s10, s10, s7
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v72, 0
	s_mul_hi_u32 s10, s7, s10
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v74, 0
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v80, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v82, 0
	s_sub_i32 s6, s6, s10
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s16, s6, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s6, s6, s5
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s18, s7, 4
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s7, s18
	s_xor_b32 s6, s2, s18
	s_cvt_f32_u32 s17, s7
	s_ashr_i32 s6, s6, 31
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v79, 0
	v_mov_b32_e32 v88, 0
	v_rcp_iflag_f32_e32 v1, s17
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v98, 1, v0
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v100, 0, v8
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v92, v0, 4, 1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v1, 3, v91
	s_mov_b32 s11, 0x31027000
	v_or_b32_e32 v97, 0x3f0, v0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s31, s11
	.loc	1 166 34 is_stmt 0              ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[4:5], null, s27, v3, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 93 13 is_stmt 1               ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s7
	v_or_b32_e32 v95, 0x7f0, v0
	v_or_b32_e32 v94, 0xbf0, v0
	s_mul_i32 s17, s17, s10
	v_or_b32_e32 v93, 0xff0, v0
	s_mul_hi_u32 s5, s10, s17
	s_abs_i32 s17, s2
	s_add_i32 s5, s10, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_hi_u32 s5, s17, s5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s19, s5, s7
	v_add_nc_u32_e32 v96, 0, v91
	s_sub_i32 s17, s17, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s17, s7
	s_cmp_ge_u32 s17, s7
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s17, s20, s17
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s17, s7
	s_cselect_b32 s5, s19, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s19, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s7, s5, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s4, 63
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s19
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s7, s6
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s35, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s5, s18
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s17, s3, 5
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s4
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v5, s17, v17
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s2, 4
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v6, s17, v3
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_or_b32_e32 v7, s33, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s26, s5, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s16, s20, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s35, v5
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 32, v5
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s35, v6
	.loc	1 156 51                        ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 32, v6
	.loc	1 162 34 is_stmt 1              ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[5:6], null, v7, s35, v[5:6]
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s34, s16, 6
.Ltmp21:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s20, 63
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s19, s27, s17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s3, s5
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v4, s19, s26, v4
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s16, vcc_lo, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s5
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s16
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u8 v6, v5, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b64 v[4:5], v4, s[28:31], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v7, 24, v3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s1, s34, -1
	s_mov_b32 s16, 0
	s_cmpk_lt_i32 s20, 0x80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v7, v7, v0
	v_add_nc_u32_e32 v99, 0, v7
	s_waitcnt vmcnt(1)
	ds_store_b8 v99, v6 offset:4096
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v100, v[4:5]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s40, s17, 32
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v4, 24, v98
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v5, s40, v3
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v9, s33, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v4, v91, 5, v4
	v_mul_lo_u32 v5, s27, v5
	v_sub_nc_u32_e32 v101, s35, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v3, s34, v9
	s_lshl_b32 s0, s7, 8
	s_lshl_b32 s7, s7, 7
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v2, s33, v2
	v_xor_b32_e32 v6, 8, v4
	v_xor_b32_e32 v7, 16, v4
	v_xor_b32_e32 v8, 24, v4
	v_add3_u32 v1, v5, s7, v1
	s_lshl_b32 s17, s6, 8
	v_mad_u64_u32 v[18:19], null, s35, v2, v[17:18]
	s_sub_i32 s42, s0, s17
	s_lshl_b32 s0, s6, 7
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v88, 0 :: v_dual_lshlrev_b32 v103, 1, v3
	v_subrev_nc_u32_e32 v104, s0, v1
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v105, 0, v4
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v106, 0, v6
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v107, 0, v7
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v108, 0, v8
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v102, 1, v92
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v109, 0, v97
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v110, 0, v95
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v111, 0, v94
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v112, 0, v93
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	s_max_i32 s41, s1, 1
	s_lshl_b32 s43, s27, 1
	s_lshl_b32 s44, s27, 5
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s6, s10
	s_mov_b32 s7, s11
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_add_nc_u32_e32 v9, s40, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s41, s41, -1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s0, s35, v9
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v9, s40, v18
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, s3
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s40, v101
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s40, s40, 32
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u8 v113, v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v96 offset:640
	ds_load_u8 v10, v96 offset:512
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[23:24], v105 offset:4096
	ds_load_b64 v[25:26], v106 offset:4096
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:896
	ds_load_u8 v11, v96 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:128
	ds_load_u8 v12, v96
	v_lshl_or_b32 v20, v10, 16, v9
	ds_load_u8 v9, v96 offset:1664
	ds_load_u8 v10, v96 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:384
	ds_load_u8 v13, v96 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v12, 16, v11
	ds_load_u8 v10, v96 offset:1920
	ds_load_u8 v11, v96 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:1152
	ds_load_u8 v12, v96 offset:1024
	v_lshl_or_b32 v22, v10, 16, v9
	ds_load_u8 v9, v96 offset:2688
	ds_load_u8 v10, v96 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:1408
	ds_load_u8 v13, v96 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v12, 16, v11
	ds_load_u8 v10, v96 offset:2944
	ds_load_u8 v11, v96 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:2176
	ds_load_u8 v12, v96 offset:2048
	v_lshl_or_b32 v115, v10, 16, v9
	ds_load_u8 v9, v96 offset:3712
	ds_load_u8 v10, v96 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:2432
	ds_load_u8 v13, v96 offset:2304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v12, 16, v11
	ds_load_u8 v10, v96 offset:3968
	ds_load_u8 v11, v96 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:3200
	ds_load_u8 v12, v96 offset:3072
	v_lshl_or_b32 v117, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:3456
	ds_load_u8 v13, v96 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[23:24], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[19:20], v108 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[25:26], v[9:16] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[21:22], v107 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[114:115], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[19:20], v[9:16] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v121, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v120, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v96 offset:656
	ds_load_u8 v10, v96 offset:528
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v119, v11
	v_cvt_f32_i32_e32 v118, v12
	v_cvt_f32_i32_e32 v117, v13
	v_cvt_f32_i32_e32 v116, v14
	v_cvt_f32_i32_e32 v115, v15
	v_cvt_f32_i32_e32 v114, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:912
	ds_load_u8 v11, v96 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:16
	ds_load_u8 v12, v96 offset:144
	v_lshl_or_b32 v123, v10, 16, v9
	ds_load_u8 v9, v96 offset:1680
	ds_load_u8 v10, v96 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v96 offset:400
	ds_load_u8 v13, v96 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v122, v12, 16, v11
	ds_load_u8 v10, v96 offset:1936
	ds_load_u8 v11, v96 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:1168
	ds_load_u8 v12, v96 offset:1040
	v_lshl_or_b32 v125, v10, 16, v9
	ds_load_u8 v9, v96 offset:2704
	ds_load_u8 v10, v96 offset:2576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:1424
	ds_load_u8 v13, v96 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v124, v12, 16, v11
	ds_load_u8 v10, v96 offset:2960
	ds_load_u8 v11, v96 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:2192
	ds_load_u8 v12, v96 offset:2064
	v_lshl_or_b32 v127, v10, 16, v9
	ds_load_u8 v9, v96 offset:3728
	ds_load_u8 v10, v96 offset:3600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:2448
	ds_load_u8 v13, v96 offset:2320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v126, v12, 16, v11
	ds_load_u8 v10, v96 offset:3984
	ds_load_u8 v11, v96 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:3216
	ds_load_u8 v12, v96 offset:3088
	v_lshl_or_b32 v129, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:3472
	ds_load_u8 v13, v96 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v128, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[122:123], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[124:125], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[126:127], v[21:22], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[128:129], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v129, v9
	v_cvt_f32_i32_e32 v128, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v96 offset:672
	ds_load_u8 v10, v96 offset:544
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v127, v11
	v_cvt_f32_i32_e32 v126, v12
	v_cvt_f32_i32_e32 v125, v13
	v_cvt_f32_i32_e32 v124, v14
	v_cvt_f32_i32_e32 v123, v15
	v_cvt_f32_i32_e32 v122, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:928
	ds_load_u8 v11, v96 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:32
	ds_load_u8 v12, v96 offset:160
	v_lshl_or_b32 v131, v10, 16, v9
	ds_load_u8 v9, v96 offset:1696
	ds_load_u8 v10, v96 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v96 offset:416
	ds_load_u8 v13, v96 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v12, 16, v11
	ds_load_u8 v10, v96 offset:1952
	ds_load_u8 v11, v96 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:1184
	ds_load_u8 v12, v96 offset:1056
	v_lshl_or_b32 v133, v10, 16, v9
	ds_load_u8 v9, v96 offset:2720
	ds_load_u8 v10, v96 offset:2592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:1440
	ds_load_u8 v13, v96 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v132, v12, 16, v11
	ds_load_u8 v10, v96 offset:2976
	ds_load_u8 v11, v96 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:2208
	ds_load_u8 v12, v96 offset:2080
	v_lshl_or_b32 v135, v10, 16, v9
	ds_load_u8 v9, v96 offset:3744
	ds_load_u8 v10, v96 offset:3616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:2464
	ds_load_u8 v13, v96 offset:2336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v12, 16, v11
	ds_load_u8 v10, v96 offset:4000
	ds_load_u8 v11, v96 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:3232
	ds_load_u8 v12, v96 offset:3104
	v_lshl_or_b32 v137, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:3488
	ds_load_u8 v13, v96 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v136, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[130:131], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[132:133], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[134:135], v[21:22], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[136:137], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v137, v9
	v_cvt_f32_i32_e32 v136, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v96 offset:688
	ds_load_u8 v10, v96 offset:560
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v135, v11
	v_cvt_f32_i32_e32 v134, v12
	v_cvt_f32_i32_e32 v133, v13
	v_cvt_f32_i32_e32 v132, v14
	v_cvt_f32_i32_e32 v131, v15
	v_cvt_f32_i32_e32 v130, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:944
	ds_load_u8 v11, v96 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:48
	ds_load_u8 v12, v96 offset:176
	v_lshl_or_b32 v139, v10, 16, v9
	ds_load_u8 v9, v96 offset:1712
	ds_load_u8 v10, v96 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v96 offset:432
	ds_load_u8 v13, v96 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v12, 16, v11
	ds_load_u8 v10, v96 offset:1968
	ds_load_u8 v11, v96 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:1200
	ds_load_u8 v12, v96 offset:1072
	v_lshl_or_b32 v141, v10, 16, v9
	ds_load_u8 v9, v96 offset:2736
	ds_load_u8 v10, v96 offset:2608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:1456
	ds_load_u8 v13, v96 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v140, v12, 16, v11
	ds_load_u8 v10, v96 offset:2992
	ds_load_u8 v11, v96 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:2224
	ds_load_u8 v12, v96 offset:2096
	v_lshl_or_b32 v143, v10, 16, v9
	ds_load_u8 v9, v96 offset:3760
	ds_load_u8 v10, v96 offset:3632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:2480
	ds_load_u8 v13, v96 offset:2352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v12, 16, v11
	ds_load_u8 v10, v96 offset:4016
	ds_load_u8 v11, v96 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:3248
	ds_load_u8 v12, v96 offset:3120
	v_lshl_or_b32 v145, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:3504
	ds_load_u8 v13, v96 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v144, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[138:139], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[140:141], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[21:22], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[144:145], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v145, v9
	v_cvt_f32_i32_e32 v144, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v96 offset:704
	ds_load_u8 v10, v96 offset:576
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v143, v11
	v_cvt_f32_i32_e32 v142, v12
	v_cvt_f32_i32_e32 v141, v13
	v_cvt_f32_i32_e32 v140, v14
	v_cvt_f32_i32_e32 v139, v15
	v_cvt_f32_i32_e32 v138, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:960
	ds_load_u8 v11, v96 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:192
	ds_load_u8 v12, v96 offset:64
	v_lshl_or_b32 v147, v10, 16, v9
	ds_load_u8 v9, v96 offset:1728
	ds_load_u8 v10, v96 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:448
	ds_load_u8 v13, v96 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v146, v12, 16, v11
	ds_load_u8 v10, v96 offset:1984
	ds_load_u8 v11, v96 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:1216
	ds_load_u8 v12, v96 offset:1088
	v_lshl_or_b32 v149, v10, 16, v9
	ds_load_u8 v9, v96 offset:2752
	ds_load_u8 v10, v96 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:1472
	ds_load_u8 v13, v96 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v12, 16, v11
	ds_load_u8 v10, v96 offset:3008
	ds_load_u8 v11, v96 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:2240
	ds_load_u8 v12, v96 offset:2112
	v_lshl_or_b32 v151, v10, 16, v9
	ds_load_u8 v9, v96 offset:3776
	ds_load_u8 v10, v96 offset:3648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:2496
	ds_load_u8 v13, v96 offset:2368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v12, 16, v11
	ds_load_u8 v10, v96 offset:4032
	ds_load_u8 v11, v96 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:3264
	ds_load_u8 v12, v96 offset:3136
	v_lshl_or_b32 v153, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:3520
	ds_load_u8 v13, v96 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v152, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[146:147], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[148:149], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[21:22], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[152:153], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v153, v9
	v_cvt_f32_i32_e32 v152, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v96 offset:720
	ds_load_u8 v10, v96 offset:592
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v151, v11
	v_cvt_f32_i32_e32 v150, v12
	v_cvt_f32_i32_e32 v149, v13
	v_cvt_f32_i32_e32 v148, v14
	v_cvt_f32_i32_e32 v147, v15
	v_cvt_f32_i32_e32 v146, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:976
	ds_load_u8 v11, v96 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:208
	ds_load_u8 v12, v96 offset:80
	v_lshl_or_b32 v155, v10, 16, v9
	ds_load_u8 v9, v96 offset:1744
	ds_load_u8 v10, v96 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:464
	ds_load_u8 v13, v96 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v12, 16, v11
	ds_load_u8 v10, v96 offset:2000
	ds_load_u8 v11, v96 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:1232
	ds_load_u8 v12, v96 offset:1104
	v_lshl_or_b32 v157, v10, 16, v9
	ds_load_u8 v9, v96 offset:2768
	ds_load_u8 v10, v96 offset:2640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:1488
	ds_load_u8 v13, v96 offset:1360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v156, v12, 16, v11
	ds_load_u8 v10, v96 offset:3024
	ds_load_u8 v11, v96 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:2256
	ds_load_u8 v12, v96 offset:2128
	v_lshl_or_b32 v159, v10, 16, v9
	ds_load_u8 v9, v96 offset:3792
	ds_load_u8 v10, v96 offset:3664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:2512
	ds_load_u8 v13, v96 offset:2384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v158, v12, 16, v11
	ds_load_u8 v10, v96 offset:4048
	ds_load_u8 v11, v96 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:3280
	ds_load_u8 v12, v96 offset:3152
	v_lshl_or_b32 v161, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:3536
	ds_load_u8 v13, v96 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v160, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[154:155], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[156:157], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[21:22], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[160:161], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v161, v9
	v_cvt_f32_i32_e32 v160, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v96 offset:736
	ds_load_u8 v10, v96 offset:608
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v159, v11
	v_cvt_f32_i32_e32 v158, v12
	v_cvt_f32_i32_e32 v157, v13
	v_cvt_f32_i32_e32 v156, v14
	v_cvt_f32_i32_e32 v155, v15
	v_cvt_f32_i32_e32 v154, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:992
	ds_load_u8 v11, v96 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:224
	ds_load_u8 v12, v96 offset:96
	v_lshl_or_b32 v163, v10, 16, v9
	ds_load_u8 v9, v96 offset:1760
	ds_load_u8 v10, v96 offset:1632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:480
	ds_load_u8 v13, v96 offset:352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v162, v12, 16, v11
	ds_load_u8 v10, v96 offset:2016
	ds_load_u8 v11, v96 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:1248
	ds_load_u8 v12, v96 offset:1120
	v_lshl_or_b32 v165, v10, 16, v9
	ds_load_u8 v9, v96 offset:2784
	ds_load_u8 v10, v96 offset:2656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:1504
	ds_load_u8 v13, v96 offset:1376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v164, v12, 16, v11
	ds_load_u8 v10, v96 offset:3040
	ds_load_u8 v11, v96 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:2272
	ds_load_u8 v12, v96 offset:2144
	v_lshl_or_b32 v167, v10, 16, v9
	ds_load_u8 v9, v96 offset:3808
	ds_load_u8 v10, v96 offset:3680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:2528
	ds_load_u8 v13, v96 offset:2400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v12, 16, v11
	ds_load_u8 v10, v96 offset:4064
	ds_load_u8 v11, v96 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:3296
	ds_load_u8 v12, v96 offset:3168
	v_lshl_or_b32 v169, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:3552
	ds_load_u8 v13, v96 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v168, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[162:163], v[23:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[164:165], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[166:167], v[21:22], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[168:169], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v169, v9
	v_cvt_f32_i32_e32 v168, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v96 offset:240
	ds_load_u8 v10, v96 offset:112
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v167, v11
	v_cvt_f32_i32_e32 v166, v12
	v_cvt_f32_i32_e32 v165, v13
	v_cvt_f32_i32_e32 v164, v14
	v_cvt_f32_i32_e32 v163, v15
	v_cvt_f32_i32_e32 v162, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:496
	ds_load_u8 v11, v96 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:752
	ds_load_u8 v12, v96 offset:624
	v_lshl_or_b32 v170, v10, 16, v9
	ds_load_u8 v9, v96 offset:1264
	ds_load_u8 v10, v96 offset:1136
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v109
	ds_load_u8 v13, v96 offset:880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v12, 16, v11
	ds_load_u8 v10, v96 offset:1520
	ds_load_u8 v11, v96 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:1776
	ds_load_u8 v12, v96 offset:1648
	v_lshl_or_b32 v172, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v110
	ds_load_u8 v13, v96 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[170:171], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v23, v96 offset:2288
	ds_load_u8 v24, v96 offset:2160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[172:173], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v96 offset:2544
	ds_load_u8 v25, v96 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v96 offset:2800
	ds_load_u8 v26, v96 offset:2672
	v_lshl_or_b32 v23, v24, 16, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v111
	ds_load_u8 v170, v96 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v170, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[9:16], v[23:24], v[21:22], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v21, v96 offset:3312
	ds_load_u8 v22, v96 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v96 offset:3568
	ds_load_u8 v23, v96 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v96 offset:3824
	ds_load_u8 v24, v96 offset:3696
	v_lshl_or_b32 v21, v22, 16, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v112
	ds_load_u8 v25, v96 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v22, v24, 16, v23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[19:20], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v20, 0x80000000, v104, s0
	buffer_load_b64 v[20:21], v20, s[28:31], 0 offen
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v228, v103, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v19, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v12
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v14, v16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v16, s42, v102
	s_clause 0x1f
	buffer_load_u16 v22, v16, s[36:39], 0 offen
	buffer_load_u16 v23, v16, s[36:39], 0 offen offset:4
	buffer_load_u16 v24, v16, s[36:39], 0 offen offset:8
	buffer_load_u16 v25, v16, s[36:39], 0 offen offset:12
	buffer_load_u16 v26, v16, s[36:39], 0 offen offset:16
	buffer_load_u16 v170, v16, s[36:39], 0 offen offset:20
	buffer_load_u16 v171, v16, s[36:39], 0 offen offset:24
	buffer_load_u16 v172, v16, s[36:39], 0 offen offset:28
	buffer_load_u16 v173, v16, s[36:39], 0 offen offset:32
	buffer_load_u16 v174, v16, s[36:39], 0 offen offset:36
	buffer_load_u16 v175, v16, s[36:39], 0 offen offset:40
	buffer_load_u16 v176, v16, s[36:39], 0 offen offset:44
	buffer_load_u16 v177, v16, s[36:39], 0 offen offset:48
	buffer_load_u16 v178, v16, s[36:39], 0 offen offset:52
	buffer_load_u16 v179, v16, s[36:39], 0 offen offset:56
	buffer_load_u16 v180, v16, s[36:39], 0 offen offset:60
	buffer_load_u16 v181, v16, s[36:39], 0 offen offset:64
	buffer_load_u16 v182, v16, s[36:39], 0 offen offset:68
	buffer_load_u16 v183, v16, s[36:39], 0 offen offset:72
	buffer_load_u16 v184, v16, s[36:39], 0 offen offset:76
	buffer_load_u16 v185, v16, s[36:39], 0 offen offset:80
	buffer_load_u16 v186, v16, s[36:39], 0 offen offset:84
	buffer_load_u16 v187, v16, s[36:39], 0 offen offset:88
	buffer_load_u16 v188, v16, s[36:39], 0 offen offset:92
	buffer_load_u16 v189, v16, s[36:39], 0 offen offset:96
	buffer_load_u16 v190, v16, s[36:39], 0 offen offset:100
	buffer_load_u16 v191, v16, s[36:39], 0 offen offset:104
	buffer_load_u16 v192, v16, s[36:39], 0 offen offset:108
	buffer_load_u16 v193, v16, s[36:39], 0 offen offset:112
	buffer_load_u16 v194, v16, s[36:39], 0 offen offset:116
	buffer_load_u16 v195, v16, s[36:39], 0 offen offset:120
	buffer_load_u16 v196, v16, s[36:39], 0 offen offset:124
	s_clause 0x1f
	buffer_load_u16 v197, v16, s[36:39], 0 offen offset:128
	buffer_load_u16 v198, v16, s[36:39], 0 offen offset:132
	buffer_load_u16 v199, v16, s[36:39], 0 offen offset:136
	buffer_load_u16 v200, v16, s[36:39], 0 offen offset:140
	buffer_load_u16 v201, v16, s[36:39], 0 offen offset:144
	buffer_load_u16 v202, v16, s[36:39], 0 offen offset:148
	buffer_load_u16 v203, v16, s[36:39], 0 offen offset:152
	buffer_load_u16 v204, v16, s[36:39], 0 offen offset:156
	buffer_load_u16 v205, v16, s[36:39], 0 offen offset:160
	buffer_load_u16 v206, v16, s[36:39], 0 offen offset:164
	buffer_load_u16 v207, v16, s[36:39], 0 offen offset:168
	buffer_load_u16 v208, v16, s[36:39], 0 offen offset:172
	buffer_load_u16 v209, v16, s[36:39], 0 offen offset:176
	buffer_load_u16 v210, v16, s[36:39], 0 offen offset:180
	buffer_load_u16 v211, v16, s[36:39], 0 offen offset:184
	buffer_load_u16 v212, v16, s[36:39], 0 offen offset:188
	buffer_load_u16 v213, v16, s[36:39], 0 offen offset:192
	buffer_load_u16 v214, v16, s[36:39], 0 offen offset:196
	buffer_load_u16 v215, v16, s[36:39], 0 offen offset:200
	buffer_load_u16 v216, v16, s[36:39], 0 offen offset:204
	buffer_load_u16 v217, v16, s[36:39], 0 offen offset:208
	buffer_load_u16 v218, v16, s[36:39], 0 offen offset:212
	buffer_load_u16 v219, v16, s[36:39], 0 offen offset:216
	buffer_load_u16 v220, v16, s[36:39], 0 offen offset:220
	buffer_load_u16 v221, v16, s[36:39], 0 offen offset:224
	buffer_load_u16 v222, v16, s[36:39], 0 offen offset:228
	buffer_load_u16 v223, v16, s[36:39], 0 offen offset:232
	buffer_load_u16 v224, v16, s[36:39], 0 offen offset:236
	buffer_load_u16 v225, v16, s[36:39], 0 offen offset:240
	buffer_load_u16 v226, v16, s[36:39], 0 offen offset:244
	buffer_load_u16 v227, v16, s[36:39], 0 offen offset:248
	buffer_load_u16 v16, v16, s[36:39], 0 offen offset:252
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v103, 2, v103
	s_add_i32 s42, s42, s43
	s_cmp_lg_u32 s41, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_store_b8 v99, v113 offset:4096
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v104, s44, v104
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	ds_store_b64 v100, v[20:21]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v20, 16, v228
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v21, 16, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v121
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v69, v22, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(62)
	v_dual_mul_f32 v22, v20, v120 :: v_dual_lshlrev_b32 v21, 16, v23
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(61)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v90, v22, v21 :: v_dual_lshlrev_b32 v21, 16, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v119
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v89, v22, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(60)
	v_dual_mul_f32 v22, v20, v118 :: v_dual_lshlrev_b32 v21, 16, v25
	v_mul_f32_e32 v9, v20, v9
	v_mul_f32_e32 v19, v20, v19
	v_mul_f32_e32 v10, v20, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v11, v20, v11 :: v_dual_fmac_f32 v88, v22, v21
	s_waitcnt vmcnt(59)
	v_dual_mul_f32 v22, v20, v117 :: v_dual_lshlrev_b32 v21, 16, v26
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v87, v22, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(58)
	v_dual_mul_f32 v22, v20, v116 :: v_dual_lshlrev_b32 v21, 16, v170
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(57)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v86, v22, v21 :: v_dual_lshlrev_b32 v21, 16, v171
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v115
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v85, v22, v21 :: v_dual_mul_f32 v22, v20, v114
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(56)
	v_lshlrev_b32_e32 v21, 16, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v84, v22, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(55)
	v_lshlrev_b32_e32 v21, 16, v173
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v129
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v83, v22, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(54)
	v_dual_mul_f32 v22, v20, v128 :: v_dual_lshlrev_b32 v21, 16, v174
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(53)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v82, v22, v21 :: v_dual_lshlrev_b32 v21, 16, v175
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v127
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v81, v22, v21 :: v_dual_mul_f32 v22, v20, v126
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(52)
	v_lshlrev_b32_e32 v21, 16, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v80, v22, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(51)
	v_lshlrev_b32_e32 v21, 16, v177
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v125
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v79, v22, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(50)
	v_dual_mul_f32 v22, v20, v124 :: v_dual_lshlrev_b32 v21, 16, v178
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(49)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v78, v22, v21 :: v_dual_lshlrev_b32 v21, 16, v179
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v123
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v77, v22, v21 :: v_dual_mul_f32 v22, v20, v122
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v21, 16, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v76, v22, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v21, 16, v181
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v137
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v75, v22, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(46)
	v_dual_mul_f32 v22, v20, v136 :: v_dual_lshlrev_b32 v21, 16, v182
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(45)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v74, v22, v21 :: v_dual_lshlrev_b32 v21, 16, v183
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v135
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v73, v22, v21 :: v_dual_mul_f32 v22, v20, v134
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v21, 16, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v72, v22, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v21, 16, v185
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v133
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v71, v22, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(42)
	v_dual_mul_f32 v22, v20, v132 :: v_dual_lshlrev_b32 v21, 16, v186
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(41)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v70, v22, v21 :: v_dual_lshlrev_b32 v21, 16, v187
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v131
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v67, v22, v21 :: v_dual_mul_f32 v22, v20, v130
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v21, 16, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v68, v22, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(39)
	v_lshlrev_b32_e32 v21, 16, v189
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v145
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v65, v22, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(38)
	v_dual_mul_f32 v22, v20, v144 :: v_dual_lshlrev_b32 v21, 16, v190
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(37)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v66, v22, v21 :: v_dual_lshlrev_b32 v21, 16, v191
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v143
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v63, v22, v21 :: v_dual_mul_f32 v22, v20, v142
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v21, 16, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v64, v22, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(35)
	v_lshlrev_b32_e32 v21, 16, v193
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v141
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v61, v22, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(34)
	v_dual_mul_f32 v22, v20, v140 :: v_dual_lshlrev_b32 v21, 16, v194
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(33)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v62, v22, v21 :: v_dual_lshlrev_b32 v21, 16, v195
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v139
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v59, v22, v21 :: v_dual_mul_f32 v22, v20, v138
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v21, 16, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v60, v22, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v21, 16, v197
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v153
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v57, v22, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(30)
	v_dual_mul_f32 v22, v20, v152 :: v_dual_lshlrev_b32 v21, 16, v198
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(29)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v58, v22, v21 :: v_dual_lshlrev_b32 v21, 16, v199
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v151
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v55, v22, v21 :: v_dual_mul_f32 v22, v20, v150
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v21, 16, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v56, v22, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v21, 16, v201
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v149
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v53, v22, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v22, v20, v148 :: v_dual_lshlrev_b32 v21, 16, v202
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(25)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v54, v22, v21 :: v_dual_lshlrev_b32 v21, 16, v203
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v147
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v51, v22, v21 :: v_dual_mul_f32 v22, v20, v146
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v21, 16, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v52, v22, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v21, 16, v205
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v161
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v49, v22, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v22, v20, v160 :: v_dual_lshlrev_b32 v21, 16, v206
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(21)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v50, v22, v21 :: v_dual_lshlrev_b32 v21, 16, v207
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v159
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v47, v22, v21 :: v_dual_mul_f32 v22, v20, v158
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v21, 16, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v48, v22, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v21, 16, v209
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v157
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v45, v22, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(18)
	v_dual_mul_f32 v22, v20, v156 :: v_dual_lshlrev_b32 v21, 16, v210
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(17)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v46, v22, v21 :: v_dual_lshlrev_b32 v21, 16, v211
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v155
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v43, v22, v21 :: v_dual_mul_f32 v22, v20, v154
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v21, 16, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v44, v22, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v21, 16, v213
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v169
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v41, v22, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v22, v20, v168 :: v_dual_lshlrev_b32 v21, 16, v214
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(13)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v42, v22, v21 :: v_dual_lshlrev_b32 v21, 16, v215
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v167
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v39, v22, v21 :: v_dual_mul_f32 v22, v20, v166
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v21, 16, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v40, v22, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v21, 16, v217
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v165
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v37, v22, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v22, v20, v164 :: v_dual_lshlrev_b32 v21, 16, v218
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(9)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v38, v22, v21 :: v_dual_lshlrev_b32 v21, 16, v219
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v20, v163
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v35, v22, v21 :: v_dual_mul_f32 v22, v20, v162
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v21, 16, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v36, v22, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v21, 16, v221
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v33, v19, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v19, 16, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v34, v9, v19
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v9, 16, v223
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v31, v11, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v9, 16, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v32, v10, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v9, 16, v225
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v10, v20, v13
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v29, v10, v9
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v10, v20, v12 :: v_dual_lshlrev_b32 v9, 16, v226
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v30, v10, v9 :: v_dual_lshlrev_b32 v9, 16, v227
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v10, v20, v15
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v28, v10, v9 :: v_dual_mul_f32 v9, v20, v14
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v27, v9, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow715
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v114, 0 :: v_dual_and_b32 v11, 16, v0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v2, 0
	v_mov_b32_e32 v1, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	ds_load_u8 v1, v96 offset:640
	ds_load_u8 v3, v96 offset:512
	ds_load_u8 v2, v96 offset:896
	ds_load_u8 v4, v96 offset:768
	ds_load_u8 v5, v96 offset:128
	ds_load_u8 v6, v96
	ds_load_u8 v7, v96 offset:384
	ds_load_u8 v8, v96 offset:256
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s4, 0
	v_add_nc_u32_e32 v95, 0, v95
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v9, 24, v98
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v143, v96 offset:880
	ds_load_u8 v95, v95
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v93, 0, v93
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshl_or_b32 v12, v91, 5, v9
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v2, v4, v2, 0xc0c0004
	ds_load_u8 v142, v96 offset:624
	ds_load_u8 v93, v93
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v8, v7, 0xc0c0004
	v_lshl_or_b32 v25, v2, 16, v1
	ds_load_u8 v1, v96 offset:1664
	ds_load_u8 v2, v96 offset:1536
	ds_load_u8 v26, v96 offset:1552
	ds_load_u8 v146, v96 offset:1520
	ds_load_u8 v101, v96 offset:1680
	ds_load_u8 v147, v96 offset:1648
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v9, 0, v12
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v14, v96 offset:112
	ds_load_u8 v15, v96 offset:496
	ds_load_u8 v98, v96 offset:752
	v_lshl_or_b32 v24, v4, 16, v3
	ds_load_u8 v144, v96 offset:240
	ds_load_u8 v145, v96 offset:368
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[9:10], v9 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v96 offset:1920
	ds_load_u8 v3, v96 offset:1792
	ds_load_u8 v102, v96 offset:1808
	ds_load_u8 v148, v96 offset:1776
	ds_load_u8 v103, v96 offset:1936
	ds_load_u8 v149, v96 offset:1904
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v14, v14, v144, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v15, v145, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v15, 16, v14
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v96 offset:1152
	ds_load_u8 v4, v96 offset:1024
	ds_load_u8 v104, v96 offset:1040
	ds_load_u8 v151, v96 offset:992
	ds_load_u8 v105, v96 offset:1168
	ds_load_u8 v150, v96 offset:1136
	v_lshl_or_b32 v100, v2, 16, v1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v1, v12, 8, 0
	ds_load_b64 v[159:160], v1 offset:4096
	v_xad_u32 v1, v12, 16, 0
	v_xad_u32 v12, v12, 24, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v96 offset:1408
	ds_load_u8 v5, v96 offset:1280
	ds_load_u8 v106, v96 offset:1296
	ds_load_u8 v165, v96 offset:1264
	ds_load_u8 v107, v96 offset:1424
	ds_load_u8 v166, v96 offset:1392
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[161:162], v1 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v4, 16, v3
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_mov_b32_e32 v8, s11
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_mov_b32_e32 v7, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[24:25], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[99:100], v[159:160], v[16:23] neg_lo:[1,1,0]
	ds_load_u8 v13, v96 offset:2688
	ds_load_u8 v24, v96 offset:2560
	ds_load_u8 v99, v96 offset:2576
	ds_load_u8 v100, v96 offset:2592
	ds_load_u8 v167, v96 offset:2544
	ds_load_u8 v108, v96 offset:2704
	ds_load_u8 v109, v96 offset:2720
	ds_load_u8 v168, v96 offset:2672
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v24, v13, 0xc0c0004
	ds_load_u8 v24, v96 offset:2944
	ds_load_u8 v25, v96 offset:2816
	ds_load_u8 v110, v96 offset:2832
	ds_load_u8 v111, v96 offset:2848
	ds_load_u8 v169, v96 offset:2800
	ds_load_u8 v112, v96 offset:2960
	ds_load_u8 v113, v96 offset:2976
	ds_load_u8 v170, v96 offset:2928
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v96 offset:2176
	ds_load_u8 v114, v96 offset:2048
	ds_load_u8 v122, v96 offset:2064
	ds_load_u8 v123, v96 offset:2080
	ds_load_u8 v152, v96 offset:2016
	ds_load_u8 v124, v96 offset:2192
	ds_load_u8 v125, v96 offset:2208
	ds_load_u8 v171, v96 offset:2160
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v114, v114, v25, 0xc0c0004
	ds_load_u8 v25, v96 offset:2432
	ds_load_u8 v115, v96 offset:2304
	ds_load_u8 v126, v96 offset:2320
	ds_load_u8 v134, v96 offset:2336
	ds_load_u8 v172, v96 offset:2288
	ds_load_u8 v127, v96 offset:2448
	ds_load_u8 v135, v96 offset:2464
	ds_load_u8 v173, v96 offset:2416
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v115, v115, v25, 0xc0c0004
	v_lshl_or_b32 v25, v24, 16, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v115, 16, v114
	v_wmma_i32_16x16x16_iu4 v[16:23], v[24:25], v[161:162], v[16:23] neg_lo:[1,1,0]
	ds_load_u8 v13, v96 offset:3712
	ds_load_u8 v24, v96 offset:3584
	ds_load_u8 v128, v96 offset:3600
	ds_load_u8 v136, v96 offset:3616
	ds_load_u8 v153, v96 offset:3632
	ds_load_u8 v174, v96 offset:3568
	ds_load_u8 v129, v96 offset:3728
	ds_load_u8 v137, v96 offset:3744
	ds_load_u8 v154, v96 offset:3760
	ds_load_u8 v175, v96 offset:3696
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v13, v24, v13, 0xc0c0004
	ds_load_u8 v24, v96 offset:3968
	ds_load_u8 v25, v96 offset:3840
	ds_load_u8 v130, v96 offset:3856
	ds_load_u8 v138, v96 offset:3872
	ds_load_u8 v155, v96 offset:3888
	ds_load_u8 v176, v96 offset:3824
	ds_load_u8 v131, v96 offset:3984
	ds_load_u8 v139, v96 offset:4000
	ds_load_u8 v156, v96 offset:4016
	ds_load_u8 v177, v96 offset:3952
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v96 offset:3200
	ds_load_u8 v114, v96 offset:3072
	ds_load_u8 v132, v96 offset:3088
	ds_load_u8 v140, v96 offset:3104
	ds_load_u8 v157, v96 offset:3120
	ds_load_u8 v178, v96 offset:3040
	ds_load_u8 v133, v96 offset:3216
	ds_load_u8 v141, v96 offset:3232
	ds_load_u8 v158, v96 offset:3248
	ds_load_u8 v179, v96 offset:3184
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v114, v114, v25, 0xc0c0004
	ds_load_u8 v25, v96 offset:3456
	ds_load_u8 v115, v96 offset:3328
	ds_load_u8 v180, v96 offset:3344
	ds_load_u8 v181, v96 offset:3360
	ds_load_u8 v182, v96 offset:3376
	ds_load_u8 v183, v96 offset:3312
	ds_load_u8 v184, v96 offset:3472
	ds_load_u8 v185, v96 offset:3488
	ds_load_u8 v186, v96 offset:3504
	ds_load_u8 v187, v96 offset:3440
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v115, v115, v25, 0xc0c0004
	v_lshl_or_b32 v25, v24, 16, v13
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0, v97
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v97, v13
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[163:164], v12 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v24, v115, 16, v114
	ds_load_u8 v12, v96 offset:528
	ds_load_u8 v13, v96 offset:656
	ds_load_u8 v188, v96 offset:672
	ds_load_u8 v189, v96 offset:688
	ds_load_u8 v190, v96 offset:704
	ds_load_u8 v191, v96 offset:720
	ds_load_u8 v192, v96 offset:736
	ds_load_u8 v193, v96 offset:544
	ds_load_u8 v194, v96 offset:560
	ds_load_u8 v195, v96 offset:576
	ds_load_u8 v196, v96 offset:592
	ds_load_u8 v197, v96 offset:608
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v12, v12, v13, 0xc0c0004
	v_perm_b32 v97, v143, v97, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[16:23], v[24:25], v[163:164], v[16:23] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v114, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v96 offset:784
	ds_load_u8 v16, v96 offset:912
	ds_load_u8 v198, v96 offset:928
	ds_load_u8 v199, v96 offset:944
	ds_load_u8 v200, v96 offset:960
	ds_load_u8 v201, v96 offset:976
	ds_load_u8 v202, v96 offset:800
	ds_load_u8 v203, v96 offset:816
	ds_load_u8 v204, v96 offset:832
	ds_load_u8 v205, v96 offset:848
	ds_load_u8 v206, v96 offset:864
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v115, v17
	v_cvt_f32_i32_e32 v118, v18
	v_cvt_f32_i32_e32 v119, v19
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v19, v106, v107, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v116, v20
	v_cvt_f32_i32_e32 v117, v21
	v_cvt_f32_i32_e32 v120, v22
	v_cvt_f32_i32_e32 v121, v23
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v13, v13, v16, 0xc0c0004
	ds_load_u8 v16, v96 offset:16
	ds_load_u8 v17, v96 offset:144
	ds_load_u8 v207, v96 offset:160
	ds_load_u8 v208, v96 offset:176
	ds_load_u8 v209, v96 offset:192
	ds_load_u8 v210, v96 offset:208
	ds_load_u8 v211, v96 offset:224
	ds_load_u8 v212, v96 offset:32
	ds_load_u8 v213, v96 offset:48
	ds_load_u8 v214, v96 offset:64
	ds_load_u8 v215, v96 offset:80
	ds_load_u8 v216, v96 offset:96
	v_lshl_or_b32 v13, v13, 16, v12
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v16, v16, v17, 0xc0c0004
	ds_load_u8 v17, v96 offset:272
	ds_load_u8 v18, v96 offset:400
	ds_load_u8 v217, v96 offset:416
	ds_load_u8 v218, v96 offset:432
	ds_load_u8 v219, v96 offset:448
	ds_load_u8 v220, v96 offset:464
	ds_load_u8 v221, v96 offset:480
	ds_load_u8 v222, v96 offset:288
	ds_load_u8 v223, v96 offset:304
	ds_load_u8 v224, v96 offset:320
	ds_load_u8 v225, v96 offset:336
	ds_load_u8 v226, v96 offset:352
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	v_perm_b32 v18, v104, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v12, v17, 16, v16
	v_perm_b32 v16, v26, v101, 0xc0c0004
	v_perm_b32 v17, v102, v103, 0xc0c0004
	v_lshl_or_b32 v24, v19, 16, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v25, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[16:23], v[12:13], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v12, v99, v108, 0xc0c0004
	v_perm_b32 v13, v110, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[16:23], v[24:25], v[159:160], v[16:23] neg_lo:[1,1,0]
	v_perm_b32 v24, v122, v124, 0xc0c0004
	v_perm_b32 v25, v126, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v13, v13, 16, v12
	v_lshl_or_b32 v12, v25, 16, v24
	v_perm_b32 v24, v132, v133, 0xc0c0004
	v_perm_b32 v25, v180, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[12:13], v[161:162], v[16:23] neg_lo:[1,1,0]
	v_perm_b32 v12, v128, v129, 0xc0c0004
	v_perm_b32 v13, v130, v131, 0xc0c0004
	v_lshl_or_b32 v13, v13, 16, v12
	v_lshl_or_b32 v12, v25, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[12:13], v[163:164], v[16:23] neg_lo:[1,1,0]
	v_perm_b32 v12, v193, v188, 0xc0c0004
	v_perm_b32 v13, v202, v198, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v126, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v127, v17
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v16, v212, v207, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v222, v217, 0xc0c0004
	v_lshl_or_b32 v13, v13, 16, v12
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v130, v18
	v_cvt_f32_i32_e32 v131, v19
	v_cvt_f32_i32_e32 v128, v20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v12, v17, 16, v16
	ds_load_u8 v16, v96 offset:1568
	ds_load_u8 v17, v96 offset:1696
	ds_load_u8 v26, v96 offset:1712
	ds_load_u8 v99, v96 offset:1728
	ds_load_u8 v102, v96 offset:1744
	ds_load_u8 v180, v96 offset:1760
	ds_load_u8 v101, v96 offset:1584
	ds_load_u8 v103, v96 offset:1600
	ds_load_u8 v184, v96 offset:1616
	ds_load_u8 v188, v96 offset:1632
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v129, v21
	v_cvt_f32_i32_e32 v132, v22
	v_cvt_f32_i32_e32 v133, v23
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v16, v16, v17, 0xc0c0004
	ds_load_u8 v17, v96 offset:1824
	ds_load_u8 v18, v96 offset:1952
	ds_load_u8 v104, v96 offset:1968
	ds_load_u8 v105, v96 offset:1984
	ds_load_u8 v193, v96 offset:2000
	ds_load_u8 v106, v96 offset:1840
	ds_load_u8 v107, v96 offset:1856
	ds_load_u8 v198, v96 offset:1872
	ds_load_u8 v202, v96 offset:1888
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	ds_load_u8 v18, v96 offset:1056
	ds_load_u8 v19, v96 offset:1184
	ds_load_u8 v108, v96 offset:1200
	ds_load_u8 v110, v96 offset:1216
	ds_load_u8 v207, v96 offset:1232
	ds_load_u8 v212, v96 offset:1248
	ds_load_u8 v112, v96 offset:1072
	ds_load_u8 v217, v96 offset:1088
	ds_load_u8 v222, v96 offset:1104
	ds_load_u8 v227, v96 offset:1120
	v_lshl_or_b32 v25, v17, 16, v16
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	ds_load_u8 v19, v96 offset:1312
	ds_load_u8 v20, v96 offset:1440
	ds_load_u8 v122, v96 offset:1456
	ds_load_u8 v228, v96 offset:1472
	ds_load_u8 v229, v96 offset:1488
	ds_load_u8 v230, v96 offset:1504
	ds_load_u8 v124, v96 offset:1328
	ds_load_u8 v231, v96 offset:1344
	ds_load_u8 v232, v96 offset:1360
	ds_load_u8 v233, v96 offset:1376
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v24, v19, 16, v18
	v_wmma_i32_16x16x16_iu4 v[16:23], v[12:13], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v12, v100, v109, 0xc0c0004
	v_perm_b32 v13, v111, v113, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[16:23], v[24:25], v[159:160], v[16:23] neg_lo:[1,1,0]
	v_perm_b32 v24, v123, v125, 0xc0c0004
	v_perm_b32 v25, v134, v135, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v13, v13, 16, v12
	v_lshl_or_b32 v12, v25, 16, v24
	v_perm_b32 v24, v140, v141, 0xc0c0004
	v_perm_b32 v25, v181, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[12:13], v[161:162], v[16:23] neg_lo:[1,1,0]
	v_perm_b32 v12, v136, v137, 0xc0c0004
	v_perm_b32 v13, v138, v139, 0xc0c0004
	v_lshl_or_b32 v13, v13, 16, v12
	v_lshl_or_b32 v12, v25, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[12:13], v[163:164], v[16:23] neg_lo:[1,1,0]
	v_perm_b32 v12, v194, v189, 0xc0c0004
	v_perm_b32 v13, v203, v199, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v134, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v135, v17
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v16, v213, v208, 0xc0c0004
	v_perm_b32 v17, v223, v218, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v138, v18
	v_cvt_f32_i32_e32 v139, v19
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v13, v13, 16, v12
	v_perm_b32 v18, v112, v108, 0xc0c0004
	v_lshl_or_b32 v12, v17, 16, v16
	v_perm_b32 v16, v101, v26, 0xc0c0004
	v_perm_b32 v17, v106, v104, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v19, v124, v122, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v136, v20
	v_cvt_f32_i32_e32 v137, v21
	v_cvt_f32_i32_e32 v140, v22
	v_cvt_f32_i32_e32 v141, v23
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v25, v17, 16, v16
	v_lshl_or_b32 v24, v19, 16, v18
	v_wmma_i32_16x16x16_iu4 v[16:23], v[12:13], v[9:10], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v12, v96 offset:2608
	ds_load_u8 v13, v96 offset:2736
	ds_load_u8 v26, v96 offset:2752
	ds_load_u8 v100, v96 offset:2768
	ds_load_u8 v181, v96 offset:2784
	ds_load_u8 v101, v96 offset:2624
	ds_load_u8 v185, v96 offset:2640
	ds_load_u8 v189, v96 offset:2656
	v_wmma_i32_16x16x16_iu4 v[16:23], v[24:25], v[159:160], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v12, v13, 0xc0c0004
	ds_load_u8 v13, v96 offset:2864
	ds_load_u8 v24, v96 offset:2992
	ds_load_u8 v104, v96 offset:3008
	ds_load_u8 v194, v96 offset:3024
	ds_load_u8 v106, v96 offset:2880
	ds_load_u8 v199, v96 offset:2896
	ds_load_u8 v203, v96 offset:2912
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v13, v13, v24, 0xc0c0004
	ds_load_u8 v24, v96 offset:2096
	ds_load_u8 v25, v96 offset:2224
	ds_load_u8 v111, v96 offset:2240
	ds_load_u8 v208, v96 offset:2256
	ds_load_u8 v213, v96 offset:2272
	ds_load_u8 v218, v96 offset:2112
	ds_load_u8 v223, v96 offset:2128
	ds_load_u8 v234, v96 offset:2144
	v_lshl_or_b32 v13, v13, 16, v12
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v24, v24, v25, 0xc0c0004
	ds_load_u8 v25, v96 offset:2352
	ds_load_u8 v108, v96 offset:2480
	ds_load_u8 v235, v96 offset:2496
	ds_load_u8 v236, v96 offset:2512
	ds_load_u8 v237, v96 offset:2528
	ds_load_u8 v238, v96 offset:2368
	ds_load_u8 v239, v96 offset:2384
	ds_load_u8 v240, v96 offset:2400
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v25, v25, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v12, v25, 16, v24
	v_perm_b32 v24, v157, v158, 0xc0c0004
	v_perm_b32 v25, v182, v186, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[16:23], v[12:13], v[161:162], v[16:23] neg_lo:[1,1,0]
	v_perm_b32 v12, v153, v154, 0xc0c0004
	v_perm_b32 v13, v155, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v13, v13, 16, v12
	v_lshl_or_b32 v12, v25, 16, v24
	v_wmma_i32_16x16x16_iu4 v[16:23], v[12:13], v[163:164], v[16:23] neg_lo:[1,1,0]
	v_perm_b32 v12, v195, v190, 0xc0c0004
	v_perm_b32 v13, v204, v200, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v124, v16
	v_cvt_f32_i32_e32 v125, v17
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v16, v214, v209, 0xc0c0004
	v_perm_b32 v17, v224, v219, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v122, v18
	v_cvt_f32_i32_e32 v123, v19
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v13, v13, 16, v12
	v_perm_b32 v18, v217, v110, 0xc0c0004
	v_lshl_or_b32 v12, v17, 16, v16
	v_perm_b32 v16, v103, v99, 0xc0c0004
	v_perm_b32 v17, v107, v105, 0xc0c0004
	v_perm_b32 v19, v231, v228, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v112, v20
	v_cvt_f32_i32_e32 v113, v21
	v_cvt_f32_i32_e32 v108, v22
	v_cvt_f32_i32_e32 v109, v23
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v25, v17, 16, v16
	v_lshl_or_b32 v24, v19, 16, v18
	v_wmma_i32_16x16x16_iu4 v[16:23], v[12:13], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v12, v101, v26, 0xc0c0004
	v_perm_b32 v13, v106, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[24:25], v[159:160], v[16:23] neg_lo:[1,1,0]
	v_perm_b32 v24, v218, v111, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v238, v235, 0xc0c0004
	v_lshl_or_b32 v13, v13, 16, v12
	v_lshl_or_b32 v12, v25, 16, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[12:13], v[161:162], v[16:23] neg_lo:[1,1,0]
	ds_load_u8 v12, v96 offset:3648
	ds_load_u8 v13, v96 offset:3776
	ds_load_u8 v26, v96 offset:3792
	ds_load_u8 v182, v96 offset:3808
	ds_load_u8 v99, v96 offset:3664
	ds_load_u8 v186, v96 offset:3680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v12, v12, v13, 0xc0c0004
	ds_load_u8 v13, v96 offset:4032
	ds_load_u8 v24, v96 offset:3904
	ds_load_u8 v153, v96 offset:3920
	ds_load_u8 v190, v96 offset:3936
	ds_load_u8 v154, v96 offset:4048
	ds_load_u8 v195, v96 offset:4064
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v13, v24, v13, 0xc0c0004
	ds_load_u8 v24, v96 offset:3136
	ds_load_u8 v25, v96 offset:3264
	ds_load_u8 v155, v96 offset:3280
	ds_load_u8 v200, v96 offset:3296
	ds_load_u8 v156, v96 offset:3152
	ds_load_u8 v204, v96 offset:3168
	v_lshl_or_b32 v13, v13, 16, v12
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v24, v24, v25, 0xc0c0004
	ds_load_u8 v25, v96 offset:3392
	ds_load_u8 v101, v96 offset:3520
	ds_load_u8 v157, v96 offset:3536
	ds_load_u8 v209, v96 offset:3552
	ds_load_u8 v158, v96 offset:3408
	ds_load_u8 v96, v96 offset:3424
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v25, v25, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v12, v25, 16, v24
	v_wmma_i32_16x16x16_iu4 v[16:23], v[12:13], v[163:164], v[16:23] neg_lo:[1,1,0]
	v_perm_b32 v12, v196, v191, 0xc0c0004
	v_perm_b32 v13, v205, v201, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v110, v16
	v_cvt_f32_i32_e32 v111, v17
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v16, v215, v210, 0xc0c0004
	v_perm_b32 v17, v225, v220, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v106, v18
	v_cvt_f32_i32_e32 v107, v19
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v13, v13, 16, v12
	v_perm_b32 v18, v222, v207, 0xc0c0004
	v_lshl_or_b32 v12, v17, 16, v16
	v_perm_b32 v16, v184, v102, 0xc0c0004
	v_perm_b32 v17, v198, v193, 0xc0c0004
	v_perm_b32 v19, v232, v229, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v104, v20
	v_cvt_f32_i32_e32 v105, v21
	v_cvt_f32_i32_e32 v101, v22
	v_cvt_f32_i32_e32 v103, v23
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v25, v17, 16, v16
	v_lshl_or_b32 v24, v19, 16, v18
	v_wmma_i32_16x16x16_iu4 v[16:23], v[12:13], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v12, v185, v100, 0xc0c0004
	v_perm_b32 v13, v199, v194, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[24:25], v[159:160], v[16:23] neg_lo:[1,1,0]
	v_perm_b32 v24, v223, v208, 0xc0c0004
	v_perm_b32 v25, v239, v236, 0xc0c0004
	v_lshl_or_b32 v13, v13, 16, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v12, v25, 16, v24
	v_perm_b32 v24, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v25, v158, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[16:23], v[12:13], v[161:162], v[16:23] neg_lo:[1,1,0]
	v_perm_b32 v12, v99, v26, 0xc0c0004
	v_perm_b32 v13, v153, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v13, v13, 16, v12
	v_lshl_or_b32 v12, v25, 16, v24
	v_wmma_i32_16x16x16_iu4 v[16:23], v[12:13], v[163:164], v[16:23] neg_lo:[1,1,0]
	v_perm_b32 v12, v197, v192, 0xc0c0004
	v_perm_b32 v13, v206, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v100, v16
	v_cvt_f32_i32_e32 v102, v17
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v16, v216, v211, 0xc0c0004
	v_perm_b32 v17, v226, v221, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v26, v18
	v_cvt_f32_i32_e32 v99, v19
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v13, v13, 16, v12
	v_perm_b32 v18, v227, v212, 0xc0c0004
	v_lshl_or_b32 v12, v17, 16, v16
	v_perm_b32 v16, v188, v180, 0xc0c0004
	v_perm_b32 v17, v202, v152, 0xc0c0004
	v_perm_b32 v19, v233, v230, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v24, v20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[151:158], v[12:13], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v17, v17, 16, v16
	v_lshl_or_b32 v16, v19, 16, v18
	v_perm_b32 v12, v189, v181, 0xc0c0004
	v_perm_b32 v13, v203, v178, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v25, v21
	v_cvt_f32_i32_e32 v21, v22
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[151:158], v[16:17], v[159:160], v[151:158] neg_lo:[1,1,0]
	v_perm_b32 v16, v234, v213, 0xc0c0004
	v_perm_b32 v17, v240, v237, 0xc0c0004
	v_lshl_or_b32 v13, v13, 16, v12
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v12, v17, 16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v96, v209, 0xc0c0004
	v_perm_b32 v96, v142, v98, 0xc0c0004
	v_perm_b32 v16, v204, v200, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[151:158], v[12:13], v[161:162], v[151:158] neg_lo:[1,1,0]
	v_perm_b32 v12, v186, v182, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v15, v97, 16, v96
	v_perm_b32 v13, v190, v195, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[14:15], v[9:10], v[1:8] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0, v94
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v9, v150, v165, 0xc0c0004
	v_perm_b32 v10, v166, v146, 0xc0c0004
	v_perm_b32 v14, v147, v148, 0xc0c0004
	v_perm_b32 v94, v149, v95, 0xc0c0004
	ds_load_u8 v15, v15
	v_lshl_or_b32 v13, v13, 16, v12
	v_lshl_or_b32 v9, v10, 16, v9
	v_lshl_or_b32 v12, v17, 16, v16
	v_lshl_or_b32 v10, v94, 16, v14
	v_perm_b32 v14, v168, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[151:158], v[12:13], v[163:164], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[159:160], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v9, v171, v172, 0xc0c0004
	v_perm_b32 v10, v173, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v20, v151
	v_cvt_f32_i32_e32 v22, v152
	v_cvt_f32_i32_e32 v18, v153
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v9, v10, 16, v9
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v19, v154
	v_cvt_f32_i32_e32 v16, v155
	v_cvt_f32_i32_e32 v17, v156
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v170, v15, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v12, v157
	v_cvt_f32_i32_e32 v13, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v10, v15, 16, v14
	v_perm_b32 v14, v175, v176, 0xc0c0004
	v_perm_b32 v15, v177, v93, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[161:162], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v9, v179, v183, 0xc0c0004
	v_perm_b32 v10, v187, v174, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v10, 16, v9
	v_lshl_or_b32 v10, v15, 16, v14
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[163:164], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v14, v1
	v_cvt_f32_i32_e32 v15, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v3
	v_cvt_f32_i32_e32 v10, v4
	v_cvt_f32_i32_e32 v3, v5
	v_cvt_f32_i32_e32 v4, v6
	v_cvt_f32_i32_e32 v2, v7
	v_cvt_f32_i32_e32 v1, v8
.LBB0_5:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v5, s34, v91
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s0, s1, 0
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s1, s33, s34
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s0, s27
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s1, s1, s0
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s26, s3
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s21, s13, 0xffff
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v92, s0, v92, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v5, s1, v5, 1
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s12
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v7, 4, v92
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v93, 8, v92
	v_add_nc_u32_e32 v94, 16, v92
	v_cndmask_b32_e64 v6, 0x80000000, v92, s2
	v_add_nc_u32_e32 v95, 20, v92
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v8, v5, s[20:23], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v5, 0x80000000, v7, s2
	v_cndmask_b32_e64 v7, 0x80000000, v93, s2
	v_add_nc_u32_e32 v93, 12, v92
	v_add_nc_u32_e32 v96, 24, v92
	v_add_nc_u32_e32 v97, 28, v92
	v_add_nc_u32_e32 v98, 32, v92
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	v_cndmask_b32_e64 v93, 0x80000000, v93, s2
	v_add_nc_u32_e32 v142, 36, v92
	v_cndmask_b32_e64 v94, 0x80000000, v94, s2
	v_add_nc_u32_e32 v143, 40, v92
	v_cndmask_b32_e64 v95, 0x80000000, v95, s2
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	v_cndmask_b32_e64 v97, 0x80000000, v97, s2
	s_clause 0x7
	buffer_load_u16 v154, v6, s[20:23], 0 offen
	buffer_load_u16 v155, v5, s[20:23], 0 offen
	buffer_load_u16 v156, v7, s[20:23], 0 offen
	buffer_load_u16 v157, v93, s[20:23], 0 offen
	buffer_load_u16 v158, v94, s[20:23], 0 offen
	buffer_load_u16 v159, v95, s[20:23], 0 offen
	buffer_load_u16 v160, v96, s[20:23], 0 offen
	buffer_load_u16 v161, v97, s[20:23], 0 offen
	v_add_nc_u32_e32 v93, 44, v92
	v_add_nc_u32_e32 v94, 48, v92
	v_cndmask_b32_e64 v5, 0x80000000, v98, s2
	v_add_nc_u32_e32 v95, 52, v92
	v_add_nc_u32_e32 v96, 56, v92
	v_add_nc_u32_e32 v97, 60, v92
	v_cndmask_b32_e64 v6, 0x80000000, v142, s2
	v_cndmask_b32_e64 v7, 0x80000000, v143, s2
	v_add_nc_u32_e32 v98, 64, v92
	v_cndmask_b32_e64 v93, 0x80000000, v93, s2
	v_add_nc_u32_e32 v142, 0x44, v92
	v_cndmask_b32_e64 v94, 0x80000000, v94, s2
	v_add_nc_u32_e32 v143, 0x48, v92
	v_cndmask_b32_e64 v95, 0x80000000, v95, s2
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	v_cndmask_b32_e64 v97, 0x80000000, v97, s2
	s_clause 0x7
	buffer_load_u16 v164, v5, s[20:23], 0 offen
	buffer_load_u16 v165, v6, s[20:23], 0 offen
	buffer_load_u16 v166, v7, s[20:23], 0 offen
	buffer_load_u16 v167, v93, s[20:23], 0 offen
	buffer_load_u16 v168, v94, s[20:23], 0 offen
	buffer_load_u16 v169, v95, s[20:23], 0 offen
	buffer_load_u16 v170, v96, s[20:23], 0 offen
	buffer_load_u16 v171, v97, s[20:23], 0 offen
	v_add_nc_u32_e32 v93, 0x4c, v92
	v_add_nc_u32_e32 v94, 0x50, v92
	v_cndmask_b32_e64 v5, 0x80000000, v98, s2
	v_add_nc_u32_e32 v95, 0x54, v92
	v_add_nc_u32_e32 v96, 0x58, v92
	v_add_nc_u32_e32 v97, 0x5c, v92
	v_cndmask_b32_e64 v6, 0x80000000, v142, s2
	v_cndmask_b32_e64 v7, 0x80000000, v143, s2
	v_cndmask_b32_e64 v93, 0x80000000, v93, s2
	v_cndmask_b32_e64 v94, 0x80000000, v94, s2
	v_cndmask_b32_e64 v95, 0x80000000, v95, s2
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	v_cndmask_b32_e64 v97, 0x80000000, v97, s2
	s_clause 0x7
	buffer_load_u16 v176, v5, s[20:23], 0 offen
	buffer_load_u16 v177, v6, s[20:23], 0 offen
	buffer_load_u16 v178, v7, s[20:23], 0 offen
	buffer_load_u16 v179, v93, s[20:23], 0 offen
	buffer_load_u16 v180, v94, s[20:23], 0 offen
	buffer_load_u16 v181, v95, s[20:23], 0 offen
	buffer_load_u16 v172, v96, s[20:23], 0 offen
	buffer_load_u16 v173, v97, s[20:23], 0 offen
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v7, s27, v91
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v91, 0x60, v92
	v_add_nc_u32_e32 v93, 0x64, v92
	v_add_nc_u32_e32 v94, 0x68, v92
	v_add_nc_u32_e32 v95, 0x6c, v92
	v_add_nc_u32_e32 v96, 0x70, v92
	v_cndmask_b32_e64 v91, 0x80000000, v91, s2
	v_cndmask_b32_e64 v93, 0x80000000, v93, s2
	s_clause 0x1
	buffer_load_u16 v193, v91, s[20:23], 0 offen
	buffer_load_u16 v194, v93, s[20:23], 0 offen
	v_cndmask_b32_e64 v94, 0x80000000, v94, s2
	v_cndmask_b32_e64 v95, 0x80000000, v95, s2
	s_clause 0x1
	buffer_load_u16 v195, v94, s[20:23], 0 offen
	buffer_load_u16 v196, v95, s[20:23], 0 offen
	v_add_nc_u32_e32 v91, 0x74, v92
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	v_add_nc_u32_e32 v93, 0x78, v92
	v_add_nc_u32_e32 v97, 0x7c, v92
	v_add_nc_u32_e32 v98, 0x80, v92
	v_cndmask_b32_e64 v91, 0x80000000, v91, s2
	s_clause 0x1
	buffer_load_u16 v205, v96, s[20:23], 0 offen
	buffer_load_u16 v206, v91, s[20:23], 0 offen
	v_cndmask_b32_e64 v93, 0x80000000, v93, s2
	v_cndmask_b32_e64 v97, 0x80000000, v97, s2
	s_clause 0x1
	buffer_load_u16 v209, v93, s[20:23], 0 offen
	buffer_load_u16 v210, v97, s[20:23], 0 offen
	v_add_nc_u32_e32 v142, 0x84, v92
	v_cndmask_b32_e64 v98, 0x80000000, v98, s2
	v_add_nc_u32_e32 v143, 0x88, v92
	v_add_nc_u32_e32 v144, 0x8c, v92
	v_add_nc_u32_e32 v145, 0x90, v92
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	s_clause 0x1
	buffer_load_u16 v215, v98, s[20:23], 0 offen
	buffer_load_u16 v216, v142, s[20:23], 0 offen
	v_add_nc_u32_e32 v146, 0x94, v92
	v_add_nc_u32_e32 v147, 0x98, v92
	v_add_nc_u32_e32 v148, 0x9c, v92
	v_add_nc_u32_e32 v149, 0xa0, v92
	v_add_nc_u32_e32 v150, 0xa4, v92
	v_add_nc_u32_e32 v151, 0xa8, v92
	v_add_nc_u32_e32 v152, 0xac, v92
	v_add_nc_u32_e32 v94, 0xb0, v92
	v_add_nc_u32_e32 v95, 0xb4, v92
	v_add_nc_u32_e32 v153, 0xb8, v92
	v_add_nc_u32_e32 v91, 0xec, v92
	v_add_nc_u32_e32 v162, 0xbc, v92
	v_add_nc_u32_e32 v163, 0xc0, v92
	v_add_nc_u32_e32 v174, 0xc4, v92
	v_add_nc_u32_e32 v175, 0xc8, v92
	v_add_nc_u32_e32 v197, 0xcc, v92
	v_add_nc_u32_e32 v198, 0xd0, v92
	v_add_nc_u32_e32 v199, 0xd4, v92
	v_add_nc_u32_e32 v200, 0xd8, v92
	v_add_nc_u32_e32 v201, 0xdc, v92
	v_add_nc_u32_e32 v202, 0xe0, v92
	v_add_nc_u32_e32 v203, 0xe4, v92
	v_add_nc_u32_e32 v204, 0xe8, v92
	v_add_nc_u32_e32 v96, 0xf0, v92
	v_add_nc_u32_e32 v207, 0xf4, v92
	v_add_nc_u32_e32 v208, 0xf8, v92
	v_add_nc_u32_e32 v92, 0xfc, v92
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	v_cndmask_b32_e64 v149, 0x80000000, v149, s2
	v_cndmask_b32_e64 v150, 0x80000000, v150, s2
	v_cndmask_b32_e64 v93, 0x80000000, v151, s2
	v_cndmask_b32_e64 v97, 0x80000000, v152, s2
	v_cndmask_b32_e64 v94, 0x80000000, v94, s2
	v_cndmask_b32_e64 v95, 0x80000000, v95, s2
	v_cndmask_b32_e64 v151, 0x80000000, v153, s2
	v_cndmask_b32_e64 v91, 0x80000000, v91, s2
	v_cndmask_b32_e64 v211, 0x80000000, v162, s2
	v_cndmask_b32_e64 v212, 0x80000000, v163, s2
	v_cndmask_b32_e64 v213, 0x80000000, v174, s2
	v_cndmask_b32_e64 v214, 0x80000000, v175, s2
	v_cndmask_b32_e64 v197, 0x80000000, v197, s2
	v_cndmask_b32_e64 v198, 0x80000000, v198, s2
	v_cndmask_b32_e64 v199, 0x80000000, v199, s2
	v_cndmask_b32_e64 v200, 0x80000000, v200, s2
	v_cndmask_b32_e64 v201, 0x80000000, v201, s2
	v_cndmask_b32_e64 v202, 0x80000000, v202, s2
	v_cndmask_b32_e64 v203, 0x80000000, v203, s2
	v_cndmask_b32_e64 v204, 0x80000000, v204, s2
	v_cndmask_b32_e64 v217, 0x80000000, v96, s2
	v_cndmask_b32_e64 v207, 0x80000000, v207, s2
	v_cndmask_b32_e64 v208, 0x80000000, v208, s2
	v_cndmask_b32_e64 v218, 0x80000000, v92, s2
	s_clause 0x1d
	buffer_load_u16 v219, v143, s[20:23], 0 offen
	buffer_load_u16 v220, v144, s[20:23], 0 offen
	buffer_load_u16 v221, v145, s[20:23], 0 offen
	buffer_load_u16 v222, v146, s[20:23], 0 offen
	buffer_load_u16 v223, v147, s[20:23], 0 offen
	buffer_load_u16 v224, v148, s[20:23], 0 offen
	buffer_load_u16 v174, v149, s[20:23], 0 offen
	buffer_load_u16 v175, v150, s[20:23], 0 offen
	buffer_load_u16 v162, v93, s[20:23], 0 offen
	buffer_load_u16 v163, v97, s[20:23], 0 offen
	buffer_load_u16 v152, v94, s[20:23], 0 offen
	buffer_load_u16 v153, v95, s[20:23], 0 offen
	buffer_load_u16 v150, v151, s[20:23], 0 offen
	buffer_load_u16 v151, v211, s[20:23], 0 offen
	buffer_load_u16 v148, v212, s[20:23], 0 offen
	buffer_load_u16 v149, v213, s[20:23], 0 offen
	buffer_load_u16 v146, v214, s[20:23], 0 offen
	buffer_load_u16 v147, v197, s[20:23], 0 offen
	buffer_load_u16 v144, v198, s[20:23], 0 offen
	buffer_load_u16 v145, v199, s[20:23], 0 offen
	buffer_load_u16 v142, v200, s[20:23], 0 offen
	buffer_load_u16 v143, v201, s[20:23], 0 offen
	buffer_load_u16 v97, v202, s[20:23], 0 offen
	buffer_load_u16 v98, v203, s[20:23], 0 offen
	buffer_load_u16 v95, v204, s[20:23], 0 offen
	buffer_load_u16 v96, v91, s[20:23], 0 offen
	buffer_load_u16 v93, v217, s[20:23], 0 offen
	buffer_load_u16 v94, v207, s[20:23], 0 offen
	buffer_load_u16 v92, v208, s[20:23], 0 offen
	buffer_load_u16 v91, v218, s[20:23], 0 offen
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s33, s33, s27
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v5, 1, v11
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v7, s33, s26, v7
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.h, 0
	v_and_b32_e32 v0, 0x1e0, v0
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s22
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v5, v7, v5, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v189.h, v6.h
	v_mov_b16_e64 v182.h, v6.h
	v_mov_b16_e64 v183.h, v6.h
	v_mov_b16_e64 v185.h, v6.h
	v_mov_b16_e64 v187.h, v6.h
	v_mov_b16_e64 v184.h, v6.h
	v_mov_b16_e64 v186.h, v6.h
	v_mov_b16_e64 v188.h, v6.h
	v_mov_b16_e64 v191.h, v6.h
	v_mov_b16_e64 v190.h, v6.h
	v_mov_b16_e64 v192.h, v6.h
	s_mov_b32 s27, s23
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v114, v114, v8
	v_mul_f32_e32 v115, v115, v8
	v_mul_f32_e32 v119, v119, v8
	v_mul_f32_e32 v118, v118, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v154, 16, v154
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(60)
	v_lshlrev_b32_e32 v157, 16, v157
	s_waitcnt vmcnt(59)
	v_lshlrev_b32_e32 v158, 16, v158
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v132, v132, v8
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v114, v114, v154, v69
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(58)
	v_dual_mul_f32 v116, v116, v8 :: v_dual_lshlrev_b32 v159, 16, v159
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(57)
	v_lshlrev_b32_e32 v160, 16, v160
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(56)
	v_dual_mul_f32 v120, v120, v8 :: v_dual_lshlrev_b32 v161, 16, v161
	v_mul_f32_e32 v117, v117, v8
	v_mul_f32_e32 v121, v121, v8
	v_mul_f32_e32 v130, v130, v8
	v_mul_f32_e32 v136, v136, v8
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v119, v119, v157, v88
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v69, v69, v114, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(55)
	v_lshlrev_b32_e32 v164, 16, v164
	s_waitcnt vmcnt(53)
	v_lshlrev_b32_e32 v166, 16, v166
	s_waitcnt vmcnt(52)
	v_lshlrev_b32_e32 v167, 16, v167
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v126, v126, v8 :: v_dual_lshlrev_b32 v165, 16, v165
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(49)
	v_lshlrev_b32_e32 v170, 16, v170
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v171, 16, v171
	v_lshlrev_b32_e32 v168, 16, v168
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v128, v128, v8 :: v_dual_lshlrev_b32 v169, 16, v169
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v132, v132, v170, v77
	v_fma_f32 v115, v115, v155, v90
	v_fma_f32 v118, v118, v156, v89
	v_fma_f32 v117, v117, v159, v86
	v_fma_f32 v120, v120, v160, v85
	v_fma_f32 v130, v130, v166, v81
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v88, v88, v119, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v180, 16, v180
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v181, 16, v181
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v77, v77, v132, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v69.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v138, v138, v8 :: v_dual_lshlrev_b32 v179, 16, v179
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v136, v136, v180, v71
	v_fma_f32 v116, v116, v158, v87
	v_fma_f32 v126, v126, v164, v83
	v_fma_f32 v128, v128, v168, v79
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v90, v90, v115, s2
	v_cndmask_b32_e64 v89, v89, v118, s2
	v_cndmask_b32_e64 v86, v86, v117, s2
	v_cndmask_b32_e64 v85, v85, v120, s2
	v_cndmask_b32_e64 v81, v81, v130, s2
	v_cndmask_b32_e64 v117, v71, v136, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v189.l, v77.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v139, v139, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v71, 1, v6
	v_mov_b16_e32 v6.l, v88.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v137, v137, v8
	v_dual_mul_f32 v134, v134, v8 :: v_dual_lshlrev_b32 v177, 16, v177
	v_dual_mul_f32 v127, v127, v8 :: v_dual_lshlrev_b32 v178, 16, v178
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v121, v121, v161, v84
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v87, v87, v116, s2
	v_cndmask_b32_e64 v83, v83, v126, s2
	v_cndmask_b32_e64 v79, v79, v128, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v182.l, v90.h
	v_mov_b16_e64 v183.l, v89.h
	v_mov_b16_e64 v185.l, v85.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v133, v133, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v187.l, v81.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v135, v135, v8 :: v_dual_and_b32 v126, 1, v189
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v139, v139, v179, v72
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v128, 1, v6
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v137, v137, v181, v70
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v131, v131, v8
	v_mul_f32_e32 v129, v129, v8
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v127, v127, v165, v82
	v_fma_f32 v133, v133, v171, v76
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v84, v84, v121, s2
	v_cndmask_b32_e64 v116, v72, v139, s2
	v_cndmask_b32_e64 v118, v70, v137, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v184.l, v87.h
	v_mov_b16_e64 v186.l, v83.h
	v_and_b32_e32 v70, 1, v182
	v_and_b32_e32 v72, 1, v183
	v_and_b32_e32 v120, 1, v187
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v135, v135, v177, v74
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v86.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v131, v131, v167, v80
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v82, v82, v127, s2
	v_cndmask_b32_e64 v114, v76, v133, s2
	v_cndmask_b32_e64 v115, v74, v135, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v69, v69
	v_cmp_o_f32_e64 s3, v89, v89
	v_and_b32_e32 v74, 1, v184
	v_and_b32_e32 v76, 1, v185
	v_and_b32_e32 v119, 1, v186
	v_add3_u32 v71, v69, v71, 0x7fff
	v_add3_u32 v69, v90, v70, 0x7fff
	v_add3_u32 v70, v89, v72, 0x7fff
	v_and_b32_e32 v89, 1, v6
	v_mov_b16_e32 v6.l, v84.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v129, v129, v169, v78
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v80, v80, v131, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s9, v83, v83
	v_add3_u32 v72, v87, v74, 0x7fff
	v_add3_u32 v74, v85, v76, 0x7fff
	v_add3_u32 v76, v83, v119, 0x7fff
	v_and_b32_e32 v83, 1, v6
	v_mov_b16_e32 v6.l, v82.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v138, v138, v178, v73
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v78, v78, v129, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s5, v87, v87
	v_mov_b16_e64 v188.l, v79.h
	v_and_b32_e32 v87, 1, v6
	v_mov_b16_e32 v6.l, v80.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v141, v141, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v73, v73, v138, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v88, v88
	v_cmp_o_f32_e64 s11, v81, v81
	v_and_b32_e32 v121, 1, v188
	v_add3_u32 v81, v81, v120, 0x7fff
	v_cndmask_b16 v69.l, 0x7fff, v71.h, s0
	v_add3_u32 v71, v88, v128, 0x7fff
	v_and_b32_e32 v88, 1, v6
	v_mov_b16_e32 v6.l, v78.h
	v_cmp_o_f32_e64 s13, v79, v79
	v_mov_b16_e64 v191.l, v73.h
	v_add3_u32 v79, v79, v121, 0x7fff
	v_cndmask_b16 v71.l, 0x7fff, v81.h, s11
	v_and_b32_e32 v81, 1, v6
	v_mov_b16_e32 v6.l, v114.h
	v_cmp_o_f32_e64 s15, v77, v77
	v_add3_u32 v77, v77, v126, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v176, 16, v176
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v129, 1, v191
	v_cndmask_b16 v77.l, 0x7fff, v79.h, s13
	v_and_b32_e32 v79, 1, v6
	v_mov_b16_e32 v6.l, v115.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(40)
	v_dual_mul_f32 v140, v140, v8 :: v_dual_lshlrev_b32 v173, 16, v173
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v134, v134, v176, v75
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s6, v84, v84
	v_cmp_o_f32_e64 s7, v85, v85
	v_cmp_o_f32_e64 s8, v82, v82
	v_cmp_o_f32_e64 s10, v80, v80
	v_cmp_o_f32_e64 s19, v73, v73
	v_add3_u32 v85, v73, v129, 0x7fff
	v_add3_u32 v83, v84, v83, 0x7fff
	v_add3_u32 v82, v82, v87, 0x7fff
	v_add3_u32 v80, v80, v88, 0x7fff
	v_and_b32_e32 v84, 1, v6
	v_mov_b16_e32 v6.l, v116.h
	v_cmp_o_f32_e64 s12, v78, v78
	v_add3_u32 v78, v78, v81, 0x7fff
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v141, v141, v173, v68
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v75, v75, v134, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v70.l, 0x7fff, v70.h, s3
	v_cndmask_b16 v74.l, 0x7fff, v72.h, s5
	v_cndmask_b16 v70.h, 0x7fff, v71.h, s1
	v_cndmask_b16 v72.h, 0x7fff, v82.h, s8
	v_cndmask_b16 v71.h, 0x7fff, v80.h, s10
	v_and_b32_e32 v80, 1, v6
	v_cndmask_b16 v78.l, 0x7fff, v85.h, s19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(39)
	v_dual_mul_f32 v85, v124, v8 :: v_dual_lshlrev_b32 v82, 16, v193
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v172, 16, v172
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s14, v114, v114
	v_mov_b16_e64 v190.l, v75.h
	v_cmp_o_f32_e64 s18, v116, v116
	v_add3_u32 v79, v114, v79, 0x7fff
	v_mov_b16_e32 v6.l, v118.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v68, v68, v141, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v82, v85, v82, v65
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v85, v122, v8
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v80, v116, v80, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_cmp_o_f32_e64 s4, v86, v86
	v_and_b32_e32 v127, 1, v190
	v_cndmask_b16 v72.l, 0x7fff, v76.h, s9
	v_cndmask_b16 v76.l, 0x7fff, v77.h, s15
	v_add3_u32 v86, v86, v89, 0x7fff
	v_cndmask_b16 v77.h, 0x7fff, v78.h, s12
	v_cndmask_b16 v76.h, 0x7fff, v79.h, s14
	v_and_b32_e32 v79, 1, v6
	v_cndmask_b16 v78.h, 0x7fff, v80.h, s18
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v80, v140, v172, v67
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v68.h
	v_cmp_o_f32_e64 s16, v115, v115
	v_cmp_o_f32_e64 s17, v75, v75
	v_mov_b16_e64 v192.l, v117.h
	v_add3_u32 v75, v75, v127, 0x7fff
	v_cndmask_b16 v69.h, 0x7fff, v69.h, vcc_lo
	v_cndmask_b16 v73.l, 0x7fff, v74.h, s7
	v_cndmask_b16 v74.h, 0x7fff, v86.h, s4
	v_cndmask_b16 v73.h, 0x7fff, v83.h, s6
	v_add3_u32 v81, v115, v84, 0x7fff
	v_add3_u32 v79, v118, v79, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v118, v118
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v80, v67, v80, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(38)
	v_dual_mul_f32 v84, v125, v8 :: v_dual_lshlrev_b32 v83, 16, v194
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v86, 1, v6
	v_cndmask_b16 v75.l, 0x7fff, v75.h, s17
	v_cndmask_b16 v75.h, 0x7fff, v81.h, s16
	v_and_b32_e32 v81, 1, v192
	v_cndmask_b16 v67.h, 0x7fff, v79.h, vcc_lo
	v_mov_b16_e32 v79.l, v80.h
	v_mov_b16_e32 v79.h, v6.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v83, v84, v83, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v84, v68, v86, 0x7fff
	v_cmp_o_f32_e64 s0, v68, v68
	v_add3_u32 v81, v117, v81, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v117, v117
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v26, v26, v8 :: v_dual_and_b32 v79, 1, v79
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v66, v66, v83, s2
	v_cndmask_b32_e64 v68, v65, v82, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v65.h, 0x7fff, v84.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v83, 16, v196
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v84, v123, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v67.l, 0x7fff, v81.h, vcc_lo
	v_add3_u32 v79, v80, v79, 0x7fff
	v_mov_b16_e32 v6.l, v66.h
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v80, v84, v83, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v81.l, v68.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v82, 16, v195
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v81.h, v6.h
	v_and_b32_e32 v86, 1, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v64, v64, v80, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v66, v66
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v82, v85, v82, v63
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v24, v24, v8 :: v_dual_and_b32 v81, 1, v81
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v83, v66, v86, 0x7fff
	v_mov_b16_e32 v6.l, v64.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v66, v63, v82, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v65.l, 0x7fff, v79.h, vcc_lo
	v_add3_u32 v79, v68, v81, 0x7fff
	v_cndmask_b16 v63.h, 0x7fff, v83.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(35)
	v_dual_mul_f32 v22, v22, v8 :: v_dual_lshlrev_b32 v81, 16, v205
	s_waitcnt vmcnt(34)
	v_dual_mul_f32 v83, v113, v8 :: v_dual_lshlrev_b32 v82, 16, v206
	v_dual_mul_f32 v84, v112, v8 :: v_dual_and_b32 v85, 1, v6
	v_mul_f32_e32 v20, v20, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v80.l, v66.h
	v_mov_b16_e32 v80.h, v6.h
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v68, v83, v82, v62
	v_fma_f32 v81, v84, v81, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v82, v64, v85, 0x7fff
	v_cmp_o_f32_e64 s0, v64, v64
	v_and_b32_e32 v80, 1, v80
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v62, v62, v68, s2
	v_cndmask_b32_e64 v64, v61, v81, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(32)
	v_dual_mul_f32 v18, v18, v8 :: v_dual_lshlrev_b32 v81, 16, v210
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v61.h, 0x7fff, v82.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v82, v109, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v63.l, 0x7fff, v79.h, vcc_lo
	v_add3_u32 v68, v66, v80, 0x7fff
	v_mov_b16_e32 v6.l, v62.h
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v66, v82, v81, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v79.l, v64.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v83, v108, v8 :: v_dual_lshlrev_b32 v80, 16, v209
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v79.h, v6.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v25, v25, v8 :: v_dual_and_b32 v84, 1, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v60, v60, v66, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v80, v83, v80, v59
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v16, v16, v8 :: v_dual_and_b32 v79, 1, v79
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v81, v62, v84, 0x7fff
	v_cmp_o_f32_e64 s0, v62, v62
	v_mov_b16_e32 v6.l, v60.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v62, v59, v80, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v66, v64, v79, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(31)
	v_dual_mul_f32 v12, v12, v8 :: v_dual_lshlrev_b32 v79, 16, v215
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v59.h, 0x7fff, v81.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v80, 16, v216
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v81, v111, v8
	v_dual_mul_f32 v82, v110, v8 :: v_dual_and_b32 v83, 1, v6
	v_mul_f32_e32 v14, v14, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v61.l, 0x7fff, v68.h, vcc_lo
	v_mov_b16_e32 v68.l, v62.h
	v_mov_b16_e32 v68.h, v6.h
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v64, v81, v80, v58
	v_fma_f32 v79, v82, v79, v57
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v80, v60, v83, 0x7fff
	v_cmp_o_f32_e64 s0, v60, v60
	v_and_b32_e32 v68, 1, v68
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v58, v58, v64, s2
	v_cndmask_b32_e64 v60, v57, v79, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v79, 16, v220
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v57.h, 0x7fff, v80.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v80, v107, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v59.l, 0x7fff, v66.h, vcc_lo
	v_add3_u32 v64, v62, v68, 0x7fff
	v_mov_b16_e32 v6.l, v58.h
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v62, v80, v79, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v66.l, v60.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v23, v23, v8 :: v_dual_lshlrev_b32 v68, 16, v219
	v_mul_f32_e32 v81, v106, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v66.h, v6.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v21, v21, v8 :: v_dual_and_b32 v82, 1, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v56, v56, v62, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v68, v81, v68, v55
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v19, v19, v8 :: v_dual_and_b32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v79, v58, v82, 0x7fff
	v_cmp_o_f32_e64 s0, v58, v58
	v_mov_b16_e32 v6.l, v56.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v58, v55, v68, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v62, v60, v66, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(27)
	v_dual_mul_f32 v17, v17, v8 :: v_dual_lshlrev_b32 v66, 16, v221
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v55.h, 0x7fff, v79.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v13, v13, v8 :: v_dual_lshlrev_b32 v68, 16, v222
	v_mul_f32_e32 v79, v105, v8
	v_dual_mul_f32 v80, v104, v8 :: v_dual_and_b32 v81, 1, v6
	v_mul_f32_e32 v10, v10, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v57.l, 0x7fff, v64.h, vcc_lo
	v_mov_b16_e32 v64.l, v58.h
	v_mov_b16_e32 v64.h, v6.h
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v60, v79, v68, v54
	v_fma_f32 v66, v80, v66, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v68, v56, v81, 0x7fff
	v_cmp_o_f32_e64 s0, v56, v56
	v_and_b32_e32 v64, 1, v64
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v54, v54, v60, s2
	v_cndmask_b32_e64 v53, v53, v66, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v66, 16, v224
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v60.h, 0x7fff, v68.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v68, v103, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v55.l, 0x7fff, v62.h, vcc_lo
	v_add3_u32 v56, v58, v64, 0x7fff
	v_mov_b16_e32 v6.l, v54.h
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v58, v68, v66, v52
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v15, v15, v8 :: v_dual_lshlrev_b32 v64, 16, v223
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v79, v101, v8 :: v_dual_and_b32 v80, 1, v6
	v_mul_f32_e32 v9, v9, v8
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v52, v52, v58, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v62.l, v53.h
	v_mov_b16_e32 v62.h, v6.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v64, v79, v64, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v66, v54, v80, 0x7fff
	v_cmp_o_f32_e64 s0, v54, v54
	v_mov_b16_e32 v6.l, v52.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v3, v8 :: v_dual_and_b32 v62, 1, v62
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v51, v51, v64, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v60.l, 0x7fff, v56.h, vcc_lo
	v_cndmask_b16 v56.h, 0x7fff, v66.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v64, 16, v175
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v66, v102, v8 :: v_dual_and_b32 v79, 1, v6
	v_mul_f32_e32 v4, v4, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v54, v53, v62, 0x7fff
	v_mov_b16_e32 v58.l, v51.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v1, v1, v8 :: v_dual_lshlrev_b32 v62, 16, v174
	v_mul_f32_e32 v68, v100, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v58.h, v6.h
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v53, v66, v64, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v64, v52, v79, 0x7fff
	v_cmp_o_f32_e64 s0, v52, v52
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v62, v68, v62, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v56.l, 0x7fff, v54.h, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v50, v50, v53, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v54.h, v6.h
	v_cndmask_b16 v53.h, 0x7fff, v64.h, s0
	v_and_b32_e32 v58, 1, v58
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v49, v49, v62, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v62, 16, v163
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v64, v99, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v50.h
	v_add3_u32 v52, v51, v58, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v58, 16, v162
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v54.l, v49.h
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v51, v64, v62, v48
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v66, 1, v6
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v26, v58, v47
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v54, 1, v54
	v_cmp_o_f32_e64 s0, v50, v50
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v48, v48, v51, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v58, v50, v66, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v47, v26, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v53.l, 0x7fff, v52.h, vcc_lo
	v_add3_u32 v47, v49, v54, 0x7fff
	v_mov_b16_e32 v6.l, v48.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v52, 16, v152
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v51.l, v26.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v54, 16, v153
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v51.h, v6.h
	v_cndmask_b16 v50.h, 0x7fff, v58.h, s0
	v_and_b32_e32 v58, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v25, v54, v46
	v_fma_f32 v24, v24, v52, v45
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v2, v2, v8 :: v_dual_and_b32 v49, 1, v51
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v48, v58, 0x7fff
	v_cmp_o_f32_e64 s0, v48, v48
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v46, v25, s2
	v_cndmask_b32_e64 v24, v45, v24, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v45, v26, v49, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v48, 16, v150
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v49, 16, v151
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v25.h
	v_cndmask_b16 v50.l, 0x7fff, v47.h, vcc_lo
	v_cndmask_b16 v46.h, 0x7fff, v51.h, s0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v21, v48, v43
	v_fma_f32 v23, v23, v49, v44
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v47.l, v24.h
	v_mov_b16_e32 v47.h, v6.h
	v_and_b32_e32 v51, 1, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v43, v21, s2
	v_cndmask_b32_e64 v23, v44, v23, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_and_b32_e32 v26, 1, v47
	v_add3_u32 v47, v25, v51, 0x7fff
	v_cmp_o_f32_e64 s0, v25, v25
	v_mov_b16_e32 v6.l, v23.h
	v_mov_b16_e32 v43.l, v21.h
	v_mov_b16_e32 v43.h, v6.h
	v_cndmask_b16 v46.l, 0x7fff, v45.h, vcc_lo
	v_add3_u32 v25, v24, v26, 0x7fff
	v_cndmask_b16 v26.h, 0x7fff, v47.h, s0
	v_and_b32_e32 v47, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_and_b32_e32 v24, 1, v43
	v_cmp_o_f32_e64 s0, v23, v23
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v44, 16, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v43, v23, v47, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v25.h, vcc_lo
	v_add3_u32 v23, v21, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v20, v20, v44, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v24.h, 0x7fff, v43.h, s0
	v_mov_b16_e32 v25.h, v6.h
	v_mov_b16_e32 v8.h, v6.h
	v_cndmask_b16 v24.l, 0x7fff, v23.h, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v45, 16, v149
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v41, v20, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v41, 16, v146
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v23.h, v6.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v22, v45, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v25.l, v20.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v18, v18, v41, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v42, v22, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v42, 16, v147
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v21, 1, v25
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v39, v18, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v39, 16, v145
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v22.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v19, v19, v42, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v22, v22
	v_mov_b16_e32 v23.l, v18.h
	v_add3_u32 v21, v20, v21, 0x7fff
	v_and_b32_e32 v43, 1, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v40, v19, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v17, v17, v39, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v20, 1, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v25, v22, v43, 0x7fff
	v_mov_b16_e32 v6.l, v19.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v38, v17, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.l, 0x7fff, v21.h, vcc_lo
	v_mov_b16_e32 v21.h, v6.h
	v_cndmask_b16 v22.h, 0x7fff, v25.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v25, 16, v144
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v40, 1, v6
	v_cmp_o_f32_e64 s0, v19, v19
	v_mov_b16_e32 v6.l, v17.h
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v16, v16, v25, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v23, v19, v40, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v25, 16, v143
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v19, v18, v20, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v37, v16, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v20.h, 0x7fff, v23.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v23, 16, v142
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v13, v13, v25, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v37, 1, v6
	v_mov_b16_e32 v21.l, v16.h
	v_cmp_o_f32_e64 s0, v17, v17
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v12, v12, v23, v35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v36, v13, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v20.l, 0x7fff, v19.h, vcc_lo
	v_and_b32_e32 v18, 1, v21
	v_add3_u32 v21, v17, v37, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v35, v12, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v13.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v23, 16, v98
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v19.h, v6.h
	v_add3_u32 v17, v16, v18, 0x7fff
	v_mov_b16_e32 v19.l, v12.h
	v_and_b32_e32 v25, 1, v6
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v21, 16, v97
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v15, v15, v23, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v19
	v_add3_u32 v19, v13, v25, 0x7fff
	v_cmp_o_f32_e64 s0, v13, v13
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v14, v14, v21, v33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v34, v15, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v12, v16, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v21, 16, v96
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v16.h, 0x7fff, v19.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v19, 16, v95
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v14, v33, v14, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v13.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v10, v21, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v18.l, 0x7fff, v17.h, vcc_lo
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v9, v9, v19, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v14.h
	v_mov_b16_e32 v17.h, v6.h
	v_and_b32_e32 v23, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v32, v10, s2
	v_cndmask_b32_e64 v9, v31, v9, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v12, 1, v17
	v_add3_u32 v17, v13, v23, 0x7fff
	v_cmp_o_f32_e64 s0, v13, v13
	v_cndmask_b16 v16.l, 0x7fff, v15.h, vcc_lo
	v_mov_b16_e32 v6.l, v10.h
	v_mov_b16_e32 v15.l, v9.h
	v_mov_b16_e32 v15.h, v6.h
	v_add3_u32 v12, v14, v12, 0x7fff
	v_cndmask_b16 v13.h, 0x7fff, v17.h, s0
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v14, 16, v94
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v17, 1, v6
	v_and_b32_e32 v15, 1, v15
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v19, 16, v93
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v13.l, 0x7fff, v12.h, vcc_lo
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v4, v4, v14, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v14, v10, v17, 0x7fff
	v_add3_u32 v12, v9, v15, 0x7fff
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v3, v19, v29
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 16, v92
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v91
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v30, v4, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v29, v3, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v15, v28
	v_fma_f32 v1, v1, v17, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v4.h
	v_cmp_o_f32_e64 s0, v9, v9
	v_mov_b16_e32 v8.l, v3.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v28, v2, s2
	v_cndmask_b32_e64 v1, v27, v1, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v9, 1, v6
	v_mov_b16_e32 v10.h, v6.h
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v10.l, v2.h
	v_mov_b16_e32 v6.l, v1.h
	v_cndmask_b16 v14.h, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v14.l, 0x7fff, v12.h, s0
	v_add3_u32 v8, v3, v8, 0x7fff
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v6, 1, v6
	v_add3_u32 v9, v4, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_cmp_o_f32_e64 s0, v3, v3
	v_add3_u32 v3, v2, v10, 0x7fff
	v_add3_u32 v4, v1, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v1, v1
	v_cmp_o_f32_e64 s2, v2, v2
	v_cndmask_b16 v1.h, 0x7fff, v9.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v11
	v_cndmask_b16 v1.l, 0x7fff, v8.h, s0
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s1
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s2
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v36, v16, v20, vcc_lo
	v_dual_cndmask_b32 v16, v20, v16 :: v_dual_cndmask_b32 v37, v1, v13
	v_cndmask_b32_e32 v1, v13, v1, vcc_lo
	v_mov_b32_e32 v13, 0x5410
	v_mov_b32_e32 v20, 0x7632
	v_cndmask_b32_e32 v38, v2, v14, vcc_lo
	v_cndmask_b32_e32 v2, v14, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v4, v69, v74 :: v_dual_cndmask_b32 v13, 0x1054, v13
	v_cndmask_b32_e32 v14, 0x3276, v20, vcc_lo
	v_cndmask_b32_e32 v8, v70, v73, vcc_lo
	v_cndmask_b32_e32 v10, v72, v77, vcc_lo
	v_cndmask_b32_e32 v12, v71, v76, vcc_lo
	v_lshl_or_b32 v13, v13, 8, v13
	v_lshl_or_b32 v14, v14, 8, v14
	v_dual_cndmask_b32 v3, v74, v69 :: v_dual_cndmask_b32 v6, v73, v70
	v_cndmask_b32_e32 v17, v75, v67, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v13, 0x540054, v13
	v_dual_cndmask_b32 v21, v78, v65 :: v_dual_and_b32 v14, 0x760076, v14
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v13, v13, 4, v13
	v_lshl_or_b32 v14, v14, 4, v14
	v_cndmask_b32_e32 v9, v77, v72, vcc_lo
	v_cndmask_b32_e32 v11, v76, v71, vcc_lo
	v_cndmask_b32_e32 v15, v67, v75, vcc_lo
	v_and_b32_e32 v39, 0x5040504, v13
	v_and_b32_e32 v40, 0x7060706, v14
	v_cndmask_b32_e32 v19, v65, v78, vcc_lo
	v_cndmask_b32_e32 v23, v59, v63, vcc_lo
	v_cndmask_b32_e32 v25, v63, v59, vcc_lo
	v_cndmask_b32_e32 v27, v57, v61, vcc_lo
	v_dual_cndmask_b32 v28, v61, v57 :: v_dual_cndmask_b32 v29, v56, v55
	v_cndmask_b32_e32 v30, v55, v56, vcc_lo
	v_dual_cndmask_b32 v31, v53, v60 :: v_dual_cndmask_b32 v32, v60, v53
	v_cndmask_b32_e32 v33, v26, v50, vcc_lo
	v_cndmask_b32_e32 v26, v50, v26, vcc_lo
	v_cndmask_b32_e32 v34, v24, v46, vcc_lo
	v_cndmask_b32_e32 v24, v46, v24, vcc_lo
	v_cndmask_b32_e32 v35, v18, v22, vcc_lo
	v_cndmask_b32_e32 v18, v22, v18, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v0, 32, v5
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v4, v3, v39
	v_perm_b32 v2, v4, v3, v40
	v_perm_b32 v3, v8, v6, v39
	v_perm_b32 v4, v8, v6, v40
	v_add_nc_u32_e32 v6, 64, v5
	v_cndmask_b32_e32 v7, 0x80000000, v5, vcc_lo
	v_perm_b32 v8, v10, v9, v39
	v_perm_b32 v9, v10, v9, v40
	v_perm_b32 v10, v12, v11, v39
	v_perm_b32 v11, v12, v11, v40
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_perm_b32 v12, v17, v15, v39
	v_perm_b32 v13, v17, v15, v40
	v_perm_b32 v14, v20, v19, v39
	v_perm_b32 v15, v20, v19, v40
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_permlanex16_b32 v21, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v28, s0, 0xfedcba98 op_sel:[1,0]
	s_clause 0x2
	buffer_store_b128 v[1:4], v7, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v0, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v6, s[24:27], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v5
	v_permlanex16_b32 v25, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v1, 0x80, v5
	v_permlanex16_b32 v26, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v2, 0xa0, v5
	v_permlanex16_b32 v32, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v3, 0xc0, v5
	v_add_nc_u32_e32 v4, 0xe0, v5
	v_perm_b32 v16, v21, v23, v39
	v_perm_b32 v17, v21, v23, v40
	v_perm_b32 v18, v22, v27, v39
	v_perm_b32 v19, v22, v27, v40
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_perm_b32 v20, v25, v29, v39
	v_perm_b32 v21, v25, v29, v40
	v_perm_b32 v22, v28, v31, v39
	v_perm_b32 v23, v28, v31, v40
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_perm_b32 v24, v26, v33, v39
	v_perm_b32 v25, v26, v33, v40
	v_perm_b32 v26, v30, v34, v39
	v_perm_b32 v27, v30, v34, v40
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_perm_b32 v28, v32, v35, v39
	v_perm_b32 v29, v32, v35, v40
	v_perm_b32 v30, v41, v36, v39
	v_perm_b32 v31, v41, v36, v40
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_perm_b32 v32, v42, v37, v39
	v_perm_b32 v33, v42, v37, v40
	v_perm_b32 v34, v43, v38, v39
	v_perm_b32 v35, v43, v38, v40
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[16:19], v0, s[24:27], 0 offen
	buffer_store_b128 v[20:23], v1, s[24:27], 0 offen
	buffer_store_b128 v[24:27], v2, s[24:27], 0 offen
	buffer_store_b128 v[28:31], v3, s[24:27], 0 offen
	buffer_store_b128 v[32:35], v4, s[24:27], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 45
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 241
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21256
; TotalNumSgprs: 47
; NumVgprs: 241
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	140                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     241
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
