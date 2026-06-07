	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v6, 2, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v2, 5, v0
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v9, 15, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v19, 0 :: v_dual_and_b32 v10, 0x7c, v6
	s_load_b64 s[40:41], s[0:1], 0x20
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v16, 0x7f, v0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s34, 15
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
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[3:4], null, s35, v2, v[10:11]
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s5
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v1
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	s_mul_i32 s10, s10, s7
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	s_mul_hi_u32 s10, s7, s10
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	s_sub_i32 s6, s6, s10
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
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
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v45, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v83, v0, 4, 1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_bfe_u32 v1, v0, 4, 4
	s_mov_b32 s11, 0x31027000
	v_bfe_i32 v86, v0, 3, 1
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s31, s11
	v_lshlrev_b32_e32 v88, 4, v0
	v_or_b32_e32 v85, 0x3f0, v0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s7
	v_or_b32_e32 v87, 0x7f0, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v89, 0, v6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s17, s17, s10
	v_add_nc_u32_e32 v84, 0, v9
	s_mul_hi_u32 s5, s10, s17
	s_abs_i32 s17, s2
	s_add_i32 s5, s10, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_hi_u32 s5, s17, s5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s19, s5, s7
	s_mov_b64 s[24:25], s[14:15]
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
	s_add_i32 s20, s4, 31
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s19
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s7, s6
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s27, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s5, s18
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s17, s3, 4
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s4
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v4, s17, v9
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s34, s2, 4
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v5, s17, v2
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_or_b32_e32 v7, s34, v1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s5, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s16, s20, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s27, v4
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 16, v4
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s27, v5
	.loc	1 156 51                        ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 16, v5
	.loc	1 162 34 is_stmt 1              ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[4:5], null, v7, s27, v[4:5]
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s26, s16, 5
.Ltmp21:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s20, 31
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s19, s35, s17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s3, s5
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v3, s19, s33, v3
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s16, vcc_lo, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s5
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s16
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u8 v4, v4, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b32 v3, v3, s[28:31], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_bfe_i32 v5, v0, 7, 1
	v_mov_b32_e32 v80, 0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v7, 4, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s14, s26, -1
	s_mov_b32 s16, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v5, 0x88, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lt_i32 s20, 64
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v82, 62, v7
	v_or_b32_e32 v81, 0x7e, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v5, v5, v16
	v_add_nc_u32_e32 v90, 0, v5
	s_waitcnt vmcnt(1)
	ds_store_b8 v90, v4 offset:2048
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v89, v3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s42, s17, 16
	v_sub_nc_u32_e32 v91, s27, v2
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v2, s42, v2
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v3, 0x70, v88
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v6, s34, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v2, s35, v2
	v_dual_mov_b32 v78, 0 :: v_dual_lshlrev_b32 v5, 1, v81
	v_and_or_b32 v3, 0x88, v86, v3
	s_lshl_b32 s0, s6, 8
	v_mul_lo_u32 v6, s26, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v92, s0, v5
	v_dual_mov_b32 v76, 0 :: v_dual_lshlrev_b32 v5, 1, v83
	v_dual_mov_b32 v74, 0 :: v_dual_lshlrev_b32 v7, 1, v82
	s_lshl_b32 s1, s7, 7
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v1, s34, v1
	v_xor_b32_e32 v4, 8, v3
	v_add3_u32 v2, v2, s1, v10
	v_subrev_nc_u32_e32 v93, s0, v5
	v_subrev_nc_u32_e32 v94, s0, v7
	s_lshl_b32 s0, s6, 7
	v_mad_u64_u32 v[11:12], null, s27, v1, v[9:10]
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v95, 1, v6
	v_subrev_nc_u32_e32 v96, s0, v2
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v97, 0, v3
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v98, 0, v4
	v_mov_b32_e32 v1, s16
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v99, 0, v85
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v100, 0, v87
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v8, s23
	v_mov_b32_e32 v3, s18
	v_mov_b32_e32 v5, s20
	v_mov_b32_e32 v7, s22
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_max_i32 s15, s14, 1
	s_lshl_b32 s43, s7, 8
	s_lshl_b32 s44, s35, 1
	s_lshl_b32 s45, s35, 4
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s6, s10
	s_mov_b32 s7, s11
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_add_nc_u32_e32 v12, s42, v9
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v13, s42, v11
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v102, s43, v93
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s42, v91
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s15, s15, -1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s1, s27, v12
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s42, s42, 16
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	s_and_b32 s1, s1, s3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s15, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v12, 0x80000000, v13, s1
	buffer_load_u8 v101, v12, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v106, v95, s[4:7], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x6
	buffer_load_u16 v107, v102, s[36:39], 0 offen
	buffer_load_u16 v105, v102, s[36:39], 0 offen offset:4
	buffer_load_u16 v104, v102, s[36:39], 0 offen offset:8
	buffer_load_u16 v103, v102, s[36:39], 0 offen offset:12
	buffer_load_u16 v189, v102, s[36:39], 0 offen offset:16
	buffer_load_u16 v190, v102, s[36:39], 0 offen offset:20
	buffer_load_u16 v191, v102, s[36:39], 0 offen offset:24
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v179, v84 offset:256
	ds_load_u8 v180, v84 offset:384
	ds_load_u8 v170, v84 offset:400
	ds_load_u8 v174, v84 offset:640
	ds_load_u8 v176, v84 offset:512
	ds_load_u8 v173, v84 offset:768
	ds_load_u8 v165, v84 offset:784
	ds_load_u8 v157, v84 offset:800
	ds_load_u8 v175, v84 offset:896
	ds_load_u8 v166, v84 offset:912
	ds_load_u8 v158, v84 offset:928
	ds_load_u8 v149, v84 offset:944
	ds_load_u8 v141, v84 offset:960
	ds_load_u8 v133, v84 offset:976
	ds_load_u8 v124, v84 offset:992
	ds_load_u8 v167, v84 offset:656
	ds_load_u8 v159, v84 offset:672
	ds_load_u8 v150, v84 offset:688
	ds_load_u8 v142, v84 offset:704
	ds_load_u8 v134, v84 offset:720
	ds_load_u8 v125, v84 offset:736
	ds_load_u8 v110, v84 offset:752
	ds_load_u8 v168, v84 offset:528
	ds_load_u8 v160, v84 offset:544
	ds_load_u8 v151, v84 offset:560
	ds_load_u8 v144, v84 offset:576
	ds_load_u8 v136, v84 offset:592
	ds_load_u8 v127, v84 offset:608
	ds_load_u8 v112, v84 offset:624
	ds_load_u8 v152, v84 offset:816
	ds_load_u8 v143, v84 offset:832
	ds_load_u8 v135, v84 offset:848
	ds_load_u8 v126, v84 offset:864
	ds_load_u8 v111, v84 offset:880
	ds_load_u8 v177, v84
	ds_load_u8 v178, v84 offset:128
	ds_load_u8 v169, v84 offset:144
	ds_load_u8 v161, v84 offset:160
	ds_load_u8 v153, v84 offset:176
	ds_load_u8 v145, v84 offset:192
	ds_load_u8 v137, v84 offset:208
	ds_load_u8 v128, v84 offset:224
	ds_load_u8 v113, v84 offset:240
	ds_load_u8 v171, v84 offset:16
	ds_load_u8 v162, v84 offset:32
	ds_load_u8 v154, v84 offset:48
	ds_load_u8 v146, v84 offset:64
	ds_load_u8 v138, v84 offset:80
	ds_load_u8 v130, v84 offset:96
	ds_load_u8 v114, v84 offset:112
	ds_load_u8 v163, v84 offset:416
	ds_load_u8 v155, v84 offset:432
	ds_load_u8 v147, v84 offset:448
	ds_load_u8 v139, v84 offset:464
	ds_load_u8 v131, v84 offset:480
	ds_load_u8 v116, v84 offset:496
	ds_load_u8 v172, v84 offset:272
	ds_load_u8 v164, v84 offset:288
	ds_load_u8 v156, v84 offset:304
	ds_load_u8 v148, v84 offset:320
	ds_load_u8 v140, v84 offset:336
	ds_load_u8 v132, v84 offset:352
	ds_load_u8 v120, v84 offset:368
	ds_load_u8 v185, v84 offset:1536
	ds_load_u8 v186, v84 offset:1664
	ds_load_u8 v117, v84 offset:1648
	ds_load_u8 v193, v84 offset:1552
	ds_load_u8 v194, v84 offset:1680
	ds_load_u8 v195, v84 offset:1696
	ds_load_u8 v196, v84 offset:1712
	ds_load_u8 v197, v84 offset:1728
	ds_load_u8 v198, v84 offset:1744
	ds_load_u8 v199, v84 offset:1760
	ds_load_u8 v200, v84 offset:1568
	ds_load_u8 v209, v84 offset:1856
	ds_load_u8 v210, v84 offset:1872
	ds_load_u8 v211, v84 offset:1888
	ds_load_u8 v212, v84 offset:1952
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v173, v173, v175, 0xc0c0004
	ds_load_u8 v175, v84 offset:1040
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v177, v177, v178, 0xc0c0004
	ds_load_u8 v178, v84 offset:1168
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v84 offset:1184
	ds_load_u8 v201, v84 offset:1584
	ds_load_u8 v202, v84 offset:1600
	ds_load_u8 v203, v84 offset:1616
	ds_load_u8 v204, v84 offset:1632
	ds_load_u8 v205, v84 offset:1936
	ds_load_u8 v206, v84 offset:1808
	ds_load_u8 v207, v84 offset:1824
	ds_load_u8 v208, v84 offset:1840
	ds_load_u8 v115, v84 offset:1520
	ds_load_u8 v187, v84 offset:1920
	ds_load_u8 v188, v84 offset:1792
	ds_load_u8 v121, v84 offset:1776
	ds_load_u8 v118, v84 offset:1904
	ds_load_u8 v182, v84 offset:1024
	ds_load_u8 v184, v84 offset:1152
	ds_load_u8 v119, v84 offset:1136
	ds_load_u8 v181, v84 offset:1408
	ds_load_u8 v183, v84 offset:1280
	ds_load_u8 v122, v84 offset:1264
	ds_load_u8 v123, v84 offset:1392
	ds_load_u8 v129, v99
	ds_load_u8 v192, v100
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[14:15], v97 offset:2048
	ds_load_b64 v[12:13], v98 offset:2048
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(61)
	v_perm_b32 v169, v171, v169, 0xc0c0004
	ds_load_u8 v171, v84 offset:1056
	v_perm_b32 v174, v176, v174, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v193, v193, v194, 0xc0c0004
	v_perm_b32 v179, v179, v180, 0xc0c0004
	ds_load_u8 v180, v84 offset:1296
	ds_load_u8 v214, v84 offset:1504
	v_perm_b32 v185, v185, v186, 0xc0c0004
	ds_load_u8 v186, v84 offset:1424
	v_perm_b32 v170, v172, v170, 0xc0c0004
	ds_load_u8 v172, v84 offset:1440
	ds_load_u8 v194, v84 offset:1312
	ds_load_u8 v216, v84 offset:1344
	ds_load_u8 v176, v84 offset:1968
	v_perm_b32 v165, v165, v166, 0xc0c0004
	ds_load_u8 v166, v84 offset:1200
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v205, v206, v205, 0xc0c0004
	ds_load_u8 v206, v84 offset:1216
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v84 offset:1072
	v_perm_b32 v157, v157, v158, 0xc0c0004
	ds_load_u8 v158, v84 offset:1088
	v_perm_b32 v213, v162, v161, 0xc0c0004
	ds_load_u8 v161, v84 offset:1104
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v162, v84 offset:1456
	v_perm_b32 v164, v200, v195, 0xc0c0004
	ds_load_u8 v195, v84 offset:1328
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v200, v207, v212, 0xc0c0004
	ds_load_u8 v207, v84 offset:1120
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v168, v171, v168, 0xc0c0004
	ds_load_u8 v171, v84 offset:1472
	v_perm_b32 v187, v188, v187, 0xc0c0004
	ds_load_u8 v188, v84 offset:1984
	v_perm_b32 v182, v182, v184, 0xc0c0004
	ds_load_u8 v184, v84 offset:2000
	v_perm_b32 v181, v183, v181, 0xc0c0004
	ds_load_u8 v183, v84 offset:2016
	v_perm_b32 v175, v175, v178, 0xc0c0004
	ds_load_u8 v178, v84 offset:1232
	v_perm_b32 v217, v154, v153, 0xc0c0004
	ds_load_u8 v153, v84 offset:1360
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v180, v180, v186, 0xc0c0004
	ds_load_u8 v154, v84 offset:1376
	ds_load_u8 v186, v84 offset:1248
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v172, v194, v172, 0xc0c0004
	ds_load_u8 v194, v84 offset:1488
	v_perm_b32 v212, v151, v150, 0xc0c0004
	v_perm_b32 v215, v152, v149, 0xc0c0004
	v_perm_b32 v155, v156, v155, 0xc0c0004
	v_perm_b32 v156, v201, v196, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v176, v208, v176, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v160, v160, v166, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v166, v195, v162, 0xc0c0004
	v_perm_b32 v195, v144, v142, 0xc0c0004
	v_perm_b32 v196, v143, v141, 0xc0c0004
	v_perm_b32 v208, v146, v145, 0xc0c0004
	v_perm_b32 v218, v148, v147, 0xc0c0004
	v_perm_b32 v158, v158, v206, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v171, v216, v171, 0xc0c0004
	v_perm_b32 v206, v136, v134, 0xc0c0004
	v_perm_b32 v216, v135, v133, 0xc0c0004
	v_perm_b32 v219, v138, v137, 0xc0c0004
	v_perm_b32 v220, v140, v139, 0xc0c0004
	v_perm_b32 v197, v202, v197, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v209, v209, v188, 0xc0c0004
	v_perm_b32 v198, v203, v198, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v184, v210, v184, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v210, v161, v178, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v194, v153, v194, 0xc0c0004
	v_perm_b32 v221, v127, v125, 0xc0c0004
	v_perm_b32 v222, v126, v124, 0xc0c0004
	v_perm_b32 v223, v130, v128, 0xc0c0004
	v_perm_b32 v224, v132, v131, 0xc0c0004
	v_perm_b32 v199, v204, v199, 0xc0c0004
	v_perm_b32 v183, v211, v183, 0xc0c0004
	v_perm_b32 v214, v154, v214, 0xc0c0004
	v_perm_b32 v225, v112, v110, 0xc0c0004
	v_perm_b32 v129, v111, v129, 0xc0c0004
	v_perm_b32 v226, v114, v113, 0xc0c0004
	v_perm_b32 v116, v120, v116, 0xc0c0004
	v_perm_b32 v117, v117, v121, 0xc0c0004
	v_perm_b32 v118, v118, v192, 0xc0c0004
	v_perm_b32 v119, v119, v122, 0xc0c0004
	v_perm_b32 v115, v123, v115, 0xc0c0004
	v_lshl_or_b32 v154, v173, 16, v174
	v_lshl_or_b32 v153, v179, 16, v177
	v_lshl_or_b32 v162, v165, 16, v167
	v_lshl_or_b32 v161, v170, 16, v169
	v_lshl_or_b32 v188, v205, 16, v193
	v_lshl_or_b32 v170, v157, 16, v159
	v_lshl_or_b32 v169, v163, 16, v213
	v_lshl_or_b32 v178, v215, 16, v212
	v_lshl_or_b32 v177, v155, 16, v217
	v_lshl_or_b32 v193, v196, 16, v195
	v_lshl_or_b32 v192, v218, 16, v208
	v_lshl_or_b32 v205, v216, 16, v206
	v_lshl_or_b32 v204, v220, 16, v219
	v_perm_b32 v207, v207, v186, 0xc0c0004
	v_lshl_or_b32 v186, v187, 16, v185
	v_lshl_or_b32 v185, v181, 16, v182
	v_lshl_or_b32 v187, v180, 16, v175
	v_lshl_or_b32 v201, v200, 16, v164
	v_lshl_or_b32 v200, v172, 16, v168
	v_lshl_or_b32 v203, v176, 16, v156
	v_lshl_or_b32 v202, v166, 16, v160
	v_lshl_or_b32 v209, v209, 16, v197
	v_lshl_or_b32 v208, v171, 16, v158
	v_lshl_or_b32 v211, v184, 16, v198
	v_lshl_or_b32 v210, v194, 16, v210
	v_lshl_or_b32 v213, v222, 16, v221
	v_lshl_or_b32 v212, v224, 16, v223
	v_lshl_or_b32 v217, v183, 16, v199
	v_lshl_or_b32 v219, v129, 16, v225
	v_lshl_or_b32 v218, v116, 16, v226
	v_lshl_or_b32 v221, v118, 16, v117
	v_lshl_or_b32 v220, v115, 16, v119
	v_wmma_i32_16x16x16_iu4 v[115:122], v[153:154], v[14:15], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[161:162], v[14:15], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[161:168], v[169:170], v[14:15], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[169:176], v[177:178], v[14:15], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[177:184], v[192:193], v[14:15], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[204:205], v[14:15], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v216, v214, 16, v207
	v_wmma_i32_16x16x16_iu4 v[161:168], v[200:201], v[12:13], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[169:176], v[202:203], v[12:13], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[200:207], v[212:213], v[14:15], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[177:184], v[208:209], v[12:13], v[177:184] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[210:211], v[12:13], v[192:199] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[208:215], v[218:219], v[14:15], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[115:122], v[185:186], v[12:13], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[200:207], v[216:217], v[12:13], v[200:207] neg_lo:[1,1,0]
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v149, v102, s[36:39], 0 offen offset:28
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[208:215], v[220:221], v[12:13], v[208:215] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v186, v192
	v_cvt_f32_i32_e32 v123, v115
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v192, v195
	v_cvt_f32_i32_e32 v195, v198
	v_cvt_f32_i32_e32 v198, v201
	v_cvt_f32_i32_e32 v201, v204
	v_cvt_f32_i32_e32 v204, v207
	v_cvt_f32_i32_e32 v207, v210
	v_cvt_f32_i32_e32 v210, v213
	v_cvt_f32_i32_e32 v129, v116
	v_cvt_f32_i32_e32 v185, v117
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[153:160], v[187:188], v[12:13], v[153:160] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v187, v193
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v188, v194
	v_cvt_f32_i32_e32 v193, v196
	v_cvt_f32_i32_e32 v194, v197
	v_cvt_f32_i32_e32 v196, v199
	v_cvt_f32_i32_e32 v197, v200
	v_cvt_f32_i32_e32 v199, v202
	v_cvt_f32_i32_e32 v200, v203
	v_cvt_f32_i32_e32 v202, v205
	v_cvt_f32_i32_e32 v203, v206
	v_cvt_f32_i32_e32 v205, v208
	v_cvt_f32_i32_e32 v206, v209
	v_cvt_f32_i32_e32 v208, v211
	v_cvt_f32_i32_e32 v209, v212
	v_cvt_f32_i32_e32 v211, v214
	v_cvt_f32_i32_e32 v212, v215
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v181, v181
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v184, v184
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v95, 2, v95
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v105, 16, v105
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v103, 16, v103
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v213, 16, v106
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v108, s43, v94
	v_lshlrev_b32_e32 v106, 16, v107
	v_lshlrev_b32_e32 v104, 16, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v107, v123, v213 :: v_dual_add_nc_u32 v94, s44, v94
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v45, v107, v106 :: v_dual_mul_f32 v106, v129, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v109, s43, v92
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v92, s44, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v80, v106, v105
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v105, v185, v213
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v79, v105, v104
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v150, v102, s[36:39], 0 offen offset:32
	buffer_load_u16 v151, v102, s[36:39], 0 offen offset:36
	buffer_load_u16 v152, v102, s[36:39], 0 offen offset:40
	buffer_load_u16 v142, v102, s[36:39], 0 offen offset:44
	buffer_load_u16 v141, v102, s[36:39], 0 offen offset:48
	buffer_load_u16 v143, v102, s[36:39], 0 offen offset:52
	buffer_load_u16 v144, v102, s[36:39], 0 offen offset:56
	buffer_load_u16 v145, v102, s[36:39], 0 offen offset:60
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v104, v118, v213
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v146, v102, s[36:39], 0 offen offset:64
	buffer_load_u16 v147, v102, s[36:39], 0 offen offset:68
	buffer_load_u16 v148, v102, s[36:39], 0 offen offset:72
	buffer_load_u16 v134, v102, s[36:39], 0 offen offset:76
	buffer_load_u16 v133, v102, s[36:39], 0 offen offset:80
	buffer_load_u16 v135, v102, s[36:39], 0 offen offset:84
	buffer_load_u16 v136, v102, s[36:39], 0 offen offset:88
	buffer_load_u16 v137, v102, s[36:39], 0 offen offset:92
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v78, v104, v103
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v104, v119, v213
	v_mul_f32_e32 v228, v154, v213
	v_mul_f32_e32 v230, v156, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x1f
	buffer_load_u16 v138, v102, s[36:39], 0 offen offset:96
	buffer_load_u16 v139, v102, s[36:39], 0 offen offset:100
	buffer_load_u16 v140, v102, s[36:39], 0 offen offset:104
	buffer_load_u16 v125, v102, s[36:39], 0 offen offset:108
	buffer_load_u16 v124, v102, s[36:39], 0 offen offset:112
	buffer_load_u16 v126, v102, s[36:39], 0 offen offset:116
	buffer_load_u16 v127, v102, s[36:39], 0 offen offset:120
	buffer_load_u16 v131, v102, s[36:39], 0 offen offset:132
	buffer_load_u16 v132, v102, s[36:39], 0 offen offset:136
	buffer_load_u16 v110, v102, s[36:39], 0 offen offset:140
	buffer_load_u16 v111, v102, s[36:39], 0 offen offset:144
	buffer_load_u16 v112, v102, s[36:39], 0 offen offset:148
	buffer_load_u16 v113, v102, s[36:39], 0 offen offset:152
	buffer_load_u16 v114, v102, s[36:39], 0 offen offset:156
	buffer_load_u16 v128, v102, s[36:39], 0 offen offset:128
	buffer_load_u16 v130, v108, s[36:39], 0 offen
	buffer_load_u16 v108, v109, s[36:39], 0 offen
	buffer_load_u16 v109, v102, s[36:39], 0 offen offset:248
	buffer_load_u16 v12, v102, s[36:39], 0 offen offset:160
	buffer_load_u16 v13, v102, s[36:39], 0 offen offset:164
	buffer_load_u16 v14, v102, s[36:39], 0 offen offset:168
	buffer_load_u16 v15, v102, s[36:39], 0 offen offset:172
	buffer_load_u16 v115, v102, s[36:39], 0 offen offset:176
	buffer_load_u16 v116, v102, s[36:39], 0 offen offset:180
	buffer_load_u16 v117, v102, s[36:39], 0 offen offset:184
	buffer_load_u16 v214, v102, s[36:39], 0 offen offset:188
	buffer_load_u16 v215, v102, s[36:39], 0 offen offset:192
	buffer_load_u16 v216, v102, s[36:39], 0 offen offset:196
	buffer_load_u16 v217, v102, s[36:39], 0 offen offset:200
	buffer_load_u16 v218, v102, s[36:39], 0 offen offset:204
	buffer_load_u16 v219, v102, s[36:39], 0 offen offset:208
	buffer_load_u16 v220, v102, s[36:39], 0 offen offset:212
	buffer_load_u16 v221, v102, s[36:39], 0 offen offset:216
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v229, v155, v213
	v_mul_f32_e32 v232, v158, v213
	v_mul_f32_e32 v234, v160, v213
	v_mul_f32_e32 v105, v163, v213
	v_mul_f32_e32 v118, v166, v213
	v_mul_f32_e32 v158, v178, v213
	v_mul_f32_e32 v227, v153, v213
	v_mul_f32_e32 v231, v157, v213
	v_mul_f32_e32 v233, v159, v213
	v_mul_f32_e32 v106, v164, v213
	v_mul_f32_e32 v107, v165, v213
	v_mul_f32_e32 v119, v167, v213
	v_mul_f32_e32 v123, v171, v213
	v_mul_f32_e32 v129, v172, v213
	v_mul_f32_e32 v153, v173, v213
	v_mul_f32_e32 v154, v174, v213
	v_mul_f32_e32 v155, v175, v213
	v_mul_f32_e32 v156, v176, v213
	v_mul_f32_e32 v157, v177, v213
	v_mul_f32_e32 v159, v179, v213
	v_mul_f32_e32 v160, v180, v213
	v_mul_f32_e32 v163, v183, v213
	v_mul_f32_e32 v165, v186, v213
	v_mul_f32_e32 v167, v188, v213
	v_mul_f32_e32 v171, v195, v213
	v_mul_f32_e32 v173, v197, v213
	v_mul_f32_e32 v175, v199, v213
	v_mul_f32_e32 v177, v201, v213
	v_mul_f32_e32 v179, v203, v213
	v_mul_f32_e32 v183, v207, v213
	v_mul_f32_e32 v185, v209, v213
	v_mul_f32_e32 v226, v122, v213
	v_mul_f32_e32 v122, v170, v213
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v150, 16, v150
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v151, 16, v151
	v_lshlrev_b32_e32 v103, 16, v189
	s_clause 0x1
	buffer_load_u16 v189, v102, s[36:39], 0 offen offset:220
	buffer_load_u16 v222, v102, s[36:39], 0 offen offset:224
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v152, 16, v152
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v166, v187, v213
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v72, v228, v151
	v_fmac_f32_e32 v77, v104, v103
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v104, v120, v213 :: v_dual_lshlrev_b32 v103, 16, v190
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v190, v102, s[36:39], 0 offen offset:228
	buffer_load_u16 v223, v102, s[36:39], 0 offen offset:232
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(43)
	v_dual_mul_f32 v120, v168, v213 :: v_dual_lshlrev_b32 v147, 16, v147
	v_dual_mul_f32 v168, v192, v213 :: v_dual_fmac_f32 v73, v227, v150
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v76, v104, v103
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v103, 16, v191
	s_clause 0x2
	buffer_load_u16 v191, v102, s[36:39], 0 offen offset:236
	buffer_load_u16 v224, v102, s[36:39], 0 offen offset:240
	buffer_load_u16 v225, v102, s[36:39], 0 offen offset:244
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v102, 0x80000000, v96, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(42)
	v_dual_mul_f32 v104, v121, v213 :: v_dual_lshlrev_b32 v135, 16, v135
	v_dual_mul_f32 v121, v169, v213 :: v_dual_lshlrev_b32 v146, 16, v146
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b32 v102, v102, s[28:31], 0 offen
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v75, v104, v103
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v103, v161, v213
	v_mul_f32_e32 v104, v162, v213
	s_waitcnt vmcnt(35)
	v_dual_mul_f32 v161, v181, v213 :: v_dual_lshlrev_b32 v126, 16, v126
	s_waitcnt vmcnt(33)
	v_dual_mul_f32 v162, v182, v213 :: v_dual_lshlrev_b32 v131, 16, v131
	s_waitcnt vmcnt(30)
	v_dual_mul_f32 v164, v184, v213 :: v_dual_lshlrev_b32 v111, 16, v111
	v_dual_mul_f32 v169, v193, v213 :: v_dual_lshlrev_b32 v110, 16, v110
	v_dual_mul_f32 v172, v196, v213 :: v_dual_fmac_f32 v65, v103, v146
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v181, v205, v213 :: v_dual_lshlrev_b32 v192, 16, v214
	v_dual_mul_f32 v187, v211, v213 :: v_dual_add_nc_u32 v96, s45, v96
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v142, 16, v142
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v64, v104, v147 :: v_dual_lshlrev_b32 v141, 16, v141
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v143, 16, v143
	v_lshlrev_b32_e32 v149, 16, v149
	v_lshlrev_b32_e32 v144, 16, v144
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v170, v194, v213
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v148, 16, v148
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v174, v198, v213
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v134, 16, v134
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v176, v200, v213
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v138, 16, v138
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v178, v202, v213 :: v_dual_lshlrev_b32 v139, 16, v139
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v62, v106, v134 :: v_dual_lshlrev_b32 v145, 16, v145
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v137, 16, v137
	v_lshlrev_b32_e32 v140, 16, v140
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v180, v204, v213
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v124, 16, v124
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v182, v206, v213 :: v_dual_lshlrev_b32 v127, 16, v127
	v_mul_f32_e32 v184, v208, v213
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v60, v118, v135 :: v_dual_lshlrev_b32 v133, 16, v133
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v130, 16, v130
	v_lshlrev_b32_e32 v128, 16, v128
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v186, v210, v213
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v132, 16, v132
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v188, v212, v213
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v112, 16, v112
	v_lshlrev_b32_e32 v114, 16, v114
	v_lshlrev_b32_e32 v12, 16, v12
	v_lshlrev_b32_e32 v14, 16, v14
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v52, v154, v126 :: v_dual_lshlrev_b32 v125, 16, v125
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v115, 16, v115
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v50, v156, v130 :: v_dual_lshlrev_b32 v113, 16, v113
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v116, 16, v116
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v193, 16, v215
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v48, v158, v131 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v194, 16, v216
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v44, v161, v111 :: v_dual_lshlrev_b32 v195, 16, v217
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v196, 16, v218
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v197, 16, v219
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v46, v160, v110 :: v_dual_lshlrev_b32 v117, 16, v117
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v198, 16, v220
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v40, v165, v12 :: v_dual_lshlrev_b32 v199, 16, v221
	v_dual_fmac_f32 v30, v175, v195 :: v_dual_lshlrev_b32 v109, 16, v109
	v_fmac_f32_e32 v71, v229, v152
	v_dual_fmac_f32 v39, v166, v13 :: v_dual_lshlrev_b32 v108, 16, v108
	v_dual_fmac_f32 v70, v230, v142 :: v_dual_add_nc_u32 v93, s44, v93
	v_fmac_f32_e32 v68, v232, v143
	v_dual_fmac_f32 v74, v226, v149 :: v_dual_fmac_f32 v37, v168, v15
	v_dual_fmac_f32 v67, v233, v144 :: v_dual_fmac_f32 v66, v234, v145
	v_fmac_f32_e32 v33, v172, v192
	v_fmac_f32_e32 v63, v105, v148
	v_fmac_f32_e32 v59, v119, v136
	v_dual_fmac_f32 v57, v121, v138 :: v_dual_fmac_f32 v56, v122, v139
	v_dual_fmac_f32 v55, v123, v140 :: v_dual_fmac_f32 v54, v129, v125
	v_fmac_f32_e32 v35, v170, v116
	v_fmac_f32_e32 v53, v153, v124
	v_fmac_f32_e32 v51, v155, v127
	v_fmac_f32_e32 v49, v157, v128
	v_fmac_f32_e32 v47, v159, v132
	v_dual_fmac_f32 v42, v163, v113 :: v_dual_fmac_f32 v31, v174, v194
	v_dual_fmac_f32 v34, v171, v117 :: v_dual_fmac_f32 v29, v176, v196
	v_dual_fmac_f32 v32, v173, v193 :: v_dual_fmac_f32 v27, v178, v198
	v_fmac_f32_e32 v18, v187, v109
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v38, v167, v14
	v_fmac_f32_e32 v69, v231, v141
	v_dual_fmac_f32 v61, v107, v133 :: v_dual_fmac_f32 v36, v169, v115
	v_fmac_f32_e32 v17, v188, v108
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_store_b8 v90, v101 offset:2048
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v89, v102
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v189, 16, v189
	v_lshlrev_b32_e32 v200, 16, v222
	v_lshlrev_b32_e32 v190, 16, v190
	v_lshlrev_b32_e32 v201, 16, v223
	v_lshlrev_b32_e32 v191, 16, v191
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v41, v164, v114 :: v_dual_lshlrev_b32 v202, 16, v224
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v203, 16, v225
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v58, v120, v137 :: v_dual_fmac_f32 v43, v162, v112
	v_dual_fmac_f32 v28, v177, v197 :: v_dual_fmac_f32 v23, v182, v190
	v_dual_fmac_f32 v26, v179, v199 :: v_dual_fmac_f32 v25, v180, v189
	v_dual_fmac_f32 v24, v181, v200 :: v_dual_fmac_f32 v21, v184, v191
	v_dual_fmac_f32 v22, v183, v201 :: v_dual_fmac_f32 v19, v186, v203
	v_fmac_f32_e32 v20, v185, v202
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow353
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v4, 0x1e0, v0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v140, 0
	v_mov_b32_e32 v139, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	ds_load_u8 v2, v84 offset:640
	ds_load_u8 v3, v84 offset:512
	ds_load_u8 v5, v84 offset:896
	ds_load_u8 v6, v84 offset:768
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s4, 0
	v_add_nc_u32_e32 v149, 0, v85
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v140, s11 :: v_dual_and_b32 v1, 0x70, v88
	v_dual_mov_b32 v138, s9 :: v_dual_add_nc_u32 v15, 0, v87
	v_mov_b32_e32 v139, s10
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_or_b32 v1, 0x88, v86, v1
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v137, s8 :: v_dual_mov_b32 v136, s7
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v3, v3, v2, 0xc0c0004
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v7, v1, 8, 0
	v_add_nc_u32_e32 v8, 0, v1
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v86, v6, v5, 0xc0c0004
	ds_load_u8 v87, v84 offset:128
	ds_load_u8 v88, v84
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[1:2], v7 offset:2048
	ds_load_b64 v[5:6], v8 offset:2048
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v135, s6 :: v_dual_mov_b32 v134, s5
	v_mov_b32_e32 v133, s4
	v_lshl_or_b32 v8, v86, 16, v3
	ds_load_u8 v3, v84 offset:384
	ds_load_u8 v7, v84 offset:256
	ds_load_u8 v96, v84 offset:144
	ds_load_u8 v103, v84 offset:160
	ds_load_u8 v121, v84 offset:176
	ds_load_u8 v122, v84 offset:192
	ds_load_u8 v123, v84 offset:208
	ds_load_u8 v129, v84 offset:224
	ds_load_u8 v154, v84 offset:240
	ds_load_u8 v97, v84 offset:16
	ds_load_u8 v104, v84 offset:32
	ds_load_u8 v124, v84 offset:48
	ds_load_u8 v130, v84 offset:64
	ds_load_u8 v131, v84 offset:80
	ds_load_u8 v132, v84 offset:96
	ds_load_u8 v155, v84 offset:112
	ds_load_u8 v11, v84 offset:656
	ds_load_u8 v13, v84 offset:672
	ds_load_u8 v109, v84 offset:688
	ds_load_u8 v110, v84 offset:704
	ds_load_u8 v117, v84 offset:720
	ds_load_u8 v125, v84 offset:736
	ds_load_u8 v151, v84 offset:752
	ds_load_u8 v12, v84 offset:528
	ds_load_u8 v14, v84 offset:544
	ds_load_u8 v111, v84 offset:560
	ds_load_u8 v112, v84 offset:576
	ds_load_u8 v118, v84 offset:592
	ds_load_u8 v126, v84 offset:608
	ds_load_u8 v152, v84 offset:624
	ds_load_u8 v93, v84 offset:1024
	ds_load_u8 v94, v84 offset:912
	ds_load_u8 v101, v84 offset:928
	ds_load_u8 v113, v84 offset:944
	ds_load_u8 v114, v84 offset:960
	ds_load_u8 v119, v84 offset:976
	ds_load_u8 v127, v84 offset:992
	ds_load_u8 v95, v84 offset:784
	ds_load_u8 v102, v84 offset:800
	ds_load_u8 v115, v84 offset:816
	ds_load_u8 v116, v84 offset:832
	ds_load_u8 v120, v84 offset:848
	ds_load_u8 v128, v84 offset:864
	ds_load_u8 v153, v84 offset:880
	ds_load_u8 v98, v84 offset:400
	ds_load_u8 v105, v84 offset:416
	ds_load_u8 v141, v84 offset:432
	ds_load_u8 v142, v84 offset:448
	ds_load_u8 v143, v84 offset:464
	ds_load_u8 v144, v84 offset:480
	ds_load_u8 v156, v84 offset:496
	ds_load_u8 v99, v84 offset:272
	ds_load_u8 v106, v84 offset:288
	ds_load_u8 v145, v84 offset:304
	ds_load_u8 v146, v84 offset:320
	ds_load_u8 v147, v84 offset:336
	ds_load_u8 v148, v84 offset:352
	ds_load_u8 v157, v84 offset:368
	ds_load_u8 v184, v84 offset:1040
	ds_load_u8 v185, v84 offset:1056
	ds_load_u8 v186, v84 offset:1072
	ds_load_u8 v187, v84 offset:1088
	ds_load_u8 v188, v84 offset:1104
	ds_load_u8 v189, v84 offset:1120
	ds_load_u8 v190, v84 offset:1136
	ds_load_u8 v191, v84 offset:1936
	ds_load_u8 v192, v84 offset:1168
	ds_load_u8 v193, v84 offset:1184
	ds_load_u8 v194, v84 offset:1200
	ds_load_u8 v195, v84 offset:1216
	ds_load_u8 v196, v84 offset:1232
	ds_load_u8 v197, v84 offset:1248
	ds_load_u8 v198, v84 offset:1264
	ds_load_u8 v199, v84 offset:1296
	ds_load_u8 v200, v84 offset:1312
	ds_load_u8 v201, v84 offset:1328
	ds_load_u8 v202, v84 offset:1344
	ds_load_u8 v203, v84 offset:1360
	ds_load_u8 v204, v84 offset:1376
	ds_load_u8 v205, v84 offset:1392
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v3, v7, v3, 0xc0c0004
	v_perm_b32 v86, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v12, v95, v94, 0xc0c0004
	v_perm_b32 v94, v97, v96, 0xc0c0004
	v_lshl_or_b32 v7, v3, 16, v86
	ds_load_u8 v3, v84 offset:1664
	ds_load_u8 v100, v84 offset:1536
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v95, v99, v98, 0xc0c0004
	v_perm_b32 v13, v14, v13, 0xc0c0004
	v_perm_b32 v14, v102, v101, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[85:92], v[7:8], v[5:6], v[133:140] neg_lo:[1,1,0]
	ds_load_u8 v7, v84 offset:1920
	ds_load_u8 v8, v84 offset:1792
	ds_load_u8 v107, v84 offset:1424
	ds_load_u8 v108, v84 offset:1440
	ds_load_u8 v150, v84 offset:1456
	ds_load_u8 v158, v84 offset:1472
	ds_load_u8 v159, v84 offset:1488
	ds_load_u8 v160, v84 offset:1504
	ds_load_u8 v161, v84 offset:1520
	ds_load_u8 v162, v84 offset:1552
	ds_load_u8 v163, v84 offset:1568
	ds_load_u8 v164, v84 offset:1584
	ds_load_u8 v165, v84 offset:1600
	ds_load_u8 v166, v84 offset:1616
	ds_load_u8 v167, v84 offset:1632
	ds_load_u8 v168, v84 offset:1648
	v_perm_b32 v101, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(45)
	v_perm_b32 v102, v106, v105, 0xc0c0004
	v_lshl_or_b32 v14, v14, 16, v13
	v_perm_b32 v122, v130, v122, 0xc0c0004
	v_perm_b32 v131, v131, v123, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v183, v8, v7, 0xc0c0004
	ds_load_u8 v7, v84 offset:1408
	ds_load_u8 v8, v84 offset:1280
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v103, v199, v107, 0xc0c0004
	v_lshl_or_b32 v13, v102, 16, v101
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v130, v202, v158, 0xc0c0004
	v_perm_b32 v143, v147, v143, 0xc0c0004
	v_perm_b32 v125, v126, v125, 0xc0c0004
	v_perm_b32 v126, v128, v127, 0xc0c0004
	v_perm_b32 v3, v100, v3, 0xc0c0004
	ds_load_u8 v100, v84 offset:1152
	ds_load_u8 v169, v84 offset:1680
	ds_load_u8 v170, v84 offset:1696
	ds_load_u8 v171, v84 offset:1712
	ds_load_u8 v172, v84 offset:1728
	ds_load_u8 v173, v84 offset:1744
	ds_load_u8 v174, v84 offset:1760
	ds_load_u8 v175, v84 offset:1776
	ds_load_u8 v176, v84 offset:1808
	ds_load_u8 v177, v84 offset:1824
	ds_load_u8 v178, v84 offset:1840
	ds_load_u8 v179, v84 offset:1856
	ds_load_u8 v180, v84 offset:1872
	ds_load_u8 v181, v84 offset:1888
	ds_load_u8 v182, v84 offset:1904
	v_perm_b32 v127, v132, v129, 0xc0c0004
	v_perm_b32 v128, v148, v144, 0xc0c0004
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v93, v93, v100, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v163, v163, v170, 0xc0c0004
	v_perm_b32 v170, v185, v193, 0xc0c0004
	v_perm_b32 v96, v8, v7, 0xc0c0004
	v_lshl_or_b32 v8, v12, 16, v11
	v_lshl_or_b32 v12, v183, 16, v3
	ds_load_u8 v3, v84 offset:1952
	v_lshl_or_b32 v7, v95, 16, v94
	v_lshl_or_b32 v11, v96, 16, v93
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v15, v182, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[93:100], v[7:8], v[5:6], v[133:140] neg_lo:[1,1,0]
	v_perm_b32 v7, v162, v169, 0xc0c0004
	ds_load_u8 v162, v84 offset:1968
	ds_load_u8 v169, v84 offset:1984
	ds_load_u8 v183, v84 offset:2000
	ds_load_u8 v84, v84 offset:2016
	v_perm_b32 v8, v176, v191, 0xc0c0004
	v_perm_b32 v176, v200, v108, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[85:92], v[11:12], v[1:2], v[85:92] neg_lo:[1,1,0]
	v_perm_b32 v12, v186, v194, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v8, v8, 16, v7
	v_perm_b32 v7, v184, v192, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v3, v177, v3, 0xc0c0004
	v_lshl_or_b32 v7, v103, 16, v7
	v_wmma_i32_16x16x16_iu4 v[101:108], v[13:14], v[5:6], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v13, v176, 16, v170
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v14, v3, 16, v163
	v_perm_b32 v3, v111, v109, 0xc0c0004
	v_perm_b32 v109, v115, v113, 0xc0c0004
	v_perm_b32 v111, v124, v121, 0xc0c0004
	v_perm_b32 v113, v145, v141, 0xc0c0004
	ds_load_u8 v163, v149
	v_wmma_i32_16x16x16_iu4 v[93:100], v[7:8], v[1:2], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[13:14], v[1:2], v[101:108] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v109, 16, v3
	v_lshl_or_b32 v7, v113, 16, v111
	v_perm_b32 v3, v164, v171, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v11, v178, v162, 0xc0c0004
	v_perm_b32 v13, v201, v150, 0xc0c0004
	v_perm_b32 v14, v112, v110, 0xc0c0004
	v_perm_b32 v121, v116, v114, 0xc0c0004
	v_perm_b32 v124, v146, v142, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[109:116], v[7:8], v[5:6], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v11, 16, v3
	v_lshl_or_b32 v7, v13, 16, v12
	v_lshl_or_b32 v12, v121, 16, v14
	v_lshl_or_b32 v11, v124, 16, v122
	v_perm_b32 v3, v165, v172, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v13, v179, v169, 0xc0c0004
	v_perm_b32 v14, v187, v195, 0xc0c0004
	v_perm_b32 v141, v118, v117, 0xc0c0004
	v_perm_b32 v142, v120, v119, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[117:124], v[11:12], v[5:6], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v12, v13, 16, v3
	v_lshl_or_b32 v11, v130, 16, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v14, v142, 16, v141
	v_lshl_or_b32 v13, v143, 16, v131
	v_perm_b32 v3, v166, v173, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v141, v180, v183, 0xc0c0004
	v_perm_b32 v142, v188, v196, 0xc0c0004
	v_perm_b32 v143, v203, v159, 0xc0c0004
	v_lshl_or_b32 v150, v126, 16, v125
	v_lshl_or_b32 v149, v128, 16, v127
	v_wmma_i32_16x16x16_iu4 v[125:132], v[13:14], v[5:6], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v14, v141, 16, v3
	v_lshl_or_b32 v13, v143, 16, v142
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[141:148], v[149:150], v[5:6], v[133:140] neg_lo:[1,1,0]
	v_perm_b32 v149, v155, v154, 0xc0c0004
	v_perm_b32 v150, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v163, 0xc0c0004
	v_perm_b32 v3, v167, v174, 0xc0c0004
	v_perm_b32 v84, v181, v84, 0xc0c0004
	v_perm_b32 v153, v189, v197, 0xc0c0004
	v_perm_b32 v154, v204, v160, 0xc0c0004
	v_lshl_or_b32 v149, v150, 16, v149
	v_lshl_or_b32 v150, v152, 16, v151
	v_perm_b32 v155, v190, v198, 0xc0c0004
	v_perm_b32 v156, v205, v161, 0xc0c0004
	v_perm_b32 v157, v168, v175, 0xc0c0004
	v_lshl_or_b32 v152, v84, 16, v3
	v_lshl_or_b32 v151, v154, 16, v153
	v_wmma_i32_16x16x16_iu4 v[133:140], v[149:150], v[5:6], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v5, v156, 16, v155
	v_lshl_or_b32 v6, v15, 16, v157
	v_wmma_i32_16x16x16_iu4 v[109:116], v[7:8], v[1:2], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[117:124], v[11:12], v[1:2], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[125:132], v[13:14], v[1:2], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[151:152], v[1:2], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[5:6], v[1:2], v[133:140] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v1, v85
	v_cvt_f32_i32_e32 v2, v86
	v_cvt_f32_i32_e32 v3, v87
	v_cvt_f32_i32_e32 v5, v88
	v_cvt_f32_i32_e32 v6, v89
	v_cvt_f32_i32_e32 v7, v90
	v_cvt_f32_i32_e32 v8, v91
	v_cvt_f32_i32_e32 v11, v92
	v_cvt_f32_i32_e32 v12, v93
	v_cvt_f32_i32_e32 v13, v94
	v_cvt_f32_i32_e32 v14, v95
	v_cvt_f32_i32_e32 v15, v96
	v_cvt_f32_i32_e32 v89, v97
	v_cvt_f32_i32_e32 v90, v98
	v_cvt_f32_i32_e32 v91, v99
	v_cvt_f32_i32_e32 v92, v100
	v_cvt_f32_i32_e32 v93, v101
	v_cvt_f32_i32_e32 v94, v102
	v_cvt_f32_i32_e32 v95, v103
	v_cvt_f32_i32_e32 v96, v104
	v_cvt_f32_i32_e32 v97, v105
	v_cvt_f32_i32_e32 v98, v106
	v_cvt_f32_i32_e32 v99, v107
	v_cvt_f32_i32_e32 v100, v108
	v_cvt_f32_i32_e32 v101, v109
	v_cvt_f32_i32_e32 v102, v110
	v_cvt_f32_i32_e32 v103, v111
	v_cvt_f32_i32_e32 v104, v112
	v_cvt_f32_i32_e32 v105, v113
	v_cvt_f32_i32_e32 v106, v114
	v_cvt_f32_i32_e32 v107, v115
	v_cvt_f32_i32_e32 v108, v116
	v_cvt_f32_i32_e32 v109, v117
	v_cvt_f32_i32_e32 v110, v118
	v_cvt_f32_i32_e32 v111, v119
	v_cvt_f32_i32_e32 v112, v120
	v_cvt_f32_i32_e32 v113, v121
	v_cvt_f32_i32_e32 v114, v122
	v_cvt_f32_i32_e32 v115, v123
	v_cvt_f32_i32_e32 v116, v124
	v_cvt_f32_i32_e32 v117, v125
	v_cvt_f32_i32_e32 v118, v126
	v_cvt_f32_i32_e32 v119, v127
	v_cvt_f32_i32_e32 v120, v128
	v_cvt_f32_i32_e32 v121, v129
	v_cvt_f32_i32_e32 v122, v130
	v_cvt_f32_i32_e32 v123, v131
	v_cvt_f32_i32_e32 v124, v132
	v_cvt_f32_i32_e32 v125, v141
	v_cvt_f32_i32_e32 v126, v142
	v_cvt_f32_i32_e32 v127, v143
	v_cvt_f32_i32_e32 v128, v144
	v_cvt_f32_i32_e32 v129, v145
	v_cvt_f32_i32_e32 v130, v146
	v_cvt_f32_i32_e32 v131, v147
	v_cvt_f32_i32_e32 v132, v148
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
.LBB0_5:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v84, s26, v9
	s_mul_i32 s0, s34, s26
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s14, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s13, s13, 0xffff
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s1, s35
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s1, s0, s1
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 178 18 is_stmt 0              ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v84, s1, v84, 1
	.loc	1 179 26 is_stmt 1              ; generate_amdgcn.py:179:26
	s_add_i32 s0, s33, s3
	.loc	1 179 18 is_stmt 0              ; generate_amdgcn.py:179:18
	s_and_b32 s25, s25, 0xffff
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v83, s0, v83, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_mov_b32 s26, s14
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v84, 0x80000000, v84, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_mov_b32 s27, s15
	v_add_lshl_u32 v82, s0, v82, 1
	v_cndmask_b32_e64 v87, 0x80000000, v83, s2
	v_add_lshl_u32 v81, s0, v81, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v84, v84, s[12:15], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshl_or_b32 v9, v9, 9, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v82, 0x80000000, v82, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v198, 7, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s0, s34, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s0, s0, s33
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v84, 16, v84
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v85, 4, v83
	v_add_nc_u32_e32 v86, 8, v83
	v_add_nc_u32_e32 v88, 12, v83
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v6, v6, v84 :: v_dual_add_nc_u32 v141, 16, v83
	v_dual_mul_f32 v5, v5, v84 :: v_dual_add_nc_u32 v142, 20, v83
	v_dual_mul_f32 v8, v8, v84 :: v_dual_add_nc_u32 v143, 24, v83
	v_dual_mul_f32 v7, v7, v84 :: v_dual_add_nc_u32 v144, 28, v83
	v_dual_mul_f32 v12, v12, v84 :: v_dual_add_nc_u32 v145, 32, v83
	v_dual_mul_f32 v11, v11, v84 :: v_dual_add_nc_u32 v146, 36, v83
	v_dual_mul_f32 v14, v14, v84 :: v_dual_add_nc_u32 v147, 40, v83
	v_mul_f32_e32 v2, v2, v84
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v85, 0x80000000, v85, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v13, v13, v84 :: v_dual_add_nc_u32 v148, 44, v83
	v_mul_f32_e32 v1, v1, v84
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v86, 0x80000000, v86, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v90, v90, v84 :: v_dual_add_nc_u32 v149, 48, v83
	v_dual_mul_f32 v15, v15, v84 :: v_dual_add_nc_u32 v150, 52, v83
	v_dual_mul_f32 v92, v92, v84 :: v_dual_add_nc_u32 v151, 56, v83
	v_dual_mul_f32 v89, v89, v84 :: v_dual_add_nc_u32 v152, 60, v83
	v_mul_f32_e32 v3, v3, v84
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	s_clause 0x7
	buffer_load_u16 v87, v87, s[24:27], 0 offen
	buffer_load_u16 v85, v85, s[24:27], 0 offen
	buffer_load_u16 v86, v86, s[24:27], 0 offen
	buffer_load_u16 v88, v88, s[24:27], 0 offen
	buffer_load_u16 v141, v141, s[24:27], 0 offen
	buffer_load_u16 v142, v142, s[24:27], 0 offen
	buffer_load_u16 v143, v143, s[24:27], 0 offen
	buffer_load_u16 v144, v144, s[24:27], 0 offen
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	v_cndmask_b32_e64 v149, 0x80000000, v149, s2
	v_cndmask_b32_e64 v150, 0x80000000, v150, s2
	v_cndmask_b32_e64 v151, 0x80000000, v151, s2
	v_cndmask_b32_e64 v152, 0x80000000, v152, s2
	s_clause 0x7
	buffer_load_u16 v145, v145, s[24:27], 0 offen
	buffer_load_u16 v146, v146, s[24:27], 0 offen
	buffer_load_u16 v147, v147, s[24:27], 0 offen
	buffer_load_u16 v148, v148, s[24:27], 0 offen
	buffer_load_u16 v149, v149, s[24:27], 0 offen
	buffer_load_u16 v150, v150, s[24:27], 0 offen
	buffer_load_u16 v151, v151, s[24:27], 0 offen
	buffer_load_u16 v152, v152, s[24:27], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v105, v105, v84 :: v_dual_add_nc_u32 v168, 0x80, v83
	v_dual_mul_f32 v110, v110, v84 :: v_dual_add_nc_u32 v169, 0x84, v83
	v_dual_mul_f32 v121, v121, v84 :: v_dual_add_nc_u32 v184, 0xc0, v83
	v_dual_mul_f32 v94, v94, v84 :: v_dual_add_nc_u32 v153, 64, v83
	v_dual_mul_f32 v102, v102, v84 :: v_dual_add_nc_u32 v161, 0x60, v83
	v_dual_mul_f32 v107, v107, v84 :: v_dual_add_nc_u32 v170, 0x88, v83
	v_dual_mul_f32 v126, v126, v84 :: v_dual_add_nc_u32 v185, 0xc4, v83
	v_dual_mul_f32 v91, v91, v84 :: v_dual_add_nc_u32 v154, 0x44, v83
	v_dual_mul_f32 v99, v99, v84 :: v_dual_add_nc_u32 v162, 0x64, v83
	v_dual_mul_f32 v112, v112, v84 :: v_dual_add_nc_u32 v171, 0x8c, v83
	v_dual_mul_f32 v113, v113, v84 :: v_dual_add_nc_u32 v176, 0xa0, v83
	v_dual_mul_f32 v123, v123, v84 :: v_dual_add_nc_u32 v186, 0xc8, v83
	v_dual_mul_f32 v96, v96, v84 :: v_dual_add_nc_u32 v155, 0x48, v83
	v_dual_mul_f32 v104, v104, v84 :: v_dual_add_nc_u32 v163, 0x68, v83
	v_dual_mul_f32 v109, v109, v84 :: v_dual_add_nc_u32 v172, 0x90, v83
	v_dual_mul_f32 v114, v114, v84 :: v_dual_add_nc_u32 v173, 0x94, v83
	v_dual_mul_f32 v111, v111, v84 :: v_dual_add_nc_u32 v174, 0x98, v83
	v_dual_mul_f32 v116, v116, v84 :: v_dual_add_nc_u32 v175, 0x9c, v83
	v_dual_mul_f32 v118, v118, v84 :: v_dual_add_nc_u32 v177, 0xa4, v83
	v_dual_mul_f32 v128, v128, v84 :: v_dual_add_nc_u32 v187, 0xcc, v83
	v_dual_mul_f32 v129, v129, v84 :: v_dual_add_nc_u32 v192, 0xe0, v83
	v_dual_mul_f32 v93, v93, v84 :: v_dual_add_nc_u32 v156, 0x4c, v83
	v_dual_mul_f32 v101, v101, v84 :: v_dual_add_nc_u32 v164, 0x6c, v83
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v168, 0x80000000, v168, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v115, v115, v84 :: v_dual_add_nc_u32 v178, 0xa8, v83
	v_dual_mul_f32 v125, v125, v84 :: v_dual_add_nc_u32 v188, 0xd0, v83
	v_dual_mul_f32 v130, v130, v84 :: v_dual_add_nc_u32 v189, 0xd4, v83
	v_dual_mul_f32 v127, v127, v84 :: v_dual_add_nc_u32 v190, 0xd8, v83
	v_dual_mul_f32 v132, v132, v84 :: v_dual_add_nc_u32 v191, 0xdc, v83
	v_dual_mul_f32 v134, v134, v84 :: v_dual_add_nc_u32 v193, 0xe4, v83
	v_dual_mul_f32 v98, v98, v84 :: v_dual_add_nc_u32 v157, 0x50, v83
	v_dual_mul_f32 v95, v95, v84 :: v_dual_add_nc_u32 v158, 0x54, v83
	v_dual_mul_f32 v100, v100, v84 :: v_dual_add_nc_u32 v159, 0x58, v83
	v_dual_mul_f32 v97, v97, v84 :: v_dual_add_nc_u32 v160, 0x5c, v83
	v_dual_mul_f32 v106, v106, v84 :: v_dual_add_nc_u32 v165, 0x70, v83
	v_dual_mul_f32 v103, v103, v84 :: v_dual_add_nc_u32 v166, 0x74, v83
	v_dual_mul_f32 v108, v108, v84 :: v_dual_add_nc_u32 v167, 0x78, v83
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v120, v120, v84 :: v_dual_add_nc_u32 v179, 0xac, v83
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v184, 0x80000000, v184, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v131, v131, v84 :: v_dual_add_nc_u32 v194, 0xe8, v83
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v117, v117, v84 :: v_dual_add_nc_u32 v180, 0xb0, v83
	v_dual_mul_f32 v122, v122, v84 :: v_dual_add_nc_u32 v181, 0xb4, v83
	v_dual_mul_f32 v119, v119, v84 :: v_dual_add_nc_u32 v182, 0xb8, v83
	v_dual_mul_f32 v124, v124, v84 :: v_dual_add_nc_u32 v183, 0xbc, v83
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v185, 0x80000000, v185, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v136, v136, v84 :: v_dual_add_nc_u32 v195, 0xec, v83
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v154, 0x80000000, v154, s2
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	v_cndmask_b32_e64 v171, 0x80000000, v171, s2
	v_cndmask_b32_e64 v176, 0x80000000, v176, s2
	v_cndmask_b32_e64 v186, 0x80000000, v186, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v133, v133, v84 :: v_dual_add_nc_u32 v196, 0xf0, v83
	v_dual_mul_f32 v138, v138, v84 :: v_dual_add_nc_u32 v197, 0xf4, v83
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v83, 0xf8, v83
	v_cndmask_b32_e64 v155, 0x80000000, v155, s2
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	v_cndmask_b32_e64 v172, 0x80000000, v172, s2
	v_cndmask_b32_e64 v173, 0x80000000, v173, s2
	v_cndmask_b32_e64 v174, 0x80000000, v174, s2
	v_cndmask_b32_e64 v175, 0x80000000, v175, s2
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	v_cndmask_b32_e64 v187, 0x80000000, v187, s2
	v_cndmask_b32_e64 v192, 0x80000000, v192, s2
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	v_cndmask_b32_e64 v164, 0x80000000, v164, s2
	s_clause 0x7
	buffer_load_u16 v168, v168, s[24:27], 0 offen
	buffer_load_u16 v169, v169, s[24:27], 0 offen
	buffer_load_u16 v170, v170, s[24:27], 0 offen
	buffer_load_u16 v171, v171, s[24:27], 0 offen
	buffer_load_u16 v172, v172, s[24:27], 0 offen
	buffer_load_u16 v173, v173, s[24:27], 0 offen
	buffer_load_u16 v174, v174, s[24:27], 0 offen
	buffer_load_u16 v175, v175, s[24:27], 0 offen
	v_cndmask_b32_e64 v178, 0x80000000, v178, s2
	v_cndmask_b32_e64 v188, 0x80000000, v188, s2
	v_cndmask_b32_e64 v189, 0x80000000, v189, s2
	v_cndmask_b32_e64 v190, 0x80000000, v190, s2
	v_cndmask_b32_e64 v191, 0x80000000, v191, s2
	v_cndmask_b32_e64 v193, 0x80000000, v193, s2
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	v_cndmask_b32_e64 v158, 0x80000000, v158, s2
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	v_cndmask_b32_e64 v165, 0x80000000, v165, s2
	v_cndmask_b32_e64 v166, 0x80000000, v166, s2
	v_cndmask_b32_e64 v167, 0x80000000, v167, s2
	v_cndmask_b32_e64 v179, 0x80000000, v179, s2
	s_clause 0x7
	buffer_load_u16 v184, v184, s[24:27], 0 offen
	buffer_load_u16 v185, v185, s[24:27], 0 offen
	buffer_load_u16 v186, v186, s[24:27], 0 offen
	buffer_load_u16 v187, v187, s[24:27], 0 offen
	buffer_load_u16 v188, v188, s[24:27], 0 offen
	buffer_load_u16 v189, v189, s[24:27], 0 offen
	buffer_load_u16 v190, v190, s[24:27], 0 offen
	buffer_load_u16 v191, v191, s[24:27], 0 offen
	v_cndmask_b32_e64 v194, 0x80000000, v194, s2
	s_clause 0xf
	buffer_load_u16 v153, v153, s[24:27], 0 offen
	buffer_load_u16 v154, v154, s[24:27], 0 offen
	buffer_load_u16 v155, v155, s[24:27], 0 offen
	buffer_load_u16 v156, v156, s[24:27], 0 offen
	buffer_load_u16 v157, v157, s[24:27], 0 offen
	buffer_load_u16 v158, v158, s[24:27], 0 offen
	buffer_load_u16 v159, v159, s[24:27], 0 offen
	buffer_load_u16 v160, v160, s[24:27], 0 offen
	buffer_load_u16 v161, v161, s[24:27], 0 offen
	buffer_load_u16 v162, v162, s[24:27], 0 offen
	buffer_load_u16 v163, v163, s[24:27], 0 offen
	buffer_load_u16 v164, v164, s[24:27], 0 offen
	buffer_load_u16 v165, v165, s[24:27], 0 offen
	buffer_load_u16 v166, v166, s[24:27], 0 offen
	buffer_load_u16 v167, v167, s[24:27], 0 offen
	buffer_load_u16 v82, v82, s[24:27], 0 offen
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	v_cndmask_b32_e64 v181, 0x80000000, v181, s2
	v_cndmask_b32_e64 v182, 0x80000000, v182, s2
	v_cndmask_b32_e64 v183, 0x80000000, v183, s2
	v_cndmask_b32_e64 v195, 0x80000000, v195, s2
	s_clause 0x7
	buffer_load_u16 v176, v176, s[24:27], 0 offen
	buffer_load_u16 v177, v177, s[24:27], 0 offen
	buffer_load_u16 v178, v178, s[24:27], 0 offen
	buffer_load_u16 v179, v179, s[24:27], 0 offen
	buffer_load_u16 v180, v180, s[24:27], 0 offen
	buffer_load_u16 v181, v181, s[24:27], 0 offen
	buffer_load_u16 v182, v182, s[24:27], 0 offen
	buffer_load_u16 v183, v183, s[24:27], 0 offen
	v_cndmask_b32_e64 v196, 0x80000000, v196, s2
	v_cndmask_b32_e64 v197, 0x80000000, v197, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v135, v135, v84
	v_mul_f32_e32 v139, v139, v84
	v_mul_f32_e32 v137, v137, v84
	v_mul_f32_e32 v84, v140, v84
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v83, 0x80000000, v83, s2
	s_clause 0x7
	buffer_load_u16 v192, v192, s[24:27], 0 offen
	buffer_load_u16 v193, v193, s[24:27], 0 offen
	buffer_load_u16 v194, v194, s[24:27], 0 offen
	buffer_load_u16 v195, v195, s[24:27], 0 offen
	buffer_load_u16 v196, v196, s[24:27], 0 offen
	buffer_load_u16 v197, v197, s[24:27], 0 offen
	buffer_load_u16 v83, v83, s[24:27], 0 offen
	buffer_load_u16 v81, v81, s[24:27], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v87, 16, v87
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v85, 16, v85
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v86, 16, v86
	s_waitcnt vmcnt(60)
	v_lshlrev_b32_e32 v88, 16, v88
	s_waitcnt vmcnt(59)
	v_lshlrev_b32_e32 v141, 16, v141
	s_waitcnt vmcnt(58)
	v_lshlrev_b32_e32 v142, 16, v142
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v1, v1, v87, v45
	v_fma_f32 v2, v2, v85, v80
	v_fma_f32 v3, v3, v86, v79
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(54)
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v88, v78
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v45, v1, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(51)
	v_lshlrev_b32_e32 v149, 16, v149
	s_waitcnt vmcnt(50)
	v_lshlrev_b32_e32 v150, 16, v150
	s_waitcnt vmcnt(49)
	v_lshlrev_b32_e32 v151, 16, v151
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v152, 16, v152
	v_lshlrev_b32_e32 v143, 16, v143
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v85, v89, v149, v69
	v_fma_f32 v86, v90, v150, v68
	v_fma_f32 v87, v91, v151, v67
	v_fma_f32 v88, v92, v152, v66
	v_fma_f32 v6, v6, v141, v77
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v80, v2, s2
	v_cndmask_b32_e64 v45, v69, v85, s2
	v_xad_u32 v69, v9, 4, 0
	v_cndmask_b32_e64 v3, v79, v3, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v145, 16, v145
	v_lshlrev_b32_e32 v144, 16, v144
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v142, v76
	v_fma_f32 v8, v8, v143, v75
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v78, v5, s2
	v_cndmask_b32_e64 v6, v77, v6, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v12, v12, v145, v73
	v_fma_f32 v11, v11, v144, v74
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v76, v7, s2
	v_cndmask_b32_e64 v8, v75, v8, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v147, 16, v147
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v73, v12, s2
	v_cndmask_b32_e64 v11, v74, v11, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v148, 16, v148
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v13, v13, v146, v72
	v_fma_f32 v14, v14, v147, v71
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v68, v68, v86, s2
	v_cndmask_b32_e64 v67, v67, v87, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v15, v15, v148, v70
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v72, v13, s2
	v_cndmask_b32_e64 v14, v71, v14, s2
	v_cndmask_b32_e64 v66, v66, v88, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v15, v70, v15, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v168, 16, v168
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v169, 16, v169
	s_waitcnt vmcnt(45)
	v_lshlrev_b32_e32 v170, 16, v170
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v171, 16, v171
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v172, 16, v172
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v173, 16, v173
	s_waitcnt vmcnt(41)
	v_lshlrev_b32_e32 v174, 16, v174
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v175, 16, v175
	s_waitcnt vmcnt(39)
	v_lshlrev_b32_e32 v184, 16, v184
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v185, 16, v185
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v153, 16, v153
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v154, 16, v154
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v162, 16, v162
	v_lshlrev_b32_e32 v156, 16, v156
	v_lshlrev_b32_e32 v190, 16, v190
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v166, 16, v166
	v_lshlrev_b32_e32 v157, 16, v157
	v_lshlrev_b32_e32 v160, 16, v160
	v_lshlrev_b32_e32 v161, 16, v161
	v_lshlrev_b32_e32 v164, 16, v164
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v180, 16, v180
	v_lshlrev_b32_e32 v165, 16, v165
	v_lshlrev_b32_e32 v179, 16, v179
	v_lshlrev_b32_e32 v155, 16, v155
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v89, v93, v153, v65
	v_fma_f32 v90, v94, v154, v64
	v_fma_f32 v94, v98, v158, v60
	v_fma_f32 v98, v102, v162, v56
	v_fma_f32 v102, v106, v166, v52
	v_fma_f32 v106, v111, v170, v47
	v_fma_f32 v111, v116, v175, v41
	v_fma_f32 v116, v121, v180, v36
	v_fma_f32 v121, v126, v185, v31
	v_fma_f32 v126, v131, v190, v26
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v159, 16, v159
	v_lshlrev_b32_e32 v163, 16, v163
	v_lshlrev_b32_e32 v167, 16, v167
	v_lshlrev_b32_e32 v176, 16, v176
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v181, 16, v181
	v_lshlrev_b32_e32 v186, 16, v186
	v_lshlrev_b32_e32 v82, 16, v82
	v_lshlrev_b32_e32 v177, 16, v177
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v182, 16, v182
	v_lshlrev_b32_e32 v187, 16, v187
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v92, v96, v156, v62
	v_fma_f32 v93, v97, v157, v61
	v_fma_f32 v96, v100, v160, v58
	v_fma_f32 v97, v101, v161, v57
	v_fma_f32 v100, v104, v164, v54
	v_fma_f32 v101, v105, v165, v53
	v_fma_f32 v104, v109, v168, v49
	v_fma_f32 v105, v110, v169, v48
	v_fma_f32 v110, v115, v174, v42
	v_fma_f32 v115, v120, v179, v37
	v_fma_f32 v120, v125, v184, v32
	v_fma_f32 v91, v95, v155, v63
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v65, v65, v89, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v178, 16, v178
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v183, 16, v183
	v_lshlrev_b32_e32 v188, 16, v188
	v_lshlrev_b32_e32 v189, 16, v189
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v95, v99, v159, v59
	v_fma_f32 v99, v103, v163, v55
	v_fma_f32 v103, v107, v167, v51
	v_fma_f32 v107, v112, v171, v46
	v_fma_f32 v112, v117, v176, v40
	v_fma_f32 v117, v122, v181, v35
	v_fma_f32 v122, v127, v186, v30
	v_fma_f32 v82, v108, v82, v50
	v_fma_f32 v108, v113, v172, v44
	v_fma_f32 v113, v118, v177, v39
	v_fma_f32 v118, v123, v182, v34
	v_fma_f32 v123, v128, v187, v29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v49, v49, v104, s2
	v_cndmask_b32_e64 v32, v32, v120, s2
	v_cndmask_b32_e64 v64, v64, v90, s2
	v_cndmask_b32_e64 v48, v48, v105, s2
	v_cndmask_b32_e64 v31, v31, v121, s2
	v_cndmask_b32_e64 v63, v63, v91, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v109, v114, v173, v43
	v_fma_f32 v114, v119, v178, v38
	v_fma_f32 v119, v124, v183, v33
	v_fma_f32 v124, v129, v188, v28
	v_fma_f32 v125, v130, v189, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v47, v47, v106, s2
	v_cndmask_b32_e64 v30, v30, v122, s2
	v_cndmask_b32_e64 v62, v62, v92, s2
	v_cndmask_b32_e64 v46, v46, v107, s2
	v_cndmask_b32_e64 v29, v29, v123, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v191, 16, v191
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v61, v61, v93, s2
	v_cndmask_b32_e64 v44, v44, v108, s2
	v_cndmask_b32_e64 v43, v43, v109, s2
	v_cndmask_b32_e64 v28, v28, v124, s2
	v_cndmask_b32_e64 v27, v27, v125, s2
	v_cndmask_b32_e64 v60, v60, v94, s2
	v_cndmask_b32_e64 v59, v59, v95, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v127, v132, v191, v25
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v57, v57, v97, s2
	v_cndmask_b32_e64 v42, v42, v110, s2
	v_cndmask_b32_e64 v40, v40, v112, s2
	v_cndmask_b32_e64 v26, v26, v126, s2
	v_cndmask_b32_e64 v58, v58, v96, s2
	v_cndmask_b32_e64 v41, v41, v111, s2
	v_cndmask_b32_e64 v25, v25, v127, s2
	v_cndmask_b32_e64 v56, v56, v98, s2
	v_cndmask_b32_e64 v39, v39, v113, s2
	v_cndmask_b32_e64 v55, v55, v99, s2
	v_cndmask_b32_e64 v54, v54, v100, s2
	v_cndmask_b32_e64 v38, v38, v114, s2
	v_cndmask_b32_e64 v37, v37, v115, s2
	v_cndmask_b32_e64 v53, v53, v101, s2
	v_cndmask_b32_e64 v36, v36, v116, s2
	v_cndmask_b32_e64 v52, v52, v102, s2
	v_cndmask_b32_e64 v35, v35, v117, s2
	v_cndmask_b32_e64 v51, v51, v103, s2
	v_cndmask_b32_e64 v34, v34, v118, s2
	v_cndmask_b32_e64 v50, v50, v82, s2
	v_cndmask_b32_e64 v33, v33, v119, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v192, 16, v192
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v193, 16, v193
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v194, 16, v194
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v195, 16, v195
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v196, 16, v196
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v128, v133, v192, v24
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v197, 16, v197
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v129, v134, v193, v23
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v83, 16, v83
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v130, v135, v194, v22
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v81, 16, v81
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v131, v136, v195, v21
	v_fma_f32 v132, v137, v196, v20
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v24, v128, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v133, v138, v197, v19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v23, v129, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v83, v139, v83, v18
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v22, v130, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v81, v84, v81, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v21, v131, s2
	v_add_nc_u32_e32 v21, 0, v9
	v_cndmask_b32_e64 v20, v20, v132, s2
	v_cndmask_b32_e64 v19, v19, v133, s2
	v_cndmask_b32_e64 v18, v18, v83, s2
	v_cndmask_b32_e64 v17, v17, v81, s2
	ds_store_2addr_b32 v21, v1, v65 offset1:32
	v_xad_u32 v1, v9, 8, 0
	ds_store_2addr_b32 v21, v49, v32 offset0:64 offset1:96
	ds_store_2addr_b32 v69, v2, v64 offset1:32
	v_xad_u32 v2, v9, 12, 0
	ds_store_2addr_b32 v69, v48, v31 offset0:64 offset1:96
	ds_store_2addr_b32 v1, v3, v63 offset1:32
	v_xad_u32 v3, v9, 16, 0
	ds_store_2addr_b32 v1, v47, v30 offset0:64 offset1:96
	ds_store_2addr_b32 v2, v5, v62 offset1:32
	v_xad_u32 v1, v9, 20, 0
	v_xad_u32 v5, v9, 52, 0
	ds_store_2addr_b32 v2, v46, v29 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v6, v61 offset1:32
	v_xad_u32 v2, v9, 24, 0
	v_xad_u32 v6, v9, 56, 0
	ds_store_2addr_b32 v3, v44, v28 offset0:64 offset1:96
	ds_store_2addr_b32 v1, v7, v60 offset1:32
	v_xad_u32 v3, v9, 28, 0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v7, 0x180, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	ds_store_2addr_b32 v1, v43, v27 offset0:64 offset1:96
	ds_store_2addr_b32 v2, v8, v59 offset1:32
	v_xad_u32 v1, v9, 32, 0
	ds_store_2addr_b32 v2, v42, v26 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v11, v58 offset1:32
	ds_store_2addr_b32 v3, v41, v25 offset0:64 offset1:96
	v_xad_u32 v2, v9, 36, 0
	v_xad_u32 v3, v9, 40, 0
	v_lshrrev_b32_e32 v7, 5, v7
	ds_store_2addr_b32 v1, v12, v57 offset1:32
	ds_store_2addr_b32 v1, v40, v24 offset0:64 offset1:96
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mul_lo_u32 v1, s35, v198
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	ds_store_2addr_b32 v2, v13, v56 offset1:32
	ds_store_2addr_b32 v2, v39, v23 offset0:64 offset1:96
	ds_store_2addr_b32 v3, v14, v55 offset1:32
	v_xad_u32 v2, v9, 44, 0
	ds_store_2addr_b32 v3, v38, v22 offset0:64 offset1:96
	v_xad_u32 v3, v9, 48, 0
	ds_store_2addr_b32 v2, v15, v54 offset1:32
	ds_store_2addr_b32 v2, v37, v10 offset0:64 offset1:96
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_add3_u32 v1, s0, v16, v1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	ds_store_2addr_b32 v3, v45, v53 offset1:32
	ds_store_2addr_b32 v3, v36, v20 offset0:64 offset1:96
	ds_store_2addr_b32 v5, v68, v52 offset1:32
	ds_store_2addr_b32 v5, v35, v19 offset0:64 offset1:96
	ds_store_2addr_b32 v6, v67, v51 offset1:32
	ds_store_2addr_b32 v6, v34, v18 offset0:64 offset1:96
	v_xad_u32 v5, v9, 60, 0
	v_lshlrev_b32_e32 v6, 1, v0
	v_lshlrev_b32_e32 v0, 6, v0
	s_mov_b32 s0, 0
	ds_store_2addr_b32 v5, v66, v50 offset1:32
	ds_store_2addr_b32 v5, v33, v17 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v6, 60, v6
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshl_or_b32 v4, v4, 2, v6
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_xor_b32_e32 v4, v4, v7
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_u32 v2, vcc_lo, s40, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s41, v3, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_or_b32 v0, v0, 64, v4
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	global_load_b32 v5, v[2:3], off
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v4, 0, v0
	v_xad_u32 v6, 0x810, v0, 0
	v_xad_u32 v9, 0x1020, v0, 0
	v_xad_u32 v10, 0x1830, v0, 0
	ds_load_b32 v8, v4
	ds_load_b32 v7, v6
	ds_load_b32 v0, v9
	ds_load_b32 v6, v10
.LBB0_6:                                ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v4, v5, v8
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end13
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v2, s35, 2, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s40, v2
	v_add_co_ci_u32_e64 v3, null, s41, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_8:                                ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v2, s35, 3, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s40, v2
	v_add_co_ci_u32_e64 v3, null, s41, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_10:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v4, v5, v0
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s35, 12, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_12:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v3, v6
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk
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
		.amdhsa_next_free_vgpr 235
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.num_vgpr, 235
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13044
; TotalNumSgprs: 48
; NumVgprs: 235
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 235
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     235
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
