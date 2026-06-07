	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	v_dual_mov_b32 v28, 0 :: v_dual_and_b32 v17, 15, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v6, 3, v0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s22, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s9, s9, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s13, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s13
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_mad_u64_u32 v[3:4], null, s22, v2, v[17:18]
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v44, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	s_mul_i32 s8, s8, s5
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	s_mul_hi_u32 s8, s5, s8
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	s_cselect_b32 s4, s9, s5
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	s_xor_b32 s4, s4, s8
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	s_sub_i32 s17, s4, s8
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s17
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s13, s17, s13
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s18, s4, 1
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s14, s18
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s13
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_f32_u32 s15, s14
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_mov_b32_e32 v30, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s15
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v98, 0, v6
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v91, v0, 4, 1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	v_readfirstlane_b32 s15, v1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v1, 3, v17
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_add_nc_u32_e32 v97, 0, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s7, 0, s14
	s_mul_f32 s15, s15, 0x4f7ffffe
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[4:5], null, s23, v2, v[1:2]
	v_or_b32_e32 v96, 0x3f0, v0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s6, s15
	s_abs_i32 s15, s2
	v_or_b32_e32 v95, 0x7f0, v0
	v_or_b32_e32 v94, 0xbf0, v0
	s_mul_i32 s7, s7, s6
	v_or_b32_e32 v93, 0xff0, v0
	s_mul_hi_u32 s7, s6, s7
	v_add_nc_u32_e32 v92, 0, v17
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s16, s15, s6
	s_xor_b32 s6, s2, s18
	s_mul_i32 s19, s16, s14
	s_ashr_i32 s13, s6, 31
	s_sub_i32 s15, s15, s19
	s_add_i32 s19, s16, 1
	s_sub_i32 s20, s15, s14
	s_cmp_ge_u32 s15, s14
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s16, s19, s16
	s_cselect_b32 s15, s20, s15
	s_add_i32 s19, s16, 1
	s_cmp_ge_u32 s15, s14
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s27, s7
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s14, s19, s16
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s15, s12, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s14, s14, s13
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s16, s3, 5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s19, s12, 63
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s12, s12, s15
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s26, s14, s13
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v5, s16, v2
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s19, 31
.Ltmp15:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s15, s12, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s12, s26, s18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s18, s19, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s3, s15, v5
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 32, v5
	.loc	1 92 13 is_stmt 1               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s17
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	s_mul_i32 s20, s22, s16
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s26, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s35, s18, 6
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s34, s2, 4
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s21, s23, s16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s19, 63
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_add3_u32 v3, s20, s34, v3
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v4, s21, s33, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, vcc_lo, s3
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s3, s2, s3
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s26, s6
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	s_and_b32 s25, s25, 0xffff
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u8 v5, v3, s[4:7], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b64 v[3:4], v4, s[24:27], 0 offen
	s_load_b64 s[20:21], s[0:1], 0x20
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s1, s35, -1
	s_mov_b32 s12, 0
	s_cmpk_lt_i32 s19, 0x80
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v97, v5 offset:4096
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v98, v[3:4]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s3, s16, 32
	s_lshl_b32 s0, s14, 8
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v4, s3, v2
	s_lshl_b32 s14, s14, 7
	v_sub_nc_u32_e32 v99, s15, v2
	s_lshl_b32 s15, s13, 8
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v5, s23, v4
	s_lshl_b32 s13, s13, 7
	s_sub_i32 s42, s0, s15
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_add3_u32 v1, v5, s14, v1
	s_mov_b32 s14, s12
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v102, s13, v1
	s_mov_b32 s13, s12
	v_add_nc_u32_e32 v3, s34, v17
	v_lshlrev_b32_e32 v100, 1, v91
	v_add_nc_u32_e32 v103, 0, v96
	v_add_nc_u32_e32 v104, 0, v95
	v_add_nc_u32_e32 v105, 0, v94
	v_mul_lo_u32 v2, s35, v3
	v_mad_u64_u32 v[18:19], null, s22, v4, v[3:4]
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v106, 0, v93
	v_mov_b32_e32 v84, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_lshlrev_b32 v101, 1, v2
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_max_i32 s40, s1, 1
	s_lshl_b32 s41, s23, 1
	s_lshl_b32 s43, s23, 5
	s_lshl_b32 s22, s22, 5
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s38, s6
	s_mov_b32 s39, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s3, v99
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s40, s40, -1
	s_add_i32 s3, s3, 32
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v9, 0x80000000, v18, s0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v220, 0x80000000, v102, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v102, s43, v102
	v_add_nc_u32_e32 v18, s22, v18
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u8 v107, v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v92 offset:4176
	ds_load_u8 v10, v92 offset:4160
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b64 v[220:221], v220, s[24:27], 0 offen
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v222, v101, s[28:31], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v101, 2, v101
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:4208
	ds_load_u8 v11, v92 offset:4192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:4112
	ds_load_u8 v12, v92 offset:4096
	v_lshl_or_b32 v22, v10, 16, v9
	ds_load_u8 v9, v92 offset:640
	ds_load_u8 v10, v92 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:4144
	ds_load_u8 v13, v92 offset:4128
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v12, 16, v11
	ds_load_u8 v10, v92 offset:896
	ds_load_u8 v11, v92 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:128
	ds_load_u8 v12, v92
	v_lshl_or_b32 v109, v10, 16, v9
	ds_load_u8 v9, v92 offset:4304
	ds_load_u8 v10, v92 offset:4288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:384
	ds_load_u8 v13, v92 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v12, 16, v11
	ds_load_u8 v10, v92 offset:4336
	ds_load_u8 v11, v92 offset:4320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:4240
	ds_load_u8 v12, v92 offset:4224
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v92 offset:1664
	ds_load_u8 v10, v92 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:4272
	ds_load_u8 v13, v92 offset:4256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v12, 16, v11
	ds_load_u8 v10, v92 offset:1920
	ds_load_u8 v11, v92 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:1152
	ds_load_u8 v12, v92 offset:1024
	v_lshl_or_b32 v111, v10, 16, v9
	ds_load_u8 v9, v92 offset:4432
	ds_load_u8 v10, v92 offset:4416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:1408
	ds_load_u8 v13, v92 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v110, v12, 16, v11
	ds_load_u8 v10, v92 offset:4464
	ds_load_u8 v11, v92 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:4368
	ds_load_u8 v12, v92 offset:4352
	v_lshl_or_b32 v24, v10, 16, v9
	ds_load_u8 v9, v92 offset:2688
	ds_load_u8 v10, v92 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:4400
	ds_load_u8 v13, v92 offset:4384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v12, 16, v11
	ds_load_u8 v10, v92 offset:2944
	ds_load_u8 v11, v92 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:2176
	ds_load_u8 v12, v92 offset:2048
	v_lshl_or_b32 v113, v10, 16, v9
	ds_load_u8 v9, v92 offset:4560
	ds_load_u8 v10, v92 offset:4544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:2432
	ds_load_u8 v13, v92 offset:2304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v12, 16, v11
	ds_load_u8 v10, v92 offset:4592
	ds_load_u8 v11, v92 offset:4576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:4496
	ds_load_u8 v12, v92 offset:4480
	v_lshl_or_b32 v20, v10, 16, v9
	ds_load_u8 v9, v92 offset:3712
	ds_load_u8 v10, v92 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:4528
	ds_load_u8 v13, v92 offset:4512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v12, 16, v11
	ds_load_u8 v10, v92 offset:3968
	ds_load_u8 v11, v92 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:3200
	ds_load_u8 v12, v92 offset:3072
	v_lshl_or_b32 v115, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:3456
	ds_load_u8 v13, v92 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v114, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[108:109], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[112:113], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[114:115], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v115, v9
	v_cvt_f32_i32_e32 v114, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v92 offset:656
	ds_load_u8 v10, v92 offset:528
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v113, v11
	v_cvt_f32_i32_e32 v112, v12
	v_cvt_f32_i32_e32 v111, v13
	v_cvt_f32_i32_e32 v110, v14
	v_cvt_f32_i32_e32 v109, v15
	v_cvt_f32_i32_e32 v108, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:912
	ds_load_u8 v11, v92 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:16
	ds_load_u8 v12, v92 offset:144
	v_lshl_or_b32 v117, v10, 16, v9
	ds_load_u8 v9, v92 offset:1680
	ds_load_u8 v10, v92 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v92 offset:400
	ds_load_u8 v13, v92 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v12, 16, v11
	ds_load_u8 v10, v92 offset:1936
	ds_load_u8 v11, v92 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:1168
	ds_load_u8 v12, v92 offset:1040
	v_lshl_or_b32 v119, v10, 16, v9
	ds_load_u8 v9, v92 offset:2704
	ds_load_u8 v10, v92 offset:2576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:1424
	ds_load_u8 v13, v92 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v12, 16, v11
	ds_load_u8 v10, v92 offset:2960
	ds_load_u8 v11, v92 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:2192
	ds_load_u8 v12, v92 offset:2064
	v_lshl_or_b32 v121, v10, 16, v9
	ds_load_u8 v9, v92 offset:3728
	ds_load_u8 v10, v92 offset:3600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:2448
	ds_load_u8 v13, v92 offset:2320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v120, v12, 16, v11
	ds_load_u8 v10, v92 offset:3984
	ds_load_u8 v11, v92 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:3216
	ds_load_u8 v12, v92 offset:3088
	v_lshl_or_b32 v123, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:3472
	ds_load_u8 v13, v92 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[118:119], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[120:121], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[122:123], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v123, v9
	v_cvt_f32_i32_e32 v122, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v92 offset:672
	ds_load_u8 v10, v92 offset:544
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v121, v11
	v_cvt_f32_i32_e32 v120, v12
	v_cvt_f32_i32_e32 v119, v13
	v_cvt_f32_i32_e32 v118, v14
	v_cvt_f32_i32_e32 v117, v15
	v_cvt_f32_i32_e32 v116, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:928
	ds_load_u8 v11, v92 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:32
	ds_load_u8 v12, v92 offset:160
	v_lshl_or_b32 v125, v10, 16, v9
	ds_load_u8 v9, v92 offset:1696
	ds_load_u8 v10, v92 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v92 offset:416
	ds_load_u8 v13, v92 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v124, v12, 16, v11
	ds_load_u8 v10, v92 offset:1952
	ds_load_u8 v11, v92 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:1184
	ds_load_u8 v12, v92 offset:1056
	v_lshl_or_b32 v127, v10, 16, v9
	ds_load_u8 v9, v92 offset:2720
	ds_load_u8 v10, v92 offset:2592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:1440
	ds_load_u8 v13, v92 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v126, v12, 16, v11
	ds_load_u8 v10, v92 offset:2976
	ds_load_u8 v11, v92 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:2208
	ds_load_u8 v12, v92 offset:2080
	v_lshl_or_b32 v129, v10, 16, v9
	ds_load_u8 v9, v92 offset:3744
	ds_load_u8 v10, v92 offset:3616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:2464
	ds_load_u8 v13, v92 offset:2336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v128, v12, 16, v11
	ds_load_u8 v10, v92 offset:4000
	ds_load_u8 v11, v92 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:3232
	ds_load_u8 v12, v92 offset:3104
	v_lshl_or_b32 v131, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:3488
	ds_load_u8 v13, v92 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[124:125], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[126:127], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[128:129], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[130:131], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v131, v9
	v_cvt_f32_i32_e32 v130, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v92 offset:688
	ds_load_u8 v10, v92 offset:560
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v129, v11
	v_cvt_f32_i32_e32 v128, v12
	v_cvt_f32_i32_e32 v127, v13
	v_cvt_f32_i32_e32 v126, v14
	v_cvt_f32_i32_e32 v125, v15
	v_cvt_f32_i32_e32 v124, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:944
	ds_load_u8 v11, v92 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:48
	ds_load_u8 v12, v92 offset:176
	v_lshl_or_b32 v133, v10, 16, v9
	ds_load_u8 v9, v92 offset:1712
	ds_load_u8 v10, v92 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v92 offset:432
	ds_load_u8 v13, v92 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v132, v12, 16, v11
	ds_load_u8 v10, v92 offset:1968
	ds_load_u8 v11, v92 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:1200
	ds_load_u8 v12, v92 offset:1072
	v_lshl_or_b32 v135, v10, 16, v9
	ds_load_u8 v9, v92 offset:2736
	ds_load_u8 v10, v92 offset:2608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:1456
	ds_load_u8 v13, v92 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v12, 16, v11
	ds_load_u8 v10, v92 offset:2992
	ds_load_u8 v11, v92 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:2224
	ds_load_u8 v12, v92 offset:2096
	v_lshl_or_b32 v137, v10, 16, v9
	ds_load_u8 v9, v92 offset:3760
	ds_load_u8 v10, v92 offset:3632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:2480
	ds_load_u8 v13, v92 offset:2352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v12, 16, v11
	ds_load_u8 v10, v92 offset:4016
	ds_load_u8 v11, v92 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:3248
	ds_load_u8 v12, v92 offset:3120
	v_lshl_or_b32 v139, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:3504
	ds_load_u8 v13, v92 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[132:133], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[134:135], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[136:137], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[138:139], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v139, v9
	v_cvt_f32_i32_e32 v138, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v92 offset:704
	ds_load_u8 v10, v92 offset:576
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v137, v11
	v_cvt_f32_i32_e32 v136, v12
	v_cvt_f32_i32_e32 v135, v13
	v_cvt_f32_i32_e32 v134, v14
	v_cvt_f32_i32_e32 v133, v15
	v_cvt_f32_i32_e32 v132, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:960
	ds_load_u8 v11, v92 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:192
	ds_load_u8 v12, v92 offset:64
	v_lshl_or_b32 v141, v10, 16, v9
	ds_load_u8 v9, v92 offset:1728
	ds_load_u8 v10, v92 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:448
	ds_load_u8 v13, v92 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v140, v12, 16, v11
	ds_load_u8 v10, v92 offset:1984
	ds_load_u8 v11, v92 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:1216
	ds_load_u8 v12, v92 offset:1088
	v_lshl_or_b32 v143, v10, 16, v9
	ds_load_u8 v9, v92 offset:2752
	ds_load_u8 v10, v92 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:1472
	ds_load_u8 v13, v92 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v12, 16, v11
	ds_load_u8 v10, v92 offset:3008
	ds_load_u8 v11, v92 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:2240
	ds_load_u8 v12, v92 offset:2112
	v_lshl_or_b32 v145, v10, 16, v9
	ds_load_u8 v9, v92 offset:3776
	ds_load_u8 v10, v92 offset:3648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:2496
	ds_load_u8 v13, v92 offset:2368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v12, 16, v11
	ds_load_u8 v10, v92 offset:4032
	ds_load_u8 v11, v92 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:3264
	ds_load_u8 v12, v92 offset:3136
	v_lshl_or_b32 v147, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:3520
	ds_load_u8 v13, v92 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v146, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[140:141], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[144:145], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[146:147], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v147, v9
	v_cvt_f32_i32_e32 v146, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v92 offset:720
	ds_load_u8 v10, v92 offset:592
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v145, v11
	v_cvt_f32_i32_e32 v144, v12
	v_cvt_f32_i32_e32 v143, v13
	v_cvt_f32_i32_e32 v142, v14
	v_cvt_f32_i32_e32 v141, v15
	v_cvt_f32_i32_e32 v140, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:976
	ds_load_u8 v11, v92 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:208
	ds_load_u8 v12, v92 offset:80
	v_lshl_or_b32 v149, v10, 16, v9
	ds_load_u8 v9, v92 offset:1744
	ds_load_u8 v10, v92 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:464
	ds_load_u8 v13, v92 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v12, 16, v11
	ds_load_u8 v10, v92 offset:2000
	ds_load_u8 v11, v92 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:1232
	ds_load_u8 v12, v92 offset:1104
	v_lshl_or_b32 v151, v10, 16, v9
	ds_load_u8 v9, v92 offset:2768
	ds_load_u8 v10, v92 offset:2640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:1488
	ds_load_u8 v13, v92 offset:1360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v12, 16, v11
	ds_load_u8 v10, v92 offset:3024
	ds_load_u8 v11, v92 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:2256
	ds_load_u8 v12, v92 offset:2128
	v_lshl_or_b32 v153, v10, 16, v9
	ds_load_u8 v9, v92 offset:3792
	ds_load_u8 v10, v92 offset:3664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:2512
	ds_load_u8 v13, v92 offset:2384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v12, 16, v11
	ds_load_u8 v10, v92 offset:4048
	ds_load_u8 v11, v92 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:3280
	ds_load_u8 v12, v92 offset:3152
	v_lshl_or_b32 v155, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:3536
	ds_load_u8 v13, v92 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[148:149], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[152:153], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[154:155], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v155, v9
	v_cvt_f32_i32_e32 v154, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v92 offset:736
	ds_load_u8 v10, v92 offset:608
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v153, v11
	v_cvt_f32_i32_e32 v152, v12
	v_cvt_f32_i32_e32 v151, v13
	v_cvt_f32_i32_e32 v150, v14
	v_cvt_f32_i32_e32 v149, v15
	v_cvt_f32_i32_e32 v148, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:992
	ds_load_u8 v11, v92 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:224
	ds_load_u8 v12, v92 offset:96
	v_lshl_or_b32 v10, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:480
	ds_load_u8 v13, v92 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v12, 16, v11
	ds_load_u8 v11, v92 offset:1760
	ds_load_u8 v12, v92 offset:1632
	v_wmma_i32_16x16x16_iu4 v[163:170], v[9:10], v[21:22], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v92 offset:240
	ds_load_u8 v10, v92 offset:112
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:2016
	ds_load_u8 v13, v92 offset:1888
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v92 offset:1248
	ds_load_u8 v14, v92 offset:1120
	v_lshl_or_b32 v12, v12, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v92 offset:1504
	ds_load_u8 v15, v92 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v14, 16, v13
	ds_load_u8 v13, v92 offset:2784
	ds_load_u8 v14, v92 offset:2656
	v_wmma_i32_16x16x16_iu4 v[163:170], v[11:12], v[25:26], v[163:170] neg_lo:[1,1,0]
	ds_load_u8 v10, v92 offset:496
	ds_load_u8 v11, v92 offset:368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v92 offset:3040
	ds_load_u8 v15, v92 offset:2912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:752
	ds_load_u8 v12, v92 offset:624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v92 offset:2272
	ds_load_u8 v16, v92 offset:2144
	v_lshl_or_b32 v14, v14, 16, v13
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v92 offset:2528
	ds_load_u8 v156, v92 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v156, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v16, 16, v15
	ds_load_u8 v15, v92 offset:3808
	ds_load_u8 v16, v92 offset:3680
	v_wmma_i32_16x16x16_iu4 v[163:170], v[13:14], v[23:24], v[163:170] neg_lo:[1,1,0]
	ds_load_u8 v12, v103
	ds_load_u8 v13, v92 offset:880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v92 offset:4064
	ds_load_u8 v156, v92 offset:3936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v156, v16, 0xc0c0004
	ds_load_u8 v156, v92 offset:3296
	ds_load_u8 v157, v92 offset:3168
	v_lshl_or_b32 v16, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	ds_load_u8 v157, v92 offset:3552
	ds_load_u8 v158, v92 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v15, v157, 16, v156
	v_wmma_i32_16x16x16_iu4 v[163:170], v[15:16], v[19:20], v[163:170] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v162, v164
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v164, v10, 16, v9
	ds_load_u8 v9, v92 offset:1264
	ds_load_u8 v10, v92 offset:1136
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v161, v165
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v165, v12, 16, v11
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v160, v166
	v_cvt_f32_i32_e32 v159, v167
	v_cvt_f32_i32_e32 v158, v168
	v_cvt_f32_i32_e32 v157, v169
	v_cvt_f32_i32_e32 v156, v170
	v_cvt_f32_i32_e32 v163, v163
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:1520
	ds_load_u8 v11, v92 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:1776
	ds_load_u8 v12, v92 offset:1648
	v_lshl_or_b32 v166, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v104
	ds_load_u8 v13, v92 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[164:165], v[21:22], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v21, v92 offset:2288
	ds_load_u8 v22, v92 offset:2160
	v_wmma_i32_16x16x16_iu4 v[9:16], v[166:167], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v92 offset:2544
	ds_load_u8 v25, v92 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v25, v22, 0xc0c0004
	ds_load_u8 v25, v92 offset:2800
	ds_load_u8 v26, v92 offset:2672
	v_lshl_or_b32 v21, v22, 16, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v105
	ds_load_u8 v164, v92 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v164, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v22, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v21, v92 offset:3312
	ds_load_u8 v22, v92 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v92 offset:3568
	ds_load_u8 v23, v92 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v92 offset:3824
	ds_load_u8 v24, v92 offset:3696
	v_lshl_or_b32 v21, v22, 16, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v106
	ds_load_u8 v25, v92 offset:3952
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
	v_add_nc_u32_e32 v13, s42, v100
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
	buffer_load_u16 v219, v13, s[36:39], 0 offen
	buffer_load_u16 v218, v13, s[36:39], 0 offen offset:4
	buffer_load_u16 v217, v13, s[36:39], 0 offen offset:8
	buffer_load_u16 v216, v13, s[36:39], 0 offen offset:12
	buffer_load_u16 v215, v13, s[36:39], 0 offen offset:16
	buffer_load_u16 v214, v13, s[36:39], 0 offen offset:20
	buffer_load_u16 v213, v13, s[36:39], 0 offen offset:24
	buffer_load_u16 v212, v13, s[36:39], 0 offen offset:28
	buffer_load_u16 v211, v13, s[36:39], 0 offen offset:32
	buffer_load_u16 v210, v13, s[36:39], 0 offen offset:36
	buffer_load_u16 v209, v13, s[36:39], 0 offen offset:40
	buffer_load_u16 v208, v13, s[36:39], 0 offen offset:44
	buffer_load_u16 v207, v13, s[36:39], 0 offen offset:48
	buffer_load_u16 v206, v13, s[36:39], 0 offen offset:52
	buffer_load_u16 v205, v13, s[36:39], 0 offen offset:56
	buffer_load_u16 v204, v13, s[36:39], 0 offen offset:60
	buffer_load_u16 v203, v13, s[36:39], 0 offen offset:64
	buffer_load_u16 v202, v13, s[36:39], 0 offen offset:68
	buffer_load_u16 v201, v13, s[36:39], 0 offen offset:72
	buffer_load_u16 v200, v13, s[36:39], 0 offen offset:76
	buffer_load_u16 v199, v13, s[36:39], 0 offen offset:80
	buffer_load_u16 v198, v13, s[36:39], 0 offen offset:84
	buffer_load_u16 v197, v13, s[36:39], 0 offen offset:88
	buffer_load_u16 v196, v13, s[36:39], 0 offen offset:92
	buffer_load_u16 v195, v13, s[36:39], 0 offen offset:96
	buffer_load_u16 v194, v13, s[36:39], 0 offen offset:100
	buffer_load_u16 v193, v13, s[36:39], 0 offen offset:104
	buffer_load_u16 v192, v13, s[36:39], 0 offen offset:108
	buffer_load_u16 v191, v13, s[36:39], 0 offen offset:112
	buffer_load_u16 v190, v13, s[36:39], 0 offen offset:116
	buffer_load_u16 v189, v13, s[36:39], 0 offen offset:120
	buffer_load_u16 v188, v13, s[36:39], 0 offen offset:124
	s_clause 0x1f
	buffer_load_u16 v187, v13, s[36:39], 0 offen offset:128
	buffer_load_u16 v186, v13, s[36:39], 0 offen offset:132
	buffer_load_u16 v185, v13, s[36:39], 0 offen offset:136
	buffer_load_u16 v184, v13, s[36:39], 0 offen offset:140
	buffer_load_u16 v183, v13, s[36:39], 0 offen offset:144
	buffer_load_u16 v182, v13, s[36:39], 0 offen offset:148
	buffer_load_u16 v181, v13, s[36:39], 0 offen offset:152
	buffer_load_u16 v180, v13, s[36:39], 0 offen offset:156
	buffer_load_u16 v179, v13, s[36:39], 0 offen offset:160
	buffer_load_u16 v178, v13, s[36:39], 0 offen offset:164
	buffer_load_u16 v177, v13, s[36:39], 0 offen offset:168
	buffer_load_u16 v176, v13, s[36:39], 0 offen offset:172
	buffer_load_u16 v175, v13, s[36:39], 0 offen offset:176
	buffer_load_u16 v174, v13, s[36:39], 0 offen offset:180
	buffer_load_u16 v173, v13, s[36:39], 0 offen offset:184
	buffer_load_u16 v172, v13, s[36:39], 0 offen offset:188
	buffer_load_u16 v171, v13, s[36:39], 0 offen offset:192
	buffer_load_u16 v170, v13, s[36:39], 0 offen offset:196
	buffer_load_u16 v169, v13, s[36:39], 0 offen offset:200
	buffer_load_u16 v168, v13, s[36:39], 0 offen offset:204
	buffer_load_u16 v167, v13, s[36:39], 0 offen offset:208
	buffer_load_u16 v166, v13, s[36:39], 0 offen offset:212
	buffer_load_u16 v165, v13, s[36:39], 0 offen offset:216
	buffer_load_u16 v164, v13, s[36:39], 0 offen offset:220
	buffer_load_u16 v26, v13, s[36:39], 0 offen offset:224
	buffer_load_u16 v25, v13, s[36:39], 0 offen offset:228
	buffer_load_u16 v24, v13, s[36:39], 0 offen offset:232
	buffer_load_u16 v23, v13, s[36:39], 0 offen offset:236
	buffer_load_u16 v16, v13, s[36:39], 0 offen offset:240
	buffer_load_u16 v15, v13, s[36:39], 0 offen offset:244
	buffer_load_u16 v14, v13, s[36:39], 0 offen offset:248
	buffer_load_u16 v13, v13, s[36:39], 0 offen offset:252
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	ds_store_b64 v98, v[220:221]
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	ds_store_b8 v97, v107 offset:4096
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s42, s42, s41
	s_cmp_lg_u32 s40, 0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v219, 16, v219
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v220, 16, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v115, v115, v220
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v49, v115, v219
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(62)
	v_dual_mul_f32 v112, v112, v220 :: v_dual_lshlrev_b32 v115, 16, v218
	v_mul_f32_e32 v114, v114, v220
	v_mul_f32_e32 v22, v22, v220
	v_mul_f32_e32 v113, v113, v220
	v_mul_f32_e32 v21, v21, v220
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v19, v19, v220 :: v_dual_fmac_f32 v90, v114, v115
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v114, 16, v217
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v12, v12, v220
	v_mul_f32_e32 v111, v111, v220
	v_mul_f32_e32 v11, v11, v220
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v108, v108, v220 :: v_dual_fmac_f32 v89, v113, v114
	v_mul_f32_e32 v10, v10, v220
	v_mul_f32_e32 v109, v109, v220
	v_mul_f32_e32 v20, v20, v220
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v9, v9, v220 :: v_dual_lshlrev_b32 v26, 16, v26
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v34, v22, v26
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v22, 16, v25
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v110, v110, v220
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v30, v12, v16
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v33, v21, v22 :: v_dual_lshlrev_b32 v12, 16, v15
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v113, 16, v216
	v_lshlrev_b32_e32 v21, 16, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v29, v11, v12
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v88, v112, v113 :: v_dual_lshlrev_b32 v11, 16, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v112, 16, v215
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v32, v20, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v20, 16, v23
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v28, v10, v11
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v87, v111, v112 :: v_dual_lshlrev_b32 v10, 16, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v111, 16, v214
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v31, v19, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v27, v9, v10 :: v_dual_fmac_f32 v86, v110, v111
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v110, 16, v213
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v85, v109, v110
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v109, 16, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v84, v108, v109
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v123, v220 :: v_dual_lshlrev_b32 v108, 16, v211
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v83, v109, v108 :: v_dual_lshlrev_b32 v108, 16, v210
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v122, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v82, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v121, v220 :: v_dual_lshlrev_b32 v108, 16, v209
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v81, v109, v108
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v108, 16, v208
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v120, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v80, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v119, v220 :: v_dual_lshlrev_b32 v108, 16, v207
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v79, v109, v108 :: v_dual_lshlrev_b32 v108, 16, v206
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v118, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v78, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v117, v220 :: v_dual_lshlrev_b32 v108, 16, v205
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v77, v109, v108
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v108, 16, v204
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v116, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v76, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v131, v220 :: v_dual_lshlrev_b32 v108, 16, v203
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v75, v109, v108 :: v_dual_lshlrev_b32 v108, 16, v202
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v130, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v74, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v129, v220 :: v_dual_lshlrev_b32 v108, 16, v201
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v73, v109, v108
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v108, 16, v200
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v128, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v72, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v127, v220 :: v_dual_lshlrev_b32 v108, 16, v199
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v71, v109, v108 :: v_dual_lshlrev_b32 v108, 16, v198
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v126, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v70, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v125, v220 :: v_dual_lshlrev_b32 v108, 16, v197
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v69, v109, v108
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v108, 16, v196
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v124, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v68, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v139, v220 :: v_dual_lshlrev_b32 v108, 16, v195
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v67, v109, v108 :: v_dual_lshlrev_b32 v108, 16, v194
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v138, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v66, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v137, v220 :: v_dual_lshlrev_b32 v108, 16, v193
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v65, v109, v108
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v108, 16, v192
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v136, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v64, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v135, v220 :: v_dual_lshlrev_b32 v108, 16, v191
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v63, v109, v108 :: v_dual_lshlrev_b32 v108, 16, v190
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v134, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v62, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v133, v220 :: v_dual_lshlrev_b32 v108, 16, v189
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v61, v109, v108
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v108, 16, v188
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v132, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v60, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v147, v220 :: v_dual_lshlrev_b32 v108, 16, v187
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v59, v109, v108 :: v_dual_lshlrev_b32 v108, 16, v186
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v146, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v58, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v145, v220 :: v_dual_lshlrev_b32 v108, 16, v185
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v57, v109, v108
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v108, 16, v184
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v144, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v56, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v143, v220 :: v_dual_lshlrev_b32 v108, 16, v183
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v55, v109, v108 :: v_dual_lshlrev_b32 v108, 16, v182
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v142, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v54, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v141, v220 :: v_dual_lshlrev_b32 v108, 16, v181
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v53, v109, v108
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v108, 16, v180
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v140, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v52, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v155, v220 :: v_dual_lshlrev_b32 v108, 16, v179
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v51, v109, v108 :: v_dual_lshlrev_b32 v108, 16, v178
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v154, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v50, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v153, v220 :: v_dual_lshlrev_b32 v108, 16, v177
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v48, v109, v108
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v108, 16, v176
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v152, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v47, v109, v108 :: v_dual_lshlrev_b32 v108, 16, v175
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v151, v220
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v46, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v150, v220 :: v_dual_lshlrev_b32 v108, 16, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v45, v109, v108 :: v_dual_lshlrev_b32 v108, 16, v173
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v149, v220
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v44, v109, v108
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v108, 16, v172
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v148, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v43, v109, v108 :: v_dual_lshlrev_b32 v108, 16, v171
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v163, v220
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v42, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v162, v220 :: v_dual_lshlrev_b32 v108, 16, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v41, v109, v108 :: v_dual_lshlrev_b32 v108, 16, v169
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v161, v220
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v40, v109, v108
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v108, 16, v168
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v160, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v39, v109, v108 :: v_dual_lshlrev_b32 v108, 16, v167
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v159, v220
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v38, v109, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v109, v158, v220 :: v_dual_lshlrev_b32 v108, 16, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v37, v109, v108 :: v_dual_lshlrev_b32 v108, 16, v165
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v157, v220
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v36, v109, v108
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v108, 16, v164
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v109, v156, v220
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v35, v109, v108
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow363
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v19, 0 :: v_dual_and_b32 v18, 16, v0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_mov_b32_e32 v8, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	ds_load_u8 v1, v92 offset:4176
	ds_load_u8 v2, v92 offset:4160
	ds_load_u8 v3, v92 offset:4208
	ds_load_u8 v4, v92 offset:4192
	ds_load_u8 v5, v92 offset:4112
	ds_load_u8 v6, v92 offset:4096
	ds_load_u8 v7, v92 offset:4144
	ds_load_u8 v8, v92 offset:4128
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s12, 0
	v_add_nc_u32_e32 v96, 0, v96
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v95, 0, v95
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v92 offset:640
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v92 offset:896
	ds_load_u8 v4, v92 offset:512
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v92 offset:768
	v_lshl_or_b32 v16, v3, 16, v1
	v_lshl_or_b32 v15, v7, 16, v5
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v2, v4, v2, 0xc0c0004
	ds_load_u8 v4, v92 offset:128
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v6, v8, v6, 0xc0c0004
	ds_load_u8 v8, v92
	v_lshl_or_b32 v10, v6, 16, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v8, v4, 0xc0c0004
	ds_load_u8 v8, v92 offset:384
	ds_load_u8 v9, v92 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v8, 16, v4
	ds_load_u8 v1, v92 offset:4304
	ds_load_u8 v2, v92 offset:4288
	ds_load_u8 v3, v92 offset:4336
	ds_load_u8 v4, v92 offset:4320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	ds_load_u8 v3, v92 offset:4240
	ds_load_u8 v4, v92 offset:4224
	v_lshl_or_b32 v14, v2, 16, v1
	ds_load_u8 v1, v92 offset:1664
	ds_load_u8 v2, v92 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v92 offset:4272
	ds_load_u8 v5, v92 offset:4256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v4, 16, v3
	ds_load_u8 v2, v92 offset:1920
	ds_load_u8 v3, v92 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v92 offset:1152
	ds_load_u8 v4, v92 offset:1024
	v_lshl_or_b32 v12, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v92 offset:1408
	ds_load_u8 v5, v92 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v4, 16, v3
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_wmma_i32_16x16x16_iu4 v[19:26], v[9:10], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v92 offset:4432
	ds_load_u8 v10, v92 offset:4416
	v_wmma_i32_16x16x16_iu4 v[19:26], v[11:12], v[13:14], v[19:26] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:4464
	ds_load_u8 v11, v92 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v92 offset:4368
	ds_load_u8 v12, v92 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:4400
	ds_load_u8 v97, v92 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v97, v12, 0xc0c0004
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v9, v92 offset:2688
	ds_load_u8 v10, v92 offset:2560
	v_lshl_or_b32 v11, v97, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:2944
	ds_load_u8 v97, v92 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v97, v10, 0xc0c0004
	ds_load_u8 v97, v92 offset:2176
	ds_load_u8 v98, v92 offset:2048
	v_lshl_or_b32 v10, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v92 offset:2432
	ds_load_u8 v99, v92 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v98, 16, v97
	v_wmma_i32_16x16x16_iu4 v[19:26], v[9:10], v[11:12], v[19:26] neg_lo:[1,1,0]
	ds_load_u8 v9, v92 offset:4560
	ds_load_u8 v10, v92 offset:4544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v92 offset:4592
	ds_load_u8 v97, v92 offset:4576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v97, v10, 0xc0c0004
	ds_load_u8 v97, v92 offset:4496
	ds_load_u8 v98, v92 offset:4480
	v_lshl_or_b32 v10, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v92 offset:4528
	ds_load_u8 v99, v92 offset:4512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v98, 16, v97
	ds_load_u8 v97, v92 offset:3712
	ds_load_u8 v98, v92 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v92 offset:3968
	ds_load_u8 v99, v92 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v92 offset:3200
	ds_load_u8 v100, v92 offset:3072
	v_lshl_or_b32 v98, v98, 16, v97
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v92 offset:3456
	ds_load_u8 v101, v92 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v97, v100, 16, v99
	v_wmma_i32_16x16x16_iu4 v[19:26], v[97:98], v[9:10], v[19:26] neg_lo:[1,1,0]
	ds_load_u8 v97, v92 offset:656
	ds_load_u8 v98, v92 offset:528
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v92 offset:912
	ds_load_u8 v99, v92 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v92 offset:16
	ds_load_u8 v100, v92 offset:144
	v_lshl_or_b32 v106, v98, 16, v97
	ds_load_u8 v97, v92 offset:1680
	ds_load_u8 v98, v92 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v99, v100, 0xc0c0004
	ds_load_u8 v100, v92 offset:400
	ds_load_u8 v101, v92 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v100, 16, v99
	ds_load_u8 v98, v92 offset:1936
	ds_load_u8 v99, v92 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v92 offset:1168
	ds_load_u8 v100, v92 offset:1040
	v_lshl_or_b32 v108, v98, 16, v97
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v92 offset:1424
	ds_load_u8 v101, v92 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v100, 16, v99
	v_wmma_i32_16x16x16_iu4 v[97:104], v[105:106], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v105, v92 offset:2704
	ds_load_u8 v106, v92 offset:2576
	v_wmma_i32_16x16x16_iu4 v[97:104], v[107:108], v[13:14], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v92 offset:2960
	ds_load_u8 v107, v92 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v92 offset:2192
	ds_load_u8 v108, v92 offset:2064
	v_lshl_or_b32 v106, v106, 16, v105
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v92 offset:2448
	ds_load_u8 v109, v92 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v105, v108, 16, v107
	v_wmma_i32_16x16x16_iu4 v[97:104], v[105:106], v[11:12], v[97:104] neg_lo:[1,1,0]
	ds_load_u8 v105, v92 offset:3728
	ds_load_u8 v106, v92 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v92 offset:3984
	ds_load_u8 v107, v92 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v92 offset:3216
	ds_load_u8 v108, v92 offset:3088
	v_lshl_or_b32 v106, v106, 16, v105
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v92 offset:3472
	ds_load_u8 v109, v92 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v105, v108, 16, v107
	v_wmma_i32_16x16x16_iu4 v[97:104], v[105:106], v[9:10], v[97:104] neg_lo:[1,1,0]
	ds_load_u8 v105, v92 offset:672
	ds_load_u8 v106, v92 offset:544
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v92 offset:928
	ds_load_u8 v107, v92 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v92 offset:32
	ds_load_u8 v108, v92 offset:160
	v_lshl_or_b32 v114, v106, 16, v105
	ds_load_u8 v105, v92 offset:1696
	ds_load_u8 v106, v92 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v107, v107, v108, 0xc0c0004
	ds_load_u8 v108, v92 offset:416
	ds_load_u8 v109, v92 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v108, 16, v107
	ds_load_u8 v106, v92 offset:1952
	ds_load_u8 v107, v92 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v92 offset:1184
	ds_load_u8 v108, v92 offset:1056
	v_lshl_or_b32 v116, v106, 16, v105
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v92 offset:1440
	ds_load_u8 v109, v92 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v115, v108, 16, v107
	v_wmma_i32_16x16x16_iu4 v[105:112], v[113:114], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v113, v92 offset:2720
	ds_load_u8 v114, v92 offset:2592
	v_wmma_i32_16x16x16_iu4 v[105:112], v[115:116], v[13:14], v[105:112] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v92 offset:2976
	ds_load_u8 v115, v92 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v92 offset:2208
	ds_load_u8 v116, v92 offset:2080
	v_lshl_or_b32 v114, v114, 16, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v92 offset:2464
	ds_load_u8 v117, v92 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v116, 16, v115
	v_wmma_i32_16x16x16_iu4 v[105:112], v[113:114], v[11:12], v[105:112] neg_lo:[1,1,0]
	ds_load_u8 v113, v92 offset:3744
	ds_load_u8 v114, v92 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v92 offset:4000
	ds_load_u8 v115, v92 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v92 offset:3232
	ds_load_u8 v116, v92 offset:3104
	v_lshl_or_b32 v114, v114, 16, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v92 offset:3488
	ds_load_u8 v117, v92 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v116, 16, v115
	v_wmma_i32_16x16x16_iu4 v[105:112], v[113:114], v[9:10], v[105:112] neg_lo:[1,1,0]
	ds_load_u8 v113, v92 offset:688
	ds_load_u8 v114, v92 offset:560
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v92 offset:944
	ds_load_u8 v115, v92 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v92 offset:48
	ds_load_u8 v116, v92 offset:176
	v_lshl_or_b32 v122, v114, 16, v113
	ds_load_u8 v113, v92 offset:1712
	ds_load_u8 v114, v92 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v115, v115, v116, 0xc0c0004
	ds_load_u8 v116, v92 offset:432
	ds_load_u8 v117, v92 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v121, v116, 16, v115
	ds_load_u8 v114, v92 offset:1968
	ds_load_u8 v115, v92 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v92 offset:1200
	ds_load_u8 v116, v92 offset:1072
	v_lshl_or_b32 v124, v114, 16, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v92 offset:1456
	ds_load_u8 v117, v92 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v123, v116, 16, v115
	v_wmma_i32_16x16x16_iu4 v[113:120], v[121:122], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v121, v92 offset:2736
	ds_load_u8 v122, v92 offset:2608
	v_wmma_i32_16x16x16_iu4 v[113:120], v[123:124], v[13:14], v[113:120] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v92 offset:2992
	ds_load_u8 v123, v92 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v92 offset:2224
	ds_load_u8 v124, v92 offset:2096
	v_lshl_or_b32 v122, v122, 16, v121
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v92 offset:2480
	ds_load_u8 v125, v92 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v121, v124, 16, v123
	v_wmma_i32_16x16x16_iu4 v[113:120], v[121:122], v[11:12], v[113:120] neg_lo:[1,1,0]
	ds_load_u8 v121, v92 offset:3760
	ds_load_u8 v122, v92 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v92 offset:4016
	ds_load_u8 v123, v92 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v92 offset:3248
	ds_load_u8 v124, v92 offset:3120
	v_lshl_or_b32 v122, v122, 16, v121
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v92 offset:3504
	ds_load_u8 v125, v92 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v121, v124, 16, v123
	v_wmma_i32_16x16x16_iu4 v[113:120], v[121:122], v[9:10], v[113:120] neg_lo:[1,1,0]
	ds_load_u8 v121, v92 offset:704
	ds_load_u8 v122, v92 offset:576
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v92 offset:960
	ds_load_u8 v123, v92 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v92 offset:192
	ds_load_u8 v124, v92 offset:64
	v_lshl_or_b32 v130, v122, 16, v121
	ds_load_u8 v121, v92 offset:1728
	ds_load_u8 v122, v92 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v92 offset:448
	ds_load_u8 v125, v92 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v124, 16, v123
	ds_load_u8 v122, v92 offset:1984
	ds_load_u8 v123, v92 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v92 offset:1216
	ds_load_u8 v124, v92 offset:1088
	v_lshl_or_b32 v132, v122, 16, v121
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v92 offset:1472
	ds_load_u8 v125, v92 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v124, 16, v123
	v_wmma_i32_16x16x16_iu4 v[121:128], v[129:130], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v129, v92 offset:2752
	ds_load_u8 v130, v92 offset:2624
	v_wmma_i32_16x16x16_iu4 v[121:128], v[131:132], v[13:14], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v92 offset:3008
	ds_load_u8 v131, v92 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v92 offset:2240
	ds_load_u8 v132, v92 offset:2112
	v_lshl_or_b32 v130, v130, 16, v129
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v92 offset:2496
	ds_load_u8 v133, v92 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v129, v132, 16, v131
	v_wmma_i32_16x16x16_iu4 v[121:128], v[129:130], v[11:12], v[121:128] neg_lo:[1,1,0]
	ds_load_u8 v129, v92 offset:3776
	ds_load_u8 v130, v92 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v92 offset:4032
	ds_load_u8 v131, v92 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v92 offset:3264
	ds_load_u8 v132, v92 offset:3136
	v_lshl_or_b32 v130, v130, 16, v129
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v92 offset:3520
	ds_load_u8 v133, v92 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v129, v132, 16, v131
	v_wmma_i32_16x16x16_iu4 v[121:128], v[129:130], v[9:10], v[121:128] neg_lo:[1,1,0]
	ds_load_u8 v129, v92 offset:720
	ds_load_u8 v130, v92 offset:592
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v92 offset:976
	ds_load_u8 v131, v92 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v92 offset:208
	ds_load_u8 v132, v92 offset:80
	v_lshl_or_b32 v138, v130, 16, v129
	ds_load_u8 v129, v92 offset:1744
	ds_load_u8 v130, v92 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v92 offset:464
	ds_load_u8 v133, v92 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v132, 16, v131
	ds_load_u8 v130, v92 offset:2000
	ds_load_u8 v131, v92 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v92 offset:1232
	ds_load_u8 v132, v92 offset:1104
	v_lshl_or_b32 v140, v130, 16, v129
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v92 offset:1488
	ds_load_u8 v133, v92 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v132, 16, v131
	v_wmma_i32_16x16x16_iu4 v[129:136], v[137:138], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v137, v92 offset:2768
	ds_load_u8 v138, v92 offset:2640
	v_wmma_i32_16x16x16_iu4 v[129:136], v[139:140], v[13:14], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v92 offset:3024
	ds_load_u8 v139, v92 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v92 offset:2256
	ds_load_u8 v140, v92 offset:2128
	v_lshl_or_b32 v138, v138, 16, v137
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v92 offset:2512
	ds_load_u8 v141, v92 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v137, v140, 16, v139
	v_wmma_i32_16x16x16_iu4 v[129:136], v[137:138], v[11:12], v[129:136] neg_lo:[1,1,0]
	ds_load_u8 v137, v92 offset:3792
	ds_load_u8 v138, v92 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v92 offset:4048
	ds_load_u8 v139, v92 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v92 offset:3280
	ds_load_u8 v140, v92 offset:3152
	v_lshl_or_b32 v138, v138, 16, v137
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v92 offset:3536
	ds_load_u8 v141, v92 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v137, v140, 16, v139
	v_wmma_i32_16x16x16_iu4 v[129:136], v[137:138], v[9:10], v[129:136] neg_lo:[1,1,0]
	ds_load_u8 v137, v92 offset:736
	ds_load_u8 v138, v92 offset:608
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v92 offset:992
	ds_load_u8 v139, v92 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v92 offset:224
	ds_load_u8 v140, v92 offset:96
	v_lshl_or_b32 v146, v138, 16, v137
	ds_load_u8 v137, v92 offset:1760
	ds_load_u8 v138, v92 offset:1632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v92 offset:480
	ds_load_u8 v141, v92 offset:352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v145, v140, 16, v139
	ds_load_u8 v138, v92 offset:2016
	ds_load_u8 v139, v92 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v92 offset:1248
	ds_load_u8 v140, v92 offset:1120
	v_lshl_or_b32 v148, v138, 16, v137
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v92 offset:1504
	ds_load_u8 v141, v92 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v140, 16, v139
	v_wmma_i32_16x16x16_iu4 v[137:144], v[145:146], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v145, v92 offset:2784
	ds_load_u8 v146, v92 offset:2656
	v_wmma_i32_16x16x16_iu4 v[137:144], v[147:148], v[13:14], v[137:144] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v92 offset:3040
	ds_load_u8 v147, v92 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v92 offset:2272
	ds_load_u8 v148, v92 offset:2144
	v_lshl_or_b32 v146, v146, 16, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v92 offset:2528
	ds_load_u8 v149, v92 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v145, v148, 16, v147
	v_wmma_i32_16x16x16_iu4 v[137:144], v[145:146], v[11:12], v[137:144] neg_lo:[1,1,0]
	ds_load_u8 v145, v92 offset:3808
	ds_load_u8 v146, v92 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v92 offset:4064
	ds_load_u8 v147, v92 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v92 offset:3296
	ds_load_u8 v148, v92 offset:3168
	v_lshl_or_b32 v146, v146, 16, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v92 offset:3552
	ds_load_u8 v149, v92 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v145, v148, 16, v147
	v_wmma_i32_16x16x16_iu4 v[137:144], v[145:146], v[9:10], v[137:144] neg_lo:[1,1,0]
	ds_load_u8 v145, v92 offset:240
	ds_load_u8 v146, v92 offset:112
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v92 offset:496
	ds_load_u8 v147, v92 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v92 offset:752
	ds_load_u8 v148, v92 offset:624
	v_lshl_or_b32 v145, v146, 16, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v96, v96
	ds_load_u8 v148, v92 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v148, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v146, v96, 16, v147
	v_wmma_i32_16x16x16_iu4 v[1:8], v[145:146], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v15, v92 offset:1264
	ds_load_u8 v16, v92 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v92 offset:1520
	ds_load_u8 v96, v92 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v96, v16, 0xc0c0004
	ds_load_u8 v96, v92 offset:1776
	ds_load_u8 v145, v92 offset:1648
	v_lshl_or_b32 v15, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v145, v96, 0xc0c0004
	ds_load_u8 v95, v95
	ds_load_u8 v145, v92 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v145, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v95, 16, v96
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[13:14], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v13, v92 offset:2288
	ds_load_u8 v14, v92 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v92 offset:2544
	ds_load_u8 v15, v92 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v92 offset:2800
	ds_load_u8 v16, v92 offset:2672
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v16, 0, v94
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v16, v16
	ds_load_u8 v94, v92 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v94, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[11:12], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v11, v92 offset:3312
	ds_load_u8 v12, v92 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v92 offset:3568
	ds_load_u8 v13, v92 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v92 offset:3824
	ds_load_u8 v14, v92 offset:3696
	v_lshl_or_b32 v11, v12, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v14, 0, v93
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v15, v92 offset:3952
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v12, v14, 16, v13
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[9:10], v[1:8] neg_lo:[1,1,0]
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
	v_mul_lo_u32 v1, s35, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s0, s1, 0
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s1, s34, s35
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s0, s23
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s1, s1, s0
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s33, s3
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s5, s9, 0xffff
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v10, s0, v91, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v1, s1, v1, 1
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v12, 4, v10
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v13, 8, v10
	v_add_nc_u32_e32 v15, 16, v10
	v_add_nc_u32_e32 v16, 20, v10
	v_add_nc_u32_e32 v91, 24, v10
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v14, v1, s[4:7], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v1, 0x80000000, v12, s2
	v_cndmask_b32_e64 v12, 0x80000000, v13, s2
	v_add_nc_u32_e32 v13, 12, v10
	v_add_nc_u32_e32 v92, 28, v10
	v_cndmask_b32_e64 v11, 0x80000000, v10, s2
	v_add_nc_u32_e32 v93, 32, v10
	v_add_nc_u32_e32 v94, 36, v10
	v_add_nc_u32_e32 v95, 40, v10
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	v_cndmask_b32_e64 v91, 0x80000000, v91, s2
	v_cndmask_b32_e64 v92, 0x80000000, v92, s2
	s_clause 0x7
	buffer_load_u16 v11, v11, s[4:7], 0 offen
	buffer_load_u16 v96, v1, s[4:7], 0 offen
	buffer_load_u16 v12, v12, s[4:7], 0 offen
	buffer_load_u16 v13, v13, s[4:7], 0 offen
	buffer_load_u16 v15, v15, s[4:7], 0 offen
	buffer_load_u16 v16, v16, s[4:7], 0 offen
	buffer_load_u16 v91, v91, s[4:7], 0 offen
	buffer_load_u16 v92, v92, s[4:7], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v93, s2
	v_cndmask_b32_e64 v93, 0x80000000, v94, s2
	v_cndmask_b32_e64 v94, 0x80000000, v95, s2
	v_add_nc_u32_e32 v95, 44, v10
	v_add_nc_u32_e32 v145, 48, v10
	v_add_nc_u32_e32 v146, 52, v10
	v_add_nc_u32_e32 v147, 56, v10
	v_add_nc_u32_e32 v148, 60, v10
	v_add_nc_u32_e32 v149, 64, v10
	v_add_nc_u32_e32 v150, 0x44, v10
	v_add_nc_u32_e32 v151, 0x48, v10
	v_cndmask_b32_e64 v95, 0x80000000, v95, s2
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	s_clause 0x7
	buffer_load_u16 v152, v1, s[4:7], 0 offen
	buffer_load_u16 v93, v93, s[4:7], 0 offen
	buffer_load_u16 v94, v94, s[4:7], 0 offen
	buffer_load_u16 v95, v95, s[4:7], 0 offen
	buffer_load_u16 v145, v145, s[4:7], 0 offen
	buffer_load_u16 v146, v146, s[4:7], 0 offen
	buffer_load_u16 v147, v147, s[4:7], 0 offen
	buffer_load_u16 v148, v148, s[4:7], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v149, s2
	v_cndmask_b32_e64 v149, 0x80000000, v150, s2
	v_cndmask_b32_e64 v150, 0x80000000, v151, s2
	v_add_nc_u32_e32 v151, 0x4c, v10
	v_add_nc_u32_e32 v153, 0x50, v10
	v_add_nc_u32_e32 v154, 0x54, v10
	v_add_nc_u32_e32 v155, 0x58, v10
	v_add_nc_u32_e32 v156, 0x5c, v10
	v_cndmask_b32_e64 v151, 0x80000000, v151, s2
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	v_cndmask_b32_e64 v154, 0x80000000, v154, s2
	v_cndmask_b32_e64 v155, 0x80000000, v155, s2
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	s_clause 0x7
	buffer_load_u16 v160, v1, s[4:7], 0 offen
	buffer_load_u16 v149, v149, s[4:7], 0 offen
	buffer_load_u16 v150, v150, s[4:7], 0 offen
	buffer_load_u16 v151, v151, s[4:7], 0 offen
	buffer_load_u16 v153, v153, s[4:7], 0 offen
	buffer_load_u16 v154, v154, s[4:7], 0 offen
	buffer_load_u16 v155, v155, s[4:7], 0 offen
	buffer_load_u16 v156, v156, s[4:7], 0 offen
	v_add_nc_u32_e32 v158, 0x64, v10
	v_add_nc_u32_e32 v162, 0x74, v10
	v_add_nc_u32_e32 v163, 0x78, v10
	v_add_nc_u32_e32 v164, 0x7c, v10
	v_add_nc_u32_e32 v166, 0x84, v10
	v_add_nc_u32_e32 v167, 0x88, v10
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	v_cndmask_b32_e64 v164, 0x80000000, v164, s2
	v_add_nc_u32_e32 v172, 0x9c, v10
	v_add_nc_u32_e32 v175, 0xa8, v10
	v_add_nc_u32_e32 v178, 0xb4, v10
	v_add_nc_u32_e32 v180, 0xbc, v10
	v_add_nc_u32_e32 v181, 0xc0, v10
	v_cndmask_b32_e64 v172, 0x80000000, v172, s2
	v_add_nc_u32_e32 v183, 0xc8, v10
	v_cndmask_b32_e64 v178, 0x80000000, v178, s2
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	v_add_nc_u32_e32 v186, 0xd4, v10
	v_add_nc_u32_e32 v188, 0xdc, v10
	v_add_nc_u32_e32 v189, 0xe0, v10
	v_add_nc_u32_e32 v190, 0xe4, v10
	v_add_nc_u32_e32 v195, 0xf8, v10
	v_cndmask_b32_e64 v186, 0x80000000, v186, s2
	v_cndmask_b32_e64 v188, 0x80000000, v188, s2
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v17, s23, v17
	s_mul_i32 s34, s34, s23
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v195, 0x80000000, v195, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v18
	v_and_b32_e32 v0, 0x1e0, v0
	s_mov_b32 s0, 0x76543210
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v20, v14
	v_mul_f32_e32 v21, v21, v14
	v_mul_f32_e32 v97, v97, v14
	v_mul_f32_e32 v109, v109, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v19, v19, v14 :: v_dual_lshlrev_b32 v96, 16, v96
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(20)
	v_dual_mul_f32 v22, v22, v14 :: v_dual_lshlrev_b32 v13, 16, v13
	s_waitcnt vmcnt(19)
	v_dual_mul_f32 v24, v24, v14 :: v_dual_lshlrev_b32 v15, 16, v15
	v_mul_f32_e32 v108, v108, v14
	s_waitcnt vmcnt(18)
	v_dual_mul_f32 v23, v23, v14 :: v_dual_lshlrev_b32 v16, 16, v16
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v26, v26, v14 :: v_dual_lshlrev_b32 v91, 16, v91
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v25, v25, v14 :: v_dual_lshlrev_b32 v92, 16, v92
	v_mul_f32_e32 v98, v98, v14
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v99, v99, v14 :: v_dual_lshlrev_b32 v152, 16, v152
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v100, v100, v14 :: v_dual_lshlrev_b32 v93, 16, v93
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v95, 16, v95
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v102, v102, v14 :: v_dual_lshlrev_b32 v145, 16, v145
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v104, v104, v14 :: v_dual_lshlrev_b32 v147, 16, v147
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v101, v101, v14 :: v_dual_lshlrev_b32 v148, 16, v148
	v_mul_f32_e32 v103, v103, v14
	v_mul_f32_e32 v105, v105, v14
	v_mul_f32_e32 v106, v106, v14
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v107, v107, v14 :: v_dual_lshlrev_b32 v160, 16, v160
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v110, v110, v14 :: v_dual_lshlrev_b32 v149, 16, v149
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v151, 16, v151
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v153, 16, v153
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v111, v111, v14
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v112, v112, v14 :: v_dual_lshlrev_b32 v155, 16, v155
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v113, v113, v14 :: v_dual_lshlrev_b32 v156, 16, v156
	v_mul_f32_e32 v114, v114, v14
	v_mul_f32_e32 v115, v115, v14
	v_mul_f32_e32 v116, v116, v14
	v_mul_f32_e32 v117, v117, v14
	v_mul_f32_e32 v118, v118, v14
	v_mul_f32_e32 v119, v119, v14
	v_mul_f32_e32 v120, v120, v14
	v_mul_f32_e32 v121, v121, v14
	v_mul_f32_e32 v122, v122, v14
	v_mul_f32_e32 v123, v123, v14
	v_mul_f32_e32 v124, v124, v14
	v_mul_f32_e32 v125, v125, v14
	v_mul_f32_e32 v126, v126, v14
	v_mul_f32_e32 v127, v127, v14
	v_mul_f32_e32 v128, v128, v14
	v_mul_f32_e32 v129, v129, v14
	v_mul_f32_e32 v130, v130, v14
	v_mul_f32_e32 v131, v131, v14
	v_mul_f32_e32 v132, v132, v14
	v_mul_f32_e32 v133, v133, v14
	v_mul_f32_e32 v134, v134, v14
	v_mul_f32_e32 v135, v135, v14
	v_mul_f32_e32 v136, v136, v14
	v_mul_f32_e32 v137, v137, v14
	v_mul_f32_e32 v138, v138, v14
	v_mul_f32_e32 v139, v139, v14
	v_mul_f32_e32 v140, v140, v14
	v_mul_f32_e32 v141, v141, v14
	v_mul_f32_e32 v142, v142, v14
	v_mul_f32_e32 v143, v143, v14
	v_mul_f32_e32 v144, v144, v14
	v_mul_f32_e32 v9, v9, v14
	v_mul_f32_e32 v2, v2, v14
	v_mul_f32_e32 v3, v3, v14
	v_mul_f32_e32 v4, v4, v14
	v_mul_f32_e32 v5, v5, v14
	v_mul_f32_e32 v6, v6, v14
	v_mul_f32_e32 v7, v7, v14
	v_mul_f32_e32 v8, v8, v14
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v14, v20, v96, v90
	v_fma_f32 v12, v21, v12, v89
	v_fma_f32 v21, v97, v152, v83
	v_fma_f32 v96, v108, v151, v72
	v_fma_f32 v97, v109, v153, v71
	v_fma_f32 v16, v24, v16, v86
	v_fma_f32 v24, v100, v95, v80
	v_fma_f32 v100, v112, v156, v68
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v72, v72, v96, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v157, 0x60, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v71, v71, v97, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v159, 0x68, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v68, v68, v100, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v161, 0x70, v10
	v_cndmask_b32_e64 v1, 0x80000000, v157, s2
	v_cndmask_b32_e64 v157, 0x80000000, v158, s2
	v_cndmask_b32_e64 v158, 0x80000000, v159, s2
	v_add_nc_u32_e32 v159, 0x6c, v10
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v11, v19, v11, v49
	v_fma_f32 v19, v25, v91, v85
	v_fma_f32 v91, v103, v147, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	s_clause 0x7
	buffer_load_u16 v168, v1, s[4:7], 0 offen
	buffer_load_u16 v157, v157, s[4:7], 0 offen
	buffer_load_u16 v158, v158, s[4:7], 0 offen
	buffer_load_u16 v159, v159, s[4:7], 0 offen
	buffer_load_u16 v161, v161, s[4:7], 0 offen
	buffer_load_u16 v162, v162, s[4:7], 0 offen
	buffer_load_u16 v163, v163, s[4:7], 0 offen
	buffer_load_u16 v164, v164, s[4:7], 0 offen
	v_lshlrev_b32_e32 v94, 16, v94
	v_lshlrev_b32_e32 v150, 16, v150
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v13, v22, v13, v88
	v_fma_f32 v15, v23, v15, v87
	v_fma_f32 v22, v98, v93, v82
	v_fma_f32 v23, v99, v94, v81
	v_fma_f32 v93, v105, v160, v75
	v_fma_f32 v95, v107, v150, v73
	v_fma_f32 v99, v111, v155, v69
	v_fma_f32 v20, v26, v92, v84
	v_fma_f32 v92, v104, v148, v76
	v_fma_f32 v25, v101, v145, v79
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v69, v69, v99, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v170, 0x94, v10
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v94, v106, v149, v74
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v89, v12, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v98, v110, v154, v70
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v88, v13, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v74, v74, v94, s2
	v_cndmask_b32_e64 v75, v75, v93, s2
	v_cndmask_b32_e64 v70, v70, v98, s2
	v_cndmask_b32_e64 v73, v73, v95, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v168, 16, v168
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v159, 16, v159
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v161, 16, v161
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v101, v113, v168, v67
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v163, 16, v163
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v103, v115, v158, v65
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v164, 16, v164
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v105, v117, v161, v63
	v_fma_f32 v104, v116, v159, v64
	v_fma_f32 v107, v119, v163, v61
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v65, v65, v103, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v165, 0x80, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v63, v63, v105, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v169, 0x90, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v61, v61, v107, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v171, 0x98, v10
	v_cndmask_b32_e64 v1, 0x80000000, v165, s2
	v_cndmask_b32_e64 v165, 0x80000000, v166, s2
	v_cndmask_b32_e64 v166, 0x80000000, v167, s2
	v_add_nc_u32_e32 v167, 0x8c, v10
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	v_cndmask_b32_e64 v171, 0x80000000, v171, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v108, v120, v164, v60
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v64, v64, v104, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v167, 0x80000000, v167, s2
	s_clause 0x7
	buffer_load_u16 v176, v1, s[4:7], 0 offen
	buffer_load_u16 v165, v165, s[4:7], 0 offen
	buffer_load_u16 v166, v166, s[4:7], 0 offen
	buffer_load_u16 v167, v167, s[4:7], 0 offen
	buffer_load_u16 v169, v169, s[4:7], 0 offen
	buffer_load_u16 v170, v170, s[4:7], 0 offen
	buffer_load_u16 v171, v171, s[4:7], 0 offen
	buffer_load_u16 v172, v172, s[4:7], 0 offen
	v_add_nc_u32_e32 v174, 0xa4, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v60, v60, v108, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v173, 0xa0, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v67, v67, v101, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v1, 0x80000000, v173, s2
	v_cndmask_b32_e64 v173, 0x80000000, v174, s2
	v_cndmask_b32_e64 v174, 0x80000000, v175, s2
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v176, 16, v176
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v165, 16, v165
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v166, 16, v166
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v167, 16, v167
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v169, 16, v169
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v109, v121, v176, v59
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v171, 16, v171
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v111, v123, v166, v57
	v_fma_f32 v112, v124, v167, v56
	v_fma_f32 v113, v125, v169, v55
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v172, 16, v172
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v115, v127, v171, v53
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v57, v57, v111, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v175, 0xac, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v56, v56, v112, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v177, 0xb0, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v55, v55, v113, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v179, 0xb8, v10
	v_cndmask_b32_e64 v175, 0x80000000, v175, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v59, v59, v109, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	v_add_nc_u32_e32 v182, 0xc4, v10
	v_cndmask_b32_e64 v179, 0x80000000, v179, s2
	s_clause 0x7
	buffer_load_u16 v184, v1, s[4:7], 0 offen
	buffer_load_u16 v173, v173, s[4:7], 0 offen
	buffer_load_u16 v174, v174, s[4:7], 0 offen
	buffer_load_u16 v175, v175, s[4:7], 0 offen
	buffer_load_u16 v177, v177, s[4:7], 0 offen
	buffer_load_u16 v178, v178, s[4:7], 0 offen
	buffer_load_u16 v179, v179, s[4:7], 0 offen
	buffer_load_u16 v180, v180, s[4:7], 0 offen
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v116, v128, v172, v52
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v1, 0x80000000, v181, s2
	v_cndmask_b32_e64 v181, 0x80000000, v182, s2
	v_cndmask_b32_e64 v182, 0x80000000, v183, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v53, v53, v115, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v183, 0xcc, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v52, v52, v116, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v185, 0xd0, v10
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v110, v122, v165, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v183, 0x80000000, v183, s2
	v_cndmask_b32_e64 v185, 0x80000000, v185, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v58, v58, v110, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v184, 16, v184
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v174, 16, v174
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v175, 16, v175
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v117, v129, v184, v51
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v178, 16, v178
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v179, 16, v179
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v120, v132, v175, v47
	v_fma_f32 v119, v131, v174, v48
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v51, v51, v117, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v187, 0xd8, v10
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v122, v134, v178, v45
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v47, v47, v120, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v191, 0xe8, v10
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v123, v135, v179, v44
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v187, 0x80000000, v187, s2
	s_clause 0x7
	buffer_load_u16 v192, v1, s[4:7], 0 offen
	buffer_load_u16 v181, v181, s[4:7], 0 offen
	buffer_load_u16 v182, v182, s[4:7], 0 offen
	buffer_load_u16 v183, v183, s[4:7], 0 offen
	buffer_load_u16 v185, v185, s[4:7], 0 offen
	buffer_load_u16 v186, v186, s[4:7], 0 offen
	buffer_load_u16 v187, v187, s[4:7], 0 offen
	buffer_load_u16 v188, v188, s[4:7], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v189, s2
	v_cndmask_b32_e64 v189, 0x80000000, v190, s2
	v_cndmask_b32_e64 v190, 0x80000000, v191, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v45, v45, v122, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v191, 0xec, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v48, v48, v119, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v194, 0xf4, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v44, v44, v123, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v193, 0xf0, v10
	v_add_nc_u32_e32 v10, 0xfc, v10
	v_cndmask_b32_e64 v191, 0x80000000, v191, s2
	v_cndmask_b32_e64 v194, 0x80000000, v194, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v193, 0x80000000, v193, s2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	s_clause 0x7
	buffer_load_u16 v196, v1, s[4:7], 0 offen
	buffer_load_u16 v189, v189, s[4:7], 0 offen
	buffer_load_u16 v190, v190, s[4:7], 0 offen
	buffer_load_u16 v191, v191, s[4:7], 0 offen
	buffer_load_u16 v193, v193, s[4:7], 0 offen
	buffer_load_u16 v194, v194, s[4:7], 0 offen
	buffer_load_u16 v195, v195, s[4:7], 0 offen
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v1, 1, v18
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v185, 16, v185
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v196, 16, v196
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v189, 16, v189
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
	v_fma_f32 v4, v4, v191, v31
	v_fma_f32 v9, v9, v196, v34
	v_fma_f32 v6, v6, v194, v29
	v_fma_f32 v7, v7, v195, v28
	v_fma_f32 v8, v8, v10, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v49, v11, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v157, 16, v157
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v90, v14, s2
	v_cndmask_b32_e64 v14, v87, v15, s2
	v_cndmask_b32_e64 v15, v86, v16, s2
	v_cndmask_b32_e64 v16, v85, v19, s2
	v_cndmask_b32_e64 v19, v84, v20, s2
	v_cndmask_b32_e64 v20, v83, v21, s2
	v_cndmask_b32_e64 v21, v82, v22, s2
	v_cndmask_b32_e64 v22, v81, v23, s2
	v_cndmask_b32_e64 v23, v80, v24, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v10, v10, v10
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v193, v30
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v31, v4, s2
	v_cndmask_b32_e64 v6, v29, v6, s2
	v_cndmask_b32_e64 v29, v28, v7, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v31, 0, v10
	v_dual_max_f32 v7, v12, v12 :: v_dual_max_f32 v10, v14, v14
	v_max_f32_e32 v14, v23, v23
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v79, v25, s2
	v_cndmask_b32_e64 v9, v34, v9, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v30, v5, s2
	v_cndmask_b32_e64 v30, v27, v8, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v8, v13, v13 :: v_dual_max_f32 v13, v16, v16
	v_max_f32_e32 v16, 0, v7
	v_dual_max_f32 v7, v19, v19 :: v_dual_max_f32 v80, 0, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v190, 16, v190
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v189, v33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v49, v76, v92, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v76, 0, v7 :: v_dual_max_f32 v7, v24, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v3, v190, v32
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v9, v9, v9
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v102, v146, v78
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v33, v2, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v12, v15, v15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v32, v3, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v32, 0, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v78, v26, s2
	v_cndmask_b32_e64 v26, v77, v91, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v33, 0, v10 :: v_dual_max_f32 v8, v20, v20
	v_max_f32_e32 v10, v21, v21
	v_max_f32_e32 v14, v75, v75
	v_dual_max_f32 v24, 0, v7 :: v_dual_max_f32 v7, v74, v74
	v_dual_max_f32 v5, v5, v5 :: v_dual_lshlrev_b32 v162, 16, v162
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v170, 16, v170
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v34, 0, v12
	v_dual_max_f32 v12, v22, v22 :: v_dual_max_f32 v77, 0, v8
	v_max_f32_e32 v78, 0, v10
	v_max_f32_e32 v8, v25, v25
	v_max_f32_e32 v10, v26, v26
	v_max_f32_e32 v82, 0, v14
	v_max_f32_e32 v14, v70, v70
	v_dual_max_f32 v70, 0, v7 :: v_dual_max_f32 v7, v69, v69
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v102, v114, v157, v66
	v_fma_f32 v114, v126, v170, v54
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v79, 0, v12 :: v_dual_max_f32 v12, v49, v49
	v_max_f32_e32 v49, 0, v8
	v_dual_max_f32 v75, 0, v10 :: v_dual_max_f32 v8, v73, v73
	v_dual_max_f32 v10, v72, v72 :: v_dual_lshlrev_b32 v173, 16, v173
	v_max_f32_e32 v74, 0, v14
	v_dual_max_f32 v14, v65, v65 :: v_dual_max_f32 v65, 0, v7
	v_max_f32_e32 v7, v64, v64
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v180, 16, v180
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v106, v118, v162, v62
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v66, v66, v102, s2
	v_cndmask_b32_e64 v54, v54, v114, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v81, 0, v12 :: v_dual_max_f32 v12, v71, v71
	v_dual_max_f32 v71, 0, v8 :: v_dual_max_f32 v72, 0, v10
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v118, v130, v173, v50
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v8, v68, v68 :: v_dual_max_f32 v69, 0, v14
	v_max_f32_e32 v14, v60, v60
	v_max_f32_e32 v60, 0, v7
	v_max_f32_e32 v7, v59, v59
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v177, 16, v177
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v64, 0, v14 :: v_dual_lshlrev_b32 v183, 16, v183
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v124, v136, v180, v43
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v50, v50, v118, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v73, 0, v12 :: v_dual_max_f32 v12, v66, v66
	v_max_f32_e32 v66, 0, v8
	v_max_f32_e32 v8, v63, v63
	v_max_f32_e32 v14, v55, v55
	v_max_f32_e32 v55, 0, v7
	v_max_f32_e32 v7, v54, v54
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v187, 16, v187
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v59, 0, v14 :: v_dual_lshlrev_b32 v188, 16, v188
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v43, v43, v124, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v68, 0, v12
	v_dual_max_f32 v12, v61, v61 :: v_dual_max_f32 v61, 0, v8
	v_max_f32_e32 v8, v58, v58
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v129, v141, v185, v38
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v14, v50, v50
	v_dual_max_f32 v50, 0, v7 :: v_dual_max_f32 v7, v48, v48
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v62, v62, v106, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v38, v38, v129, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v11, v11, v11
	v_max_f32_e32 v10, v67, v67
	v_max_f32_e32 v54, 0, v14
	v_max_f32_e32 v14, v44, v44
	v_max_f32_e32 v44, 0, v7
	v_dual_max_f32 v7, v43, v43 :: v_dual_lshlrev_b32 v182, 16, v182
	v_max_f32_e32 v11, 0, v11
	v_max_f32_e32 v67, 0, v10
	v_dual_max_f32 v10, v62, v62 :: v_dual_max_f32 v63, 0, v12
	v_max_f32_e32 v12, v56, v56
	v_dual_max_f32 v28, 0, v7 :: v_dual_max_f32 v7, v38, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v62, 0, v10 :: v_dual_lshlrev_b32 v181, 16, v181
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v121, v133, v177, v46
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v10, v57, v57
	v_max_f32_e32 v58, 0, v12
	v_max_f32_e32 v12, v51, v51
	v_max_f32_e32 v21, 0, v7
	v_max_f32_e32 v7, 0, v5
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v5, v11, v11
	v_mul_f32_e32 v11, v31, v31
	v_mul_f32_e32 v31, v32, v32
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v127, v139, v182, v40
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v57, 0, v10 :: v_dual_lshlrev_b32 v192, 16, v192
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v126, v138, v181, v41
	v_fma_f32 v132, v144, v188, v35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v46, v46, v121, s2
	v_cndmask_b32_e64 v40, v40, v127, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v56, 0, v8
	v_max_f32_e32 v8, v53, v53
	v_max_f32_e32 v10, v52, v52
	v_dual_max_f32 v53, 0, v12 :: v_dual_max_f32 v12, v45, v45
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v131, v143, v187, v36
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v41, v41, v126, s2
	v_cndmask_b32_e64 v35, v35, v132, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v51, 0, v8 :: v_dual_max_f32 v52, 0, v10
	v_max_f32_e32 v8, v47, v47
	v_dual_max_f32 v10, v46, v46 :: v_dual_max_f32 v47, 0, v12
	v_max_f32_e32 v12, v40, v40
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v36, v131, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v46, 0, v10
	v_max_f32_e32 v10, v41, v41
	v_max_f32_e32 v22, 0, v12
	v_max_f32_e32 v12, v35, v35
	v_max_f32_e32 v4, v4, v4
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v186, 16, v186
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v128, v140, v183, v39
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v45, 0, v8
	v_dual_max_f32 v19, 0, v12 :: v_dual_max_f32 v12, 0, v9
	v_max_f32_e32 v9, 0, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.h, 0
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v25, 0, v10 :: v_dual_max_f32 v10, v36, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v11.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v130, v142, v186, v37
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v39, v128, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v43.h, v3.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v15, 0, v10 :: v_dual_max_f32 v10, 0, v4
	v_max_f32_e32 v4, v30, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v30, 1, v3
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v125, v137, v192, v42
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v37, v37, v130, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v6, v6, v6
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v16, v16, v16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v42, v125, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v32.h, v3.h
	v_add3_u32 v11, v11, v30, 0x7fff
	v_mov_b16_e32 v3.l, v31.h
	v_mov_b16_e32 v32.l, v16.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v8, v42, v42 :: v_dual_max_f32 v13, 0, v13
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v30, v33, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v33.h, v3.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v35, v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v26, 0, v8
	v_max_f32_e32 v8, v37, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v37.h, v3.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v27, 0, v14 :: v_dual_max_f32 v14, v39, v39
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v45, v45, v45 :: v_dual_max_f32 v20, 0, v8
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v8, 0, v6 :: v_dual_mul_f32 v47, v47, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v23, 0, v14
	v_max_f32_e32 v14, 0, v2
	v_max_f32_e32 v2, v29, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v38.h, v3.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v39, v66, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v40.h, v3.h
	v_mov_b16_e32 v42.h, v3.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v6, 0, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v5.h
	v_mov_b16_e32 v2.h, v3.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v48, v56, v56 :: v_dual_mul_f32 v21, v21, v21
	v_dual_mul_f32 v9, v9, v9 :: v_dual_mul_f32 v44, v44, v44
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v29, 1, v2
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add3_u32 v2, s34, s33, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v17, 1, v32
	.loc	1 188 19 is_stmt 1              ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v32, v13, v13
	v_mul_f32_e32 v46, v46, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v5, v5, v29, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v29, v34, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v11.h
	v_and_b32_e32 v11, 1, v3
	v_add3_u32 v16, v16, v17, 0x7fff
	v_mov_b16_e32 v17.l, v30.h
	v_mov_b16_e32 v3.l, v29.h
	v_mov_b16_e32 v17.h, v3.h
	v_add3_u32 v11, v31, v11, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v31, v76, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v33.l, v32.h
	v_and_b32_e32 v13, 1, v3
	v_and_b32_e32 v17, 1, v17
	v_mov_b16_e32 v11.l, v16.h
	v_mov_b16_e32 v3.l, v31.h
	v_mov_b16_e32 v34.h, v3.h
	v_add3_u32 v13, v29, v13, 0x7fff
	v_add3_u32 v16, v30, v17, 0x7fff
	v_and_b32_e32 v17, 1, v33
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v30, v77, v77 :: v_dual_and_b32 v29, 1, v3
	v_mul_f32_e32 v33, v78, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v16.h
	v_add3_u32 v17, v32, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v16, v31, v29, 0x7fff
	v_mov_b16_e32 v29.l, v30.h
	v_mov_b16_e32 v29.h, v3.h
	v_mov_b16_e32 v3.l, v33.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v32, v79, v79 :: v_dual_mul_f32 v31, v80, v80
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v17.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v17, 1, v29
	v_and_b32_e32 v29, 1, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v34.l, v32.h
	v_mov_b16_e32 v3.l, v31.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v19, v19, v19
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v30, v17, 0x7fff
	v_add3_u32 v17, v33, v29, 0x7fff
	v_and_b32_e32 v29, 1, v34
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v33, v49, v49 :: v_dual_and_b32 v24, 1, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v34.l, v35.h
	v_mov_b16_e32 v17.l, v30.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v29, v32, v29, 0x7fff
	v_mov_b16_e32 v3.l, v33.h
	v_add3_u32 v24, v31, v24, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v32, v75, v75
	v_dual_mul_f32 v31, v81, v81 :: v_dual_and_b32 v30, 1, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.l, v29.h
	v_and_b32_e32 v29, 1, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v34.l, v32.h
	v_add3_u32 v30, v35, v30, 0x7fff
	v_mov_b16_e32 v3.l, v31.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v35, v82, v82
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v29, v33, v29, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v33, v70, v70
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v34, 1, v34
	v_and_b32_e32 v36, 1, v3
	v_mov_b16_e32 v37.l, v35.h
	v_mov_b16_e32 v29.l, v30.h
	v_mov_b16_e32 v3.l, v33.h
	v_add3_u32 v30, v32, v34, 0x7fff
	v_add3_u32 v31, v31, v36, 0x7fff
	v_and_b32_e32 v32, 1, v37
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v36, v71, v71
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v34, 1, v3
	v_mov_b16_e32 v31.l, v30.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v30, v72, v72
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v32, v35, v32, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v37, v73, v73
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v33, v33, v34, 0x7fff
	v_mov_b16_e32 v34.l, v36.h
	v_mov_b16_e32 v34.h, v3.h
	v_mov_b16_e32 v3.l, v30.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v35, v74, v74
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v33.l, v32.h
	v_mov_b16_e32 v38.l, v37.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v27, v27, v27 :: v_dual_and_b32 v32, 1, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v34, 1, v3
	v_mov_b16_e32 v3.l, v35.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v25, v25, v25 :: v_dual_and_b32 v38, 1, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v32, v36, v32, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v36, v65, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v30, v34, 0x7fff
	v_and_b32_e32 v34, 1, v3
	v_mov_b16_e32 v3.l, v39.h
	v_mov_b16_e32 v30.l, v32.h
	v_mov_b16_e32 v40.l, v36.h
	v_add3_u32 v32, v37, v38, 0x7fff
	v_add3_u32 v34, v35, v34, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v37, v68, v68 :: v_dual_mul_f32 v38, v67, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v35, 1, v40
	v_mov_b16_e32 v34.l, v32.h
	v_and_b32_e32 v32, 1, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v3.l, v37.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v40, v69, v69
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v35, v36, v35, 0x7fff
	v_mov_b16_e32 v36.l, v38.h
	v_mov_b16_e32 v36.h, v3.h
	v_add3_u32 v32, v39, v32, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v39, v60, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v41, 1, v3
	v_mov_b16_e32 v42.l, v40.h
	v_and_b32_e32 v36, 1, v36
	v_mov_b16_e32 v32.l, v35.h
	v_mov_b16_e32 v3.l, v39.h
	v_mov_b16_e32 v49.h, v3.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v23, v23, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v35, v38, v36, 0x7fff
	v_add3_u32 v36, v37, v41, 0x7fff
	v_and_b32_e32 v37, 1, v42
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v42, v63, v63
	v_dual_mul_f32 v41, v61, v61 :: v_dual_and_b32 v38, 1, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v36.l, v35.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v35, v62, v62
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v37, v40, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v38, v39, v38, 0x7fff
	v_mov_b16_e32 v39.l, v41.h
	v_mov_b16_e32 v39.h, v3.h
	v_mov_b16_e32 v3.l, v35.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v40, v64, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v38.l, v37.h
	v_mov_b16_e32 v43.l, v42.h
	v_and_b32_e32 v37, 1, v39
	v_and_b32_e32 v39, 1, v3
	v_mov_b16_e32 v3.l, v40.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v28, v28, v28 :: v_dual_mul_f32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v37, v41, v37, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v41, v55, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v35, v35, v39, 0x7fff
	v_and_b32_e32 v39, 1, v3
	v_and_b32_e32 v43, 1, v43
	v_mov_b16_e32 v35.l, v37.h
	v_mov_b16_e32 v49.l, v41.h
	v_mov_b16_e32 v3.l, v48.h
	v_add3_u32 v39, v40, v39, 0x7fff
	v_add3_u32 v37, v42, v43, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v43, v57, v57
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v40, 1, v49
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v42, v58, v58 :: v_dual_mul_f32 v49, v59, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.l, v37.h
	v_and_b32_e32 v37, 1, v3
	v_add3_u32 v40, v41, v40, 0x7fff
	v_mov_b16_e32 v41.l, v43.h
	v_mov_b16_e32 v41.h, v3.h
	v_mov_b16_e32 v3.l, v42.h
	v_add3_u32 v37, v48, v37, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v48, v50, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v55.l, v49.h
	v_and_b32_e32 v41, 1, v41
	v_and_b32_e32 v50, 1, v3
	v_mov_b16_e32 v55.h, v3.h
	v_mov_b16_e32 v3.l, v48.h
	v_mov_b16_e32 v37.l, v40.h
	v_add3_u32 v40, v43, v41, 0x7fff
	v_add3_u32 v41, v42, v50, 0x7fff
	v_and_b32_e32 v42, 1, v55
	v_and_b32_e32 v43, 1, v3
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v50, v51, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v41.l, v40.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v40, v52, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v42, v49, v42, 0x7fff
	v_add3_u32 v43, v48, v43, 0x7fff
	v_mov_b16_e32 v48.l, v50.h
	v_mov_b16_e32 v48.h, v3.h
	v_mov_b16_e32 v3.l, v40.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v49, v54, v54
	v_mul_f32_e32 v51, v53, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v43.l, v42.h
	v_and_b32_e32 v42, 1, v48
	v_and_b32_e32 v48, 1, v3
	v_mov_b16_e32 v3.l, v49.h
	v_mov_b16_e32 v52.l, v51.h
	v_mov_b16_e32 v52.h, v3.h
	v_add3_u32 v42, v50, v42, 0x7fff
	v_add3_u32 v40, v40, v48, 0x7fff
	v_and_b32_e32 v48, 1, v3
	v_mov_b16_e32 v3.l, v45.h
	v_and_b32_e32 v50, 1, v52
	v_mov_b16_e32 v52.l, v44.h
	v_mov_b16_e32 v40.l, v42.h
	v_add3_u32 v48, v49, v48, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v26, v26, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v42, v51, v50, 0x7fff
	v_and_b32_e32 v49, 1, v52
	v_mov_b16_e32 v50.l, v27.h
	v_mov_b16_e32 v50.h, v3.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v22, v22, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v48.l, v42.h
	v_add3_u32 v44, v44, v49, 0x7fff
	v_mov_b16_e32 v49.l, v46.h
	v_mov_b16_e32 v49.h, v3.h
	v_and_b32_e32 v42, 1, v3
	v_mov_b16_e32 v3.l, v47.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v7, v7, v7 :: v_dual_mul_f32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v42, v45, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v45, 1, v3
	v_mov_b16_e32 v3.l, v28.h
	v_mov_b16_e32 v42.l, v44.h
	v_add3_u32 v44, v46, v49, 0x7fff
	v_and_b32_e32 v46, 1, v50
	v_add3_u32 v45, v47, v45, 0x7fff
	v_and_b32_e32 v47, 1, v3
	v_mov_b16_e32 v44.l, v26.h
	v_mov_b16_e32 v45.l, v44.h
	v_add3_u32 v27, v27, v46, 0x7fff
	v_mov_b16_e32 v44.h, v3.h
	v_mov_b16_e32 v3.l, v25.h
	v_add3_u32 v28, v28, v47, 0x7fff
	v_mov_b16_e32 v46.l, v22.h
	v_mov_b16_e32 v28.l, v27.h
	v_and_b32_e32 v27, 1, v44
	v_and_b32_e32 v44, 1, v3
	v_mov_b16_e32 v46.h, v3.h
	v_mov_b16_e32 v3.l, v23.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v12, v12, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v26, v26, v27, 0x7fff
	v_add3_u32 v25, v25, v44, 0x7fff
	v_and_b32_e32 v44, 1, v46
	v_mov_b16_e32 v46.l, v21.h
	v_and_b32_e32 v27, 1, v3
	v_mov_b16_e32 v3.l, v20.h
	v_mov_b16_e32 v25.l, v26.h
	v_add3_u32 v22, v22, v44, 0x7fff
	v_and_b32_e32 v26, 1, v46
	v_add3_u32 v23, v23, v27, 0x7fff
	v_mov_b16_e32 v27.l, v12.h
	v_mov_b16_e32 v27.h, v3.h
	v_mov_b16_e32 v23.l, v22.h
	v_and_b32_e32 v22, 1, v3
	v_add3_u32 v21, v21, v26, 0x7fff
	v_mov_b16_e32 v3.l, v19.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v14, v14, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v26.l, v15.h
	v_add3_u32 v20, v20, v22, 0x7fff
	v_mov_b16_e32 v20.l, v21.h
	v_and_b32_e32 v21, 1, v27
	v_mov_b16_e32 v26.h, v3.h
	v_and_b32_e32 v22, 1, v3
	v_mov_b16_e32 v3.l, v14.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v6, v6, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v12, v21, 0x7fff
	v_mov_b16_e32 v21.l, v7.h
	v_mov_b16_e32 v21.h, v3.h
	v_dual_cndmask_b32 v27, v43, v37 :: v_dual_and_b32 v26, 1, v26
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v4, 0, v4 :: v_dual_and_b32 v21, 1, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v15, v26, 0x7fff
	v_mov_b16_e32 v15.l, v9.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v1, v2, v1, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 188 19 is_stmt 1              ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v4, v4, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v7, v7, v21, 0x7fff
	v_cndmask_b32_e32 v21, v35, v36, vcc_lo
	v_add3_u32 v19, v19, v22, 0x7fff
	v_and_b32_e32 v22, 1, v3
	v_mov_b16_e32 v19.l, v15.h
	v_mov_b16_e32 v3.l, v10.h
	v_mov_b16_e32 v15.h, v3.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v8, v8, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v14, v14, v22, 0x7fff
	v_mov_b16_e32 v22.l, v6.h
	v_mov_b16_e32 v22.h, v3.h
	v_mov_b16_e32 v14.l, v12.h
	v_and_b32_e32 v12, 1, v3
	v_and_b32_e32 v15, 1, v15
	v_cndmask_b32_e32 v26, v38, v39, vcc_lo
	v_and_b32_e32 v22, 1, v22
	v_cndmask_b32_e32 v18, v30, v32, vcc_lo
	v_add_nc_u32_e32 v2, 64, v1
	v_add3_u32 v9, v9, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v6, v6, v22, 0x7fff
	v_cndmask_b32_e32 v22, v36, v35, vcc_lo
	v_cndmask_b32_e32 v36, v19, v23, vcc_lo
	v_cndmask_b32_e32 v19, v23, v19, vcc_lo
	v_mov_b16_e32 v3.l, v8.h
	v_mov_b32_e32 v23, 0x7632
	v_dual_cndmask_b32 v35, v20, v25 :: v_dual_cndmask_b32 v20, v25, v20
	v_permlanex16_b32 v22, v22, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v15, 1, v3
	v_mov_b16_e32 v3.l, v4.h
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v8, v8, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v8.l, v7.h
	v_cndmask_b32_e32 v7, v11, v16, vcc_lo
	v_cndmask_b32_e32 v15, v34, v33, vcc_lo
	v_add3_u32 v3, v4, v3, 0x7fff
	v_mov_b16_e32 v3.l, v6.h
	v_cndmask_b32_e32 v6, v16, v11, vcc_lo
	v_dual_cndmask_b32 v16, v33, v34 :: v_dual_cndmask_b32 v33, v48, v45
	v_add3_u32 v10, v10, v12, 0x7fff
	v_mov_b16_e32 v10.l, v9.h
	v_cndmask_b32_e32 v4, v13, v5, vcc_lo
	v_cndmask_b32_e32 v9, v29, v17, vcc_lo
	v_cndmask_b32_e32 v11, v17, v29, vcc_lo
	v_cndmask_b32_e32 v29, v37, v43, vcc_lo
	v_dual_cndmask_b32 v37, v8, v14 :: v_dual_cndmask_b32 v8, v14, v8
	v_dual_mov_b32 v14, 0x5410 :: v_dual_cndmask_b32 v5, v5, v13
	v_dual_cndmask_b32 v12, v31, v24 :: v_dual_cndmask_b32 v13, v24, v31
	v_cndmask_b32_e32 v24, v39, v38, vcc_lo
	v_dual_cndmask_b32 v38, v3, v10 :: v_dual_cndmask_b32 v3, v10, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v10, 0x1054, v14, vcc_lo
	v_dual_cndmask_b32 v14, 0x3276, v23 :: v_dual_cndmask_b32 v31, v41, v40
	v_cndmask_b32_e32 v34, v28, v42, vcc_lo
	v_cndmask_b32_e32 v28, v42, v28, vcc_lo
	v_lshl_or_b32 v10, v10, 8, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v14, v14, 8, v14
	v_cndmask_b32_e32 v17, v32, v30, vcc_lo
	v_cndmask_b32_e32 v30, v40, v41, vcc_lo
	v_cndmask_b32_e32 v32, v45, v48, vcc_lo
	v_and_b32_e32 v10, 0x540054, v10
	v_and_b32_e32 v14, 0x760076, v14
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v10, v10, 4, v10
	v_lshl_or_b32 v14, v14, 4, v14
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v33, 0x5040504, v10
	v_and_b32_e32 v39, 0x7060706, v14
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_nc_u32_e32 v0, 32, v1
	v_permlanex16_b32 v40, v19, s0, 0xfedcba98 op_sel:[1,0]
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
	v_perm_b32 v11, v16, v15, v33
	v_perm_b32 v12, v16, v15, v39
	v_perm_b32 v15, v22, v21, v33
	v_perm_b32 v16, v22, v21, v39
	v_perm_b32 v19, v25, v27, v33
	v_perm_b32 v20, v25, v27, v39
	v_perm_b32 v21, v26, v30, v33
	v_perm_b32 v22, v26, v30, v39
	v_perm_b32 v25, v28, v34, v33
	v_perm_b32 v26, v28, v34, v39
	v_perm_b32 v27, v31, v35, v33
	v_perm_b32 v28, v31, v35, v39
	v_dual_cndmask_b32 v35, 0x80000000, v1 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_perm_b32 v13, v18, v17, v33
	v_perm_b32 v14, v18, v17, v39
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[3:6], v35, s[20:23], 0 offen
	buffer_store_b128 v[7:10], v0, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v2, s[20:23], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v1
	v_add_nc_u32_e32 v3, 0xa0, v1
	v_add_nc_u32_e32 v2, 0x80, v1
	v_add_nc_u32_e32 v4, 0xc0, v1
	v_add_nc_u32_e32 v1, 0xe0, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_perm_b32 v17, v23, v24, v33
	v_perm_b32 v18, v23, v24, v39
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_perm_b32 v23, v29, v32, v33
	v_perm_b32 v24, v29, v32, v39
	v_perm_b32 v29, v40, v36, v33
	v_perm_b32 v30, v40, v36, v39
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_perm_b32 v31, v41, v37, v33
	v_perm_b32 v32, v41, v37, v39
	v_perm_b32 v33, v42, v38, v33
	v_perm_b32 v34, v42, v38, v39
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[15:18], v0, s[20:23], 0 offen
	buffer_store_b128 v[19:22], v2, s[20:23], 0 offen
	buffer_store_b128 v[23:26], v3, s[20:23], 0 offen
	buffer_store_b128 v[27:30], v4, s[20:23], 0 offen
	buffer_store_b128 v[31:34], v1, s[20:23], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 223
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 223
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 22028
; TotalNumSgprs: 46
; NumVgprs: 223
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 223
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     223
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
