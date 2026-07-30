	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
	v_mov_b32_e32 v57, v0
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s8, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_lshlrev_b32_e32 v14, 3, v57
	v_and_b32_e32 v2, 56, v14
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v4, 3, v57
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v3, 5, v57
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_lshrrev_b32_e32 v16, 1, v57
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v5, 64, v4
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v17, 56, v4
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s26, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 89 24 is_stmt 1               ; generate_amdgcn.py:89:24
	s_lshl_b32 s5, s5, 2
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_and_b32_e32 v16, 56, v16
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_xor_b32_e32 v14, v14, v16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s7, s10
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 91 19                         ; generate_amdgcn.py:91:19
	s_lshl_b32 s19, s6, 2
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s6, s6, s5
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s7, s9, s19
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 92 20 is_stmt 0               ; generate_amdgcn.py:92:20
	s_min_i32 s7, s7, 4
	.loc	1 93 29 is_stmt 1               ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s6
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s17, s7
	s_abs_i32 s6, s2
	s_cvt_f32_u32 s16, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s16
	v_readfirstlane_b32 s16, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_lshlrev_b32_e32 v0, 1, v57
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s39, s11
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_and_b32_e32 v1, 62, v0
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_u32_f32 s10, s16
	s_sub_i32 s16, 0, s17
	s_mul_i32 s16, s16, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s16
	s_xor_b32 s16, s2, s7
	s_add_i32 s5, s10, s5
	s_ashr_i32 s16, s16, 31
	s_mul_hi_u32 s5, s6, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s5, s17
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s38, s10
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s6, s6, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s20, s6, s17
	s_cmp_ge_u32 s6, s17
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s6, s20, s6
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s6, s17
	s_cselect_b32 s5, s18, s5
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s17, s4, 31
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s18, s5, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s20, s4, 0x7f
.Ltmp13:
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s4, s4, s17
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s5, s18, s16
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s6, s3, 6
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s17, s4, 1
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s7, s5, s7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v10, s6, v1
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_mad_u64_u32 v[6:7], null, s17, v3, v[1:2]
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s7
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v11, s6, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s26, s5, 7
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_mad_u64_u32 v[7:8], null, s17, v4, v[2:3]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s19
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s21, s20, s3
.Ltmp19:
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_mad_u64_u32 v[8:9], null, s17, v5, v[2:3]
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s17, v10
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s3, 64, v10
	.loc	1 198 29 is_stmt 1              ; generate_amdgcn.py:198:29
	s_add_i32 s22, s26, s27
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s2, 4
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s7, s21, 7
.Ltmp21:
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e64 s5, s17, v11
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s4, 64, v11
	.loc	1 191 34 is_stmt 1              ; generate_amdgcn.py:191:34
	s_mul_i32 s21, s26, s17
	.loc	1 198 29                        ; generate_amdgcn.py:198:29
	s_mul_i32 s19, s22, s17
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmpk_gt_i32 s20, 0x7f
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	s_mul_i32 s22, s33, s17
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s2, -1, 0
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	s_add_i32 s21, s21, s6
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_add3_u32 v6, s6, s22, v6
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s23, s3, vcc_lo
	.loc	1 198 29                        ; generate_amdgcn.py:198:29
	s_add_i32 s19, s19, s6
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_add_nc_u32_e32 v9, s21, v7
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s5, s4, s5
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_add_nc_u32_e32 v10, s21, v8
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s23
	.loc	1 198 29                        ; generate_amdgcn.py:198:29
	v_add_nc_u32_e32 v7, s19, v7
	v_add_nc_u32_e32 v8, s19, v8
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	v_cndmask_b32_e32 v11, 0x80000000, v7, vcc_lo
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_and_b32 s37, s37, 0xffff
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	v_cndmask_b32_e32 v12, 0x80000000, v8, vcc_lo
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xor_b32_e32 v0, v0, v17
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_add_nc_u32_e32 v17, 0, v14
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	buffer_load_u16 v15, v6, s[8:11], 0 offen
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_clause 0x3
	buffer_load_b64 v[6:7], v9, s[36:39], 0 offen
	buffer_load_b64 v[8:9], v10, s[36:39], 0 offen
	buffer_load_b64 v[10:11], v11, s[36:39], 0 offen
	buffer_load_b64 v[12:13], v12, s[36:39], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v14, 15, v57
	s_mov_b32 s5, -1
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v16, 0, v0
	v_lshlrev_b32_e32 v0, 2, v57
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmpk_gt_i32 s20, 0xff
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt vmcnt(4)
	ds_store_b16 v16, v15 offset:16384
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v17, v[6:7], v[8:9] offset1:8
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v17, v[10:11], v[12:13] offset0:16 offset1:24
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v6, 56, v0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_mov_b64 s[30:31], s[10:11]
	s_mov_b32 s5, 0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_lshl_or_b32 v10, v14, 6, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v11, 8, v10
	v_xor_b32_e32 v12, 16, v10
	v_xor_b32_e32 v13, 24, v10
	v_xor_b32_e32 v19, 32, v10
	v_xor_b32_e32 v20, 40, v10
	v_xor_b32_e32 v21, 48, v10
	v_xor_b32_e32 v22, 56, v10
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_or_b32_e32 v7, 0x400, v10
	v_or_b32_e32 v8, 0x800, v10
	v_or_b32_e32 v25, 0xc00, v10
	v_or_b32_e32 v26, 0x1000, v10
	v_or_b32_e32 v27, 0x1400, v10
	v_or_b32_e32 v28, 0x1800, v10
	v_or_b32_e32 v29, 0x1c00, v10
	v_or_b32_e32 v30, 0x400, v11
	v_or_b32_e32 v31, 0x800, v11
	v_or_b32_e32 v33, 0xc00, v11
	v_or_b32_e32 v34, 0x1000, v11
	v_or_b32_e32 v35, 0x1400, v11
	v_or_b32_e32 v37, 0x1800, v11
	v_or_b32_e32 v38, 0x1c00, v11
	v_or_b32_e32 v42, 0x400, v12
	v_or_b32_e32 v44, 0x800, v12
	v_or_b32_e32 v51, 0xc00, v12
	v_or_b32_e32 v52, 0x1000, v12
	v_or_b32_e32 v53, 0x1400, v12
	v_or_b32_e32 v55, 0x1800, v12
	v_or_b32_e32 v56, 0x1c00, v12
	v_or_b32_e32 v59, 0x400, v13
	v_or_b32_e32 v142, 0x800, v13
	v_or_b32_e32 v143, 0xc00, v13
	v_or_b32_e32 v144, 0x1000, v13
	v_or_b32_e32 v145, 0x1400, v13
	v_or_b32_e32 v161, 0x1800, v13
	v_or_b32_e32 v43, 0x1c00, v13
	v_or_b32_e32 v162, 0x400, v19
	v_or_b32_e32 v163, 0x800, v19
	v_or_b32_e32 v164, 0xc00, v19
	v_or_b32_e32 v165, 0x1000, v19
	v_or_b32_e32 v168, 0x1400, v19
	v_or_b32_e32 v169, 0x1800, v19
	v_or_b32_e32 v41, 0x1c00, v19
	v_or_b32_e32 v170, 0x400, v20
	v_or_b32_e32 v171, 0x800, v20
	v_or_b32_e32 v172, 0xc00, v20
	v_or_b32_e32 v173, 0x1000, v20
	v_or_b32_e32 v174, 0x1400, v20
	v_or_b32_e32 v46, 0x1800, v20
	v_or_b32_e32 v40, 0x1c00, v20
	v_or_b32_e32 v175, 0x400, v21
	v_or_b32_e32 v177, 0x800, v21
	v_or_b32_e32 v179, 0xc00, v21
	v_or_b32_e32 v50, 0x1000, v21
	v_or_b32_e32 v48, 0x1400, v21
	v_or_b32_e32 v180, 0x1800, v21
	v_or_b32_e32 v39, 0x1c00, v21
	v_or_b32_e32 v181, 0x400, v22
	v_or_b32_e32 v182, 0x800, v22
	v_or_b32_e32 v183, 0xc00, v22
	v_or_b32_e32 v49, 0x1000, v22
	v_or_b32_e32 v47, 0x1400, v22
	v_or_b32_e32 v54, 0x1800, v22
	v_or_b32_e32 v184, 0x1c00, v22
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr28_sgpr29
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr11
                                        ; implicit-def: $vgpr12
                                        ; implicit-def: $vgpr13
                                        ; implicit-def: $vgpr19
                                        ; implicit-def: $vgpr20
                                        ; implicit-def: $vgpr21
                                        ; implicit-def: $vgpr22
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr25
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr27
                                        ; implicit-def: $vgpr28
                                        ; implicit-def: $vgpr29
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr31
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr59
                                        ; implicit-def: $vgpr142
                                        ; implicit-def: $vgpr143
                                        ; implicit-def: $vgpr144
                                        ; implicit-def: $vgpr145
                                        ; implicit-def: $vgpr161
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr162
                                        ; implicit-def: $vgpr163
                                        ; implicit-def: $vgpr164
                                        ; implicit-def: $vgpr165
                                        ; implicit-def: $vgpr168
                                        ; implicit-def: $vgpr169
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr170
                                        ; implicit-def: $vgpr171
                                        ; implicit-def: $vgpr172
                                        ; implicit-def: $vgpr173
                                        ; implicit-def: $vgpr174
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr175
                                        ; implicit-def: $vgpr177
                                        ; implicit-def: $vgpr179
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr180
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr181
                                        ; implicit-def: $vgpr182
                                        ; implicit-def: $vgpr183
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr184
.LBB0_3:                                ; %Flow1208
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v45, 0
	v_bfe_u32 v217, v57, 4, 1
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	scratch_store_b32 off, v6, off offset:4 ; 4-byte Folded Spill
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v152, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off
	scratch_store_b32 off, v14, off offset:352
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v159, 0
	v_mov_b32_e32 v158, 0
	v_mov_b32_e32 v218, 0
	v_mov_b32_e32 v216, 0
	v_mov_b32_e32 v156, 0
	v_mov_b32_e32 v220, 0
	v_mov_b32_e32 v140, 0
	s_lshl_b32 s1, s27, 1
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s0, s7, -1
	scratch_store_b32 off, v6, off offset:8 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v159, 0 :: v_dual_and_b32 v0, 56, v0
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_lshl_b32 s20, s18, 8
	s_lshl_b32 s18, s18, 7
	s_lshl_b32 s21, s16, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v10, v14, 6, v0
	s_add_i32 s22, s27, s18
	s_lshl_b32 s16, s16, 7
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v6, s22, v4
	v_xor_b32_e32 v20, 40, v10
	v_xor_b32_e32 v21, 48, v10
	v_xor_b32_e32 v22, 56, v10
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v7, s22, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b32_e32 v0, 0x1800, v20
	v_subrev_nc_u32_e32 v6, s16, v6
	v_or_b32_e32 v8, s18, v4
	v_subrev_nc_u32_e32 v7, s16, v7
	v_or_b32_e32 v9, s18, v5
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c00, v20
	v_mad_u64_u32 v[4:5], null, s17, v6, s[6:7]
	v_subrev_nc_u32_e32 v8, s16, v8
	v_mad_u64_u32 v[5:6], null, s17, v7, s[6:7]
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v21
	v_subrev_nc_u32_e32 v9, s16, v9
	v_mad_u64_u32 v[6:7], null, s17, v8, s[6:7]
	v_dual_mov_b32 v220, 0 :: v_dual_add_nc_u32 v3, s33, v3
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x800, v21
	v_mad_u64_u32 v[7:8], null, s17, v9, s[6:7]
	v_mad_u64_u32 v[8:9], null, s17, v3, s[6:7]
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v21
	v_xor_b32_e32 v11, 8, v10
	v_xor_b32_e32 v12, 16, v10
	v_xor_b32_e32 v13, 24, v10
	v_xor_b32_e32 v19, 32, v10
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1000, v21
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v211, 0
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1400, v21
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v209, 0
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1800, v21
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v207, 0
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c00, v21
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v205, 0
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v22
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v203, 0
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x800, v22
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v193, 0
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v22
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v191, 0
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1000, v22
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v131, 0
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1400, v22
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v109, 0
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1800, v22
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v107, 0
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c00, v22
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v138, 0
	v_mov_b32_e32 v133, 0
	v_mov_b32_e32 v197, 0
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_sub_nc_u32_e32 v0, s17, v1
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v167, 0
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_sub_nc_u32_e32 v0, s17, v2
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v99, 0
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_dual_mov_b32 v213, 0 :: v_dual_lshlrev_b32 v0, 1, v217
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v137, 0
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s33, v14
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v95, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v0, s7, v0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v87, 0
	v_lshlrev_b32_e32 v142, 1, v0
	v_add3_u32 v0, v4, v2, 64
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v134, 0
	v_mov_b32_e32 v121, 0
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_add3_u32 v0, v5, v2, 64
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v117, 0
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_add3_u32 v0, v6, v2, 64
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v81, 0
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_add3_u32 v0, v7, v2, 64
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v79, 0
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_add3_u32 v0, v8, v1, 64
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v120, 0
	v_mov_b32_e32 v111, 0
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v69, 0
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v57, off offset:356 ; 4-byte Folded Spill
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v75, 0
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v67, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v68, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_max_i32 s19, s0, 1
	s_add_i32 s5, s20, s1
	s_mov_b32 s16, 0
	s_mov_b64 s[28:29], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_sub_i32 s5, s5, s21
	s_lshl_b32 s34, s27, 2
	s_sub_i32 s35, s20, s21
	s_lshl_b32 s48, s19, 6
	s_add_i32 s6, s6, 64
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s12, s16
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v217, off offset:360
	scratch_store_b32 off, v0, off offset:4
	scratch_store_b32 off, v10, off offset:280
	scratch_store_b32 off, v11, off offset:284
	scratch_store_b32 off, v19, off offset:288
	scratch_store_b32 off, v12, off offset:292
	scratch_store_b32 off, v20, off offset:296
	scratch_store_b32 off, v13, off offset:300
	scratch_store_b32 off, v21, off offset:304
	scratch_store_b32 off, v22, off offset:308
	scratch_store_b32 off, v16, off offset:312
	scratch_store_b32 off, v17, off offset:316
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	buffer_load_u16 v0, v142, s[44:47], 0 offen
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	s_add_i32 s13, s6, s12
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v253, 0, v10
	v_add_nc_u32_e32 v254, 0, v11
	v_add_nc_u32_e32 v164, 0, v12
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_clause 0xd                            ; 56-byte Folded Spill
	scratch_store_b32 off, v142, off offset:64
	scratch_store_b32 off, v140, off offset:60
	scratch_store_b32 off, v178, off offset:56
	scratch_store_b32 off, v67, off offset:52
	scratch_store_b32 off, v141, off offset:20
	scratch_store_b32 off, v147, off offset:16
	scratch_store_b32 off, v160, off offset:12
	scratch_store_b32 off, v120, off offset:48
	scratch_store_b32 off, v66, off offset:44
	scratch_store_b32 off, v65, off offset:40
	scratch_store_b32 off, v64, off offset:36
	scratch_store_b32 off, v63, off offset:32
	scratch_store_b32 off, v62, off offset:28
	scratch_store_b32 off, v61, off offset:24
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v165, 0, v13
	v_add_nc_u32_e32 v178, 0, v19
	v_add_nc_u32_e32 v179, 0, v20
	v_dual_mov_b32 v187, v167 :: v_dual_add_nc_u32 v180, 0, v21
	v_dual_mov_b32 v184, v205 :: v_dual_add_nc_u32 v181, 0, v22
	v_dual_mov_b32 v222, v193 :: v_dual_mov_b32 v201, v110
	v_mov_b32_e32 v200, v109
	v_mov_b32_e32 v110, v71
	v_dual_mov_b32 v244, v82 :: v_dual_mov_b32 v147, v91
	v_dual_mov_b32 v160, v92 :: v_dual_mov_b32 v195, v99
	v_mov_b32_e32 v194, v98
	v_mov_b32_e32 v196, v100
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	scratch_load_b32 v9, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_mov_b32_e32 v185, v218
	v_dual_mov_b32 v218, v210 :: v_dual_mov_b32 v205, v191
	v_dual_mov_b32 v210, v204 :: v_dual_mov_b32 v109, v70
	v_dual_mov_b32 v204, v190 :: v_dual_mov_b32 v189, v192
	v_dual_mov_b32 v227, v214 :: v_dual_mov_b32 v214, v208
	v_mov_b32_e32 v208, v202
	v_mov_b32_e32 v202, v112
	v_dual_mov_b32 v112, v75 :: v_dual_mov_b32 v177, v97
	v_mov_b32_e32 v167, v95
	v_mov_b32_e32 v161, v89
	v_mov_b32_e32 v163, v88
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	s_waitcnt vmcnt(1)
	v_cmp_lt_i32_e32 vcc_lo, s13, v9
	.loc	1 171 26 is_stmt 0              ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 189 26 is_stmt 1              ; generate_amdgcn.py:189:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s12, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[9:12], v253 offset1:2
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_b64 v[29:30], v253 offset:16384
	ds_load_b64 v[31:32], v254 offset:16384
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[13:16], v254 offset1:2
	ds_load_2addr_stride64_b64 v[17:20], v164 offset1:2
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_b64 v[33:34], v164 offset:16384
	ds_load_b64 v[35:36], v165 offset:16384
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[21:24], v165 offset1:2
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_b64 v[37:38], v178 offset:16384
	ds_load_b64 v[39:40], v179 offset:16384
	ds_load_b64 v[41:42], v180 offset:16384
	ds_load_b64 v[43:44], v181 offset:16384
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[25:28], v178 offset1:2
	ds_load_2addr_stride64_b64 v[46:49], v179 offset1:2
	ds_load_2addr_stride64_b64 v[50:53], v180 offset1:2
	ds_load_2addr_stride64_b64 v[140:143], v181 offset1:2
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[245:248], v164 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[249:252], v165 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[190:193], v178 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[54:57], v179 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[58:61], v180 offset0:16 offset1:18
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(19)
	v_wmma_i32_16x16x16_iu4 v[168:175], v[9:10], v[29:30], v[1:8] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[62:65], v181 offset0:16 offset1:18
	v_mov_b32_e32 v9, v78
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(18)
	v_wmma_i32_16x16x16_iu4 v[168:175], v[13:14], v[31:32], v[168:175] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[168:175], v[17:18], v[33:34], v[168:175] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu4 v[168:175], v[21:22], v[35:36], v[168:175] neg_lo:[1,1,0]
	v_dual_mov_b32 v22, v85 :: v_dual_mov_b32 v21, v76
	s_waitcnt lgkmcnt(9)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[168:175], v[25:26], v[37:38], v[168:175] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[168:175], v[46:47], v[39:40], v[168:175] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[168:175], v[50:51], v[41:42], v[168:175] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[168:175], v[140:141], v[43:44], v[168:175] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v0, v168
	v_mov_b32_e32 v168, v197
	v_mov_b32_e32 v197, v101
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v169
	v_dual_mov_b32 v169, v198 :: v_dual_mov_b32 v198, v107
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v170
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v171
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v172
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v173
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v174
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[171:174], v253 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[236:239], v254 offset0:16 offset1:18
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v175
	v_mov_b32_e32 v175, v105
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[228:235], v[171:172], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v172, v111 :: v_dual_mov_b32 v111, v74
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[228:235], v[236:237], v[31:32], v[228:235] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[228:235], v[245:246], v[33:34], v[228:235] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[228:235], v[249:250], v[35:36], v[228:235] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[228:235], v[190:191], v[37:38], v[228:235] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[228:235], v[54:55], v[39:40], v[228:235] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[228:235], v[58:59], v[41:42], v[228:235] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[228:235], v[62:63], v[43:44], v[228:235] neg_lo:[1,1,0]
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v0, v228
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v229
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v230
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v231
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v232
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v233
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v234
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v235
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[228:235], v[11:12], v[29:30], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[228:235], v[15:16], v[31:32], v[228:235] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[10:17], v[173:174], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v174, v199 :: v_dual_mov_b32 v199, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[228:235], v[19:20], v[33:34], v[228:235] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[10:17], v[238:239], v[31:32], v[10:17] neg_lo:[1,1,0]
	v_mov_b32_e32 v238, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[228:235], v[23:24], v[35:36], v[228:235] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[10:17], v[247:248], v[33:34], v[10:17] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[228:235], v[27:28], v[37:38], v[228:235] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[10:17], v[251:252], v[35:36], v[10:17] neg_lo:[1,1,0]
	v_mov_b32_e32 v27, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[228:235], v[48:49], v[39:40], v[228:235] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[10:17], v[192:193], v[37:38], v[10:17] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[190:193], v180 offset0:4 offset1:6
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[228:235], v[52:53], v[41:42], v[228:235] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[10:17], v[56:57], v[39:40], v[10:17] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[52:55], v164 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[56:59], v165 offset0:4 offset1:6
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[228:235], v[142:143], v[43:44], v[228:235] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[10:17], v[60:61], v[41:42], v[10:17] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[60:63], v178 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[140:143], v179 offset0:4 offset1:6
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v240, v228
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[10:17], v[64:65], v[43:44], v[10:17] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v223, v230
	v_cvt_f32_i32_e32 v215, v231
	v_cvt_f32_i32_e32 v225, v232
	v_cvt_f32_i32_e32 v224, v233
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v0, v10
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v228, v234
	v_cvt_f32_i32_e32 v226, v235
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[64:67], v181 offset0:4 offset1:6
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v255, v229
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	v_dual_mov_b32 v10, v83 :: v_dual_mov_b32 v11, v94
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	v_mov_b32_e32 v12, v90
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[88:91], v179 offset0:20 offset1:22
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	v_mov_b32_e32 v13, v87
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	v_mov_b32_e32 v14, v86
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	v_mov_b32_e32 v15, v81
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	v_mov_b32_e32 v16, v80
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[80:83], v165 offset0:20 offset1:22
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v17
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[17:20], v253 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[23:26], v254 offset0:4 offset1:6
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, v79
	v_mov_b32_e32 v162, v117
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[230:237], v[17:18], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v17, v77
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[76:79], v164 offset0:20 offset1:22
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[230:237], v[23:24], v[31:32], v[230:237] neg_lo:[1,1,0]
	v_mov_b32_e32 v24, v73
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[72:75], v254 offset0:20 offset1:22
	v_mov_b32_e32 v23, v84
	ds_load_2addr_stride64_b64 v[84:87], v178 offset0:20 offset1:22
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[230:237], v[52:53], v[33:34], v[230:237] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[46:53], v[19:20], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v19, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[230:237], v[56:57], v[35:36], v[230:237] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[46:53], v[25:26], v[31:32], v[46:53] neg_lo:[1,1,0]
	v_mov_b32_e32 v26, v148
	v_mov_b32_e32 v148, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[230:237], v[60:61], v[37:38], v[230:237] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[46:53], v[54:55], v[33:34], v[46:53] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[230:237], v[140:141], v[39:40], v[230:237] neg_lo:[1,1,0]
	v_mov_b32_e32 v141, v93
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[92:95], v180 offset0:20 offset1:22
	v_mov_b32_e32 v140, v96
	ds_load_2addr_stride64_b64 v[96:99], v181 offset0:20 offset1:22
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[230:237], v[190:191], v[41:42], v[230:237] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[46:53], v[58:59], v[35:36], v[46:53] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[54:57], v253 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[58:61], v254 offset0:8 offset1:10
	v_mov_b32_e32 v20, v119
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[230:237], v[64:65], v[43:44], v[230:237] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[46:53], v[62:63], v[37:38], v[46:53] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[62:65], v164 offset0:8 offset1:10
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v229, v231
	v_cvt_f32_i32_e32 v231, v233
	v_cvt_f32_i32_e32 v233, v235
	v_cvt_f32_i32_e32 v235, v237
	v_mov_b32_e32 v237, v68
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[68:71], v253 offset0:20 offset1:22
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[46:53], v[142:143], v[39:40], v[46:53] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[142:145], v165 offset0:24 offset1:26
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v230, v230
	v_cvt_f32_i32_e32 v232, v232
	v_cvt_f32_i32_e32 v234, v234
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[46:53], v[192:193], v[41:42], v[46:53] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[190:193], v178 offset0:24 offset1:26
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v236, v236
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[46:53], v[66:67], v[43:44], v[46:53] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v183, v48
	v_cvt_f32_i32_e32 v239, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v241, v50
	v_cvt_f32_i32_e32 v243, v51
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[68:69], v[29:30], v[1:8] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v242, v53
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[66:69], v165 offset0:8 offset1:10
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[245:252], v[72:73], v[31:32], v[245:252] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[76:77], v[33:34], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[80:81], v[35:36], v[245:252] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[84:85], v[37:38], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[88:89], v[39:40], v[245:252] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[92:93], v[41:42], v[245:252] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[96:97], v[43:44], v[245:252] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v18, v245
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v245, v52
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_store_b32 off, v18, off offset:180 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v246
	scratch_store_b32 off, v18, off offset:176 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v247
	scratch_store_b32 off, v18, off offset:168 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v248
	scratch_store_b32 off, v18, off offset:152 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v249
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[246:249], v179 offset0:24 offset1:26
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_store_b32 off, v18, off offset:140 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v250
	scratch_store_b32 off, v18, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v251
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v251, v47
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_store_b32 off, v18, off offset:104 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v252
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v252, v46
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[46:53], v[70:71], v[29:30], v[1:8] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[70:73], v178 offset0:8 offset1:10
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	scratch_store_b32 off, v18, off offset:84 ; 4-byte Folded Spill
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[46:53], v[74:75], v[31:32], v[46:53] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[74:77], v179 offset0:8 offset1:10
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[46:53], v[78:79], v[33:34], v[46:53] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[78:81], v180 offset0:8 offset1:10
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[46:53], v[82:83], v[35:36], v[46:53] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[82:85], v181 offset0:8 offset1:10
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[46:53], v[86:87], v[37:38], v[46:53] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[90:91], v[39:40], v[46:53] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[86:89], v253 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[90:93], v254 offset0:24 offset1:26
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[46:53], v[94:95], v[41:42], v[46:53] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[94:97], v164 offset0:24 offset1:26
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[46:53], v[98:99], v[43:44], v[46:53] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[98:101], v180 offset0:24 offset1:26
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v18, v46
	scratch_store_b32 off, v18, off offset:164 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v47
	scratch_store_b32 off, v18, off offset:156 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v48
	scratch_store_b32 off, v18, off offset:144 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v49
	scratch_store_b32 off, v18, off offset:128 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v50
	scratch_store_b32 off, v18, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v51
	scratch_store_b32 off, v18, off offset:88 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v52
	scratch_store_b32 off, v18, off offset:80 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v53
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[46:53], v[54:55], v[29:30], v[1:8] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	scratch_store_b32 off, v18, off offset:72 ; 4-byte Folded Spill
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[46:53], v[58:59], v[31:32], v[46:53] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[62:63], v[33:34], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[66:67], v[35:36], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[70:71], v[37:38], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[74:75], v[39:40], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[78:79], v[41:42], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[82:83], v[43:44], v[46:53] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v188, v46
	v_cvt_f32_i32_e32 v182, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v173, v48
	v_cvt_f32_i32_e32 v186, v49
	v_cvt_f32_i32_e32 v217, v50
	v_cvt_f32_i32_e32 v221, v51
	v_cvt_f32_i32_e32 v170, v52
	v_cvt_f32_i32_e32 v171, v53
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[86:87], v[29:30], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[90:91], v[31:32], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[94:95], v[33:34], v[46:53] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[142:143], v[35:36], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[46:53], v[190:191], v[37:38], v[46:53] neg_lo:[1,1,0]
	v_mov_b32_e32 v191, v106
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[105:108], v181 offset0:24 offset1:26
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[46:53], v[246:247], v[39:40], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[98:99], v[41:42], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[105:106], v[43:44], v[46:53] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v18, v46
	scratch_store_b32 off, v18, off offset:172 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v47
	scratch_store_b32 off, v18, off offset:160 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v48
	scratch_store_b32 off, v18, off offset:148 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v49
	scratch_store_b32 off, v18, off offset:136 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v50
	scratch_store_b32 off, v18, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v51
	scratch_store_b32 off, v18, off offset:112 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v52
	scratch_store_b32 off, v18, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v18, v53
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[46:53], v[56:57], v[29:30], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v18, off offset:132 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[46:53], v[60:61], v[31:32], v[46:53] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[54:57], v253 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[58:61], v254 offset0:12 offset1:14
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[46:53], v[64:65], v[33:34], v[46:53] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[62:65], v164 offset0:12 offset1:14
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[46:53], v[68:69], v[35:36], v[46:53] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[66:69], v165 offset0:12 offset1:14
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[46:53], v[72:73], v[37:38], v[46:53] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[70:73], v178 offset0:12 offset1:14
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[46:53], v[76:77], v[39:40], v[46:53] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[74:77], v179 offset0:12 offset1:14
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[46:53], v[80:81], v[41:42], v[46:53] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[78:81], v180 offset0:12 offset1:14
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[46:53], v[84:85], v[43:44], v[46:53] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_2addr_stride64_b64 v[82:85], v181 offset0:12 offset1:14
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v115, v46
	v_cvt_f32_i32_e32 v28, v47
	v_cvt_f32_i32_e32 v117, v48
	v_cvt_f32_i32_e32 v25, v49
	v_cvt_f32_i32_e32 v119, v50
	v_cvt_f32_i32_e32 v120, v51
	v_cvt_f32_i32_e32 v121, v52
	v_cvt_f32_i32_e32 v18, v53
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[46:53], v[88:89], v[29:30], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[92:93], v[31:32], v[46:53] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[86:89], v253 offset0:28 offset1:30
	ds_load_2addr_stride64_b64 v[90:93], v254 offset0:28 offset1:30
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[46:53], v[96:97], v[33:34], v[46:53] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[94:97], v164 offset0:28 offset1:30
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[46:53], v[144:145], v[35:36], v[46:53] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[192:193], v[37:38], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[46:53], v[248:249], v[39:40], v[46:53] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[246:249], v180 offset0:28 offset1:30
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[46:53], v[100:101], v[41:42], v[46:53] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[98:101], v165 offset0:28 offset1:30
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[46:53], v[107:108], v[43:44], v[46:53] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[105:108], v178 offset0:28 offset1:30
	scratch_load_b32 v178, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v144, v47
	v_cvt_f32_i32_e32 v145, v49
	v_cvt_f32_i32_e32 v250, v51
	v_cvt_f32_i32_e32 v143, v52
	scratch_store_b32 off, v46, off offset:184 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v46, v48
	v_cvt_f32_i32_e32 v142, v53
	scratch_store_b32 off, v46, off offset:188 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v46, v50
	scratch_store_b32 off, v46, off offset:192 ; 4-byte Folded Spill
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(13)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[54:55], v[29:30], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[58:59], v[31:32], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[62:63], v[33:34], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[66:67], v[35:36], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[70:71], v[37:38], v[46:53] neg_lo:[1,1,0]
	v_dual_mov_b32 v71, v110 :: v_dual_mov_b32 v70, v109
	s_waitcnt lgkmcnt(8)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[74:75], v[39:40], v[46:53] neg_lo:[1,1,0]
	v_dual_mov_b32 v75, v112 :: v_dual_mov_b32 v74, v111
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[109:112], v181 offset0:28 offset1:30
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[78:79], v[41:42], v[46:53] neg_lo:[1,1,0]
	v_mov_b32_e32 v79, v0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	scratch_load_b32 v0, off, off offset:200 ; 4-byte Folded Reload
	v_mov_b32_e32 v78, v9
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[82:83], v[43:44], v[46:53] neg_lo:[1,1,0]
	v_mov_b32_e32 v83, v10
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:4
	scratch_load_b32 v9, off, off
	v_mov_b32_e32 v82, v244
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v54, v46
	v_cvt_f32_i32_e32 v55, v47
	v_cvt_f32_i32_e32 v58, v48
	v_cvt_f32_i32_e32 v59, v49
	v_cvt_f32_i32_e32 v62, v50
	v_cvt_f32_i32_e32 v63, v51
	v_cvt_f32_i32_e32 v66, v52
	v_cvt_f32_i32_e32 v67, v53
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[86:87], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v86, v14 :: v_dual_mov_b32 v87, v13
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[90:91], v[31:32], v[46:53] neg_lo:[1,1,0]
	v_mov_b32_e32 v90, v12
	scratch_load_b32 v12, off, off offset:328 ; 4-byte Folded Reload
	v_mov_b32_e32 v91, v147
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[94:95], v[33:34], v[46:53] neg_lo:[1,1,0]
	v_mov_b32_e32 v94, v11
	scratch_load_b32 v11, off, off offset:8 ; 4-byte Folded Reload
	v_mov_b32_e32 v95, v167
	v_mov_b32_e32 v167, v187
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[98:99], v[35:36], v[46:53] neg_lo:[1,1,0]
	v_dual_mov_b32 v99, v195 :: v_dual_mov_b32 v98, v194
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[105:106], v[37:38], v[46:53] neg_lo:[1,1,0]
	v_mov_b32_e32 v106, v191
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_2addr_stride64_b64 v[190:193], v179 offset0:28 offset1:30
	v_mov_b32_e32 v105, v175
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[190:191], v[39:40], v[46:53] neg_lo:[1,1,0]
	v_mov_b32_e32 v191, v205
	v_mov_b32_e32 v205, v184
	v_mov_b32_e32 v190, v204
	v_mov_b32_e32 v204, v210
	v_wmma_i32_16x16x16_iu4 v[46:53], v[246:247], v[41:42], v[46:53] neg_lo:[1,1,0]
	v_mov_b32_e32 v210, v218
	v_mov_b32_e32 v218, v185
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[109:110], v[43:44], v[46:53] neg_lo:[1,1,0]
	v_dual_mov_b32 v110, v201 :: v_dual_mov_b32 v109, v200
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v253, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v164, v47
	v_cvt_f32_i32_e32 v184, v48
	v_cvt_f32_i32_e32 v179, v49
	v_cvt_f32_i32_e32 v165, v50
	v_cvt_f32_i32_e32 v254, v51
	v_cvt_f32_i32_e32 v180, v52
	v_cvt_f32_i32_e32 v181, v53
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[46:53], v[56:57], v[29:30], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[60:61], v[31:32], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[46:53], v[64:65], v[33:34], v[46:53] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[68:69], v[35:36], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[46:53], v[72:73], v[37:38], v[46:53] neg_lo:[1,1,0]
	v_dual_mov_b32 v73, v24 :: v_dual_mov_b32 v72, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[76:77], v[39:40], v[46:53] neg_lo:[1,1,0]
	v_mov_b32_e32 v76, v21
	v_mov_b32_e32 v77, v17
	v_wmma_i32_16x16x16_iu4 v[46:53], v[80:81], v[41:42], v[46:53] neg_lo:[1,1,0]
	v_dual_mov_b32 v81, v15 :: v_dual_mov_b32 v80, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[84:85], v[43:44], v[46:53] neg_lo:[1,1,0]
	v_mov_b32_e32 v85, v22
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v22, off, off offset:132 ; 4-byte Folded Reload
	v_mov_b32_e32 v84, v23
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v56, v46
	v_cvt_f32_i32_e32 v57, v47
	v_cvt_f32_i32_e32 v60, v48
	v_cvt_f32_i32_e32 v61, v49
	v_cvt_f32_i32_e32 v64, v50
	v_cvt_f32_i32_e32 v65, v51
	v_cvt_f32_i32_e32 v68, v52
	v_cvt_f32_i32_e32 v69, v53
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[46:53], v[88:89], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v89, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[92:93], v[31:32], v[46:53] neg_lo:[1,1,0]
	v_mov_b32_e32 v93, v141
	v_wmma_i32_16x16x16_iu4 v[46:53], v[96:97], v[33:34], v[46:53] neg_lo:[1,1,0]
	v_mov_b32_e32 v96, v140
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v140, off, off offset:60
	scratch_load_b32 v147, off, off offset:16
	v_mov_b32_e32 v97, v177
	v_wmma_i32_16x16x16_iu4 v[46:53], v[100:101], v[35:36], v[46:53] neg_lo:[1,1,0]
	v_mov_b32_e32 v101, v197
	v_mov_b32_e32 v197, v168
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[107:108], v[37:38], v[46:53] neg_lo:[1,1,0]
	v_mov_b32_e32 v107, v198
	v_wmma_i32_16x16x16_iu4 v[46:53], v[192:193], v[39:40], v[46:53] neg_lo:[1,1,0]
	v_mov_b32_e32 v193, v222
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[248:249], v[41:42], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[46:53], v[111:112], v[43:44], v[46:53] neg_lo:[1,1,0]
	v_mov_b32_e32 v111, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v6, v47
	v_cvt_f32_i32_e32 v31, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v48
	v_cvt_f32_i32_e32 v3, v46
	v_cvt_f32_i32_e32 v7, v49
	v_cvt_f32_i32_e32 v5, v50
	v_cvt_f32_i32_e32 v8, v51
	v_cvt_f32_i32_e32 v29, v52
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v30, 16, v0
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v0, off, off offset:252 ; 4-byte Folded Reload
	v_mov_b32_e32 v88, v163
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v2, s35, v12
	s_clause 0x7
	buffer_load_u16 v32, v2, s[40:43], 0 offen
	buffer_load_u16 v33, v2, s[40:43], 0 offen offset:4
	buffer_load_u16 v34, v2, s[40:43], 0 offen offset:8
	buffer_load_u16 v35, v2, s[40:43], 0 offen offset:12
	buffer_load_u16 v36, v2, s[40:43], 0 offen offset:16
	buffer_load_u16 v37, v2, s[40:43], 0 offen offset:20
	buffer_load_u16 v38, v2, s[40:43], 0 offen offset:24
	buffer_load_u16 v39, v2, s[40:43], 0 offen offset:28
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s35, s35, s34
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(8)
	v_mul_f32_e32 v1, v30, v0
	scratch_load_b32 v0, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v32, 16, v32
	v_mov_b32_e32 v92, v160
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v141, off, off offset:20
	scratch_load_b32 v160, off, off offset:12
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v219, v1, v32 :: v_dual_lshlrev_b32 v32, 16, v33
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v1, v30, v0
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	v_dual_mov_b32 v108, v199 :: v_dual_mov_b32 v199, v174
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v220, v1, v32
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v1, v30, v0 :: v_dual_lshlrev_b32 v32, 16, v34
	scratch_load_b32 v0, off, off offset:256 ; 4-byte Folded Reload
	v_mov_b32_e32 v192, v189
	v_dual_mov_b32 v112, v202 :: v_dual_fmac_f32 v213, v1, v32
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v1, v30, v0 :: v_dual_lshlrev_b32 v32, 16, v35
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	v_mov_b32_e32 v202, v208
	v_mov_b32_e32 v208, v214
	v_mov_b32_e32 v214, v227
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v214, v1, v32
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v32, 16, v36
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v1, v30, v0
	scratch_load_b32 v0, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v216, v1, v32
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v1, v30, v0 :: v_dual_lshlrev_b32 v32, 16, v37
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v218, v1, v32
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v1, v30, v0 :: v_dual_lshlrev_b32 v32, 16, v38
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v211, v1, v32 :: v_dual_lshlrev_b32 v32, 16, v39
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v1, v30, v0
	v_mul_f32_e32 v0, v30, v183
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v212, v1, v32
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v32, v2, s[40:43], 0 offen offset:32
	buffer_load_u16 v33, v2, s[40:43], 0 offen offset:36
	buffer_load_u16 v34, v2, s[40:43], 0 offen offset:40
	buffer_load_u16 v35, v2, s[40:43], 0 offen offset:44
	buffer_load_u16 v36, v2, s[40:43], 0 offen offset:48
	buffer_load_u16 v37, v2, s[40:43], 0 offen offset:52
	buffer_load_u16 v38, v2, s[40:43], 0 offen offset:56
	buffer_load_u16 v39, v2, s[40:43], 0 offen offset:60
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v1, v30, v240
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v32, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v210, v1, v32 :: v_dual_mul_f32 v1, v30, v255
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v32, 16, v33
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v209, v1, v32 :: v_dual_lshlrev_b32 v32, 16, v34
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v1, v30, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v206, v1, v32 :: v_dual_mul_f32 v1, v30, v215
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v32, 16, v35
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v205, v1, v32
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v1, v30, v225 :: v_dual_lshlrev_b32 v32, 16, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v207, v1, v32
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v1, v30, v224 :: v_dual_lshlrev_b32 v32, 16, v37
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v208, v1, v32
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v1, v30, v228 :: v_dual_lshlrev_b32 v32, 16, v38
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v203, v1, v32 :: v_dual_lshlrev_b32 v32, 16, v39
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v1, v30, v226
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v204, v1, v32
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v32, v2, s[40:43], 0 offen offset:64
	buffer_load_u16 v33, v2, s[40:43], 0 offen offset:68
	buffer_load_u16 v34, v2, s[40:43], 0 offen offset:72
	buffer_load_u16 v35, v2, s[40:43], 0 offen offset:76
	buffer_load_u16 v36, v2, s[40:43], 0 offen offset:80
	buffer_load_u16 v37, v2, s[40:43], 0 offen offset:84
	buffer_load_u16 v38, v2, s[40:43], 0 offen offset:88
	buffer_load_u16 v39, v2, s[40:43], 0 offen offset:92
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v1, v30, v230 :: v_dual_lshlrev_b32 v32, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v202, v1, v32 :: v_dual_mul_f32 v1, v30, v229
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v32, 16, v33
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v193, v1, v32 :: v_dual_lshlrev_b32 v32, 16, v34
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v1, v30, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v132, v1, v32 :: v_dual_mul_f32 v1, v30, v231
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v32, 16, v35
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v190, v1, v32 :: v_dual_mul_f32 v1, v30, v234
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v32, 16, v36
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v191, v1, v32 :: v_dual_lshlrev_b32 v32, 16, v37
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v1, v30, v233
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v192, v1, v32
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v1, v30, v236 :: v_dual_lshlrev_b32 v32, 16, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v112, v1, v32 :: v_dual_mul_f32 v1, v30, v235
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v39
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v131, v1, v32
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v32, v2, s[40:43], 0 offen offset:96
	buffer_load_u16 v33, v2, s[40:43], 0 offen offset:100
	buffer_load_u16 v34, v2, s[40:43], 0 offen offset:104
	buffer_load_u16 v35, v2, s[40:43], 0 offen offset:108
	buffer_load_u16 v36, v2, s[40:43], 0 offen offset:112
	buffer_load_u16 v37, v2, s[40:43], 0 offen offset:116
	buffer_load_u16 v38, v2, s[40:43], 0 offen offset:120
	buffer_load_u16 v39, v2, s[40:43], 0 offen offset:124
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v1, v30, v252
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v32, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v109, v1, v32
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v1, v30, v251 :: v_dual_lshlrev_b32 v32, 16, v33
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v110, v1, v32 :: v_dual_lshlrev_b32 v1, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v106, v0, v1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v30, v239
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v1, 16, v35
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v11, v0, v1
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v0, v30, v241 :: v_dual_lshlrev_b32 v1, 16, v36
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v53, v30, v250
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v107, v0, v1 :: v_dual_mul_f32 v0, v30, v243
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v1, 16, v37
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v108, v0, v1
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v0, v30, v245 :: v_dual_lshlrev_b32 v1, 16, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v9, v0, v1 :: v_dual_mul_f32 v0, v30, v242
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v39
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v10, v0, v1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v1, v2, s[40:43], 0 offen offset:128
	buffer_load_u16 v32, v2, s[40:43], 0 offen offset:132
	buffer_load_u16 v33, v2, s[40:43], 0 offen offset:136
	buffer_load_u16 v34, v2, s[40:43], 0 offen offset:140
	buffer_load_u16 v35, v2, s[40:43], 0 offen offset:144
	buffer_load_u16 v36, v2, s[40:43], 0 offen offset:148
	buffer_load_u16 v37, v2, s[40:43], 0 offen offset:152
	buffer_load_u16 v38, v2, s[40:43], 0 offen offset:156
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v0, v30, v188 :: v_dual_lshlrev_b32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v98, v0, v1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v0, v30, v182 :: v_dual_lshlrev_b32 v1, 16, v32
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v99, v0, v1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v30, v173
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v1, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v95, v0, v1 :: v_dual_mul_f32 v0, v30, v186
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v1, 16, v34
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v94, v0, v1
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v0, v30, v217 :: v_dual_lshlrev_b32 v1, 16, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v96, v0, v1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v0, v30, v221 :: v_dual_lshlrev_b32 v1, 16, v36
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v97, v0, v1 :: v_dual_mul_f32 v0, v30, v170
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v1, 16, v37
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v92, v0, v1
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v30, v171 :: v_dual_lshlrev_b32 v1, 16, v38
	v_mov_b32_e32 v198, v169
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v9, off
	scratch_store_b32 off, v11, off offset:8
	scratch_store_b32 off, v10, off offset:4
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v93, v0, v1
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v1, v2, s[40:43], 0 offen offset:160
	buffer_load_u16 v32, v2, s[40:43], 0 offen offset:164
	buffer_load_u16 v33, v2, s[40:43], 0 offen offset:168
	buffer_load_u16 v34, v2, s[40:43], 0 offen offset:172
	buffer_load_u16 v35, v2, s[40:43], 0 offen offset:176
	buffer_load_u16 v36, v2, s[40:43], 0 offen offset:180
	buffer_load_u16 v37, v2, s[40:43], 0 offen offset:184
	buffer_load_u16 v38, v2, s[40:43], 0 offen offset:188
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v0, v30, v115 :: v_dual_mov_b32 v115, v148
	v_mov_b32_e32 v100, v196
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v9, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v90, v0, v1
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v30, v28
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v148, v26 :: v_dual_lshlrev_b32 v1, 16, v32
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	scratch_load_b32 v26, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v91, v0, v1
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v30, v117
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v1, 16, v33
	v_mov_b32_e32 v117, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v87, v0, v1
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v0, v30, v25 :: v_dual_lshlrev_b32 v1, 16, v34
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v25, v30, v144 :: v_dual_fmac_f32 v86, v0, v1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v30, v119
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v1, 16, v35
	v_mov_b32_e32 v119, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v88, v0, v1
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v30, v120
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v1, 16, v36
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v89, v0, v1
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v30, v121
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v1, 16, v37
	v_mov_b32_e32 v121, v19
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v19, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v84, v0, v1
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v30, v18
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v1, 16, v38
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v85, v0, v1 :: v_dual_mul_f32 v0, v30, v54
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v1, v2, s[40:43], 0 offen offset:192
	buffer_load_u16 v32, v2, s[40:43], 0 offen offset:196
	buffer_load_u16 v33, v2, s[40:43], 0 offen offset:200
	buffer_load_u16 v34, v2, s[40:43], 0 offen offset:204
	buffer_load_u16 v35, v2, s[40:43], 0 offen offset:208
	buffer_load_u16 v36, v2, s[40:43], 0 offen offset:212
	buffer_load_u16 v37, v2, s[40:43], 0 offen offset:216
	buffer_load_u16 v38, v2, s[40:43], 0 offen offset:220
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v54, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v82, v0, v1
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v0, v30, v55 :: v_dual_lshlrev_b32 v1, 16, v32
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v83, v0, v1 :: v_dual_mul_f32 v0, v30, v58
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v1, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v79, v0, v1 :: v_dual_mul_f32 v0, v30, v59
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v1, 16, v34
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v59, v30, v179 :: v_dual_fmac_f32 v78, v0, v1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v0, v30, v62 :: v_dual_lshlrev_b32 v1, 16, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v80, v0, v1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v0, v30, v63 :: v_dual_lshlrev_b32 v1, 16, v36
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v63, v30, v181
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v81, v0, v1 :: v_dual_mul_f32 v0, v30, v66
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v1, 16, v37
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v37, v30, v56 :: v_dual_fmac_f32 v76, v0, v1
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v0, v30, v67 :: v_dual_lshlrev_b32 v1, 16, v38
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:52
	scratch_load_b32 v120, off, off offset:48
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v77, v0, v1
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v0, v2, s[40:43], 0 offen offset:224
	buffer_load_u16 v1, v2, s[40:43], 0 offen offset:228
	buffer_load_u16 v32, v2, s[40:43], 0 offen offset:232
	buffer_load_u16 v33, v2, s[40:43], 0 offen offset:236
	buffer_load_u16 v34, v2, s[40:43], 0 offen offset:240
	buffer_load_u16 v35, v2, s[40:43], 0 offen offset:244
	buffer_load_u16 v36, v2, s[40:43], 0 offen offset:248
	buffer_load_u16 v2, v2, s[40:43], 0 offen offset:252
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v74, v37, v0 :: v_dual_lshlrev_b32 v1, 16, v1
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v30, v57
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v57, v30, v164
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v75, v0, v1 :: v_dual_mul_f32 v0, v30, v60
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v1, 16, v32
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v32, s5, v12
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v60, v30, v184
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s5, s5, s34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v70, v0, v1
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v0, v30, v61
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v1, 16, v33
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v61, v30, v254
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v71, v0, v1 :: v_dual_mul_f32 v0, v30, v64
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v1, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v72, v0, v1
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v0, v30, v65 :: v_dual_lshlrev_b32 v1, 16, v35
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v65, v30, v3
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v73, v0, v1 :: v_dual_mul_f32 v0, v30, v68
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v68, v237 :: v_dual_lshlrev_b32 v1, 16, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v0, v1
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v30, v69 :: v_dual_lshlrev_b32 v1, 16, v2
	v_dual_mov_b32 v69, v238 :: v_dual_fmac_f32 v68, v0, v1
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x7
	buffer_load_u16 v1, v32, s[40:43], 0 offen
	buffer_load_u16 v2, v32, s[40:43], 0 offen offset:4
	buffer_load_u16 v33, v32, s[40:43], 0 offen offset:8
	buffer_load_u16 v34, v32, s[40:43], 0 offen offset:12
	buffer_load_u16 v35, v32, s[40:43], 0 offen offset:16
	buffer_load_u16 v36, v32, s[40:43], 0 offen offset:20
	buffer_load_u16 v37, v32, s[40:43], 0 offen offset:24
	buffer_load_u16 v38, v32, s[40:43], 0 offen offset:28
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v0, v30, v0 :: v_dual_lshlrev_b32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v140, v0, v1
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v1, 16, v2
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v2, 16, v37
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v30, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v159, v0, v1
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v1, 16, v33
	s_clause 0x1
	buffer_load_u16 v10, v32, s[40:43], 0 offen offset:96
	buffer_load_u16 v41, v32, s[40:43], 0 offen offset:100
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v0, v30, v0
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v157, v0, v1 :: v_dual_lshlrev_b32 v10, 16, v10
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v1, 16, v34
	s_clause 0x1
	buffer_load_u16 v34, v32, s[40:43], 0 offen offset:48
	buffer_load_u16 v33, v32, s[40:43], 0 offen offset:52
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v30, v0 :: v_dual_lshlrev_b32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v158, v0, v1
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v1, 16, v35
	s_clause 0x1
	buffer_load_u16 v40, v32, s[40:43], 0 offen offset:40
	buffer_load_u16 v35, v32, s[40:43], 0 offen offset:44
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v30, v0 :: v_dual_lshlrev_b32 v35, 16, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v197, v0, v1
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v1, 16, v36
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v30, v0
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v156, v0, v1
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v1, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_clause 0x1
	buffer_load_u16 v0, v32, s[40:43], 0 offen offset:32
	buffer_load_u16 v36, v32, s[40:43], 0 offen offset:36
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v1, v30, v1 :: v_dual_lshlrev_b32 v0, 16, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v178, v1, v2
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	scratch_load_b32 v1, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v1, v30, v1 :: v_dual_lshlrev_b32 v2, 16, v38
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v155, v1, v2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v1, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v37, v30, v1
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_clause 0x1
	buffer_load_u16 v2, v32, s[40:43], 0 offen offset:56
	buffer_load_u16 v1, v32, s[40:43], 0 offen offset:60
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v153, v37, v0
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v30, v0 :: v_dual_lshlrev_b32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v154, v0, v36
	.loc	1 191 34 is_stmt 1              ; generate_amdgcn.py:191:34
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v36, 16, v40
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s12, v0
	.loc	1 191 26 is_stmt 0              ; generate_amdgcn.py:191:26
	scratch_load_b32 v0, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s12, v0
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	scratch_load_b32 v0, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v30, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v150, v0, v36
	.loc	1 198 29 is_stmt 1              ; generate_amdgcn.py:198:29
	scratch_load_b32 v0, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s12, v0
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v36, s12, v0
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s12, s12, 64
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	s_waitcnt vmcnt(0)
	v_cmp_lt_i32_e32 vcc_lo, s13, v0
	.loc	1 171 26 is_stmt 0              ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_cmp_lg_u32 s48, s12
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_dual_cndmask_b32 v0, 0x80000000, v39 :: v_dual_mul_f32 v39, v30, v9
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v9, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v151, v39, v35
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x1
	buffer_load_u16 v35, v32, s[40:43], 0 offen offset:64
	buffer_load_u16 v39, v32, s[40:43], 0 offen offset:68
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v21, v30, v9
	scratch_load_b32 v9, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v15, v30, v9
	scratch_load_b32 v9, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v30, v9
	scratch_load_b32 v9, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v147, v14, v2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v2, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_clause 0x1
	buffer_load_u16 v14, v32, s[40:43], 0 offen offset:88
	buffer_load_u16 v40, v32, s[40:43], 0 offen offset:92
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v16, v30, v9
	scratch_load_b32 v9, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v2, v30, v2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v18, 16, v40
	s_clause 0x1
	buffer_load_u16 v40, v32, s[40:43], 0 offen offset:164
	buffer_load_u16 v46, v32, s[40:43], 0 offen offset:168
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v146, v2, v1
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	scratch_load_b32 v1, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v2, 16, v35
	s_clause 0x1
	buffer_load_u16 v35, v32, s[40:43], 0 offen offset:104
	buffer_load_u16 v42, v32, s[40:43], 0 offen offset:108
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v11, v30, v9
	scratch_load_b32 v9, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v141, v21, v34
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_clause 0x1
	buffer_load_u16 v21, v32, s[40:43], 0 offen offset:72
	buffer_load_u16 v34, v32, s[40:43], 0 offen offset:76
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v113, v11, v18
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v1, v30, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v139, v1, v2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v1, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v2, 16, v39
	s_clause 0x1
	buffer_load_u16 v39, v32, s[40:43], 0 offen offset:112
	buffer_load_u16 v43, v32, s[40:43], 0 offen offset:116
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v11, v30, v9
	scratch_load_b32 v9, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v102, v11, v10 :: v_dual_lshlrev_b32 v11, 16, v41
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_clause 0x1
	buffer_load_u16 v41, v32, s[40:43], 0 offen offset:172
	buffer_load_u16 v47, v32, s[40:43], 0 offen offset:176
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v1, v30, v1
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v10, v30, v9
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v148, v15, v33
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v9, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_clause 0x1
	buffer_load_u16 v15, v32, s[40:43], 0 offen offset:80
	buffer_load_u16 v33, v32, s[40:43], 0 offen offset:84
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v103, v10, v11
	v_dual_fmac_f32 v160, v1, v2 :: v_dual_lshlrev_b32 v11, 16, v35
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	scratch_load_b32 v1, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_clause 0x1
	buffer_load_u16 v27, v32, s[40:43], 0 offen offset:180
	buffer_load_u16 v35, v32, s[40:43], 0 offen offset:184
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v10, v30, v9
	scratch_load_b32 v9, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v133, v10, v11
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v1, v30, v1
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v11, 16, v42
	v_lshlrev_b32_e32 v2, 16, v21
	s_clause 0x3
	buffer_load_u16 v23, v32, s[40:43], 0 offen offset:188
	buffer_load_u16 v42, v32, s[40:43], 0 offen offset:192
	buffer_load_u16 v21, v32, s[40:43], 0 offen offset:120
	buffer_load_u16 v44, v32, s[40:43], 0 offen offset:124
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v136, v1, v2 :: v_dual_lshlrev_b32 v27, 16, v27
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	scratch_load_b32 v1, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v2, 16, v34
	s_clause 0x1
	buffer_load_u16 v28, v32, s[40:43], 0 offen offset:128
	buffer_load_u16 v34, v32, s[40:43], 0 offen offset:132
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v120, v53, v27
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(7)
	v_mul_f32_e32 v10, v30, v9
	scratch_load_b32 v9, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v135, v10, v11
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v11, 16, v39
	s_clause 0x1
	buffer_load_u16 v17, v32, s[40:43], 0 offen offset:196
	buffer_load_u16 v39, v32, s[40:43], 0 offen offset:200
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v1, v30, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v138, v1, v2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v1, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 197 35 is_stmt 1              ; generate_amdgcn.py:197:35
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v2, 16, v15
	s_clause 0x1
	buffer_load_u16 v15, v32, s[40:43], 0 offen offset:136
	buffer_load_u16 v24, v32, s[40:43], 0 offen offset:140
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v10, v30, v9
	scratch_load_b32 v9, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v176, v10, v11
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v11, 16, v43
	s_clause 0x1
	buffer_load_u16 v13, v32, s[40:43], 0 offen offset:204
	buffer_load_u16 v43, v32, s[40:43], 0 offen offset:208
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v66, v30, v4 :: v_dual_lshlrev_b32 v39, 16, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v118, v57, v17
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v1, v30, v1
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v114, v1, v2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v1, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 197 35 is_stmt 1              ; generate_amdgcn.py:197:35
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v10, v30, v9
	scratch_load_b32 v9, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v101, v10, v11
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v11, 16, v21
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v43, 16, v43
	s_clause 0x1
	buffer_load_u16 v21, v32, s[40:43], 0 offen offset:212
	buffer_load_u16 v48, v32, s[40:43], 0 offen offset:216
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v26, v30, v26 :: v_dual_lshlrev_b32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v116, v59, v13
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v1, v30, v1
	.loc	1 197 35 is_stmt 1              ; generate_amdgcn.py:197:35
	buffer_load_b64 v[3:4], v36, s[36:39], 0 offen
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v10, v30, v9
	scratch_load_b32 v9, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v2, 16, v33
	s_clause 0x1
	buffer_load_u16 v18, v32, s[40:43], 0 offen offset:156
	buffer_load_u16 v33, v32, s[40:43], 0 offen offset:160
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v20, v30, v19
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v167, v10, v11 :: v_dual_lshlrev_b32 v10, 16, v44
	v_fmac_f32_e32 v123, v1, v2
	.loc	1 191 26 is_stmt 1              ; generate_amdgcn.py:191:26
	buffer_load_b64 v[1:2], v0, s[36:39], 0 offen
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v0, v32, s[40:43], 0 offen offset:144
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v19, off, off offset:108 ; 4-byte Folded Reload
	v_mul_f32_e32 v55, v30, v142
	scratch_load_b32 v142, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x1
	buffer_load_u16 v44, v32, s[40:43], 0 offen offset:220
	buffer_load_u16 v49, v32, s[40:43], 0 offen offset:224
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v31, v30, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v7, v30, v7 :: v_dual_fmac_f32 v198, v61, v21
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v9, v30, v9 :: v_dual_lshlrev_b32 v18, 16, v18
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v45, v9, v10
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	scratch_load_b32 v9, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v28
	s_clause 0x1
	buffer_load_u16 v28, v32, s[40:43], 0 offen offset:228
	buffer_load_u16 v50, v32, s[40:43], 0 offen offset:232
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v6, v30, v6 :: v_dual_fmac_f32 v121, v55, v23
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v19, v30, v19 :: v_dual_add_nc_u32 v142, 2, v142
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v126, v26, v33
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v130, v19, v0 :: v_dual_mul_f32 v9, v30, v9
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v28, 16, v28
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v152, v9, v10
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	scratch_load_b32 v9, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v14, 16, v14
	v_lshlrev_b32_e32 v10, 16, v34
	s_clause 0x1
	buffer_load_u16 v34, v32, s[40:43], 0 offen offset:236
	buffer_load_u16 v51, v32, s[40:43], 0 offen offset:240
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v58, v30, v253
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v199, v6, v28
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v9, v30, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v166, v9, v10
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v9, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v9, v30, v9 :: v_dual_lshlrev_b32 v10, 16, v15
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v137, v9, v10
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v9, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v10, 16, v24
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v24, v30, v22
	scratch_load_b32 v22, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v104, v16, v14
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_clause 0x4
	buffer_load_u16 v14, v32, s[40:43], 0 offen offset:148
	buffer_load_u16 v16, v32, s[40:43], 0 offen offset:152
	buffer_load_u16 v15, v32, s[40:43], 0 offen offset:244
	buffer_load_u16 v52, v32, s[40:43], 0 offen offset:248
	buffer_load_u16 v32, v32, s[40:43], 0 offen offset:252
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v56, v30, v143 :: v_dual_fmac_f32 v129, v24, v18
	v_mul_f32_e32 v5, v30, v5
	v_mul_f32_e32 v54, v30, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v64, v30, v180 :: v_dual_fmac_f32 v119, v56, v35
	v_mul_f32_e32 v8, v30, v8
	v_mul_f32_e32 v29, v30, v29
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v9, v30, v9
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v22, v30, v22
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v149, v9, v10
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_clause 0x1
	buffer_load_b64 v[9:10], v37, s[36:39], 0 offen
	buffer_load_b64 v[11:12], v38, s[36:39], 0 offen
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v38, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:304
	scratch_load_b32 v61, off, off offset:24
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v37, v30, v145 :: v_dual_lshlrev_b32 v44, 16, v44
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v16, 16, v16
	v_lshlrev_b32_e32 v36, 16, v41
	v_lshlrev_b32_e32 v41, 16, v47
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v111, v63, v44 :: v_dual_mul_f32 v62, v30, v165
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:288
	scratch_load_b32 v13, off, off offset:300
	v_fmac_f32_e32 v134, v20, v14
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:296
	scratch_load_b32 v17, off, off offset:316
	v_fmac_f32_e32 v128, v22, v16
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:312
	scratch_load_b32 v22, off, off offset:308
	v_dual_fmac_f32 v125, v37, v36 :: v_dual_fmac_f32 v100, v62, v43
	scratch_load_b32 v62, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v15, 16, v15
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v122, v54, v41
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v47, 16, v49
	v_lshlrev_b32_e32 v49, 16, v51
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v117, v58, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v69, v65, v47
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:40
	scratch_load_b32 v63, off, off offset:32
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(11)
	v_mul_f32_e32 v38, v30, v38
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v30, 16, v40
	v_lshlrev_b32_e32 v40, 16, v46
	v_lshlrev_b32_e32 v46, 16, v48
	v_lshlrev_b32_e32 v48, 16, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v127, v25, v30 :: v_dual_lshlrev_b32 v50, 16, v52
	v_dual_fmac_f32 v115, v60, v39 :: v_dual_lshlrev_b32 v34, 16, v34
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v124, v38, v40 :: v_dual_fmac_f32 v61, v29, v50
	v_fmac_f32_e32 v105, v64, v46
	scratch_load_b32 v64, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v62, v31, v32
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v65, v66, v48
	scratch_load_b32 v66, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_barrier
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_store_2addr_stride64_b64 v17, v[11:12], v[3:4] offset0:16 offset1:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v12, off, off offset:292
	scratch_load_b32 v11, off, off offset:284
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v63, v5, v49
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt vmcnt(2)
	ds_store_b16 v16, v0 offset:16384
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_store_2addr_stride64_b64 v17, v[1:2], v[9:10] offset1:8
	scratch_load_b32 v10, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v66, v7, v34
	v_fmac_f32_e32 v64, v8, v15
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_clause 0x12                           ; 76-byte Folded Reload
	scratch_load_b32 v46, off, off offset:364
	scratch_load_b32 v40, off, off offset:368
	scratch_load_b32 v175, off, off offset:372
	scratch_load_b32 v177, off, off offset:376
	scratch_load_b32 v179, off, off offset:380
	scratch_load_b32 v50, off, off offset:384
	scratch_load_b32 v48, off, off offset:388
	scratch_load_b32 v180, off, off offset:392
	scratch_load_b32 v39, off, off offset:396
	scratch_load_b32 v181, off, off offset:400
	scratch_load_b32 v182, off, off offset:404
	scratch_load_b32 v183, off, off offset:408
	scratch_load_b32 v49, off, off offset:412
	scratch_load_b32 v47, off, off offset:416
	scratch_load_b32 v54, off, off offset:420
	scratch_load_b32 v184, off, off offset:424
	scratch_load_b32 v57, off, off offset:356
	scratch_load_b32 v14, off, off offset:352
	scratch_load_b32 v217, off, off offset:360
	s_waitcnt vmcnt(19)
	v_or_b32_e32 v7, 0x400, v10
	v_or_b32_e32 v8, 0x800, v10
	v_or_b32_e32 v25, 0xc00, v10
	v_or_b32_e32 v26, 0x1000, v10
	v_or_b32_e32 v27, 0x1400, v10
	v_or_b32_e32 v28, 0x1800, v10
	v_or_b32_e32 v29, 0x1c00, v10
	v_or_b32_e32 v30, 0x400, v11
	v_or_b32_e32 v31, 0x800, v11
	v_or_b32_e32 v33, 0xc00, v11
	v_or_b32_e32 v34, 0x1000, v11
	v_or_b32_e32 v35, 0x1400, v11
	v_or_b32_e32 v37, 0x1800, v11
	v_or_b32_e32 v38, 0x1c00, v11
	v_or_b32_e32 v42, 0x400, v12
	v_or_b32_e32 v44, 0x800, v12
	v_or_b32_e32 v51, 0xc00, v12
	v_or_b32_e32 v52, 0x1000, v12
	v_or_b32_e32 v53, 0x1400, v12
	v_or_b32_e32 v55, 0x1800, v12
	v_or_b32_e32 v56, 0x1c00, v12
	v_or_b32_e32 v59, 0x400, v13
	v_or_b32_e32 v142, 0x800, v13
	v_or_b32_e32 v143, 0xc00, v13
	v_or_b32_e32 v144, 0x1000, v13
	v_or_b32_e32 v145, 0x1400, v13
	v_or_b32_e32 v161, 0x1800, v13
	v_or_b32_e32 v43, 0x1c00, v13
	v_or_b32_e32 v162, 0x400, v19
	v_or_b32_e32 v163, 0x800, v19
	v_or_b32_e32 v164, 0xc00, v19
	v_or_b32_e32 v165, 0x1000, v19
	v_or_b32_e32 v168, 0x1400, v19
	v_or_b32_e32 v169, 0x1800, v19
	v_or_b32_e32 v41, 0x1c00, v19
	v_or_b32_e32 v170, 0x400, v20
	v_or_b32_e32 v171, 0x800, v20
	v_or_b32_e32 v172, 0xc00, v20
	v_or_b32_e32 v173, 0x1000, v20
	v_or_b32_e32 v174, 0x1400, v20
.LBB0_7:                                ; %Flow1209
	.loc	1 168 26 is_stmt 1              ; generate_amdgcn.py:168:26
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v0, s7, v14
	s_mul_i32 s4, s33, s7
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s3, s0, 0
	s_clause 0x16                           ; 92-byte Folded Spill
	scratch_store_b32 off, v155, off offset:340
	scratch_store_b32 off, v154, off offset:336
	scratch_store_b32 off, v153, off offset:332
	scratch_store_b32 off, v151, off offset:328
	scratch_store_b32 off, v150, off offset:324
	scratch_store_b32 off, v148, off offset:320
	scratch_store_b32 off, v141, off offset:20
	scratch_store_b32 off, v146, off offset:316
	scratch_store_b32 off, v147, off offset:16
	scratch_store_b32 off, v160, off offset:12
	scratch_store_b32 off, v139, off offset:312
	scratch_store_b32 off, v138, off offset:308
	scratch_store_b32 off, v136, off offset:304
	scratch_store_b32 off, v123, off offset:300
	scratch_store_b32 off, v114, off offset:296
	scratch_store_b32 off, v113, off offset:292
	scratch_store_b32 off, v104, off offset:288
	scratch_store_b32 off, v103, off offset:284
	scratch_store_b32 off, v102, off offset:280
	scratch_store_b32 off, v135, off offset:276
	scratch_store_b32 off, v133, off offset:272
	scratch_store_b32 off, v101, off offset:268
	scratch_store_b32 off, v45, off offset:264
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_add_i32 s4, s4, s3
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v238, 0, v11
	v_dual_mov_b32 v221, v158 :: v_dual_and_b32 v248, 16, v57
	.loc	1 168 18 is_stmt 0              ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v0, s4, v0, 1
	.loc	1 189 26 is_stmt 1              ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v158, 0, v13
	v_dual_mov_b32 v186, v140 :: v_dual_add_nc_u32 v237, 0, v10
	v_dual_mov_b32 v60, v157 :: v_dual_add_nc_u32 v103, 0, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v102, 0, v20
	v_dual_mov_b32 v222, v159 :: v_dual_add_nc_u32 v113, 0, v12
	v_add_nc_u32_e32 v150, 0, v21
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	buffer_load_u16 v32, v0, s[28:31], 0 offen
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v58, v156
	v_add_nc_u32_e32 v141, 0, v22
	ds_load_b64 v[17:18], v237 offset:16384
	ds_load_b64 v[15:16], v238 offset:16384
	ds_load_b64 v[13:14], v113 offset:16384
	ds_load_b64 v[11:12], v158 offset:16384
	v_add_nc_u32_e32 v188, 0, v184
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_cndmask_b32_e64 v0, 0, 1, s2
	v_add_nc_u32_e32 v54, 0, v54
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v47, 0, v47
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_b64 v[23:24], v103 offset:16384
	ds_load_b64 v[21:22], v102 offset:16384
	ds_load_b64 v[19:20], v150 offset:16384
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_b64 v[9:10], v141 offset:16384
	v_cmp_ne_u32_e64 s0, 1, v0
	v_dual_mov_b32 v254, 0 :: v_dual_add_nc_u32 v49, 0, v49
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v140, 0, v183
	v_mov_b32_e32 v255, 0
	v_dual_mov_b32 v252, 0 :: v_dual_add_nc_u32 v233, 0, v182
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v232, 0, v181
	v_mov_b32_e32 v253, 0
	v_dual_mov_b32 v236, 0 :: v_dual_add_nc_u32 v39, 0, v39
	v_dual_mov_b32 v251, 0 :: v_dual_add_nc_u32 v0, 0, v180
	v_dual_mov_b32 v235, 0 :: v_dual_add_nc_u32 v48, 0, v48
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v50, 0, v50
	v_add_nc_u32_e32 v226, 0, v179
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v225, 0, v177
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v224, 0, v175
	v_add_nc_u32_e32 v40, 0, v40
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v46, 0, v46
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v189, 0, v174
	v_add_nc_u32_e32 v187, 0, v173
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v185, 0, v172
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v184, 0, v171
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v228, 0, v170
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v41, 0, v41
	v_add_nc_u32_e32 v181, 0, v169
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v180, 0, v168
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v179, 0, v165
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v182, 0, v164
	v_add_nc_u32_e32 v215, 0, v163
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v229, 0, v162
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v43, 0, v43
	v_add_nc_u32_e32 v172, 0, v161
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v171, 0, v145
	v_add_nc_u32_e32 v173, 0, v144
	v_add_nc_u32_e32 v169, 0, v143
	v_add_nc_u32_e32 v223, 0, v142
	v_add_nc_u32_e32 v230, 0, v59
	v_add_nc_u32_e32 v153, 0, v56
	v_add_nc_u32_e32 v227, 0, v55
	v_add_nc_u32_e32 v168, 0, v53
	v_add_nc_u32_e32 v175, 0, v52
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v174, 0, v51
	v_dual_mov_b32 v250, 0 :: v_dual_add_nc_u32 v161, 0, v44
	v_add_nc_u32_e32 v162, 0, v42
	v_dual_mov_b32 v244, 0 :: v_dual_add_nc_u32 v157, 0, v38
	v_add_nc_u32_e32 v160, 0, v37
	v_add_nc_u32_e32 v170, 0, v35
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v159, 0, v34
	v_add_nc_u32_e32 v156, 0, v33
	v_add_nc_u32_e32 v154, 0, v31
	v_add_nc_u32_e32 v231, 0, v30
	v_dual_mov_b32 v249, 0 :: v_dual_add_nc_u32 v148, 0, v29
	v_dual_mov_b32 v2, 0 :: v_dual_add_nc_u32 v151, 0, v28
	v_dual_mov_b32 v246, 0 :: v_dual_add_nc_u32 v155, 0, v27
	v_dual_mov_b32 v4, 0 :: v_dual_add_nc_u32 v183, 0, v26
	v_add_nc_u32_e32 v143, 0, v25
	v_add_nc_u32_e32 v145, 0, v8
	v_dual_mov_b32 v247, 0 :: v_dual_add_nc_u32 v234, 0, v7
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v37, 0
	v_mov_b32_e32 v38, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v31, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_mov_b32_e32 v123, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v245, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v243, 0
	v_mov_b32_e32 v3, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v237
	ds_load_b64 v[27:28], v238
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v113
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[27:28], v[15:16], v[239:246] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[13:14], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v158
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[11:12], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v103
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[23:24], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v102
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[21:22], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v150
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[19:20], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v141
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[9:10], v[239:246] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v25, v239
	v_cvt_f32_i32_e32 v254, v245
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v255, v246
	scratch_store_b32 off, v25, off offset:40 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v25, v240
	scratch_store_b32 off, v25, off offset:44 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v25, v241
	scratch_store_b32 off, v25, off offset:24 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v25, v242
	scratch_store_b32 off, v25, off offset:28 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v25, v243
	scratch_store_b32 off, v25, off offset:32 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v25, v244
	scratch_store_b32 off, v25, off offset:36 ; 4-byte Folded Spill
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v234
	ds_load_b64 v[27:28], v231
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v162
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[27:28], v[15:16], v[239:246] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[13:14], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v230
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[11:12], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v229
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[23:24], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v228
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[21:22], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v224
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[19:20], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v232
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[9:10], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v145
	ds_load_b64 v[27:28], v154
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v253, v239
	v_cvt_f32_i32_e32 v252, v240
	v_cvt_f32_i32_e32 v235, v241
	v_cvt_f32_i32_e32 v201, v242
	v_cvt_f32_i32_e32 v236, v243
	v_cvt_f32_i32_e32 v251, v244
	v_cvt_f32_i32_e32 v114, v245
	v_cvt_f32_i32_e32 v200, v246
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v161
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[27:28], v[15:16], v[239:246] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[13:14], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v223
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[11:12], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v215
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[23:24], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v184
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[21:22], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v225
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[19:20], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v233
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[9:10], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v143
	ds_load_b64 v[27:28], v156
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v163, v239
	v_cvt_f32_i32_e32 v164, v240
	v_cvt_f32_i32_e32 v165, v241
	v_cvt_f32_i32_e32 v194, v242
	v_cvt_f32_i32_e32 v195, v243
	v_cvt_f32_i32_e32 v196, v244
	v_cvt_f32_i32_e32 v147, v245
	v_cvt_f32_i32_e32 v177, v246
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v174
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[27:28], v[15:16], v[239:246] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[13:14], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v169
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[11:12], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v182
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[23:24], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v185
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[21:22], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v226
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[19:20], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v140
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[9:10], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v183
	ds_load_b64 v[27:28], v159
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v144, v239
	v_cvt_f32_i32_e32 v146, v240
	v_cvt_f32_i32_e32 v138, v241
	v_cvt_f32_i32_e32 v136, v242
	v_cvt_f32_i32_e32 v139, v243
	v_cvt_f32_i32_e32 v142, v244
	v_cvt_f32_i32_e32 v133, v245
	v_cvt_f32_i32_e32 v135, v246
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v175
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[27:28], v[15:16], v[239:246] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[13:14], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v173
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[11:12], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v179
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[23:24], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v187
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[21:22], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v50
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[19:20], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v49
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[9:10], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v155
	ds_load_b64 v[27:28], v170
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v59, v239
	v_cvt_f32_i32_e32 v104, v240
	v_cvt_f32_i32_e32 v51, v241
	v_cvt_f32_i32_e32 v45, v242
	v_cvt_f32_i32_e32 v52, v243
	v_cvt_f32_i32_e32 v53, v244
	v_cvt_f32_i32_e32 v42, v245
	v_cvt_f32_i32_e32 v44, v246
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v168
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[27:28], v[15:16], v[239:246] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[13:14], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v171
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[11:12], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v180
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[23:24], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v189
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[21:22], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v48
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[19:20], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v47
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[9:10], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v151
	ds_load_b64 v[27:28], v160
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v37, v239
	v_cvt_f32_i32_e32 v38, v240
	v_cvt_f32_i32_e32 v33, v241
	v_cvt_f32_i32_e32 v31, v242
	v_cvt_f32_i32_e32 v34, v243
	v_cvt_f32_i32_e32 v35, v244
	v_cvt_f32_i32_e32 v29, v245
	v_cvt_f32_i32_e32 v30, v246
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v227
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[27:28], v[15:16], v[239:246] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[13:14], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v172
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[11:12], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v181
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[23:24], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v46
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[21:22], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v0
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[19:20], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v54
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[239:246], v[25:26], v[9:10], v[239:246] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v148
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v249, v239
	v_cvt_f32_i32_e32 v250, v240
	v_cvt_f32_i32_e32 v56, v241
	v_cvt_f32_i32_e32 v123, v242
	v_cvt_f32_i32_e32 v247, v243
	v_cvt_f32_i32_e32 v244, v244
	v_cvt_f32_i32_e32 v27, v245
	v_cvt_f32_i32_e32 v28, v246
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v157
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[15:16], v[1:8] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v153
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[13:14], v[1:8] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v43
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v41
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[23:24], v[1:8] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v40
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[21:22], v[1:8] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v39
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[19:20], v[1:8] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[25:26], v188
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v55, v3
	v_cvt_f32_i32_e32 v243, v4
	v_cvt_f32_i32_e32 v245, v5
	v_cvt_f32_i32_e32 v246, v6
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v4, v8
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v4, off offset:260
	scratch_store_b32 off, v123, off offset:256
	scratch_store_b32 off, v255, off offset:252
	scratch_store_b32 off, v254, off offset:248
	scratch_store_b32 off, v253, off offset:244
	scratch_store_b32 off, v252, off offset:240
	scratch_store_b32 off, v251, off offset:236
	scratch_store_b32 off, v236, off offset:232
	scratch_store_b32 off, v235, off offset:228
	scratch_store_b32 off, v201, off offset:224
	scratch_store_b32 off, v200, off offset:220
	scratch_store_b32 off, v28, off offset:216
	scratch_store_b32 off, v3, off offset:212
	scratch_store_b32 off, v163, off offset:208
	scratch_store_b32 off, v114, off offset:204
	scratch_store_b32 off, v164, off offset:200
	scratch_store_b32 off, v196, off offset:196
	scratch_store_b32 off, v195, off offset:192
	scratch_store_b32 off, v194, off offset:188
	scratch_store_b32 off, v177, off offset:184
	scratch_store_b32 off, v165, off offset:180
	scratch_store_b32 off, v27, off offset:176
	scratch_store_b32 off, v147, off offset:172
	scratch_store_b32 off, v146, off offset:168
	scratch_store_b32 off, v144, off offset:164
	scratch_store_b32 off, v142, off offset:160
	scratch_store_b32 off, v139, off offset:156
	scratch_store_b32 off, v138, off offset:152
	scratch_store_b32 off, v136, off offset:148
	scratch_store_b32 off, v135, off offset:144
	scratch_store_b32 off, v133, off offset:140
	scratch_store_b32 off, v104, off offset:136
	s_clause 0x10                           ; 68-byte Folded Spill
	scratch_store_b32 off, v59, off offset:132
	scratch_store_b32 off, v53, off offset:128
	scratch_store_b32 off, v52, off offset:124
	scratch_store_b32 off, v51, off offset:120
	scratch_store_b32 off, v45, off offset:116
	scratch_store_b32 off, v44, off offset:112
	scratch_store_b32 off, v42, off offset:108
	scratch_store_b32 off, v38, off offset:104
	scratch_store_b32 off, v37, off offset:100
	scratch_store_b32 off, v35, off offset:96
	scratch_store_b32 off, v34, off offset:92
	scratch_store_b32 off, v33, off offset:88
	scratch_store_b32 off, v31, off offset:84
	scratch_store_b32 off, v30, off offset:80
	scratch_store_b32 off, v2, off offset:76
	scratch_store_b32 off, v1, off offset:72
	scratch_store_b32 off, v29, off offset:68
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v239, 0
	v_mov_b32_e32 v136, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v241, 0
	scratch_store_b32 off, v1, off offset:60 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v37, 0
	scratch_store_b32 off, v1, off offset:64 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v33, 0
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_mov_b32_e32 v27, 0
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v2, 0
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v6, 0
	v_mov_b32_e32 v165, 0
	v_mov_b32_e32 v123, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v133, 0
	v_mov_b32_e32 v101, 0
	v_mov_b32_e32 v163, 0
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v5, 0
	.loc	1 202 36 is_stmt 1              ; generate_amdgcn.py:202:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[25:26], v237 offset:8192
	ds_load_b64 v[27:28], v238 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v135, v243 :: v_dual_mov_b32 v138, v244
	v_dual_mov_b32 v136, v247 :: v_dual_mov_b32 v123, v248
	v_dual_mov_b32 v146, v245 :: v_dual_mov_b32 v147, v246
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[241:248], v[25:26], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[25:26], v113 offset:8192
	v_mov_b32_e32 v45, v55
	v_mov_b32_e32 v133, v56
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[241:248], v[27:28], v[15:16], v[241:248] neg_lo:[1,1,0]
	v_mov_b32_e32 v139, v249
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[55:56], v156 offset:8192
	ds_load_b64 v[51:52], v143 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[241:248], v[25:26], v[13:14], v[241:248] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[25:26], v158 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[241:248], v[25:26], v[11:12], v[241:248] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[25:26], v103 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[241:248], v[25:26], v[23:24], v[241:248] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[25:26], v102 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[241:248], v[25:26], v[21:22], v[241:248] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[25:26], v150 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[241:248], v[25:26], v[19:20], v[241:248] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[25:26], v141 offset:8192
	v_mov_b32_e32 v141, v250
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[241:248], v[25:26], v[9:10], v[241:248] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[25:26], v234 offset:8192
	ds_load_b64 v[27:28], v231 offset:8192
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v36, v241
	v_cvt_f32_i32_e32 v240, v243
	v_cvt_f32_i32_e32 v241, v244
	v_cvt_f32_i32_e32 v236, v245
	v_cvt_f32_i32_e32 v239, v246
	v_cvt_f32_i32_e32 v144, v247
	v_cvt_f32_i32_e32 v235, v248
	v_cvt_f32_i32_e32 v242, v242
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[25:26], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[25:26], v162 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[27:28], v[15:16], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[27:28], v145 offset:8192
	ds_load_b64 v[29:30], v154 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[25:26], v[13:14], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[25:26], v230 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[25:26], v[11:12], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[25:26], v229 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[25:26], v[23:24], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[25:26], v228 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[25:26], v[21:22], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[25:26], v224 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[25:26], v[19:20], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[25:26], v232 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[25:26], v[9:10], v[243:250] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v44, v243
	v_cvt_f32_i32_e32 v142, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v38, v245
	v_cvt_f32_i32_e32 v42, v246
	v_cvt_f32_i32_e32 v26, v247
	v_cvt_f32_i32_e32 v37, v248
	v_cvt_f32_i32_e32 v34, v249
	v_cvt_f32_i32_e32 v25, v250
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[243:250], v[27:28], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[27:28], v161 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[243:250], v[29:30], v[15:16], v[243:250] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[27:28], v[13:14], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[27:28], v223 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[27:28], v[11:12], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[27:28], v215 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[27:28], v[23:24], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[27:28], v184 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[27:28], v[21:22], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[27:28], v225 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[27:28], v[19:20], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[27:28], v233 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[27:28], v[9:10], v[243:250] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v33, v243
	v_cvt_f32_i32_e32 v35, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v28, v245
	v_cvt_f32_i32_e32 v31, v246
	v_cvt_f32_i32_e32 v27, v247
	v_cvt_f32_i32_e32 v30, v248
	v_cvt_f32_i32_e32 v59, v249
	v_cvt_f32_i32_e32 v104, v250
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[243:250], v[51:52], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[51:52], v174 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[243:250], v[55:56], v[15:16], v[243:250] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[51:52], v[13:14], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[51:52], v169 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[51:52], v[11:12], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[51:52], v182 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[51:52], v[23:24], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[51:52], v185 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[51:52], v[21:22], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[51:52], v226 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[51:52], v[19:20], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[51:52], v140 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[51:52], v[9:10], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[51:52], v183 offset:8192
	ds_load_b64 v[55:56], v159 offset:8192
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v255, v243
	v_cvt_f32_i32_e32 v29, v244
	v_cvt_f32_i32_e32 v253, v245
	v_cvt_f32_i32_e32 v254, v246
	v_cvt_f32_i32_e32 v251, v247
	v_cvt_f32_i32_e32 v252, v248
	v_cvt_f32_i32_e32 v113, v249
	v_cvt_f32_i32_e32 v114, v250
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[51:52], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[51:52], v175 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[55:56], v[15:16], v[243:250] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[51:52], v[13:14], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[51:52], v173 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[51:52], v[11:12], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[51:52], v179 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[51:52], v[23:24], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[51:52], v187 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[51:52], v[21:22], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[50:51], v50 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[50:51], v[19:20], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[49:50], v49 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[49:50], v[9:10], v[243:250] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v49, v247
	v_cvt_f32_i32_e32 v103, v243
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v52, v244
	v_cvt_f32_i32_e32 v53, v245
	v_cvt_f32_i32_e32 v51, v246
	scratch_store_b32 off, v49, off offset:60 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v49, v248
	scratch_store_b32 off, v49, off offset:64 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v49, v249
	scratch_store_b32 off, v49, off offset:52 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v49, v250
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	scratch_store_b32 off, v49, off offset:56 ; 4-byte Folded Spill
	ds_load_b64 v[49:50], v155 offset:8192
	ds_load_b64 v[55:56], v170 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[49:50], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[49:50], v168 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[55:56], v[15:16], v[243:250] neg_lo:[1,1,0]
	v_mov_b32_e32 v55, v45
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[49:50], v[13:14], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[49:50], v171 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[49:50], v[11:12], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[49:50], v180 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[49:50], v[23:24], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[49:50], v189 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[49:50], v[21:22], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[48:49], v48 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[48:49], v[19:20], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[47:48], v47 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[47:48], v[9:10], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[47:48], v151 offset:8192
	ds_load_b64 v[49:50], v160 offset:8192
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v101, v243
	v_cvt_f32_i32_e32 v102, v244
	v_cvt_f32_i32_e32 v201, v245
	v_cvt_f32_i32_e32 v45, v246
	v_cvt_f32_i32_e32 v195, v247
	v_cvt_f32_i32_e32 v200, v248
	v_cvt_f32_i32_e32 v194, v249
	v_cvt_f32_i32_e32 v196, v250
	scratch_store_b32 off, v45, off offset:48 ; 4-byte Folded Spill
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[47:48], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[47:48], v227 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[49:50], v[15:16], v[243:250] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[47:48], v[13:14], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[47:48], v172 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[47:48], v[11:12], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[47:48], v181 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[47:48], v[23:24], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[46:47], v46 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[46:47], v[21:22], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[46:47], v0 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[46:47], v[19:20], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[46:47], v54 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[46:47], v[9:10], v[243:250] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[46:47], v148 offset:8192
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v0, v248
	v_cvt_f32_i32_e32 v177, v243
	v_mov_b32_e32 v243, v135
	v_cvt_f32_i32_e32 v135, v244
	v_mov_b32_e32 v244, v138
	v_mov_b32_e32 v138, v102
	v_cvt_f32_i32_e32 v45, v245
	v_dual_mov_b32 v245, v146 :: v_dual_mov_b32 v248, v123
	v_mov_b32_e32 v146, v113
	v_mov_b32_e32 v56, v133
	v_cvt_f32_i32_e32 v133, v246
	v_dual_mov_b32 v246, v147 :: v_dual_mov_b32 v147, v114
	v_cvt_f32_i32_e32 v165, v247
	v_mov_b32_e32 v247, v136
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[46:47], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[17:18], v157 offset:8192
	v_dual_mov_b32 v136, v101 :: v_dual_mov_b32 v123, v0
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v101, v249
	v_mov_b32_e32 v249, v139
	v_mov_b32_e32 v139, v103
	v_cvt_f32_i32_e32 v164, v250
	v_mov_b32_e32 v250, v141
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[17:18], v[15:16], v[1:8] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[15:16], v153 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[13:14], v[1:8] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[13:14], v43 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[11:12], v41 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[23:24], v[1:8] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[11:12], v40 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[21:22], v[1:8] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[11:12], v39 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[19:20], v[1:8] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[11:12], v188 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v163, v1
	v_cvt_f32_i32_e32 v1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v3, v5
	v_cvt_f32_i32_e32 v5, v6
	v_cvt_f32_i32_e32 v114, v7
	v_cvt_f32_i32_e32 v6, v8
.LBB0_11:
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s0, s3, s1
	s_waitcnt vmcnt(1)
	v_mov_b32_e32 v102, v217
	.loc	1 205 26 is_stmt 0              ; generate_amdgcn.py:205:26
	s_add_i32 s1, s26, s0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_and_b32 s9, s15, 0xffff
	.loc	1 208 35 is_stmt 1              ; generate_amdgcn.py:208:35
	s_add_i32 s3, s1, s27
	s_mov_b32 s11, 0x31027000
	v_add_lshl_u32 v7, s3, v102, 1
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_mov_b32 s8, s14
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v188.h, v32.l
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v188.l, 0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v7, s2
	s_mov_b32 s5, 0x76543210
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	s_mul_i32 s33, s33, s27
	.loc	1 216 9 is_stmt 0               ; generate_amdgcn.py:216:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v8, v36, v188
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v28, v28, v188
	v_mul_f32_e32 v2, v2, v188
	v_mul_f32_e32 v6, v6, v188
	scratch_load_b32 v217, off, off offset:328 ; 4-byte Folded Reload
	v_mov_b32_e32 v113, v201
	v_mul_f32_e32 v31, v31, v188
	v_mul_f32_e32 v27, v27, v188
	v_mul_f32_e32 v29, v29, v188
	v_mov_b32_e32 v103, v196
	v_mul_f32_e32 v1, v1, v188
	v_mul_f32_e32 v5, v5, v188
	v_mul_f32_e32 v3, v3, v188
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v8, v0, v186
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v186, v0, s2
	scratch_load_b32 v186, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v8, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v8, v8
	v_ldexp_f32 v8, v8, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v9, null, v8, v8, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v10, v9
	v_fma_f32 v11, -v9, v10, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v10, v11, v10
	v_div_scale_f32 v11, vcc_lo, v0, v8, v0
	v_mul_f32_e32 v12, v11, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v9, v12, v11
	v_fmac_f32_e32 v12, v13, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v9, -v9, v12, v11
	v_div_fmas_f32 v9, v9, v10, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v39, v9, v8, v0
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 4, v7
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v8, v242, v188
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v8, v0, v222
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v222, v0, s2
	scratch_load_b32 v222, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v8, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v8, v8
	v_ldexp_f32 v8, v8, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v9, null, v8, v8, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v10, v9
	v_fma_f32 v11, -v9, v10, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v10, v11, v10
	v_div_scale_f32 v11, vcc_lo, v0, v8, v0
	v_mul_f32_e32 v12, v11, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v9, v12, v11
	v_fmac_f32_e32 v12, v13, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v9, -v9, v12, v11
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v11, v241, v188
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v9, v9, v10, v12
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v10, 12, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v9, v9, v8, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_add_nc_u32_e32 v0, 20, v7
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v8, v239, v188
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v10, v11, v10, v221
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v10, v221, v10, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v8, v0, v58
	scratch_load_b32 v221, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v11, 0xbfb8aa3b, v10
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v58, v0, s2
	scratch_load_b32 v58, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_mul_f32_e32 v8, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v10
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v11, v11, v12
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v12, null, v11, v11, v10
	v_rcp_f32_e32 v13, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v12, v13, 1.0
	v_fmac_f32_e32 v13, v14, v13
	v_div_scale_f32 v14, vcc_lo, v10, v11, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v15, v14, v13
	v_fma_f32 v16, -v12, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, v16, v13
	v_fma_f32 v12, -v12, v15, v14
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v14, v240, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v12, v12, v13, v15
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v13, 8, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v40, v12, v11, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v10, v236, v188
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v13, v14, v13, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v13, v60, v13, s2
	v_mov_b32_e32 v60, v195
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v14, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v14, v14
	v_ldexp_f32 v14, v14, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v15, null, v14, v14, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v16, v15
	v_fma_f32 v17, -v15, v16, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v13, v14, v13
	v_mul_f32_e32 v18, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v15, v18, v17
	v_fmac_f32_e32 v18, v19, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v15, v18, v17
	v_div_fmas_f32 v15, v15, v16, v18
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v0
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v8, v8, v16
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v16, 1.0, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v8, null, v16, v16, v0
	v_rcp_f32_e32 v17, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v8, v17, 1.0
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v0, v16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v19, v18, v17
	v_fma_f32 v20, -v8, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v17
	v_fma_f32 v8, -v8, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v17, v8, v17, v19
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v8, 16, v7
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v8, v10, v8, v197
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v10, v197, v8, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v8, 0xbfb8aa3b, v10
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v10
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v8, v8, v11
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v11, 1.0, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v8, null, v11, v11, v10
	v_rcp_f32_e32 v12, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v8, v12, 1.0
	v_fmac_f32_e32 v12, v18, v12
	v_div_scale_f32 v18, vcc_lo, v10, v11, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v19, v18, v12
	v_fma_f32 v20, -v8, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v12
	v_fma_f32 v8, -v8, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v12, v8, v12, v19
	v_div_fixup_f32 v8, v15, v14, v13
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v14, v235, v188 :: v_dual_add_nc_u32 v13, 28, v7
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v13, v14, v13, v186
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v14, v186, v13, s2
	scratch_load_b32 v186, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v13, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v13, v13
	v_ldexp_f32 v13, v13, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v15, 1.0, v13
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v13, null, v15, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v18, v13
	v_fma_f32 v19, -v13, v18, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v14, v15, v14
	v_mul_f32_e32 v20, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v13, v20, v19
	v_fmac_f32_e32 v20, v21, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v13, v20, v19
	v_div_fmas_f32 v18, v13, v18, v20
	v_div_fixup_f32 v13, v17, v16, v0
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 24, v7
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v16, v144, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v16, v0, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v178, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v17, null, v16, v16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v17
	v_fma_f32 v20, -v17, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v19
	v_div_scale_f32 v20, vcc_lo, v0, v16, v0
	v_mul_f32_e32 v21, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v17, v21, v20
	v_fmac_f32_e32 v21, v22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v21, v20
	v_div_fmas_f32 v19, v17, v19, v21
	v_div_fixup_f32 v17, v12, v11, v10
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v11, v142, v188 :: v_dual_add_nc_u32 v10, 36, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v10, v11, v10, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v11, v222, v10, s2
	scratch_load_b32 v222, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v10, 0xbfb8aa3b, v11
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v11
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v10, v10, v12
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v20, 1.0, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v10, null, v20, v20, v11
	v_rcp_f32_e32 v12, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v10, v12, 1.0
	v_fmac_f32_e32 v12, v21, v12
	v_div_scale_f32 v21, vcc_lo, v11, v20, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v22, v21, v12
	v_fma_f32 v23, -v10, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v12
	v_fma_f32 v10, -v10, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v21, v10, v12, v22
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v12, 32, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v10, v18, v15, v14
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v14, v44, v188
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v11, v21, v20, v11
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v21, v38, v188 :: v_dual_add_nc_u32 v20, 40, v7
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v12, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v12, v14, v12, v221
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v14, v221, v12, s2
	scratch_load_b32 v221, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v12, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v15, 1.0, v12
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v12, null, v15, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v18, v12
	v_fma_f32 v22, -v12, v18, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v22, v18
	v_div_scale_f32 v22, vcc_lo, v14, v15, v14
	v_mul_f32_e32 v23, v22, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v12, v23, v22
	v_fmac_f32_e32 v23, v24, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v23, v22
	v_div_fmas_f32 v18, v12, v18, v23
	v_div_fixup_f32 v12, v19, v16, v0
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 44, v7
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v16, v42, v188
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v15, v18, v15, v14
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v14, 52, v7
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v18, v37, v188
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	s_clause 0x1
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v16, v0, v217
	v_fma_f32 v14, v18, v14, v186
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v217, v0, s2
	v_cndmask_b32_e64 v18, v186, v14, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v186, off, off offset:312
	scratch_load_b32 v217, off, off offset:16
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v20, v21, v20, v58
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v14, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v20, v58, v20, s2
	scratch_load_b32 v58, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v19, null, v16, v16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v19
	v_fma_f32 v23, -v19, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v0, v16, v0
	v_mul_f32_e32 v24, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v19, v24, v23
	v_fmac_f32_e32 v24, v32, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v24, v23
	v_div_fmas_f32 v19, v19, v22, v24
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v22, null, v21, v21, v20
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v20, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v24, v23
	v_fma_f32 v36, -v22, v32, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v36, v23
	v_fma_f32 v22, -v22, v32, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v23, v32
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v14, v14
	v_ldexp_f32 v14, v14, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v23, 1.0, v14
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v14, null, v23, v23, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v14
	v_fma_f32 v32, -v14, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v32, v24
	v_div_scale_f32 v32, vcc_lo, v18, v23, v18
	v_mul_f32_e32 v36, v32, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v14, v36, v32
	v_fmac_f32_e32 v36, v37, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v14, v36, v32
	v_div_fmas_f32 v24, v14, v24, v36
	v_div_fixup_f32 v14, v19, v16, v0
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 48, v7
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v16, v26, v188
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v18, v24, v23, v18
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v23, v34, v188
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v16, v0, v222
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v222, v0, s2
	scratch_load_b32 v222, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v19, 1.0, v16
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v16, null, v19, v19, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v16
	v_fma_f32 v32, -v16, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v32, v26
	v_div_scale_f32 v32, vcc_lo, v0, v19, v0
	v_mul_f32_e32 v36, v32, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v16, v36, v32
	v_fmac_f32_e32 v36, v37, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v36, v32
	v_div_fmas_f32 v26, v16, v26, v36
	v_div_fixup_f32 v16, v22, v21, v20
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v21, v25, v188 :: v_dual_add_nc_u32 v20, 60, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v20, v21, v20, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v20, v221, v20, s2
	scratch_load_b32 v221, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v22, null, v21, v21, v20
	v_rcp_f32_e32 v25, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v22, v25, 1.0
	v_fmac_f32_e32 v25, v32, v25
	v_div_scale_f32 v32, vcc_lo, v20, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v36, v32, v25
	v_fma_f32 v37, -v22, v36, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v25
	v_fma_f32 v22, -v22, v36, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v25, v22, v25, v36
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v22, 56, v7
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v22, v23, v22, v217
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v23, v217, v22, s2
	scratch_load_b32 v217, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v24, 1.0, v22
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v22, null, v24, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v32, v22
	v_fma_f32 v34, -v22, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v34, v32
	v_div_scale_f32 v34, vcc_lo, v23, v24, v23
	v_mul_f32_e32 v36, v34, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v22, v36, v34
	v_fmac_f32_e32 v36, v37, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v36, v34
	v_div_fmas_f32 v32, v22, v32, v36
	v_div_fixup_f32 v22, v26, v19, v0
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 0x44, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v19, v25, v21, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v20, v35, v188
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v201, v32, v24, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v20, v0, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v58, v0, s2
	v_mov_b32_e32 v58, v177
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v20, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v21, null, v20, v20, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v21
	v_fma_f32 v26, -v21, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v0, v20, v0
	v_mul_f32_e32 v34, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v21, v34, v26
	v_fmac_f32_e32 v34, v35, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v21, v34, v26
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v26, v33, v188
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v21, v21, v25, v34
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v25, 64, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v23, v21, v20, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_add_nc_u32_e32 v0, 0x54, v7
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v25, v26, v25, v186
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v25, v186, v25, s2
	scratch_load_b32 v186, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v33, null, v26, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v34, v33
	v_fma_f32 v35, -v33, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v25, v26, v25
	v_mul_f32_e32 v36, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v33, v36, v35
	v_fmac_f32_e32 v36, v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v33, v36, v35
	v_div_fmas_f32 v33, v33, v34, v36
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v34, 0x4c, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v24, v33, v26, v25
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v25, v30, v188
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v34, v34, s[8:11], 0 offen
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v25, v0, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v25, v217, v0, s2
	scratch_load_b32 v217, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v25
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v31, v31, v34, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v31, v222, v31, s2
	scratch_load_b32 v222, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v34, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v31
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v35
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v35, null, v34, v34, v31
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v31, v34, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v41, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v41, v36
	v_fma_f32 v35, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v36, 0x48, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v20, v35, v34, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v28, v28, v36, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v28, v221, v28, s2
	scratch_load_b32 v221, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v36, 0xbfb8aa3b, v28
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v28
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v36, v36, v37
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v36, 1.0, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v37, null, v36, v36, v28
	v_rcp_f32_e32 v38, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v37, v38, 1.0
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, vcc_lo, v28, v36, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v38
	v_fma_f32 v43, -v37, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v38
	v_fma_f32 v37, -v37, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v37, v37, v38, v42
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v21, v37, v36, v28
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v25
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v26
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v26, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v26, v26, v25
	v_rcp_f32_e32 v28, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v0, v28, 1.0
	v_fmac_f32_e32 v28, v30, v28
	v_div_scale_f32 v30, vcc_lo, v25, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v31, v30, v28
	v_fma_f32 v32, -v0, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v32, v28
	v_fma_f32 v0, -v0, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v28, v0, v28, v31
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 0x50, v7
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v27, v0, v186
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v186, v0, s2
	scratch_load_b32 v186, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v30, 1.0, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v30, v30, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v31, v0
	v_fma_f32 v32, -v0, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v32, v31
	v_div_scale_f32 v32, vcc_lo, v27, v30, v27
	v_mul_f32_e32 v33, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v0, v33, v32
	v_fmac_f32_e32 v33, v34, v31
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v0, -v0, v33, v32
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v32, v104, v188
	v_mov_b32_e32 v104, v200
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v200, v28, v26, v25
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v25, v255, v188
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v31, v0, v31, v33
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 0x5c, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v50, v31, v30, v27
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v32, v0, v222
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v32, v222, v0, s2
	scratch_load_b32 v222, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v33, 1.0, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v33, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v34, v0
	v_fma_f32 v35, -v0, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v32, v33, v32
	v_mul_f32_e32 v36, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v0, v36, v35
	v_fmac_f32_e32 v36, v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v0, v36, v35
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v35, v59, v188
	v_mov_b32_e32 v59, v194
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v34, v0, v34, v36
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 0x58, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v48, v34, v33, v32
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v35, v0, v221
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v221, v0, s2
	scratch_load_b32 v221, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v35, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v35, v35
	v_ldexp_f32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v36, null, v35, v35, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v37, v36
	v_fma_f32 v38, -v36, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, vcc_lo, v0, v35, v0
	v_mul_f32_e32 v41, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v36, v41, v38
	v_fmac_f32_e32 v41, v42, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v36, v41, v38
	v_div_fmas_f32 v36, v36, v37, v41
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v37, 0x64, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v54, v36, v35, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	v_add_nc_u32_e32 v0, 0x60, v7
	buffer_load_u16 v37, v37, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v29, v29, v37, v217
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v29, v217, v29, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v25, v0, v186
	scratch_load_b32 v217, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v37, 0xbfb8aa3b, v29
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v25, v186, v0, s2
	scratch_load_b32 v186, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_mul_f32_e32 v0, 0xbfb8aa3b, v25
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v29
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v37, v37, v38
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v38, null, v37, v37, v29
	v_rcp_f32_e32 v41, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, 1.0
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v29, v37, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v43, v42, v41
	v_fma_f32 v44, -v38, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v41
	v_fma_f32 v38, -v38, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v41, v43
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v196, v38, v37, v29
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v25
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v26
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v26, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v26, v26, v25
	v_rcp_f32_e32 v27, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v0, v27, 1.0
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v25, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v28, v27
	v_fma_f32 v30, -v0, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v30, v27
	v_fma_f32 v0, -v0, v29, v28
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v28, v254, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v27, v0, v27, v29
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 0x6c, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v195, v27, v26, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v25, v147, v188
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v28, v0, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v28, v222, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v29, 1.0, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v29, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v0
	v_fma_f32 v31, -v0, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v28, v29, v28
	v_mul_f32_e32 v32, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v0, v32, v31
	v_fmac_f32_e32 v32, v33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v0, v32, v31
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v31, v253, v188
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v30, v0, v30, v32
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 0x68, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v49, v30, v29, v28
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v31, v0, v221
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v221, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v0
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v31, v31, v32
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v32, null, v31, v31, v0
	v_rcp_f32_e32 v33, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v32, v33, 1.0
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v0, v31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v34, v33
	v_fma_f32 v36, -v32, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v33
	v_fma_f32 v32, -v32, v35, v34
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v34, v252, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v32, v32, v33, v35
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v33, 0x74, v7
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	buffer_load_u16 v33, v33, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v33, v34, v33, v217
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v33, v217, v33, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v34, 0xbfb8aa3b, v33
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v35
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v35, null, v34, v34, v33
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v41, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v41, v36
	v_fma_f32 v35, -v35, v38, v37
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v37, v251, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v36, 0x70, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v194, v35, v34, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v36, v37, v36, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v36, v176, v36, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v176, v32, v31, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 0x7c, v7
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v37, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v36
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v37, v37, v38
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v38, null, v37, v37, v36
	v_rcp_f32_e32 v41, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, 1.0
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v36, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v43, v42, v41
	v_fma_f32 v44, -v38, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v41
	v_fma_f32 v38, -v38, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v41, v43
	v_div_fixup_f32 v177, v38, v37, v36
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v25, v0, v186
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v25, v186, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v25
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v25
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v26
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v26, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v26, v26, v25
	v_rcp_f32_e32 v27, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v0, v27, 1.0
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v25, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v28, v27
	v_fma_f32 v30, -v0, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v30, v27
	v_fma_f32 v0, -v0, v29, v28
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v28, v146, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v27, v0, v27, v29
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 0x78, v7
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v28, v0, v167
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v167, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v0
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v28, v29
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v29, null, v28, v28, v0
	v_rcp_f32_e32 v30, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v29, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v0, v28, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v30
	v_fma_f32 v33, -v29, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v30
	v_fma_f32 v29, -v29, v32, v31
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v31, v52, v188 :: v_dual_mov_b32 v52, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v29, v29, v30, v32
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v30, 0x84, v7
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	buffer_load_u16 v30, v30, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v30, v31, v30, v166
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v30, v166, v30, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v166, v27, v26, v25
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v25, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v31, v31
	v_ldexp_f32 v31, v31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v32, null, v31, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v32
	v_fma_f32 v34, -v32, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v30, v31, v30
	v_mul_f32_e32 v35, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v32, v35, v34
	v_fmac_f32_e32 v35, v36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v32, v35, v34
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v34, v139, v188
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v32, v32, v33, v35
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v33, 0x80, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v147, v32, v31, v30
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	buffer_load_u16 v33, v33, s[8:11], 0 offen
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v25, v188
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v33, v34, v33, v152
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v33, v152, v33, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v152, v29, v28, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 0x94, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v34, 0xbfb8aa3b, v33
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v34, v34
	v_ldexp_f32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v35, null, v34, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v35
	v_fma_f32 v37, -v35, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v33, v34, v33
	v_mul_f32_e32 v38, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v35, v38, v37
	v_fmac_f32_e32 v38, v41, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v35, v38, v37
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v37, v51, v188
	v_mov_b32_e32 v51, v45
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v36, 0x8c, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v25, v0, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v134, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v36, v37, v36, v149
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v36, v149, v36, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v149, v35, v34, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v37, 0xbfb8aa3b, v36
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v36
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v37, v37, v38
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v38, null, v37, v37, v36
	v_rcp_f32_e32 v41, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, 1.0
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v36, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v43, v42, v41
	v_fma_f32 v44, -v38, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v41
	v_fma_f32 v38, -v38, v43, v42
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v42, v53, v188 :: v_dual_mov_b32 v53, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v38, v38, v41, v43
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v41, 0x88, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v139, v38, v37, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	buffer_load_u16 v41, v41, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v41, v42, v41, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v41, v137, v41, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v42, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v42, v42
	v_ldexp_f32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v43, null, v42, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v43
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v41, v42, v41
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v46, v45
	v_div_fmas_f32 v43, v43, v44, v46
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v146, v43, v42, v41
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v26, null, v25, v25, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v28, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v0, v25, v0
	v_mul_f32_e32 v29, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v26, v29, v28
	v_fmac_f32_e32 v29, v30, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v26, -v26, v29, v28
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	scratch_load_b32 v28, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v26, v26, v27, v29
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v27, 0x90, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v137, v26, v25, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	v_add_nc_u32_e32 v0, 0x9c, v7
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v25, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v28, v28, v188
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v25, v25, v188
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v27, v28, v27, v130
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v130, v27, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v25, v0, v129
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v129, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v25, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v28, v28, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v29, null, v28, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v29
	v_fma_f32 v31, -v29, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v27, v28, v27
	v_mul_f32_e32 v32, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v29, v32, v31
	v_fmac_f32_e32 v32, v33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v29, v32, v31
	v_div_fmas_f32 v29, v29, v30, v32
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v0
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v25, v25, v26
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v26, null, v25, v25, v0
	v_rcp_f32_e32 v30, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v26, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v0, v25, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v30
	v_fma_f32 v33, -v26, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v30
	v_fma_f32 v26, -v26, v32, v31
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	scratch_load_b32 v31, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v26, v26, v30, v32
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v30, 0x98, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	buffer_load_u16 v30, v30, s[8:11], 0 offen
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v31, v31, v188 :: v_dual_lshlrev_b32 v30, 16, v30
	.loc	1 209 17 is_stmt 0              ; generate_amdgcn.py:209:17
	v_fma_f32 v30, v31, v30, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v30, v128, v30, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v31, v31
	v_ldexp_f32 v31, v31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v32, null, v31, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v32
	v_fma_f32 v34, -v32, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v30, v31, v30
	v_mul_f32_e32 v35, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v32, v35, v34
	v_fmac_f32_e32 v35, v36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v32, v35, v34
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v34, v138, v188
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v138, v29, v28, v27
	v_div_fmas_f32 v32, v32, v33, v35
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v33, 0xa4, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v135, v32, v31, v30
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	buffer_load_u16 v33, v33, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v33, v34, v33, v127
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v33, v127, v33, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v34, 0xbfb8aa3b, v33
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v35
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v35, null, v34, v34, v33
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v41, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v41, v36
	v_fma_f32 v35, -v35, v38, v37
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v37, v136, v188
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v136, v26, v25, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 0xac, v7
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	scratch_load_b32 v25, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v36, 0xa0, v7
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v133, v35, v34, v33
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	s_clause 0x1
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v25, v25, v188
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v25, v0, v125
	v_fma_f32 v36, v37, v36, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v25, v125, v0, s2
	v_cndmask_b32_e64 v36, v126, v36, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_dual_mul_f32 v0, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v36
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v36
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v37, v37, v38
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v38, null, v37, v37, v36
	v_rcp_f32_e32 v41, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, 1.0
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v36, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v43, v42, v41
	v_fma_f32 v44, -v38, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v41
	v_fma_f32 v38, -v38, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v41, v43
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v134, v38, v37, v36
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v25
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v26
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v26, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v26, v26, v25
	v_rcp_f32_e32 v27, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v0, v27, 1.0
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v25, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v28, v27
	v_fma_f32 v30, -v0, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v30, v27
	v_fma_f32 v0, -v0, v29, v28
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v28, v113, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v27, v0, v27, v29
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 0xa8, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v127, v27, v26, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v25, v53, v188
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v28, v0, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v28, v124, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v29, 1.0, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v29, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v0
	v_fma_f32 v31, -v0, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v28, v29, v28
	v_mul_f32_e32 v32, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v0, v32, v31
	v_fmac_f32_e32 v32, v33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v0, v32, v31
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v31, v104, v188
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v30, v0, v30, v32
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 0xb4, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v128, v30, v29, v28
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v31, v0, v120
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v31, v120, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v31
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v32
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v32, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v0, null, v32, v32, v31
	v_rcp_f32_e32 v33, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v0, v33, 1.0
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v31, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v34, v33
	v_fma_f32 v36, -v0, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v33
	v_fma_f32 v0, -v0, v35, v34
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v34, v60, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v33, v0, v33, v35
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 0xb0, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v130, v33, v32, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v34, v0, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v122, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v34, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v34, v34
	v_ldexp_f32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v35, null, v34, v34, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v35
	v_fma_f32 v37, -v35, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v0, v34, v0
	v_mul_f32_e32 v38, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v35, v38, v37
	v_fmac_f32_e32 v38, v41, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v35, v38, v37
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v37, v103, v188
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v36, 0xbc, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v129, v35, v34, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	v_add_nc_u32_e32 v0, 0xc4, v7
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v36, 16, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v36, v37, v36, v121
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v36, v121, v36, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v25, v0, v118
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v37, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v118, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v25, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v37, v37
	v_ldexp_f32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v38, null, v37, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v38
	v_fma_f32 v42, -v38, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v36, v37, v36
	v_mul_f32_e32 v43, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v38, v43, v42
	v_fmac_f32_e32 v43, v44, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v38, v43, v42
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v42, v59, v188
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v38, v38, v41, v43
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v41, 0xb8, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	buffer_load_u16 v41, v41, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v41, v42, v41, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v41, v119, v41, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v42, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v42, v42
	v_ldexp_f32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v43, null, v42, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v43
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v41, v42, v41
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v43, v46, v45
	v_div_fixup_f32 v45, v38, v37, v36
	v_div_fmas_f32 v43, v43, v44, v46
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v29, v43, v42, v41
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v26, null, v25, v25, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v28, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v0, v25, v0
	v_mul_f32_e32 v30, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v26, v30, v28
	v_fmac_f32_e32 v30, v31, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v26, -v26, v30, v28
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v28, v58, v188
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v26, v26, v27, v30
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v27, 0xc0, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v125, v26, v25, v0
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v25, v165, v188 :: v_dual_add_nc_u32 v0, 0xd0, v7
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v27, v28, v27, v117
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v117, v27, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v25, v0, v100
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v100, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v25, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v28, v28, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v30, null, v28, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v31, v30
	v_fma_f32 v32, -v30, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v32, v31
	v_div_scale_f32 v32, vcc_lo, v27, v28, v27
	v_mul_f32_e32 v33, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v30, v33, v32
	v_fmac_f32_e32 v33, v34, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v30, v33, v32
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v32, v52, v188
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v30, v30, v31, v33
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v31, 0xcc, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v126, v30, v28, v27
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v31, v32, v31, v116
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v31, v116, v31, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v32, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v31
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v32, v32, v33
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v33, null, v32, v32, v31
	v_rcp_f32_e32 v34, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v33, v34, 1.0
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v31, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v36, v35, v34
	v_fma_f32 v37, -v33, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v34
	v_fma_f32 v33, -v33, v36, v35
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v35, v51, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v33, v33, v34, v36
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v34, 0xc8, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v122, v33, v32, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	buffer_load_u16 v34, v34, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v34, v35, v34, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v34, v115, v34, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v35, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v35, v35
	v_ldexp_f32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v36, null, v35, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v37, v36
	v_fma_f32 v38, -v36, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, vcc_lo, v34, v35, v34
	v_mul_f32_e32 v41, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v36, v41, v38
	v_fmac_f32_e32 v41, v42, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v36, v41, v38
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v38, v123, v188
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v36, v36, v37, v41
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v37, 0xd4, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v123, v36, v35, v34
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	buffer_load_u16 v37, v37, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v37, v38, v37, v198
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v37, v198, v37, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v38, 0xbfb8aa3b, v37
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v37
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v38, v38, v41
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v38, 1.0, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v41, null, v38, v38, v37
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v37, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v46, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v46, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v41, v41, v42, v44
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v124, v41, v38, v37
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v0
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v25, v25, v26
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v26, null, v25, v25, v0
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v26, v27, 1.0
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v0, v25, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v30, v28, v27
	v_fma_f32 v31, -v26, v30, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v27
	v_fma_f32 v26, -v26, v30, v28
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v28, v164, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v26, v26, v27, v30
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v27, 0xdc, v7
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v27, v28, v27, v111
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v28, v111, v27, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v28
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v28
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v30
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v30, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v27, null, v30, v30, v28
	v_rcp_f32_e32 v31, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v27, v31, 1.0
	v_fmac_f32_e32 v31, v32, v31
	v_div_scale_f32 v32, vcc_lo, v28, v30, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v33, v32, v31
	v_fma_f32 v34, -v27, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v31
	v_fma_f32 v27, -v27, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v27, v31, v33
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v27, 0xd8, v7
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v31, v101, v188
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v28, v32, v30, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v27, v31, v27, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v105, v27, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v31, v31
	v_ldexp_f32 v31, v31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v33, 1.0, v31
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v31, null, v33, v33, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v34, v31
	v_fma_f32 v35, -v31, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v27, v33, v27
	v_mul_f32_e32 v36, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v31, v36, v35
	v_fmac_f32_e32 v36, v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v31, v36, v35
	v_div_fmas_f32 v34, v31, v34, v36
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v31, 0xe4, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v27, v34, v33, v27
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v1, v1, v31, v199
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v1, v199, v1, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v1
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v31, v31, v35
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v35, 1.0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v31, null, v35, v35, v1
	v_rcp_f32_e32 v36, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v31, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v1, v35, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v41, -v31, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v41, v36
	v_fma_f32 v31, -v31, v38, v37
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v37, v163, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v36, v31, v36, v38
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v31, 0xe0, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v30, v36, v35, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v1, v4, v188
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v31, v37, v31, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v37, v69, v31, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v31, v31
	v_ldexp_f32 v31, v31, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v38, 1.0, v31
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v31, null, v38, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v31
	v_fma_f32 v42, -v31, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v37, v38, v37
	v_mul_f32_e32 v43, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v31, v43, v42
	v_fmac_f32_e32 v43, v44, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v31, v43, v42
	v_div_fmas_f32 v41, v31, v41, v43
	v_div_fixup_f32 v31, v26, v25, v0
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v0, 0xec, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v104, v41, v38, v37
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v1, v0, v66
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v66, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v4
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v1, null, v25, v25, v0
	v_rcp_f32_e32 v4, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v1, v4, 1.0
	v_fmac_f32_e32 v4, v26, v4
	v_div_scale_f32 v26, vcc_lo, v0, v25, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v26, v4
	v_fma_f32 v33, -v1, v32, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v4
	v_fma_f32 v1, -v1, v32, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v26, v1, v4, v32
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v1, 0xe8, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v115, v26, v25, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_add_nc_u32_e32 v0, 0xf4, v7
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v1, v2, v1, v65
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v1, v65, v1, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v0, v5, v0, v64
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v2, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v5, v64, v0, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, 0xbfb8aa3b, v5
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v4, null, v2, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v32, v4
	v_fma_f32 v33, -v4, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v32
	v_div_scale_f32 v33, vcc_lo, v1, v2, v1
	v_mul_f32_e32 v34, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v4, v34, v33
	v_fmac_f32_e32 v34, v35, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v4, -v4, v34, v33
	v_div_fmas_f32 v4, v4, v32, v34
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v5
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v25
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v25, null, v0, v0, v5
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v32, v26
	v_div_scale_f32 v32, vcc_lo, v5, v0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v33, v32, v26
	v_fma_f32 v34, -v25, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v26
	v_fma_f32 v25, -v25, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v26, v33
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v26, 0xf0, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v111, v25, v0, v5
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:252
	scratch_load_b32 v25, off, off offset:80
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v25, v25, v188 :: v_dual_lshlrev_b32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v3, v3, v26, v63
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v3, v63, v3, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v3
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v32
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v32, null, v26, v26, v3
	v_rcp_f32_e32 v33, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v32, v33, 1.0
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v3, v26, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v34, v33
	v_fma_f32 v36, -v32, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v33
	v_fma_f32 v32, -v32, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v33, v35
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v33, 0xfc, v7
	v_add_nc_u32_e32 v7, 0xf8, v7
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_load_u16 v33, v33, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v33, 16, v33
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v6, v6, v33, v62
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v6, v62, v6, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v33, 0xbfb8aa3b, v6
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v6
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v34
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v34, null, v33, v33, v6
	v_rcp_f32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v34, v35, 1.0
	v_fmac_f32_e32 v35, v36, v35
	v_div_scale_f32 v36, vcc_lo, v6, v33, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v37, v36, v35
	v_fma_f32 v38, -v34, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v38, v35
	v_fma_f32 v34, -v34, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v35, v37
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v35, v114, v188
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v33, v34, v33, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v7, v35, v7, v61
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v6, off, off offset:248 ; 4-byte Folded Reload
	v_mul_f32_e32 v5, v5, v188
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v7, v61, v7, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v35, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v35, v35
	v_ldexp_f32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v36, null, v35, v35, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v37, v36
	v_fma_f32 v38, -v36, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, vcc_lo, v7, v35, v7
	v_mul_f32_e32 v41, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v36, v41, v38
	v_fmac_f32_e32 v41, v42, v37
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v36, -v36, v41, v38
	v_div_fixup_f32 v38, v32, v26, v3
	.loc	1 206 20 is_stmt 1              ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:36
	scratch_load_b32 v26, off, off offset:68
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v36, v36, v37, v41
	v_div_fixup_f32 v37, v4, v2, v1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:44
	scratch_load_b32 v2, off, off offset:40
	scratch_load_b32 v4, off, off offset:32
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v32, v36, v35, v7
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	v_add_lshl_u32 v36, s1, v102, 1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v7, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 4, v36
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(7)
	v_mul_f32_e32 v6, v6, v188
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v3, v3, v188
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v26, v26, v188
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v1, v1, v188
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v2, v2, v188
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v4, v4, v188
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v7, v7, v188
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v1, v0, v220
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	v_or_b32_e32 v1, s0, v102
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v220, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v1, v1, s26, 1
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v9
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v9, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v1, v2, v1, v219
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v2, 20, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v1, v219, v1, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v1, v1, v39
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v39, v247, v188
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v2, v3, v2, v218
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v3, 16, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v2, v218, v2, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v2, v2, v13
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v13, off, off offset:184 ; 4-byte Folded Reload
	v_mul_f32_e32 v9, v9, v188
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v13, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v3, v4, v3, v216
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v4.l, v0.h
	v_mov_b16_e64 v4.h, v188.l
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v4, v0, v4, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v216, v3, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e64 v3.h, v188.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v17
	scratch_load_b32 v17, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v3, 1, v3
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v1, v3, 0x7fff
	v_mov_b16_e32 v1.l, v2.h
	v_mov_b16_e64 v1.h, v188.l
	v_and_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v1, v2, v1, 0x7fff
	v_mov_b16_e32 v2.l, v0.h
	v_mov_b16_e64 v2.h, v188.l
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v2, 1, v2
	v_add3_u32 v2, v0, v2, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s0
	v_cmp_eq_u32_e32 vcc_lo, 0, v248
	v_mov_b32_e32 v3, 0x7632
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s3
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v4, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_dual_cndmask_b32 v3, 0x3276, v3 :: v_dual_cndmask_b32 v2, v1, v0
	v_dual_cndmask_b32 v0, v0, v1 :: v_dual_mov_b32 v1, 0x5410
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v3, v3, 8, v3
	v_permlanex16_b32 v0, v0, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v1, 0x1054, v1, vcc_lo
	v_and_b32_e32 v3, 0x760076, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v1, v1, 8, v1
	v_lshl_or_b32 v3, v3, 4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v1, 0x540054, v1
	v_and_b32_e32 v34, 0x7060706, v3
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v3, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_lshl_or_b32 v1, v1, 4, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 0x5040504, v1
	v_perm_b32 v1, v0, v2, v35
	v_perm_b32 v2, v0, v2, v34
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 12, v36
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v4, v4, v188
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v3, v3, v188
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v3, v0, v214
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v3, 8, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v214, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v40
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v40, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v40, v40, v188 :: v_dual_lshlrev_b32 v3, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v3, v4, v3, v213
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v4, 28, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v3, v213, v3, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v3, v3, v8
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v8, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v3, v3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v8, v8, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v4, v5, v4, v212
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v5, 24, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v4, v212, v4, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v4, v4, v10
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v10, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v4, v4
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v10, v188 :: v_dual_lshlrev_b32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v5, v6, v5, v211
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v6.l, v0.h
	v_mov_b16_e64 v6.h, v188.l
	v_and_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v6, v0, v6, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v211, v5, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v5.l, v3.h
	v_mov_b16_e64 v5.h, v188.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v12
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v12, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v5, 1, v5
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v5, v3, v5, 0x7fff
	v_mov_b16_e32 v3.l, v4.h
	v_mov_b16_e64 v3.h, v188.l
	v_and_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v4, v3, 0x7fff
	v_mov_b16_e32 v4.l, v0.h
	v_mov_b16_e64 v4.h, v188.l
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v4, 1, v4
	v_add3_u32 v4, v0, v4, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v6.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v5.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:244
	scratch_load_b32 v6, off, off offset:240
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v4, v0, v3, vcc_lo
	v_cndmask_b32_e32 v0, v3, v0, vcc_lo
	v_permlanex16_b32 v4, v4, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v3, v4, v0, v35
	v_perm_b32 v4, v4, v0, v34
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 32, v36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v12, v12, v188
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v5, v5, v188
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v6, v6, v188
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v5, v0, v210
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v5, 36, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v210, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v15
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v15, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v5, v6, v5, v209
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v6, 52, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v5, v209, v5, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v5, v5, v11
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v11, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v11, v188 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v6, v7, v6, v208
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v7, 48, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v6, v208, v6, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v6, v6, v18
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v18, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v6, v6
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v18, v18, v188 :: v_dual_lshlrev_b32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v7, v8, v7, v207
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v8.l, v5.h
	v_mov_b16_e64 v8.h, v188.l
	v_and_b32_e32 v8, 1, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v8, v5, v8, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v5, v207, v7, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v7.l, v0.h
	v_mov_b16_e64 v7.h, v188.l
	v_and_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v7, v0, v7, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v5, v22
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v5.l, v6.h
	v_mov_b16_e64 v5.h, v188.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v22, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s4, v0, v0
	v_and_b32_e32 v5, 1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v5, v6, v5, 0x7fff
	v_mov_b16_e32 v6.l, v0.h
	v_mov_b16_e64 v6.h, v188.l
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v6, 1, v6
	v_add3_u32 v6, v0, v6, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v8.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v7.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:228
	scratch_load_b32 v8, off, off offset:224
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v6, v0, v5, vcc_lo
	v_cndmask_b32_e32 v0, v5, v0, vcc_lo
	v_permlanex16_b32 v6, v6, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v5, v6, v0, v35
	v_perm_b32 v6, v6, v0, v34
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 40, v36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v22, v22, v188
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v7, v7, v188
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v8, v8, v188
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v7, v0, v206
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v7, 44, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v206, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v16
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v16, off, off offset:156 ; 4-byte Folded Reload
	v_mul_f32_e32 v15, v15, v188
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v16, v16, v188 :: v_dual_lshlrev_b32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v7, v8, v7, v205
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v8, 60, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v7, v205, v7, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v7, v7, v14
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v14, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v7, v7
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v8, v9, v8, v204
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v9, 56, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v8, v204, v8, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v8, v8, v19
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	scratch_load_b32 v19, off, off          ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v8, v8
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v9, v10, v9, v203
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v10.l, v7.h
	v_mov_b16_e64 v10.h, v188.l
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v10, v7, v10, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v7, v203, v9, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v9.l, v0.h
	v_mov_b16_e64 v9.h, v188.l
	v_and_b32_e32 v9, 1, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v9, v0, v9, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v7, v201
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v7.l, v8.h
	v_mov_b16_e64 v7.h, v188.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v7, v8, v7, 0x7fff
	v_mov_b16_e32 v8.l, v0.h
	v_mov_b16_e64 v8.h, v188.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s3
	v_and_b32_e32 v8, 1, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v8, v0, v8, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v10.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v9.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:208
	scratch_load_b32 v10, off, off offset:200
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v8, v0, v7, vcc_lo
	v_cndmask_b32_e32 v0, v7, v0, vcc_lo
	v_permlanex16_b32 v8, v8, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v7, v8, v0, v35
	v_perm_b32 v8, v8, v0, v34
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 64, v36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v9, v9, v188
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v10, v10, v188
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v9, v0, v202
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v9, 0x44, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v202, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v24
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v24, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v24, v24, v188 :: v_dual_lshlrev_b32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v9, v10, v9, v193
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v10, 0x54, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v9, v193, v9, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v9, v9, v23
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v23, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v9, v9
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v23, v23, v188 :: v_dual_lshlrev_b32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v10, v11, v10, v192
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v11, 0x50, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v10, v192, v10, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v10, v10, v200
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v10, v10
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v11, v12, v11, v191
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v12.l, v9.h
	v_mov_b16_e64 v12.h, v188.l
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v12, v9, v12, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v9, v191, v11, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v11.l, v0.h
	v_mov_b16_e64 v11.h, v188.l
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v11, v0, v11, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v9, v50
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v9.l, v10.h
	v_mov_b16_e64 v9.h, v188.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v9, v10, v9, 0x7fff
	v_mov_b16_e32 v10.l, v0.h
	v_mov_b16_e64 v10.h, v188.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s3
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v10, v0, v10, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v12.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v11.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:188
	scratch_load_b32 v12, off, off offset:180
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v10, v0, v9, vcc_lo
	v_cndmask_b32_e32 v0, v9, v0, vcc_lo
	v_permlanex16_b32 v10, v10, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v9, v10, v0, v35
	v_perm_b32 v10, v10, v0, v34
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0x4c, v36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v11, v11, v188
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v12, v12, v188
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v11, v0, v190
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v11, 0x48, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v190, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v20
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	scratch_load_b32 v20, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v11, v12, v11, v132
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v12, 0x5c, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v11, v132, v11, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v11, v11, v21
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v21, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v11, v11
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v21, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v12, v13, v12, v131
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v13, 0x58, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v12, v131, v12, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v13, v14, v13, v112
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v14.l, v0.h
	v_mov_b16_e64 v14.h, v188.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v14, v0, v14, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v12, v48
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v12, v112, v13, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v13.l, v11.h
	v_mov_b16_e64 v13.h, v188.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v13, v11, v13, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v11, v12, v54
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v12.l, v0.h
	v_mov_b16_e64 v12.h, v188.l
	v_cmp_o_f32_e64 s4, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v0, v12, 0x7fff
	v_mov_b16_e32 v0.l, v11.h
	v_mov_b16_e64 v0.h, v188.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s3
	v_and_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v0, v11, v0, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s0
	v_cndmask_b16 v11.l, 0x7fff, v13.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:168
	scratch_load_b32 v14, off, off offset:164
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v12.l, 0x7fff, v0.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v0, v11, v12, vcc_lo
	v_cndmask_b32_e32 v12, v12, v11, vcc_lo
	v_permlanex16_b32 v0, v0, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v11, v0, v12, v35
	v_perm_b32 v12, v0, v12, v34
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0x64, v36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v13, v13, v188
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v14, v14, v188
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v13, v0, v110
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v13, 0x60, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v110, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v196
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v13, v14, v13, v109
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v14, 0x74, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v13, v109, v13, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v13, v13, v195
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v13, v13
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v14, v15, v14, v108
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v15, 0x70, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v14, v108, v14, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v14, v14, v194
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v14, v14
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v15, v16, v15, v107
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v16.l, v0.h
	v_mov_b16_e64 v16.h, v188.l
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v16, v0, v16, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v107, v15, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v15.l, v13.h
	v_mov_b16_e64 v15.h, v188.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v0, v0, v177 :: v_dual_and_b32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v15, v13, v15, 0x7fff
	v_mov_b16_e32 v13.l, v14.h
	v_mov_b16_e64 v13.h, v188.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v14, v13, 0x7fff
	v_mov_b16_e32 v14.l, v0.h
	v_mov_b16_e64 v14.h, v188.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s3
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v14, v0, v14, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v16.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v15.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:152
	scratch_load_b32 v16, off, off offset:148
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v14, v0, v13, vcc_lo
	v_cndmask_b32_e32 v0, v13, v0, vcc_lo
	v_permlanex16_b32 v14, v14, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v13, v14, v0, v35
	v_perm_b32 v14, v14, v0, v34
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0x68, v36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v15, v15, v188
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v16, v16, v188
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v15, v0, v106
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v15, 0x6c, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v106, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v176
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v15, v16, v15, v17
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v16, 0x7c, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v17, v15, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v17, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v15, v15, v49
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v15, v15
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v17, v17, v188
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v16, v17, v16, v20
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v17, 0x78, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v16, v20, v16, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v20, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v16, v16, v166
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v16, v16
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v20, v20, v188 :: v_dual_lshlrev_b32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_fma_f32 v17, v18, v17, v19
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v18.l, v15.h
	v_mov_b16_e64 v18.h, v188.l
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v18, v15, v18, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v19, v17, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v17.l, v0.h
	v_mov_b16_e64 v17.h, v188.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v19, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v17, v0, v17, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v15, v152
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v15.l, v16.h
	v_mov_b16_e64 v15.h, v188.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v15, v16, v15, 0x7fff
	v_mov_b16_e32 v16.l, v0.h
	v_mov_b16_e64 v16.h, v188.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s3
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v16, v0, v16, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v18.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v17.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:136
	scratch_load_b32 v18, off, off offset:132
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v16, v0, v15, vcc_lo
	v_cndmask_b32_e32 v0, v15, v0, vcc_lo
	v_permlanex16_b32 v16, v16, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v15, v16, v0, v35
	v_perm_b32 v16, v16, v0, v34
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0x84, v36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v19, v19, v188
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v17, v17, v188
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v18, v18, v188
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v17, v0, v99
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v17, 0x80, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v99, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v147
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v17, v18, v17, v98
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v18, 0x94, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v17, v98, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v17, v17, v149
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v17, v17
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v18, v19, v18, v97
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v19, 0x90, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v18, v97, v18, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v18, v18, v137
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v18, v18
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v19, v20, v19, v96
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e64 v20.h, v188.l
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v20, v0, v20, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v96, v19, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v19.l, v17.h
	v_mov_b16_e64 v19.h, v188.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v0, v0, v138 :: v_dual_and_b32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v19, v17, v19, 0x7fff
	v_mov_b16_e32 v17.l, v18.h
	v_mov_b16_e64 v17.h, v188.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v18, v17, 0x7fff
	v_mov_b16_e32 v18.l, v0.h
	v_mov_b16_e64 v18.h, v188.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s3
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v18, v0, v18, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v20.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v19.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:120
	scratch_load_b32 v20, off, off offset:116
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v18, v0, v17, vcc_lo
	v_cndmask_b32_e32 v0, v17, v0, vcc_lo
	v_permlanex16_b32 v18, v18, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v17, v18, v0, v35
	v_perm_b32 v18, v18, v0, v34
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0x88, v36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v19, v19, v188
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v20, v20, v188
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v19, v0, v95
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v19, 0x8c, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v95, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v146
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v19, v20, v19, v94
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v20, 0x9c, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v94, v19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v19, v19, v139
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v19, v19
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v20, v21, v20, v93
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v21, 0x98, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v20, v93, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v20, v20, v136
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v20, v20
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v21, v22, v21, v92
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v22.l, v19.h
	v_mov_b16_e64 v22.h, v188.l
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v22, v19, v22, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v92, v21, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v21.l, v0.h
	v_mov_b16_e64 v21.h, v188.l
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v21, v0, v21, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v19, v135
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v19.l, v20.h
	v_mov_b16_e64 v19.h, v188.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v20, v19, 0x7fff
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e64 v20.h, v188.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s3
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v20, v0, v20, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v22.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v21.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:104
	scratch_load_b32 v22, off, off offset:100
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v20, v0, v19, vcc_lo
	v_cndmask_b32_e32 v0, v19, v0, vcc_lo
	v_permlanex16_b32 v20, v20, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v19, v20, v0, v35
	v_perm_b32 v20, v20, v0, v34
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0xa4, v36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v21, v21, v188
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v22, v22, v188
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v21, v0, v91
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v21, 0xa0, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v91, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v133
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v21, v22, v21, v90
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v22, 0xb4, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v90, v21, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v21, v21, v134
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v21, v21
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v22, v23, v22, v89
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v23, 0xb0, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v22, v89, v22, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v22, v22, v130
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v22, v22
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v23, v24, v23, v88
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v24.l, v0.h
	v_mov_b16_e64 v24.h, v188.l
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v24, v0, v24, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v88, v23, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v23.l, v21.h
	v_mov_b16_e64 v23.h, v188.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v0, v0, v129 :: v_dual_and_b32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v23, v21, v23, 0x7fff
	v_mov_b16_e32 v21.l, v22.h
	v_mov_b16_e64 v21.h, v188.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v22, v21, 0x7fff
	v_mov_b16_e32 v22.l, v0.h
	v_mov_b16_e64 v22.h, v188.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s3
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v22, v0, v22, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v24.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v23.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v23, off, off offset:88
	scratch_load_b32 v24, off, off offset:84
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v22, v0, v21, vcc_lo
	v_cndmask_b32_e32 v0, v21, v0, vcc_lo
	v_permlanex16_b32 v22, v22, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v21, v22, v0, v35
	v_perm_b32 v22, v22, v0, v34
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0xa8, v36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v23, v23, v188
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v24, v24, v188
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v23, v0, v87
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v23, 0xac, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v87, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v128
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v23, v24, v23, v86
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v24, 0xbc, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v23, v86, v23, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v23, v23, v127
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v23, v23
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v24, v25, v24, v85
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v25, 0xb8, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v24, v85, v24, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v24, v24, v45
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v24, v24
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v25, v26, v25, v84
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v26.l, v23.h
	v_mov_b16_e64 v26.h, v188.l
	v_and_b32_e32 v26, 1, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v26, v23, v26, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v23, v84, v25, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v25.l, v0.h
	v_mov_b16_e64 v25.h, v188.l
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v25, v0, v25, 0x7fff
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v23, v29
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v23.l, v24.h
	v_mov_b16_e64 v23.h, v188.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v29, v244, v188
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v23, v24, v23, 0x7fff
	v_mov_b16_e32 v24.l, v0.h
	v_mov_b16_e64 v24.h, v188.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s3
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v24, v0, v24, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v26.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v25.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v25, v250, v188
	v_mul_f32_e32 v26, v249, v188
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v23.l, 0x7fff, v24.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v24, v0, v23, vcc_lo
	v_cndmask_b32_e32 v0, v23, v0, vcc_lo
	v_permlanex16_b32 v24, v24, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v23, v24, v0, v35
	v_perm_b32 v24, v24, v0, v34
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0xc4, v36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v25, v0, v83
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v25, 0xc0, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v83, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v125
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v25, v26, v25, v82
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v26, 0xd4, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v25, v82, v25, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v25, v25, v126
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v25, v25
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v26, v29, v26, v81
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v29, 0xd0, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v26, v81, v26, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v26, v26, v124
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v29, v29, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v26, v26
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v29, v39, v29, v80
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v39.l, v0.h
	v_mov_b16_e64 v39.h, v188.l
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v39, v0, v39, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v80, v29, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v29.l, v25.h
	v_mov_b16_e64 v29.h, v188.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v31
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v31, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v29, 1, v29
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v29, v25, v29, 0x7fff
	v_mov_b16_e32 v25.l, v26.h
	v_mov_b16_e64 v25.h, v188.l
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v25, v26, v25, 0x7fff
	v_mov_b16_e32 v26.l, v0.h
	v_mov_b16_e64 v26.h, v188.l
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v26, 1, v26
	v_add3_u32 v26, v0, v26, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v39.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v29.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v29, v56, v188
	scratch_load_b32 v39, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v26, v0, v25, vcc_lo
	v_cndmask_b32_e32 v0, v25, v0, vcc_lo
	v_permlanex16_b32 v26, v26, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v25, v26, v0, v35
	v_perm_b32 v26, v26, v0, v34
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0xc8, v36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v31, v31, v188
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v39, v39, v188
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v29, v0, v79
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v29, 0xcc, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v79, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v123
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v29, v29, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v29, v31, v29, v78
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v31, 0xdc, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v29, v78, v29, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v29, v29, v122
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v29, v29
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v31, v39, v31, v77
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v39, 0xd8, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v31, v77, v31, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v28, v31, v28
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v39, v39, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v31.l, v0.h
	v_mov_b16_e64 v31.h, v188.l
	v_cmp_o_f32_e64 s3, v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v31, v0, v31, 0x7fff
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v39, 16, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v39, v40, v39, v76
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v40.l, v29.h
	v_mov_b16_e64 v40.h, v188.l
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v40, v29, v40, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v29, v76, v39, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v39, v245, v188
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v29, v27
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v27.l, v28.h
	v_mov_b16_e64 v27.h, v188.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v29, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s4, v0, v0
	v_and_b32_e32 v27, 1, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v27, v28, v27, 0x7fff
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e64 v28.h, v188.l
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v28, v0, v28, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v40.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v31.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	scratch_load_b32 v31, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v28, v0, v27, vcc_lo
	v_cndmask_b32_e32 v0, v27, v0, vcc_lo
	v_permlanex16_b32 v28, v28, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v27, v28, v0, v35
	v_perm_b32 v28, v28, v0, v34
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0xe4, v36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v29, v29, v188
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v31, v31, v188
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v29, v0, v75
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v29, 0xe0, v36
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v75, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v30
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v30, 0xf4, v36
	buffer_load_u16 v29, v29, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	buffer_load_u16 v30, v30, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v29, v31, v29, v74
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v31, v246, v188 :: v_dual_lshlrev_b32 v30, 16, v30
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v29, v74, v29, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v30, v31, v30, v73
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v31, 0xf0, v36
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v29, v29, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v30, v73, v30, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v29, v29
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v30, v30, v111
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v30, v30
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v31, v39, v31, v72
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v39.l, v0.h
	v_mov_b16_e64 v39.h, v188.l
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v39, v0, v39, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v72, v31, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v31.l, v29.h
	v_mov_b16_e64 v31.h, v188.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v38, v55, v188 :: v_dual_and_b32 v31, 1, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v31, v29, v31, 0x7fff
	v_mov_b16_e32 v29.l, v30.h
	v_mov_b16_e64 v29.h, v188.l
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v29, v30, v29, 0x7fff
	v_mov_b16_e32 v30.l, v0.h
	v_mov_b16_e64 v30.h, v188.l
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v30, v0, v30, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v39.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v31.h, s1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v31, v243, v188
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s4
	v_cndmask_b32_e32 v30, v0, v29, vcc_lo
	v_cndmask_b32_e32 v0, v29, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v30, v30, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v29, v30, v0, v35
	v_perm_b32 v30, v30, v0, v34
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v0, 0xec, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v0, v31, v0, v71
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v31, 0xe8, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v71, v0, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v115
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v31, v38, v31, v70
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	scratch_load_b32 v38, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v31, v70, v31, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v31, v31, v37
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v37, 0xfc, v36
	v_add_nc_u32_e32 v36, 0xf8, v36
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v31, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	s_clause 0x1
	buffer_load_u16 v37, v37, s[8:11], 0 offen
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v38, v38, v188 :: v_dual_lshlrev_b32 v37, 16, v37
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v37, v38, v37, v68
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	scratch_load_b32 v38, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v37, v68, v37, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v33, v37, v33 :: v_dual_mul_f32 v38, v38, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v36, v38, v36, v67
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v38.l, v0.h
	v_mov_b16_e64 v38.h, v188.l
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v38, v0, v38, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v67, v36, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v36.l, v31.h
	v_mov_b16_e64 v36.h, v188.l
	v_cmp_o_f32_e64 s2, v33, v33
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v0, v0, v32
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e64 v32.h, v188.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v36, 1, v36
	v_mov_b16_e32 v32.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v0, v0
	v_add3_u32 v36, v31, v36, 0x7fff
	v_mov_b16_e32 v31.l, v33.h
	v_mov_b16_e64 v31.h, v188.l
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v32, v0, v32, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v38.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v36.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v31, v33, v31, 0x7fff
	v_cndmask_b16 v31.l, 0x7fff, v32.h, s3
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v33, 1, v248
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s2
	v_cndmask_b32_e32 v32, v31, v0, vcc_lo
	v_cndmask_b32_e32 v0, v0, v31, vcc_lo
	.loc	1 216 18 is_stmt 0              ; generate_amdgcn.py:216:18
	scratch_load_b32 v31, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_permlanex16_b32 v0, v0, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v31, s27, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	s_mov_b32 s27, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_add3_u32 v31, s33, s26, v31
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	s_mov_b32 s26, s10
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_add_lshl_u32 v33, v31, v33, 1
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_perm_b32 v31, v0, v32, v35
	v_and_b32_e32 v35, 0x1e0, v57
	v_perm_b32 v32, v0, v32, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v0, 64, v33
	v_cmp_eq_u32_e32 vcc_lo, 0, v35
	v_add_nc_u32_e32 v35, 32, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v34, 0x80000000, v33 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[1:4], v34, s[24:27], 0 offen
	buffer_store_b128 v[5:8], v35, s[24:27], 0 offen
	buffer_store_b128 v[9:12], v0, s[24:27], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v33
	v_add_nc_u32_e32 v1, 0x80, v33
	v_add_nc_u32_e32 v2, 0xa0, v33
	v_add_nc_u32_e32 v3, 0xc0, v33
	v_add_nc_u32_e32 v4, 0xe0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[13:16], v0, s[24:27], 0 offen
	buffer_store_b128 v[17:20], v1, s[24:27], 0 offen
	buffer_store_b128 v[21:24], v2, s[24:27], 0 offen
	buffer_store_b128 v[25:28], v3, s[24:27], 0 offen
	buffer_store_b128 v[29:32], v4, s[24:27], 0 offen
	.loc	1 80 1 is_stmt 1                ; generate_amdgcn.py:80:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 432
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_sgpr 49
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 432
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 41044
; TotalNumSgprs: 51
; NumVgprs: 256
; ScratchSize: 432
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 51
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
	.byte	88                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	154                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 432
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 207
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
