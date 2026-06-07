	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s10, s2
	v_dual_mov_b32 v28, 0 :: v_dual_and_b32 v27, 15, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v2, 5, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v3, 4, v0
	v_dual_mov_b32 v30, 0 :: v_dual_and_b32 v17, 31, v0
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v8, 3, v0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s6, s6, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s8, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s12, s6, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s8, s8, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s12, s12, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s8
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s6, s6, s12
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s6, s6, 4
.Ltmp11:
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s5
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v44, 0
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s9
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v58, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s9, v1
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v62, 0
	s_mul_f32 s9, s9, 0x4f7ffffe
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v66, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s9, s9
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v70, 0
	s_mul_i32 s11, s11, s9
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v72, 0
	s_mul_hi_u32 s11, s9, s11
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v74, 0
	s_add_i32 s9, s9, s11
	s_xor_b32 s11, s2, s5
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s9, s8
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v76, 0
	s_sub_i32 s10, s10, s12
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s10, s8
	s_cmp_ge_u32 s10, s8
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v78, 0
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s10, s13, s10
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s10, s8
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v80, 0
	s_cselect_b32 s8, s12, s9
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v82, 0
	s_xor_b32 s8, s8, s11
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v84, 0
	s_sub_i32 s16, s8, s11
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s6, s16
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s16, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s6, s6, 1
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s18, s6
	s_abs_i32 s19, s2
	s_cvt_f32_u32 s17, s18
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v86, 0
	v_mov_b32_e32 v32, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v98, 1, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_readfirstlane_b32 s17, v1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v1, 3, v27
	s_mov_b32 s11, 0x31027000
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v100, 0, v8
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[4:5], null, s7, v3, v[1:2]
	.loc	1 166 26 is_stmt 0              ; generate_amdgcn.py:166:26
	s_mov_b32 s27, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 93 13 is_stmt 1               ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s18
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v92, v0, 4, 1
	v_or_b32_e32 v97, 0x3f0, v0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s17, s17, s10
	v_or_b32_e32 v95, 0x7f0, v0
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s6
	s_add_i32 s5, s10, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s19, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s20, s5, s18
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s26, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s19, s19, s20
	s_add_i32 s20, s5, 1
	s_sub_i32 s21, s19, s18
	s_cmp_ge_u32 s19, s18
	v_or_b32_e32 v94, 0xbf0, v0
	s_cselect_b32 s5, s20, s5
	s_cselect_b32 s19, s21, s19
	s_add_i32 s20, s5, 1
	s_cmp_ge_u32 s19, s18
	v_or_b32_e32 v93, 0xff0, v0
	s_cselect_b32 s5, s20, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s20, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s18, s5, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s4, 63
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s20
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s18, s17
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s35, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s5, s6
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s19, s3, 5
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s4
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v5, s19, v17
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s21, 31
.Ltmp15:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s2, 4
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v6, s19, v3
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_or_b32_e32 v7, s33, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s6, s5, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s16, s21, s3
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
	s_cmp_gt_i32 s21, 63
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s20, s7, s19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s3, s5
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v4, s20, s6, v4
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
	s_and_b32 s25, s25, 0xffff
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u8 v6, v5, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b64 v[4:5], v4, s[24:27], 0 offen
	s_load_b64 s[4:5], s[0:1], 0x20
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v7, 24, v3
	v_add_nc_u32_e32 v96, 0, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s1, s34, -1
	s_mov_b32 s16, 0
	s_cmpk_lt_i32 s21, 0x80
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v7, v7, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v99, 0, v7
	s_waitcnt vmcnt(1)
	ds_store_b8 v99, v6 offset:4096
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v100, v[4:5]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s40, s19, 32
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v4, 24, v98
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v5, s40, v3
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v9, s33, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v4, v27, 5, v4
	v_mul_lo_u32 v5, s7, v5
	v_sub_nc_u32_e32 v101, s35, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v3, s34, v9
	s_lshl_b32 s0, s18, 8
	s_lshl_b32 s18, s18, 7
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v2, s33, v2
	v_xor_b32_e32 v6, 8, v4
	v_xor_b32_e32 v7, 16, v4
	v_xor_b32_e32 v8, 24, v4
	v_add3_u32 v1, v5, s18, v1
	s_lshl_b32 s19, s17, 8
	v_mad_u64_u32 v[18:19], null, s35, v2, v[17:18]
	s_sub_i32 s42, s0, s19
	s_lshl_b32 s0, s17, 7
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v88, 0 :: v_dual_lshlrev_b32 v103, 1, v3
	v_subrev_nc_u32_e32 v104, s0, v1
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v105, 0, v4
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v106, 0, v6
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v107, 0, v7
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v108, 0, v8
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v102, 1, v92
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v109, 0, v97
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v110, 0, v95
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v111, 0, v94
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v112, 0, v93
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	s_max_i32 s41, s1, 1
	s_lshl_b32 s43, s7, 1
	s_lshl_b32 s44, s7, 5
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
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
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v213, 0x80000000, v104, s0
	buffer_load_b64 v[213:214], v213, s[24:27], 0 offen
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v228, v103, s[28:31], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v103, 2, v103
	v_add_nc_u32_e32 v104, s44, v104
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v19, v12
	v_cvt_f32_i32_e32 v12, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v13, s42, v102
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v22, v9
	v_cvt_f32_i32_e32 v21, v10
	v_cvt_f32_i32_e32 v20, v11
	v_cvt_f32_i32_e32 v11, v14
	v_cvt_f32_i32_e32 v10, v15
	v_cvt_f32_i32_e32 v9, v16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1f
	buffer_load_u16 v215, v13, s[36:39], 0 offen
	buffer_load_u16 v216, v13, s[36:39], 0 offen offset:4
	buffer_load_u16 v217, v13, s[36:39], 0 offen offset:8
	buffer_load_u16 v218, v13, s[36:39], 0 offen offset:12
	buffer_load_u16 v219, v13, s[36:39], 0 offen offset:16
	buffer_load_u16 v220, v13, s[36:39], 0 offen offset:20
	buffer_load_u16 v221, v13, s[36:39], 0 offen offset:24
	buffer_load_u16 v222, v13, s[36:39], 0 offen offset:28
	buffer_load_u16 v223, v13, s[36:39], 0 offen offset:32
	buffer_load_u16 v224, v13, s[36:39], 0 offen offset:36
	buffer_load_u16 v225, v13, s[36:39], 0 offen offset:40
	buffer_load_u16 v226, v13, s[36:39], 0 offen offset:44
	buffer_load_u16 v227, v13, s[36:39], 0 offen offset:48
	buffer_load_u16 v212, v13, s[36:39], 0 offen offset:52
	buffer_load_u16 v211, v13, s[36:39], 0 offen offset:56
	buffer_load_u16 v210, v13, s[36:39], 0 offen offset:60
	buffer_load_u16 v209, v13, s[36:39], 0 offen offset:64
	buffer_load_u16 v208, v13, s[36:39], 0 offen offset:68
	buffer_load_u16 v207, v13, s[36:39], 0 offen offset:72
	buffer_load_u16 v206, v13, s[36:39], 0 offen offset:76
	buffer_load_u16 v205, v13, s[36:39], 0 offen offset:80
	buffer_load_u16 v204, v13, s[36:39], 0 offen offset:84
	buffer_load_u16 v203, v13, s[36:39], 0 offen offset:88
	buffer_load_u16 v202, v13, s[36:39], 0 offen offset:92
	buffer_load_u16 v201, v13, s[36:39], 0 offen offset:96
	buffer_load_u16 v200, v13, s[36:39], 0 offen offset:100
	buffer_load_u16 v199, v13, s[36:39], 0 offen offset:104
	buffer_load_u16 v198, v13, s[36:39], 0 offen offset:108
	buffer_load_u16 v197, v13, s[36:39], 0 offen offset:112
	buffer_load_u16 v196, v13, s[36:39], 0 offen offset:116
	buffer_load_u16 v195, v13, s[36:39], 0 offen offset:120
	buffer_load_u16 v194, v13, s[36:39], 0 offen offset:124
	s_clause 0x1f
	buffer_load_u16 v193, v13, s[36:39], 0 offen offset:128
	buffer_load_u16 v192, v13, s[36:39], 0 offen offset:132
	buffer_load_u16 v191, v13, s[36:39], 0 offen offset:136
	buffer_load_u16 v190, v13, s[36:39], 0 offen offset:140
	buffer_load_u16 v189, v13, s[36:39], 0 offen offset:144
	buffer_load_u16 v188, v13, s[36:39], 0 offen offset:148
	buffer_load_u16 v187, v13, s[36:39], 0 offen offset:152
	buffer_load_u16 v186, v13, s[36:39], 0 offen offset:156
	buffer_load_u16 v185, v13, s[36:39], 0 offen offset:160
	buffer_load_u16 v184, v13, s[36:39], 0 offen offset:164
	buffer_load_u16 v183, v13, s[36:39], 0 offen offset:168
	buffer_load_u16 v182, v13, s[36:39], 0 offen offset:172
	buffer_load_u16 v181, v13, s[36:39], 0 offen offset:176
	buffer_load_u16 v180, v13, s[36:39], 0 offen offset:180
	buffer_load_u16 v179, v13, s[36:39], 0 offen offset:184
	buffer_load_u16 v178, v13, s[36:39], 0 offen offset:188
	buffer_load_u16 v177, v13, s[36:39], 0 offen offset:192
	buffer_load_u16 v176, v13, s[36:39], 0 offen offset:196
	buffer_load_u16 v175, v13, s[36:39], 0 offen offset:200
	buffer_load_u16 v174, v13, s[36:39], 0 offen offset:204
	buffer_load_u16 v173, v13, s[36:39], 0 offen offset:208
	buffer_load_u16 v172, v13, s[36:39], 0 offen offset:212
	buffer_load_u16 v171, v13, s[36:39], 0 offen offset:216
	buffer_load_u16 v170, v13, s[36:39], 0 offen offset:220
	buffer_load_u16 v26, v13, s[36:39], 0 offen offset:224
	buffer_load_u16 v25, v13, s[36:39], 0 offen offset:228
	buffer_load_u16 v24, v13, s[36:39], 0 offen offset:232
	buffer_load_u16 v23, v13, s[36:39], 0 offen offset:236
	buffer_load_u16 v16, v13, s[36:39], 0 offen offset:240
	buffer_load_u16 v15, v13, s[36:39], 0 offen offset:244
	buffer_load_u16 v14, v13, s[36:39], 0 offen offset:248
	buffer_load_u16 v13, v13, s[36:39], 0 offen offset:252
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	ds_store_b64 v100, v[213:214]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_store_b8 v99, v113 offset:4096
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v213, 16, v228
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s42, s42, s43
	s_cmp_lg_u32 s41, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v121, v121, v213
	v_mul_f32_e32 v120, v120, v213
	v_mul_f32_e32 v119, v119, v213
	v_mul_f32_e32 v118, v118, v213
	v_dual_mul_f32 v117, v117, v213 :: v_dual_lshlrev_b32 v214, 16, v215
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(62)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v54, v121, v214 :: v_dual_lshlrev_b32 v121, 16, v216
	v_fmac_f32_e32 v91, v120, v121
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v120, 16, v217
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(60)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v90, v119, v120 :: v_dual_lshlrev_b32 v119, 16, v218
	v_fmac_f32_e32 v89, v118, v119
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(59)
	v_lshlrev_b32_e32 v118, 16, v219
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(58)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v88, v117, v118 :: v_dual_lshlrev_b32 v117, 16, v220
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v114, v114, v213
	v_mul_f32_e32 v116, v116, v213
	v_mul_f32_e32 v115, v115, v213
	v_mul_f32_e32 v22, v22, v213
	v_mul_f32_e32 v19, v19, v213
	v_mul_f32_e32 v12, v12, v213
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v87, v116, v117
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(57)
	v_lshlrev_b32_e32 v116, 16, v221
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v9, v9, v213
	v_mul_f32_e32 v11, v11, v213
	v_mul_f32_e32 v20, v20, v213
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v21, v21, v213 :: v_dual_fmac_f32 v86, v115, v116
	s_waitcnt vmcnt(56)
	v_dual_mul_f32 v10, v10, v213 :: v_dual_lshlrev_b32 v115, 16, v222
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v85, v114, v115
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(55)
	v_dual_mul_f32 v115, v129, v213 :: v_dual_lshlrev_b32 v114, 16, v223
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v84, v115, v114
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(54)
	v_dual_mul_f32 v115, v128, v213 :: v_dual_lshlrev_b32 v114, 16, v224
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v83, v115, v114 :: v_dual_lshlrev_b32 v16, 16, v16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v225
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v127, v213
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v35, v22, v26 :: v_dual_lshlrev_b32 v22, 16, v25
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v31, v12, v16 :: v_dual_lshlrev_b32 v12, 16, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v82, v115, v114 :: v_dual_mul_f32 v115, v126, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v226
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v34, v21, v22 :: v_dual_lshlrev_b32 v21, 16, v24
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v30, v11, v12 :: v_dual_lshlrev_b32 v11, 16, v14
	v_dual_fmac_f32 v81, v115, v114 :: v_dual_lshlrev_b32 v114, 16, v227
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v125, v213
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v33, v20, v21 :: v_dual_lshlrev_b32 v20, 16, v23
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v29, v10, v11 :: v_dual_lshlrev_b32 v10, 16, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v80, v115, v114 :: v_dual_mul_f32 v115, v124, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v212
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v32, v19, v20
	v_fmac_f32_e32 v28, v9, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v79, v115, v114 :: v_dual_lshlrev_b32 v114, 16, v211
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v123, v213
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v78, v115, v114 :: v_dual_mul_f32 v115, v122, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v77, v115, v114 :: v_dual_lshlrev_b32 v114, 16, v209
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v137, v213
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v76, v115, v114 :: v_dual_mul_f32 v115, v136, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v75, v115, v114 :: v_dual_lshlrev_b32 v114, 16, v207
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v135, v213
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v74, v115, v114 :: v_dual_mul_f32 v115, v134, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v73, v115, v114 :: v_dual_lshlrev_b32 v114, 16, v205
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v133, v213
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v72, v115, v114 :: v_dual_mul_f32 v115, v132, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v71, v115, v114 :: v_dual_lshlrev_b32 v114, 16, v203
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v131, v213
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v70, v115, v114 :: v_dual_mul_f32 v115, v130, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v69, v115, v114 :: v_dual_lshlrev_b32 v114, 16, v201
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v145, v213
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v68, v115, v114 :: v_dual_mul_f32 v115, v144, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v67, v115, v114 :: v_dual_lshlrev_b32 v114, 16, v199
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v143, v213
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v66, v115, v114 :: v_dual_mul_f32 v115, v142, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v65, v115, v114 :: v_dual_lshlrev_b32 v114, 16, v197
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v141, v213
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v64, v115, v114 :: v_dual_mul_f32 v115, v140, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v63, v115, v114 :: v_dual_lshlrev_b32 v114, 16, v195
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v139, v213
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v62, v115, v114 :: v_dual_mul_f32 v115, v138, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v61, v115, v114 :: v_dual_lshlrev_b32 v114, 16, v193
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v153, v213
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v60, v115, v114 :: v_dual_mul_f32 v115, v152, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v59, v115, v114 :: v_dual_lshlrev_b32 v114, 16, v191
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v151, v213
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v58, v115, v114 :: v_dual_mul_f32 v115, v150, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v57, v115, v114 :: v_dual_lshlrev_b32 v114, 16, v189
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v149, v213
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v56, v115, v114 :: v_dual_mul_f32 v115, v148, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v55, v115, v114 :: v_dual_lshlrev_b32 v114, 16, v187
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v147, v213
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v53, v115, v114
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v115, v146, v213 :: v_dual_lshlrev_b32 v114, 16, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v52, v115, v114 :: v_dual_mul_f32 v115, v161, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v185
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v51, v115, v114 :: v_dual_lshlrev_b32 v114, 16, v184
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v160, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v50, v115, v114
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v115, v159, v213 :: v_dual_lshlrev_b32 v114, 16, v183
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v49, v115, v114
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v115, v158, v213 :: v_dual_lshlrev_b32 v114, 16, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v48, v115, v114 :: v_dual_mul_f32 v115, v157, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v181
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v47, v115, v114 :: v_dual_lshlrev_b32 v114, 16, v180
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v156, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v46, v115, v114
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v115, v155, v213 :: v_dual_lshlrev_b32 v114, 16, v179
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v45, v115, v114
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v115, v154, v213 :: v_dual_lshlrev_b32 v114, 16, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v44, v115, v114 :: v_dual_mul_f32 v115, v169, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v177
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v43, v115, v114 :: v_dual_lshlrev_b32 v114, 16, v176
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v168, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v42, v115, v114
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v115, v167, v213 :: v_dual_lshlrev_b32 v114, 16, v175
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v41, v115, v114
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v115, v166, v213 :: v_dual_lshlrev_b32 v114, 16, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v40, v115, v114 :: v_dual_mul_f32 v115, v165, v213
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v114, 16, v173
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v39, v115, v114 :: v_dual_lshlrev_b32 v114, 16, v172
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v164, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v38, v115, v114
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v115, v163, v213 :: v_dual_lshlrev_b32 v114, 16, v171
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v37, v115, v114
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v115, v162, v213 :: v_dual_lshlrev_b32 v114, 16, v170
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v36, v115, v114
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow337
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v11, 16, v0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v7, 0
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
	s_mov_b32 s16, 0
	v_add_nc_u32_e32 v94, 0, v94
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v9, 24, v98
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v143, v96 offset:880
	ds_load_u8 v94, v94
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v93, 0, v93
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshl_or_b32 v12, v27, 5, v9
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v2, v4, v2, 0xc0c0004
	ds_load_u8 v142, v96 offset:624
	ds_load_u8 v93, v93
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v8, v7, 0xc0c0004
	v_lshl_or_b32 v22, v2, 16, v1
	ds_load_u8 v1, v96 offset:1664
	ds_load_u8 v2, v96 offset:1536
	ds_load_u8 v25, v96 offset:1552
	ds_load_u8 v146, v96 offset:1520
	ds_load_u8 v26, v96 offset:1680
	ds_load_u8 v147, v96 offset:1648
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v9, 0, v12
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v98, v96 offset:112
	ds_load_u8 v140, v96 offset:496
	ds_load_u8 v141, v96 offset:752
	v_lshl_or_b32 v21, v4, 16, v3
	ds_load_u8 v144, v96 offset:240
	ds_load_u8 v145, v96 offset:368
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v95, 0, v95
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[9:10], v9 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v96 offset:1920
	ds_load_u8 v3, v96 offset:1792
	ds_load_u8 v99, v96 offset:1808
	ds_load_u8 v148, v96 offset:1776
	ds_load_u8 v100, v96 offset:1936
	ds_load_u8 v149, v96 offset:1904
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v96 offset:1152
	ds_load_u8 v4, v96 offset:1024
	ds_load_u8 v101, v96 offset:1040
	ds_load_u8 v134, v96 offset:992
	ds_load_u8 v102, v96 offset:1168
	ds_load_u8 v150, v96 offset:1136
	v_lshl_or_b32 v24, v2, 16, v1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v1, v12, 8, 0
	ds_load_b64 v[151:152], v1 offset:4096
	v_xad_u32 v1, v12, 16, 0
	v_xad_u32 v12, v12, 24, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v96 offset:1408
	ds_load_u8 v5, v96 offset:1280
	ds_load_u8 v103, v96 offset:1296
	ds_load_u8 v159, v96 offset:1264
	ds_load_u8 v104, v96 offset:1424
	ds_load_u8 v160, v96 offset:1392
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[153:154], v1 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v4, 16, v3
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_mov_b32_e32 v8, s23
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_mov_b32_e32 v7, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[13:20], v[21:22], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[13:20], v[23:24], v[151:152], v[13:20] neg_lo:[1,1,0]
	ds_load_u8 v21, v96 offset:2688
	ds_load_u8 v22, v96 offset:2560
	ds_load_u8 v24, v96 offset:2576
	ds_load_u8 v112, v96 offset:2592
	ds_load_u8 v161, v96 offset:2544
	ds_load_u8 v107, v96 offset:2704
	ds_load_u8 v113, v96 offset:2720
	ds_load_u8 v162, v96 offset:2672
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v96 offset:2944
	ds_load_u8 v23, v96 offset:2816
	ds_load_u8 v108, v96 offset:2832
	ds_load_u8 v114, v96 offset:2848
	ds_load_u8 v163, v96 offset:2800
	ds_load_u8 v109, v96 offset:2960
	ds_load_u8 v115, v96 offset:2976
	ds_load_u8 v164, v96 offset:2928
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v96 offset:2176
	ds_load_u8 v105, v96 offset:2048
	ds_load_u8 v110, v96 offset:2064
	ds_load_u8 v116, v96 offset:2080
	ds_load_u8 v135, v96 offset:2016
	ds_load_u8 v111, v96 offset:2192
	ds_load_u8 v117, v96 offset:2208
	ds_load_u8 v165, v96 offset:2160
	v_lshl_or_b32 v22, v22, 16, v21
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v94, v164, v94, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v23, v105, v23, 0xc0c0004
	ds_load_u8 v105, v96 offset:2432
	ds_load_u8 v106, v96 offset:2304
	ds_load_u8 v118, v96 offset:2320
	ds_load_u8 v119, v96 offset:2336
	ds_load_u8 v166, v96 offset:2288
	ds_load_u8 v120, v96 offset:2448
	ds_load_u8 v121, v96 offset:2464
	ds_load_u8 v167, v96 offset:2416
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v21, v105, 16, v23
	v_wmma_i32_16x16x16_iu4 v[13:20], v[21:22], v[153:154], v[13:20] neg_lo:[1,1,0]
	ds_load_u8 v21, v96 offset:3712
	ds_load_u8 v22, v96 offset:3584
	ds_load_u8 v122, v96 offset:3600
	ds_load_u8 v123, v96 offset:3616
	ds_load_u8 v124, v96 offset:3632
	ds_load_u8 v168, v96 offset:3568
	ds_load_u8 v125, v96 offset:3728
	ds_load_u8 v126, v96 offset:3744
	ds_load_u8 v127, v96 offset:3760
	ds_load_u8 v169, v96 offset:3696
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v96 offset:3968
	ds_load_u8 v23, v96 offset:3840
	ds_load_u8 v128, v96 offset:3856
	ds_load_u8 v129, v96 offset:3872
	ds_load_u8 v130, v96 offset:3888
	ds_load_u8 v170, v96 offset:3824
	ds_load_u8 v131, v96 offset:3984
	ds_load_u8 v132, v96 offset:4000
	ds_load_u8 v133, v96 offset:4016
	ds_load_u8 v171, v96 offset:3952
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v96 offset:3200
	ds_load_u8 v105, v96 offset:3072
	ds_load_u8 v136, v96 offset:3088
	ds_load_u8 v137, v96 offset:3104
	ds_load_u8 v138, v96 offset:3120
	ds_load_u8 v172, v96 offset:3040
	ds_load_u8 v139, v96 offset:3216
	ds_load_u8 v157, v96 offset:3232
	ds_load_u8 v158, v96 offset:3248
	ds_load_u8 v173, v96 offset:3184
	v_lshl_or_b32 v22, v22, 16, v21
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v93, v171, v93, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v23, v105, v23, 0xc0c0004
	ds_load_u8 v105, v96 offset:3456
	ds_load_u8 v106, v96 offset:3328
	ds_load_u8 v174, v96 offset:3344
	ds_load_u8 v175, v96 offset:3360
	ds_load_u8 v176, v96 offset:3376
	ds_load_u8 v177, v96 offset:3312
	ds_load_u8 v178, v96 offset:3472
	ds_load_u8 v179, v96 offset:3488
	ds_load_u8 v180, v96 offset:3504
	ds_load_u8 v181, v96 offset:3440
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v105, 16, v23
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v23, 0, v97
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v182, v23
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[155:156], v12 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[13:20], v[21:22], v[155:156], v[13:20] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v13, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v15, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v17, v18
	v_cvt_f32_i32_e32 v18, v19
	v_cvt_f32_i32_e32 v19, v20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v96 offset:528
	ds_load_u8 v21, v96 offset:656
	ds_load_u8 v97, v96 offset:672
	ds_load_u8 v183, v96 offset:688
	ds_load_u8 v184, v96 offset:704
	ds_load_u8 v185, v96 offset:720
	ds_load_u8 v186, v96 offset:736
	ds_load_u8 v187, v96 offset:544
	ds_load_u8 v188, v96 offset:560
	ds_load_u8 v189, v96 offset:576
	ds_load_u8 v190, v96 offset:592
	ds_load_u8 v191, v96 offset:608
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v20, v20, v21, 0xc0c0004
	ds_load_u8 v21, v96 offset:784
	ds_load_u8 v22, v96 offset:912
	ds_load_u8 v192, v96 offset:928
	ds_load_u8 v193, v96 offset:944
	ds_load_u8 v194, v96 offset:960
	ds_load_u8 v195, v96 offset:976
	ds_load_u8 v196, v96 offset:800
	ds_load_u8 v197, v96 offset:816
	ds_load_u8 v198, v96 offset:832
	ds_load_u8 v199, v96 offset:848
	ds_load_u8 v200, v96 offset:864
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v97, v187, v97, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v21, v21, v22, 0xc0c0004
	ds_load_u8 v22, v96 offset:16
	ds_load_u8 v23, v96 offset:144
	ds_load_u8 v201, v96 offset:160
	ds_load_u8 v202, v96 offset:176
	ds_load_u8 v203, v96 offset:192
	ds_load_u8 v204, v96 offset:208
	ds_load_u8 v205, v96 offset:224
	ds_load_u8 v206, v96 offset:32
	ds_load_u8 v207, v96 offset:48
	ds_load_u8 v208, v96 offset:64
	ds_load_u8 v209, v96 offset:80
	ds_load_u8 v210, v96 offset:96
	v_lshl_or_b32 v21, v21, 16, v20
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v22, v22, v23, 0xc0c0004
	ds_load_u8 v23, v96 offset:272
	ds_load_u8 v105, v96 offset:400
	ds_load_u8 v211, v96 offset:416
	ds_load_u8 v212, v96 offset:432
	ds_load_u8 v213, v96 offset:448
	ds_load_u8 v214, v96 offset:464
	ds_load_u8 v215, v96 offset:480
	ds_load_u8 v216, v96 offset:288
	ds_load_u8 v217, v96 offset:304
	ds_load_u8 v218, v96 offset:320
	ds_load_u8 v219, v96 offset:336
	ds_load_u8 v220, v96 offset:352
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v23, v23, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v20, v23, 16, v22
	v_perm_b32 v22, v25, v26, 0xc0c0004
	v_perm_b32 v23, v99, v100, 0xc0c0004
	v_perm_b32 v25, v101, v102, 0xc0c0004
	v_perm_b32 v26, v103, v104, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[99:106], v[20:21], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v23, v23, 16, v22
	v_perm_b32 v20, v24, v107, 0xc0c0004
	v_lshl_or_b32 v22, v26, 16, v25
	v_perm_b32 v21, v108, v109, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[22:23], v[151:152], v[99:106] neg_lo:[1,1,0]
	v_perm_b32 v22, v110, v111, 0xc0c0004
	v_perm_b32 v23, v118, v120, 0xc0c0004
	v_lshl_or_b32 v21, v21, 16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v20, v23, 16, v22
	v_perm_b32 v22, v136, v139, 0xc0c0004
	v_perm_b32 v23, v174, v178, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[99:106], v[20:21], v[153:154], v[99:106] neg_lo:[1,1,0]
	v_perm_b32 v20, v122, v125, 0xc0c0004
	v_perm_b32 v21, v128, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v21, v21, 16, v20
	v_lshl_or_b32 v20, v23, 16, v22
	v_wmma_i32_16x16x16_iu4 v[99:106], v[20:21], v[155:156], v[99:106] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v21, v100
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v100, v196, v192, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v22, v101
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v23, v102
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v101, v206, v201, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v102, v216, v211, 0xc0c0004
	v_lshl_or_b32 v109, v100, 16, v97
	ds_load_u8 v97, v96 offset:1568
	ds_load_u8 v100, v96 offset:1696
	ds_load_u8 v118, v96 offset:1712
	ds_load_u8 v120, v96 offset:1728
	ds_load_u8 v128, v96 offset:1744
	ds_load_u8 v136, v96 offset:1760
	ds_load_u8 v122, v96 offset:1584
	ds_load_u8 v131, v96 offset:1600
	ds_load_u8 v139, v96 offset:1616
	ds_load_u8 v174, v96 offset:1632
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v24, v103
	v_cvt_f32_i32_e32 v20, v99
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v108, v102, 16, v101
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v25, v104
	v_cvt_f32_i32_e32 v26, v105
	v_cvt_f32_i32_e32 v99, v106
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v97, v97, v100, 0xc0c0004
	ds_load_u8 v100, v96 offset:1824
	ds_load_u8 v101, v96 offset:1952
	ds_load_u8 v125, v96 offset:1968
	ds_load_u8 v178, v96 offset:1984
	ds_load_u8 v187, v96 offset:2000
	ds_load_u8 v192, v96 offset:1840
	ds_load_u8 v196, v96 offset:1856
	ds_load_u8 v201, v96 offset:1872
	ds_load_u8 v206, v96 offset:1888
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v100, v100, v101, 0xc0c0004
	ds_load_u8 v101, v96 offset:1056
	ds_load_u8 v102, v96 offset:1184
	ds_load_u8 v211, v96 offset:1200
	ds_load_u8 v216, v96 offset:1216
	ds_load_u8 v221, v96 offset:1232
	ds_load_u8 v222, v96 offset:1248
	ds_load_u8 v223, v96 offset:1072
	ds_load_u8 v224, v96 offset:1088
	ds_load_u8 v225, v96 offset:1104
	ds_load_u8 v226, v96 offset:1120
	v_lshl_or_b32 v111, v100, 16, v97
	v_perm_b32 v97, v112, v113, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v101, v101, v102, 0xc0c0004
	ds_load_u8 v102, v96 offset:1312
	ds_load_u8 v103, v96 offset:1440
	ds_load_u8 v227, v96 offset:1456
	ds_load_u8 v228, v96 offset:1472
	ds_load_u8 v229, v96 offset:1488
	ds_load_u8 v230, v96 offset:1504
	ds_load_u8 v231, v96 offset:1328
	ds_load_u8 v232, v96 offset:1344
	ds_load_u8 v233, v96 offset:1360
	ds_load_u8 v234, v96 offset:1376
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v102, v102, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v110, v102, 16, v101
	v_wmma_i32_16x16x16_iu4 v[100:107], v[108:109], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v108, v114, v115, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[100:107], v[110:111], v[151:152], v[100:107] neg_lo:[1,1,0]
	v_perm_b32 v110, v116, v117, 0xc0c0004
	v_perm_b32 v111, v119, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v109, v108, 16, v97
	v_perm_b32 v97, v123, v126, 0xc0c0004
	v_lshl_or_b32 v108, v111, 16, v110
	v_perm_b32 v110, v137, v157, 0xc0c0004
	v_perm_b32 v111, v175, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[108:109], v[153:154], v[100:107] neg_lo:[1,1,0]
	v_perm_b32 v108, v129, v132, 0xc0c0004
	v_lshl_or_b32 v109, v108, 16, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v108, v111, 16, v110
	v_perm_b32 v97, v188, v183, 0xc0c0004
	v_perm_b32 v110, v217, v212, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[100:107], v[108:109], v[155:156], v[100:107] neg_lo:[1,1,0]
	v_perm_b32 v108, v197, v193, 0xc0c0004
	v_perm_b32 v109, v207, v202, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v117, v108, 16, v97
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v116, v110, 16, v109
	v_perm_b32 v97, v122, v118, 0xc0c0004
	v_perm_b32 v108, v192, v125, 0xc0c0004
	v_perm_b32 v109, v223, v211, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v110, v231, v227, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v119, v108, 16, v97
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v118, v110, 16, v109
	v_wmma_i32_16x16x16_iu4 v[108:115], v[116:117], v[9:10], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v97, v96 offset:2608
	ds_load_u8 v116, v96 offset:2736
	ds_load_u8 v129, v96 offset:2752
	ds_load_u8 v137, v96 offset:2768
	ds_load_u8 v175, v96 offset:2784
	ds_load_u8 v132, v96 offset:2624
	ds_load_u8 v157, v96 offset:2640
	ds_load_u8 v179, v96 offset:2656
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[108:115], v[118:119], v[151:152], v[108:115] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v97, v97, v116, 0xc0c0004
	ds_load_u8 v116, v96 offset:2864
	ds_load_u8 v117, v96 offset:2992
	ds_load_u8 v183, v96 offset:3008
	ds_load_u8 v188, v96 offset:3024
	ds_load_u8 v192, v96 offset:2880
	ds_load_u8 v193, v96 offset:2896
	ds_load_u8 v197, v96 offset:2912
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v116, v116, v117, 0xc0c0004
	ds_load_u8 v117, v96 offset:2096
	ds_load_u8 v118, v96 offset:2224
	ds_load_u8 v202, v96 offset:2240
	ds_load_u8 v207, v96 offset:2256
	ds_load_u8 v211, v96 offset:2272
	ds_load_u8 v212, v96 offset:2112
	ds_load_u8 v217, v96 offset:2128
	ds_load_u8 v223, v96 offset:2144
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v118, v117, v118, 0xc0c0004
	ds_load_u8 v117, v96 offset:2352
	ds_load_u8 v119, v96 offset:2480
	ds_load_u8 v227, v96 offset:2496
	ds_load_u8 v231, v96 offset:2512
	ds_load_u8 v235, v96 offset:2528
	ds_load_u8 v236, v96 offset:2368
	ds_load_u8 v237, v96 offset:2384
	ds_load_u8 v238, v96 offset:2400
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v119, v117, v119, 0xc0c0004
	v_lshl_or_b32 v117, v116, 16, v97
	v_perm_b32 v97, v124, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v116, v119, 16, v118
	v_perm_b32 v118, v138, v158, 0xc0c0004
	v_perm_b32 v119, v176, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[108:115], v[116:117], v[153:154], v[108:115] neg_lo:[1,1,0]
	v_perm_b32 v116, v130, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v117, v116, 16, v97
	v_lshl_or_b32 v116, v119, 16, v118
	v_perm_b32 v97, v189, v184, 0xc0c0004
	v_perm_b32 v118, v218, v213, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[108:115], v[116:117], v[155:156], v[108:115] neg_lo:[1,1,0]
	v_perm_b32 v116, v198, v194, 0xc0c0004
	v_perm_b32 v117, v208, v203, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v108, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v125, v116, 16, v97
	v_lshl_or_b32 v124, v118, 16, v117
	v_perm_b32 v97, v131, v120, 0xc0c0004
	v_perm_b32 v116, v196, v178, 0xc0c0004
	v_perm_b32 v117, v224, v216, 0xc0c0004
	v_perm_b32 v118, v232, v228, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v127, v116, 16, v97
	v_perm_b32 v97, v132, v129, 0xc0c0004
	v_lshl_or_b32 v126, v118, 16, v117
	v_wmma_i32_16x16x16_iu4 v[116:123], v[124:125], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v124, v192, v183, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[116:123], v[126:127], v[151:152], v[116:123] neg_lo:[1,1,0]
	v_perm_b32 v126, v212, v202, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v127, v236, v227, 0xc0c0004
	v_lshl_or_b32 v125, v124, 16, v97
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v124, v127, 16, v126
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[124:125], v[153:154], v[116:123] neg_lo:[1,1,0]
	ds_load_u8 v97, v96 offset:3648
	ds_load_u8 v124, v96 offset:3776
	ds_load_u8 v138, v96 offset:3792
	ds_load_u8 v176, v96 offset:3808
	ds_load_u8 v158, v96 offset:3664
	ds_load_u8 v178, v96 offset:3680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v97, v97, v124, 0xc0c0004
	ds_load_u8 v124, v96 offset:4032
	ds_load_u8 v125, v96 offset:3904
	ds_load_u8 v180, v96 offset:3920
	ds_load_u8 v183, v96 offset:3936
	ds_load_u8 v184, v96 offset:4048
	ds_load_u8 v189, v96 offset:4064
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	ds_load_u8 v125, v96 offset:3136
	ds_load_u8 v126, v96 offset:3264
	ds_load_u8 v192, v96 offset:3280
	ds_load_u8 v194, v96 offset:3296
	ds_load_u8 v196, v96 offset:3152
	ds_load_u8 v198, v96 offset:3168
	v_lshl_or_b32 v97, v124, 16, v97
	v_perm_b32 v124, v209, v204, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v125, v125, v126, 0xc0c0004
	ds_load_u8 v126, v96 offset:3392
	ds_load_u8 v127, v96 offset:3520
	ds_load_u8 v202, v96 offset:3536
	ds_load_u8 v203, v96 offset:3552
	ds_load_u8 v208, v96 offset:3408
	ds_load_u8 v212, v96 offset:3424
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v96, v126, v127, 0xc0c0004
	v_perm_b32 v126, v225, v221, 0xc0c0004
	v_perm_b32 v127, v233, v229, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v96, v96, 16, v125
	v_perm_b32 v125, v219, v214, 0xc0c0004
	v_lshl_or_b32 v132, v127, 16, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[96:97], v[155:156], v[116:123] neg_lo:[1,1,0]
	v_perm_b32 v96, v190, v185, 0xc0c0004
	v_perm_b32 v97, v199, v195, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v116, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v97, v97, 16, v96
	v_lshl_or_b32 v96, v125, 16, v124
	v_perm_b32 v124, v139, v128, 0xc0c0004
	v_perm_b32 v125, v201, v187, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v133, v125, 16, v124
	v_wmma_i32_16x16x16_iu4 v[124:131], v[96:97], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v96, v157, v137, 0xc0c0004
	v_perm_b32 v97, v193, v188, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v122, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[124:131], v[132:133], v[151:152], v[124:131] neg_lo:[1,1,0]
	v_perm_b32 v132, v217, v207, 0xc0c0004
	v_perm_b32 v133, v237, v231, 0xc0c0004
	v_lshl_or_b32 v97, v97, 16, v96
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v96, v133, 16, v132
	v_perm_b32 v132, v196, v192, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v133, v208, v202, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[124:131], v[96:97], v[153:154], v[124:131] neg_lo:[1,1,0]
	v_perm_b32 v96, v158, v138, 0xc0c0004
	v_perm_b32 v97, v180, v184, 0xc0c0004
	v_lshl_or_b32 v97, v97, 16, v96
	v_lshl_or_b32 v96, v133, 16, v132
	v_perm_b32 v132, v210, v205, 0xc0c0004
	v_perm_b32 v133, v220, v215, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[124:131], v[96:97], v[155:156], v[124:131] neg_lo:[1,1,0]
	v_perm_b32 v96, v191, v186, 0xc0c0004
	v_perm_b32 v97, v200, v134, 0xc0c0004
	v_perm_b32 v134, v226, v222, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v97, v97, 16, v96
	v_lshl_or_b32 v96, v133, 16, v132
	v_perm_b32 v132, v174, v136, 0xc0c0004
	v_perm_b32 v133, v206, v135, 0xc0c0004
	v_perm_b32 v135, v234, v230, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v158, v133, 16, v132
	v_lshl_or_b32 v157, v135, 16, v134
	v_wmma_i32_16x16x16_iu4 v[132:139], v[96:97], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v96, v179, v175, 0xc0c0004
	v_perm_b32 v97, v197, v172, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v129, v129
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[132:139], v[157:158], v[151:152], v[132:139] neg_lo:[1,1,0]
	v_perm_b32 v157, v223, v211, 0xc0c0004
	v_perm_b32 v158, v238, v235, 0xc0c0004
	v_lshl_or_b32 v97, v97, 16, v96
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v96, v158, 16, v157
	v_perm_b32 v157, v198, v194, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v212, v203, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[132:139], v[96:97], v[153:154], v[132:139] neg_lo:[1,1,0]
	v_perm_b32 v96, v178, v176, 0xc0c0004
	v_perm_b32 v97, v183, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v97, v97, 16, v96
	v_lshl_or_b32 v96, v158, 16, v157
	v_wmma_i32_16x16x16_iu4 v[132:139], v[96:97], v[155:156], v[132:139] neg_lo:[1,1,0]
	v_perm_b32 v97, v145, v140, 0xc0c0004
	ds_load_u8 v140, v95
	v_perm_b32 v96, v98, v144, 0xc0c0004
	v_perm_b32 v98, v142, v141, 0xc0c0004
	v_perm_b32 v141, v143, v182, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v95, v97, 16, v96
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v134, v134
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v96, v141, 16, v98
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[95:96], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v9, v150, v159, 0xc0c0004
	v_perm_b32 v10, v160, v146, 0xc0c0004
	v_perm_b32 v95, v147, v148, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v139, v139
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v149, v140, 0xc0c0004
	v_lshl_or_b32 v9, v10, 16, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v10, v96, 16, v95
	v_perm_b32 v95, v162, v163, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[151:152], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v9, v165, v166, 0xc0c0004
	v_perm_b32 v10, v167, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v10, 16, v9
	v_lshl_or_b32 v10, v94, 16, v95
	v_perm_b32 v94, v169, v170, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[153:154], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v9, v173, v177, 0xc0c0004
	v_perm_b32 v10, v181, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v10, 16, v9
	v_lshl_or_b32 v10, v93, 16, v94
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[155:156], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v9, v1
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_5:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v1, s34, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s0, s1, 0
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s1, s33, s34
	.loc	1 178 18 is_stmt 0              ; generate_amdgcn.py:178:18
	s_and_b32 s9, s13, 0xffff
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s1, s1, s0
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_mov_b32 s8, s12
	v_add_lshl_u32 v1, s1, v1, 1
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s0, s7
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v27, s7, v27
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s6, s3
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s33, s33, s7
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v10, s0, v92, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v11
	v_and_b32_e32 v0, 0x1e0, v0
	s_mov_b32 s0, 0x76543210
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v95, v1, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v92, 0x80000000, v10, s2
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	v_add_nc_u32_e32 v189, 0xe0, v10
	v_add_nc_u32_e32 v191, 0xe8, v10
	v_add_nc_u32_e32 v193, 0xf0, v10
	v_add_nc_u32_e32 v195, 0xf8, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s7, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v193, 0x80000000, v193, s2
	v_cndmask_b32_e64 v195, 0x80000000, v195, s2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v95, 16, v95
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v93, 4, v10
	v_add_nc_u32_e32 v94, 8, v10
	v_add_nc_u32_e32 v96, 16, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v14, v14, v95 :: v_dual_add_nc_u32 v97, 20, v10
	v_mul_f32_e32 v12, v12, v95
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v1, 0x80000000, v93, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v13, v13, v95
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v93, 0x80000000, v94, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v15, v15, v95 :: v_dual_add_nc_u32 v94, 12, v10
	v_dual_mul_f32 v19, v19, v95 :: v_dual_add_nc_u32 v98, 24, v10
	v_dual_mul_f32 v21, v21, v95 :: v_dual_add_nc_u32 v140, 28, v10
	v_dual_mul_f32 v16, v16, v95 :: v_dual_add_nc_u32 v141, 32, v10
	v_dual_mul_f32 v23, v23, v95 :: v_dual_add_nc_u32 v142, 36, v10
	v_dual_mul_f32 v18, v18, v95 :: v_dual_add_nc_u32 v143, 40, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v94, 0x80000000, v94, s2
	v_cndmask_b32_e64 v97, 0x80000000, v97, s2
	v_cndmask_b32_e64 v98, 0x80000000, v98, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v17, v17, v95
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	s_clause 0x7
	buffer_load_u16 v92, v92, s[8:11], 0 offen
	buffer_load_u16 v144, v1, s[8:11], 0 offen
	buffer_load_u16 v93, v93, s[8:11], 0 offen
	buffer_load_u16 v94, v94, s[8:11], 0 offen
	buffer_load_u16 v96, v96, s[8:11], 0 offen
	buffer_load_u16 v97, v97, s[8:11], 0 offen
	buffer_load_u16 v98, v98, s[8:11], 0 offen
	buffer_load_u16 v140, v140, s[8:11], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v141, s2
	v_cndmask_b32_e64 v141, 0x80000000, v142, s2
	v_cndmask_b32_e64 v142, 0x80000000, v143, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v20, v20, v95 :: v_dual_add_nc_u32 v143, 44, v10
	v_dual_mul_f32 v22, v22, v95 :: v_dual_add_nc_u32 v145, 48, v10
	v_dual_mul_f32 v25, v25, v95 :: v_dual_add_nc_u32 v146, 52, v10
	v_dual_mul_f32 v24, v24, v95 :: v_dual_add_nc_u32 v147, 56, v10
	v_dual_mul_f32 v99, v99, v95 :: v_dual_add_nc_u32 v148, 60, v10
	v_dual_mul_f32 v26, v26, v95 :: v_dual_add_nc_u32 v149, 64, v10
	v_dual_mul_f32 v101, v101, v95 :: v_dual_add_nc_u32 v150, 0x44, v10
	v_dual_mul_f32 v100, v100, v95 :: v_dual_add_nc_u32 v151, 0x48, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	s_clause 0x7
	buffer_load_u16 v152, v1, s[8:11], 0 offen
	buffer_load_u16 v141, v141, s[8:11], 0 offen
	buffer_load_u16 v142, v142, s[8:11], 0 offen
	buffer_load_u16 v143, v143, s[8:11], 0 offen
	buffer_load_u16 v145, v145, s[8:11], 0 offen
	buffer_load_u16 v146, v146, s[8:11], 0 offen
	buffer_load_u16 v147, v147, s[8:11], 0 offen
	buffer_load_u16 v148, v148, s[8:11], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v149, s2
	v_cndmask_b32_e64 v149, 0x80000000, v150, s2
	v_cndmask_b32_e64 v150, 0x80000000, v151, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v102, v102, v95 :: v_dual_add_nc_u32 v151, 0x4c, v10
	v_dual_mul_f32 v104, v104, v95 :: v_dual_add_nc_u32 v153, 0x50, v10
	v_dual_mul_f32 v103, v103, v95 :: v_dual_add_nc_u32 v154, 0x54, v10
	v_dual_mul_f32 v106, v106, v95 :: v_dual_add_nc_u32 v155, 0x58, v10
	v_dual_mul_f32 v105, v105, v95 :: v_dual_add_nc_u32 v156, 0x5c, v10
	v_dual_mul_f32 v108, v108, v95 :: v_dual_add_nc_u32 v157, 0x60, v10
	v_dual_mul_f32 v107, v107, v95 :: v_dual_add_nc_u32 v158, 0x64, v10
	v_dual_mul_f32 v110, v110, v95 :: v_dual_add_nc_u32 v159, 0x68, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v151, 0x80000000, v151, s2
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	v_cndmask_b32_e64 v154, 0x80000000, v154, s2
	v_cndmask_b32_e64 v155, 0x80000000, v155, s2
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	s_clause 0x7
	buffer_load_u16 v160, v1, s[8:11], 0 offen
	buffer_load_u16 v149, v149, s[8:11], 0 offen
	buffer_load_u16 v150, v150, s[8:11], 0 offen
	buffer_load_u16 v151, v151, s[8:11], 0 offen
	buffer_load_u16 v153, v153, s[8:11], 0 offen
	buffer_load_u16 v154, v154, s[8:11], 0 offen
	buffer_load_u16 v155, v155, s[8:11], 0 offen
	buffer_load_u16 v156, v156, s[8:11], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v157, s2
	v_cndmask_b32_e64 v157, 0x80000000, v158, s2
	v_cndmask_b32_e64 v158, 0x80000000, v159, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v112, v112, v95 :: v_dual_add_nc_u32 v159, 0x6c, v10
	v_dual_mul_f32 v114, v114, v95 :: v_dual_add_nc_u32 v161, 0x70, v10
	v_dual_mul_f32 v109, v109, v95 :: v_dual_add_nc_u32 v162, 0x74, v10
	v_dual_mul_f32 v116, v116, v95 :: v_dual_add_nc_u32 v163, 0x78, v10
	v_dual_mul_f32 v111, v111, v95 :: v_dual_add_nc_u32 v164, 0x7c, v10
	v_dual_mul_f32 v118, v118, v95 :: v_dual_add_nc_u32 v165, 0x80, v10
	v_dual_mul_f32 v113, v113, v95 :: v_dual_add_nc_u32 v166, 0x84, v10
	v_dual_mul_f32 v120, v120, v95 :: v_dual_add_nc_u32 v167, 0x88, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	v_cndmask_b32_e64 v164, 0x80000000, v164, s2
	s_clause 0x7
	buffer_load_u16 v168, v1, s[8:11], 0 offen
	buffer_load_u16 v157, v157, s[8:11], 0 offen
	buffer_load_u16 v158, v158, s[8:11], 0 offen
	buffer_load_u16 v159, v159, s[8:11], 0 offen
	buffer_load_u16 v161, v161, s[8:11], 0 offen
	buffer_load_u16 v162, v162, s[8:11], 0 offen
	buffer_load_u16 v163, v163, s[8:11], 0 offen
	buffer_load_u16 v164, v164, s[8:11], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v165, s2
	v_cndmask_b32_e64 v165, 0x80000000, v166, s2
	v_cndmask_b32_e64 v166, 0x80000000, v167, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v122, v122, v95 :: v_dual_add_nc_u32 v167, 0x8c, v10
	v_dual_mul_f32 v124, v124, v95 :: v_dual_add_nc_u32 v169, 0x90, v10
	v_dual_mul_f32 v115, v115, v95 :: v_dual_add_nc_u32 v170, 0x94, v10
	v_dual_mul_f32 v126, v126, v95 :: v_dual_add_nc_u32 v171, 0x98, v10
	v_dual_mul_f32 v117, v117, v95 :: v_dual_add_nc_u32 v172, 0x9c, v10
	v_dual_mul_f32 v128, v128, v95 :: v_dual_add_nc_u32 v173, 0xa0, v10
	v_dual_mul_f32 v119, v119, v95 :: v_dual_add_nc_u32 v174, 0xa4, v10
	v_dual_mul_f32 v130, v130, v95 :: v_dual_add_nc_u32 v175, 0xa8, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v167, 0x80000000, v167, s2
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	v_cndmask_b32_e64 v171, 0x80000000, v171, s2
	v_cndmask_b32_e64 v172, 0x80000000, v172, s2
	s_clause 0x7
	buffer_load_u16 v176, v1, s[8:11], 0 offen
	buffer_load_u16 v165, v165, s[8:11], 0 offen
	buffer_load_u16 v166, v166, s[8:11], 0 offen
	buffer_load_u16 v167, v167, s[8:11], 0 offen
	buffer_load_u16 v169, v169, s[8:11], 0 offen
	buffer_load_u16 v170, v170, s[8:11], 0 offen
	buffer_load_u16 v171, v171, s[8:11], 0 offen
	buffer_load_u16 v172, v172, s[8:11], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v173, s2
	v_cndmask_b32_e64 v173, 0x80000000, v174, s2
	v_cndmask_b32_e64 v174, 0x80000000, v175, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v132, v132, v95 :: v_dual_add_nc_u32 v175, 0xac, v10
	v_dual_mul_f32 v134, v134, v95 :: v_dual_add_nc_u32 v177, 0xb0, v10
	v_dual_mul_f32 v121, v121, v95 :: v_dual_add_nc_u32 v178, 0xb4, v10
	v_dual_mul_f32 v136, v136, v95 :: v_dual_add_nc_u32 v179, 0xb8, v10
	v_dual_mul_f32 v123, v123, v95 :: v_dual_add_nc_u32 v180, 0xbc, v10
	v_dual_mul_f32 v138, v138, v95 :: v_dual_add_nc_u32 v181, 0xc0, v10
	v_dual_mul_f32 v125, v125, v95 :: v_dual_add_nc_u32 v182, 0xc4, v10
	v_dual_mul_f32 v2, v2, v95 :: v_dual_add_nc_u32 v183, 0xc8, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v175, 0x80000000, v175, s2
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	v_cndmask_b32_e64 v178, 0x80000000, v178, s2
	v_cndmask_b32_e64 v179, 0x80000000, v179, s2
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	s_clause 0x7
	buffer_load_u16 v184, v1, s[8:11], 0 offen
	buffer_load_u16 v173, v173, s[8:11], 0 offen
	buffer_load_u16 v174, v174, s[8:11], 0 offen
	buffer_load_u16 v175, v175, s[8:11], 0 offen
	buffer_load_u16 v177, v177, s[8:11], 0 offen
	buffer_load_u16 v178, v178, s[8:11], 0 offen
	buffer_load_u16 v179, v179, s[8:11], 0 offen
	buffer_load_u16 v180, v180, s[8:11], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v181, s2
	v_cndmask_b32_e64 v181, 0x80000000, v182, s2
	v_cndmask_b32_e64 v182, 0x80000000, v183, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v4, v4, v95 :: v_dual_add_nc_u32 v183, 0xcc, v10
	v_dual_mul_f32 v6, v6, v95 :: v_dual_add_nc_u32 v185, 0xd0, v10
	v_dual_mul_f32 v127, v127, v95 :: v_dual_add_nc_u32 v186, 0xd4, v10
	v_dual_mul_f32 v8, v8, v95 :: v_dual_add_nc_u32 v187, 0xd8, v10
	v_dual_mul_f32 v129, v129, v95 :: v_dual_add_nc_u32 v188, 0xdc, v10
	v_dual_mul_f32 v131, v131, v95 :: v_dual_add_nc_u32 v190, 0xe4, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v183, 0x80000000, v183, s2
	v_cndmask_b32_e64 v185, 0x80000000, v185, s2
	v_cndmask_b32_e64 v186, 0x80000000, v186, s2
	v_cndmask_b32_e64 v187, 0x80000000, v187, s2
	v_cndmask_b32_e64 v188, 0x80000000, v188, s2
	s_clause 0x7
	buffer_load_u16 v192, v1, s[8:11], 0 offen
	buffer_load_u16 v181, v181, s[8:11], 0 offen
	buffer_load_u16 v182, v182, s[8:11], 0 offen
	buffer_load_u16 v183, v183, s[8:11], 0 offen
	buffer_load_u16 v185, v185, s[8:11], 0 offen
	buffer_load_u16 v186, v186, s[8:11], 0 offen
	buffer_load_u16 v187, v187, s[8:11], 0 offen
	buffer_load_u16 v188, v188, s[8:11], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v189, s2
	v_cndmask_b32_e64 v189, 0x80000000, v190, s2
	v_cndmask_b32_e64 v190, 0x80000000, v191, s2
	v_add_nc_u32_e32 v191, 0xec, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v133, v133, v95 :: v_dual_add_nc_u32 v194, 0xf4, v10
	v_dual_mul_f32 v135, v135, v95 :: v_dual_add_nc_u32 v10, 0xfc, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v191, 0x80000000, v191, s2
	v_cndmask_b32_e64 v194, 0x80000000, v194, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	s_clause 0x7
	buffer_load_u16 v196, v1, s[8:11], 0 offen
	buffer_load_u16 v189, v189, s[8:11], 0 offen
	buffer_load_u16 v190, v190, s[8:11], 0 offen
	buffer_load_u16 v191, v191, s[8:11], 0 offen
	buffer_load_u16 v193, v193, s[8:11], 0 offen
	buffer_load_u16 v194, v194, s[8:11], 0 offen
	buffer_load_u16 v195, v195, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v1, 1, v11
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v92, 16, v92
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v12, v12, v92, v54
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v196, 16, v196
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v189, 16, v189
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v190, 16, v190
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v191, 16, v191
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v193, 16, v193
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v194, 16, v194
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v195, 16, v195
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v4, v4, v191, v32
	v_fma_f32 v2, v2, v189, v34
	v_fma_f32 v6, v6, v194, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v8, v8, v10, v28
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v54, v12, s2
	v_cndmask_b32_e64 v4, v32, v4, s2
	v_cndmask_b32_e64 v2, v34, v2, s2
	v_cndmask_b32_e64 v6, v30, v6, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v10, v10, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v139, v139, v95 :: v_dual_lshlrev_b32 v144, 16, v144
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v93, 16, v93
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v9, v9, v95 :: v_dual_lshlrev_b32 v94, 16, v94
	v_dual_mul_f32 v3, v3, v95 :: v_dual_lshlrev_b32 v96, 16, v96
	v_dual_mul_f32 v5, v5, v95 :: v_dual_lshlrev_b32 v98, 16, v98
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v13, v13, v144, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v15, v15, v94, v89
	v_fma_f32 v16, v16, v96, v88
	.loc	1 187 19 is_stmt 1              ; generate_amdgcn.py:187:19
	v_max_f32_e32 v32, 0, v10
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v14, v14, v93, v90
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v7, v7, v95 :: v_dual_lshlrev_b32 v140, 16, v140
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v193, v31
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v91, v13, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v13, v90, v14, s2
	v_cndmask_b32_e64 v14, v89, v15, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v97, 16, v97
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v88, v16, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v152, 16, v152
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v18, v18, v98, v86
	v_fma_f32 v7, v7, v195, v29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v31, v5, s2
	v_cndmask_b32_e64 v31, v28, v8, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v8, v14, v14
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v17, v17, v97, v87
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v10, v15, v15 :: v_dual_lshlrev_b32 v141, 16, v141
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v19, v19, v140, v85
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v29, v7, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v16, v87, v17, s2
	v_cndmask_b32_e64 v17, v86, v18, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v7, v13, v13
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v20, v20, v152, v84
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v34, 0, v10
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v21, v141, v83
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v13, v16, v16 :: v_dual_lshlrev_b32 v142, 16, v142
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v85, v19, s2
	v_cndmask_b32_e64 v19, v84, v20, s2
	v_cndmask_b32_e64 v20, v83, v21, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v145, 16, v145
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v14, v17, v17 :: v_dual_lshlrev_b32 v143, 16, v143
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v148, 16, v148
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v22, v142, v82
	v_fma_f32 v9, v9, v196, v35
	v_fma_f32 v3, v3, v190, v33
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v17, 0, v7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v25, v146, v79
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v14, 0, v14
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v23, v23, v143, v81
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v10, v20, v20 :: v_dual_lshlrev_b32 v147, 16, v147
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v24, v24, v145, v80
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v7, v18, v18 :: v_dual_lshlrev_b32 v160, 16, v160
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v150, 16, v150
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v26, v147, v78
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v82, v22, s2
	v_cndmask_b32_e64 v22, v81, v23, s2
	v_cndmask_b32_e64 v23, v80, v24, s2
	v_cndmask_b32_e64 v24, v79, v25, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v151, 16, v151
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v35, v9, s2
	v_cndmask_b32_e64 v3, v33, v3, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v33, 0, v8
	v_max_f32_e32 v35, 0, v13
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v92, v99, v148, v77
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v8, v19, v19 :: v_dual_lshlrev_b32 v149, 16, v149
	v_dual_max_f32 v13, v21, v21 :: v_dual_lshlrev_b32 v154, 16, v154
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v168, 16, v168
	v_lshlrev_b32_e32 v158, 16, v158
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v93, v100, v160, v76
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v78, v26, s2
	v_cndmask_b32_e64 v26, v77, v92, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v77, 0, v8
	v_max_f32_e32 v8, v24, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v96, v103, v151, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v155, 16, v155
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v15, v22, v22 :: v_dual_lshlrev_b32 v156, 16, v156
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v162, 16, v162
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v98, v105, v154, v71
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v54, v76, v93, s2
	v_cndmask_b32_e64 v73, v73, v96, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v76, 0, v7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v94, v101, v149, v75
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v78, 0, v10 :: v_dual_max_f32 v79, 0, v13
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v101, v108, v168, v68
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v10, v25, v25
	v_dual_max_f32 v80, 0, v15 :: v_dual_lshlrev_b32 v153, 16, v153
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v159, 16, v159
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v13, v26, v26 :: v_dual_lshlrev_b32 v164, 16, v164
	v_dual_max_f32 v15, v54, v54 :: v_dual_lshlrev_b32 v176, 16, v176
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v167, 16, v167
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v99, v106, v155, v70
	v_fma_f32 v103, v110, v158, v66
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v71, v71, v98, s2
	v_cndmask_b32_e64 v68, v68, v101, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v7, v23, v23 :: v_dual_lshlrev_b32 v166, 16, v166
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v106, v113, v162, v63
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v54, 0, v10
	v_max_f32_e32 v10, v73, v73
	v_dual_max_f32 v24, 0, v8 :: v_dual_lshlrev_b32 v157, 16, v157
	v_dual_max_f32 v82, 0, v15 :: v_dual_lshlrev_b32 v161, 16, v161
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v169, 16, v169
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v15, v71, v71 :: v_dual_lshlrev_b32 v184, 16, v184
	v_dual_max_f32 v73, 0, v10 :: v_dual_lshlrev_b32 v180, 16, v180
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v137, v137, v95
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v95, v102, v150, v74
	v_fma_f32 v97, v104, v153, v72
	v_fma_f32 v104, v111, v159, v65
	v_fma_f32 v108, v115, v164, v61
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v75, v75, v94, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v172, 16, v172
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v66, v66, v103, s2
	v_cndmask_b32_e64 v63, v63, v106, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v23, 0, v7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v111, v118, v166, v58
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v10, v68, v68 :: v_dual_lshlrev_b32 v177, 16, v177
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v192, 16, v192
	v_lshlrev_b32_e32 v185, 16, v185
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v102, v109, v157, v67
	v_fma_f32 v109, v116, v176, v60
	v_fma_f32 v113, v120, v169, v56
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v74, v74, v95, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v163, 16, v163
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v72, v72, v97, s2
	v_cndmask_b32_e64 v70, v70, v99, s2
	v_cndmask_b32_e64 v61, v61, v108, s2
	v_cndmask_b32_e64 v58, v58, v111, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v7, v75, v75
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v116, v123, v172, v52
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v75, 0, v15
	v_max_f32_e32 v15, v66, v66
	v_max_f32_e32 v68, 0, v10
	v_max_f32_e32 v10, v63, v63
	v_dual_max_f32 v81, 0, v13 :: v_dual_lshlrev_b32 v170, 16, v170
	v_dual_max_f32 v13, v72, v72 :: v_dual_lshlrev_b32 v174, 16, v174
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v171, 16, v171
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v71, 0, v7 :: v_dual_lshlrev_b32 v178, 16, v178
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v181, 16, v181
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v7, v70, v70 :: v_dual_lshlrev_b32 v188, 16, v188
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v100, v107, v156, v69
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v67, v67, v102, s2
	v_cndmask_b32_e64 v65, v65, v104, s2
	v_cndmask_b32_e64 v56, v56, v113, s2
	v_cndmask_b32_e64 v52, v52, v116, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v8, v74, v74
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v107, v114, v163, v62
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v70, 0, v15 :: v_dual_max_f32 v15, v61, v61
	v_max_f32_e32 v63, 0, v10
	v_dual_max_f32 v10, v58, v58 :: v_dual_lshlrev_b32 v165, 16, v165
	v_dual_max_f32 v72, 0, v8 :: v_dual_lshlrev_b32 v173, 16, v173
	v_max_f32_e32 v66, 0, v7
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v182, 16, v182
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v105, v112, v161, v64
	v_fma_f32 v112, v119, v167, v57
	v_fma_f32 v114, v121, v170, v55
	v_fma_f32 v121, v128, v177, v47
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v69, v69, v100, s2
	v_cndmask_b32_e64 v62, v62, v107, s2
	v_cndmask_b32_e64 v60, v60, v109, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v74, 0, v13
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v115, v122, v171, v53
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v13, v67, v67
	v_dual_max_f32 v7, v65, v65 :: v_dual_max_f32 v58, 0, v10
	v_dual_max_f32 v10, v52, v52 :: v_dual_max_f32 v65, 0, v15
	v_max_f32_e32 v15, v56, v56
	v_dual_max_f32 v8, v69, v69 :: v_dual_lshlrev_b32 v175, 16, v175
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v110, v117, v165, v59
	v_fma_f32 v117, v124, v184, v51
	v_fma_f32 v118, v125, v173, v50
	v_fma_f32 v119, v126, v174, v49
	v_fma_f32 v126, v133, v181, v42
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v64, v64, v105, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v179, 16, v179
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v57, v57, v112, s2
	v_cndmask_b32_e64 v55, v55, v114, s2
	v_cndmask_b32_e64 v53, v53, v115, s2
	v_cndmask_b32_e64 v47, v47, v121, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v69, 0, v13
	v_max_f32_e32 v13, v62, v62
	v_max_f32_e32 v61, 0, v7
	v_dual_max_f32 v7, v60, v60 :: v_dual_max_f32 v60, 0, v15
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v187, 16, v187
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v67, 0, v8 :: v_dual_lshlrev_b32 v186, 16, v186
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v120, v127, v175, v48
	v_fma_f32 v122, v129, v178, v46
	v_fma_f32 v124, v131, v180, v44
	v_fma_f32 v125, v132, v192, v43
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v59, v59, v110, s2
	v_cndmask_b32_e64 v51, v51, v117, s2
	v_cndmask_b32_e64 v50, v50, v118, s2
	v_cndmask_b32_e64 v42, v42, v126, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v8, v64, v64
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v123, v130, v179, v45
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v64, 0, v13
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v131, v138, v187, v37
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v52, 0, v10
	v_max_f32_e32 v10, v47, v47
	v_max_f32_e32 v56, 0, v7
	v_max_f32_e32 v7, v55, v55
	v_max_f32_e32 v13, v57, v57
	v_dual_max_f32 v62, 0, v8 :: v_dual_lshlrev_b32 v183, 16, v183
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v130, v137, v186, v38
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v49, v49, v119, s2
	v_cndmask_b32_e64 v48, v48, v120, s2
	v_cndmask_b32_e64 v46, v46, v122, s2
	v_cndmask_b32_e64 v45, v45, v123, s2
	v_cndmask_b32_e64 v43, v43, v125, s2
	v_cndmask_b32_e64 v37, v37, v131, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v8, v59, v59 :: v_dual_max_f32 v15, v50, v50
	v_dual_max_f32 v50, 0, v7 :: v_dual_max_f32 v59, 0, v13
	v_max_f32_e32 v13, v51, v51
	v_dual_max_f32 v47, 0, v10 :: v_dual_max_f32 v4, v4, v4
	v_max_f32_e32 v10, v42, v42
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v129, v136, v185, v39
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v44, v44, v124, s2
	v_cndmask_b32_e64 v38, v38, v130, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v55, 0, v15
	v_max_f32_e32 v15, v45, v45
	v_dual_max_f32 v57, 0, v8 :: v_dual_max_f32 v8, v53, v53
	v_max_f32_e32 v53, 0, v13
	v_max_f32_e32 v13, v46, v46
	v_dual_max_f32 v25, 0, v10 :: v_dual_max_f32 v10, v37, v37
	v_max_f32_e32 v7, v49, v49
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v128, v135, v183, v40
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v39, v129, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_max_f32 v16, 0, v10 :: v_dual_max_f32 v45, 0, v7
	v_max_f32_e32 v7, v44, v44
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v40, v128, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v127, v134, v182, v41
	v_fma_f32 v132, v139, v188, v36
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v29, 0, v7
	v_dual_max_f32 v10, 0, v4 :: v_dual_max_f32 v7, v39, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v41, v41, v127, s2
	v_cndmask_b32_e64 v36, v36, v132, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v5, v5, v5
	v_max_f32_e32 v20, 0, v7
	v_dual_max_f32 v28, 0, v15 :: v_dual_max_f32 v15, v40, v40
	v_max_f32_e32 v51, 0, v8
	v_max_f32_e32 v8, v48, v48
	v_max_f32_e32 v48, 0, v13
	v_dual_max_f32 v13, v41, v41 :: v_dual_max_f32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v46, 0, v8
	v_dual_max_f32 v8, v43, v43 :: v_dual_max_f32 v21, 0, v13
	v_dual_max_f32 v7, 0, v5 :: v_dual_max_f32 v4, v31, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v9, v9, v9 :: v_dual_max_f32 v26, 0, v8
	v_dual_max_f32 v8, v38, v38 :: v_dual_mul_f32 v5, v12, v12
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v12, v32, v32
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v4, 0, v4 :: v_dual_mul_f32 v17, v17, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v19, 0, v8 :: v_dual_max_f32 v8, 0, v6
	v_dual_max_f32 v22, 0, v15 :: v_dual_max_f32 v15, 0, v2
	v_dual_max_f32 v2, v30, v30 :: v_dual_max_f32 v13, v36, v36
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v32, v33, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v33.l, v17.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v44, v57, v57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v6, 0, v2
	v_max_f32_e32 v18, 0, v13
	v_max_f32_e32 v13, 0, v9
	v_max_f32_e32 v9, 0, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.h, 0
	v_mov_b16_e32 v3.l, v12.h
	v_mov_b16_e32 v2.l, v5.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v46, v46, v46
	v_mul_f32_e32 v28, v28, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.h, v3.h
	v_and_b32_e32 v31, 1, v3
	v_mov_b16_e32 v33.h, v3.h
	v_mov_b16_e32 v3.l, v32.h
	v_mov_b16_e32 v36.h, v3.h
	v_and_b32_e32 v30, 1, v2
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add3_u32 v2, s33, s6, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v12, v31, 0x7fff
	v_and_b32_e32 v27, 1, v33
	.loc	1 188 19 is_stmt 1              ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v31, v34, v34
	v_mul_f32_e32 v33, v14, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v5, v5, v30, 0x7fff
	v_mov_b16_e32 v5.l, v12.h
	v_add3_u32 v17, v17, v27, 0x7fff
	v_mov_b16_e32 v27.l, v31.h
	v_mov_b16_e32 v27.h, v3.h
	v_and_b32_e32 v12, 1, v3
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v30, v35, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v34.l, v33.h
	v_mov_b16_e32 v34.h, v3.h
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v12, v32, v12, 0x7fff
	v_mov_b16_e32 v3.l, v30.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v32, v76, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v12.l, v17.h
	v_add3_u32 v17, v31, v27, 0x7fff
	v_and_b32_e32 v27, 1, v34
	v_and_b32_e32 v14, 1, v3
	v_mov_b16_e32 v3.l, v32.h
	v_mov_b16_e32 v35.h, v3.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v34, v78, v78
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v27, v33, v27, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v33, v79, v79
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v14, v30, v14, 0x7fff
	v_and_b32_e32 v30, 1, v3
	v_mov_b16_e32 v14.l, v17.h
	v_mov_b16_e32 v3.l, v34.h
	v_mov_b16_e32 v35.l, v33.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v31, v77, v77
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v17, v32, v30, 0x7fff
	v_mov_b16_e32 v30.h, v3.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v32, v80, v80
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v27.h
	v_mov_b16_e32 v30.l, v31.h
	v_mov_b16_e32 v37.h, v3.h
	v_mov_b16_e32 v38.h, v3.h
	v_mov_b16_e32 v40.h, v3.h
	v_mov_b16_e32 v42.h, v3.h
	v_and_b32_e32 v27, 1, v30
	v_and_b32_e32 v30, 1, v3
	v_mov_b16_e32 v3.l, v32.h
	v_mov_b16_e32 v49.h, v3.h
	v_mov_b16_e32 v43.h, v3.h
	v_add3_u32 v27, v31, v27, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v31, v23, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v23, v34, v30, 0x7fff
	v_and_b32_e32 v30, 1, v3
	v_and_b32_e32 v34, 1, v35
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v35, v24, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v36.l, v31.h
	v_mov_b16_e32 v23.l, v27.h
	v_add3_u32 v24, v32, v30, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v32, v81, v81
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v35.h
	v_and_b32_e32 v30, 1, v36
	v_add3_u32 v27, v33, v34, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v33, v54, v54
	v_mul_f32_e32 v34, v82, v82
	v_mul_f32_e32 v48, v48, v48
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v31, v30, 0x7fff
	v_mov_b16_e32 v24.l, v27.h
	v_and_b32_e32 v27, 1, v3
	v_mov_b16_e32 v3.l, v32.h
	v_mov_b16_e32 v31.l, v33.h
	v_mov_b16_e32 v31.h, v3.h
	v_mov_b16_e32 v37.l, v34.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v26, v26, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v36, 1, v3
	v_add3_u32 v27, v35, v27, 0x7fff
	v_and_b32_e32 v31, 1, v31
	v_mov_b16_e32 v27.l, v30.h
	v_mov_b16_e32 v54.h, v3.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v22, v22, v22
	v_mul_f32_e32 v20, v20, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v33, v31, 0x7fff
	v_add3_u32 v31, v32, v36, 0x7fff
	v_and_b32_e32 v32, 1, v37
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v36, v72, v72 :: v_dual_mul_f32 v37, v74, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v31.l, v30.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v30, v73, v73
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v32, v34, v32, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v34.l, v36.h
	v_mov_b16_e32 v34.h, v3.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v35, v71, v71
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v38.l, v37.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v47, v47, v47 :: v_dual_mul_f32 v18, v18, v18
	v_mul_f32_e32 v29, v29, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v35.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v25, v25, v25 :: v_dual_and_b32 v38, 1, v38
	v_dual_mul_f32 v16, v16, v16 :: v_dual_mul_f32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v33, 1, v3
	v_mov_b16_e32 v3.l, v30.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v8, v8, v8 :: v_dual_mul_f32 v19, v19, v19
	v_mul_f32_e32 v10, v10, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v33, v35, v33, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v35, v75, v75
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v33.l, v32.h
	v_and_b32_e32 v32, 1, v34
	v_and_b32_e32 v34, 1, v3
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v6, v6, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v35.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v13, v13, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v32, v36, v32, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v36, v66, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v30, v34, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v9, v9, v9 :: v_dual_and_b32 v34, 1, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v30.l, v32.h
	v_mov_b16_e32 v40.l, v36.h
	v_add3_u32 v32, v37, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v34, v35, v34, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v38, v68, v68
	v_mul_f32_e32 v4, v4, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v35, 1, v40
	v_mov_b16_e32 v34.l, v32.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v40, v70, v70 :: v_dual_mul_f32 v7, v7, v7
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v1, v2, v1, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_add3_u32 v35, v36, v35, 0x7fff
	v_mov_b16_e32 v36.l, v38.h
	v_mov_b16_e32 v36.h, v3.h
	.loc	1 188 19 is_stmt 1              ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v39, v67, v67
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v42.l, v40.h
	v_add_nc_u32_e32 v2, 64, v1
	s_mov_b32 s6, s10
	v_and_b32_e32 v36, 1, v36
	v_mov_b16_e32 v3.l, v39.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v37, v69, v69 :: v_dual_and_b32 v32, 1, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v32, v39, v32, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v39, v61, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v41, 1, v3
	v_mov_b16_e32 v32.l, v35.h
	v_add3_u32 v35, v38, v36, 0x7fff
	v_cndmask_b32_e32 v11, v23, v27, vcc_lo
	v_mov_b16_e32 v3.l, v39.h
	v_add3_u32 v36, v37, v41, 0x7fff
	v_and_b32_e32 v37, 1, v42
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v41, v62, v62
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v36.l, v35.h
	v_and_b32_e32 v38, 1, v3
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v35, v63, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v37, v40, v37, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v42, v64, v64
	v_mul_f32_e32 v40, v65, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v38, v39, v38, 0x7fff
	v_mov_b16_e32 v39.l, v41.h
	v_mov_b16_e32 v39.h, v3.h
	v_mov_b16_e32 v3.l, v35.h
	v_mov_b16_e32 v38.l, v37.h
	v_mov_b16_e32 v43.l, v42.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v37, 1, v39
	v_and_b32_e32 v39, 1, v3
	v_mov_b16_e32 v3.l, v40.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v37, v41, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v35, v35, v39, 0x7fff
	v_and_b32_e32 v39, 1, v3
	v_mov_b16_e32 v3.l, v44.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v35.l, v37.h
	v_add3_u32 v37, v42, v43, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v42, v59, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v39, v40, v39, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v43, v58, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.l, v37.h
	v_and_b32_e32 v37, 1, v3
	v_mov_b16_e32 v3.l, v42.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v41, v56, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v37, v44, v37, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v44, v50, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v50, 1, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v49.l, v41.h
	v_mov_b16_e32 v3.l, v44.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v40, 1, v49
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v49, v60, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v40, v41, v40, 0x7fff
	v_mov_b16_e32 v41.l, v43.h
	v_mov_b16_e32 v41.h, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v54.l, v49.h
	v_mov_b16_e32 v37.l, v40.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v40, v43, v41, 0x7fff
	v_add3_u32 v41, v42, v50, 0x7fff
	v_and_b32_e32 v42, 1, v54
	v_and_b32_e32 v43, 1, v3
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v50, v51, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v41.l, v40.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v40, v52, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v42, v49, v42, 0x7fff
	v_add3_u32 v43, v44, v43, 0x7fff
	v_mov_b16_e32 v44.l, v50.h
	v_mov_b16_e32 v44.h, v3.h
	v_mov_b16_e32 v3.l, v40.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v49, v55, v55
	v_mul_f32_e32 v51, v53, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v43.l, v42.h
	v_and_b32_e32 v42, 1, v44
	v_and_b32_e32 v44, 1, v3
	v_mov_b16_e32 v3.l, v49.h
	v_mov_b16_e32 v52.l, v51.h
	v_mov_b16_e32 v52.h, v3.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v45, v45, v45
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v42, v50, v42, 0x7fff
	v_add3_u32 v40, v40, v44, 0x7fff
	v_and_b32_e32 v44, 1, v3
	v_and_b32_e32 v50, 1, v52
	v_mov_b16_e32 v52.l, v45.h
	v_mov_b16_e32 v40.l, v42.h
	v_mov_b16_e32 v3.l, v46.h
	v_add3_u32 v44, v49, v44, 0x7fff
	v_add3_u32 v42, v51, v50, 0x7fff
	v_and_b32_e32 v49, 1, v52
	v_mov_b16_e32 v50.l, v28.h
	v_mov_b16_e32 v50.h, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v44.l, v42.h
	v_add3_u32 v45, v45, v49, 0x7fff
	v_mov_b16_e32 v49.l, v47.h
	v_mov_b16_e32 v49.h, v3.h
	v_and_b32_e32 v42, 1, v3
	v_mov_b16_e32 v3.l, v48.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v42, v46, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v46, 1, v3
	v_mov_b16_e32 v3.l, v29.h
	v_mov_b16_e32 v42.l, v45.h
	v_add3_u32 v45, v47, v49, 0x7fff
	v_and_b32_e32 v47, 1, v50
	v_add3_u32 v46, v48, v46, 0x7fff
	v_and_b32_e32 v48, 1, v3
	v_mov_b16_e32 v45.l, v26.h
	v_mov_b16_e32 v46.l, v45.h
	v_add3_u32 v28, v28, v47, 0x7fff
	v_mov_b16_e32 v45.h, v3.h
	v_mov_b16_e32 v3.l, v25.h
	v_add3_u32 v29, v29, v48, 0x7fff
	v_mov_b16_e32 v47.l, v21.h
	v_mov_b16_e32 v29.l, v28.h
	v_and_b32_e32 v28, 1, v45
	v_and_b32_e32 v45, 1, v3
	v_mov_b16_e32 v47.h, v3.h
	v_mov_b16_e32 v3.l, v22.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v26, v26, v28, 0x7fff
	v_add3_u32 v25, v25, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v45, 1, v47
	v_mov_b16_e32 v47.l, v20.h
	v_and_b32_e32 v28, 1, v3
	v_mov_b16_e32 v25.l, v26.h
	v_mov_b16_e32 v3.l, v19.h
	v_add3_u32 v21, v21, v45, 0x7fff
	v_and_b32_e32 v26, 1, v47
	v_add3_u32 v22, v22, v28, 0x7fff
	v_mov_b16_e32 v28.l, v13.h
	v_mov_b16_e32 v28.h, v3.h
	v_mov_b16_e32 v22.l, v21.h
	v_add3_u32 v20, v20, v26, 0x7fff
	v_mov_b16_e32 v26.l, v16.h
	v_mov_b16_e32 v26.h, v3.h
	v_and_b32_e32 v21, 1, v3
	v_mov_b16_e32 v3.l, v18.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v15, v15, v15 :: v_dual_and_b32 v26, 1, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v19, v19, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v21, 1, v3
	v_mov_b16_e32 v3.l, v15.h
	v_mov_b16_e32 v19.l, v20.h
	v_add3_u32 v16, v16, v26, 0x7fff
	v_and_b32_e32 v20, 1, v28
	v_add3_u32 v18, v18, v21, 0x7fff
	v_and_b32_e32 v21, 1, v3
	v_mov_b16_e32 v3.l, v10.h
	v_mov_b16_e32 v18.l, v16.h
	v_add3_u32 v13, v13, v20, 0x7fff
	v_mov_b16_e32 v16.l, v9.h
	v_mov_b16_e32 v16.h, v3.h
	v_mov_b16_e32 v20.l, v7.h
	v_mov_b16_e32 v20.h, v3.h
	v_add3_u32 v15, v15, v21, 0x7fff
	v_mov_b16_e32 v15.l, v13.h
	v_and_b32_e32 v13, 1, v3
	v_and_b32_e32 v16, 1, v16
	v_mov_b16_e32 v3.l, v8.h
	v_mov_b16_e32 v21.l, v6.h
	v_mov_b16_e32 v21.h, v3.h
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v9, v9, v16, 0x7fff
	v_and_b32_e32 v16, 1, v3
	v_mov_b16_e32 v3.l, v4.h
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v7, v7, v20, 0x7fff
	v_cndmask_b32_e32 v28, v37, v43, vcc_lo
	v_add3_u32 v8, v8, v16, 0x7fff
	v_dual_cndmask_b32 v16, v33, v34 :: v_dual_and_b32 v3, 1, v3
	v_add3_u32 v6, v6, v21, 0x7fff
	v_mov_b16_e32 v8.l, v7.h
	v_cndmask_b32_e32 v7, v12, v17, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cndmask_b32_e32 v4, v14, v5, vcc_lo
	v_mov_b16_e32 v3.l, v6.h
	v_cndmask_b32_e32 v6, v17, v12, vcc_lo
	v_cndmask_b32_e32 v12, v31, v24, vcc_lo
	v_add3_u32 v10, v10, v13, 0x7fff
	v_mov_b16_e32 v10.l, v9.h
	v_cndmask_b32_e32 v5, v5, v14, vcc_lo
	v_dual_cndmask_b32 v9, v27, v23 :: v_dual_cndmask_b32 v14, v34, v33
	v_cndmask_b32_e32 v21, v35, v36, vcc_lo
	v_cndmask_b32_e32 v23, v36, v35, vcc_lo
	v_dual_cndmask_b32 v27, v43, v37 :: v_dual_cndmask_b32 v34, v29, v42
	v_cndmask_b32_e32 v33, v44, v46, vcc_lo
	v_dual_cndmask_b32 v35, v19, v25 :: v_dual_cndmask_b32 v36, v18, v22
	v_dual_cndmask_b32 v19, v25, v19 :: v_dual_cndmask_b32 v18, v22, v18
	v_dual_cndmask_b32 v37, v8, v15 :: v_dual_mov_b32 v22, 0x7632
	v_dual_cndmask_b32 v8, v15, v8 :: v_dual_mov_b32 v15, 0x5410
	v_dual_cndmask_b32 v13, v24, v31 :: v_dual_cndmask_b32 v24, v39, v38
	v_dual_cndmask_b32 v17, v32, v30 :: v_dual_cndmask_b32 v26, v38, v39
	v_dual_cndmask_b32 v29, v42, v29 :: v_dual_cndmask_b32 v38, v3, v10
	v_cndmask_b32_e32 v3, v10, v3, vcc_lo
	v_cndmask_b32_e32 v10, 0x1054, v15, vcc_lo
	v_dual_cndmask_b32 v15, 0x3276, v22 :: v_dual_cndmask_b32 v20, v30, v32
	v_dual_cndmask_b32 v30, v40, v41 :: v_dual_cndmask_b32 v31, v41, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v10, v10, 8, v10
	v_lshl_or_b32 v15, v15, 8, v15
	v_cndmask_b32_e32 v32, v46, v44, vcc_lo
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x540054, v10
	v_and_b32_e32 v15, 0x760076, v15
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v10, v10, 4, v10
	v_lshl_or_b32 v15, v15, 4, v15
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v33, 0x5040504, v10
	v_and_b32_e32 v39, 0x7060706, v15
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_nc_u32_e32 v0, 32, v1
	v_permlanex16_b32 v40, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v3, v5, v4, v33
	v_perm_b32 v4, v5, v4, v39
	v_perm_b32 v5, v7, v6, v33
	v_perm_b32 v6, v7, v6, v39
	v_perm_b32 v7, v11, v9, v33
	v_perm_b32 v8, v11, v9, v39
	v_perm_b32 v9, v13, v12, v33
	v_perm_b32 v10, v13, v12, v39
	v_perm_b32 v11, v16, v14, v33
	v_perm_b32 v12, v16, v14, v39
	v_perm_b32 v13, v20, v17, v33
	v_perm_b32 v14, v20, v17, v39
	v_perm_b32 v17, v23, v24, v33
	v_perm_b32 v18, v23, v24, v39
	v_perm_b32 v19, v25, v27, v33
	v_perm_b32 v20, v25, v27, v39
	v_perm_b32 v23, v28, v32, v33
	v_perm_b32 v24, v28, v32, v39
	v_perm_b32 v27, v31, v35, v33
	v_perm_b32 v28, v31, v35, v39
	v_dual_cndmask_b32 v35, 0x80000000, v1 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[3:6], v35, s[4:7], 0 offen
	buffer_store_b128 v[7:10], v0, s[4:7], 0 offen
	buffer_store_b128 v[11:14], v2, s[4:7], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v1
	v_add_nc_u32_e32 v2, 0x80, v1
	v_permlanex16_b32 v29, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v3, 0xa0, v1
	v_add_nc_u32_e32 v4, 0xc0, v1
	v_add_nc_u32_e32 v1, 0xe0, v1
	v_perm_b32 v15, v22, v21, v33
	v_perm_b32 v16, v22, v21, v39
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_perm_b32 v21, v26, v30, v33
	v_perm_b32 v22, v26, v30, v39
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_perm_b32 v25, v29, v34, v33
	v_perm_b32 v26, v29, v34, v39
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_perm_b32 v29, v40, v36, v33
	v_perm_b32 v30, v40, v36, v39
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_perm_b32 v31, v41, v37, v33
	v_perm_b32 v32, v41, v37, v39
	v_perm_b32 v33, v42, v38, v33
	v_perm_b32 v34, v42, v38, v39
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[15:18], v0, s[4:7], 0 offen
	buffer_store_b128 v[19:22], v2, s[4:7], 0 offen
	buffer_store_b128 v[23:26], v3, s[4:7], 0 offen
	buffer_store_b128 v[27:30], v4, s[4:7], 0 offen
	buffer_store_b128 v[31:34], v1, s[4:7], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 239
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 239
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20676
; TotalNumSgprs: 47
; NumVgprs: 239
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 239
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     239
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
