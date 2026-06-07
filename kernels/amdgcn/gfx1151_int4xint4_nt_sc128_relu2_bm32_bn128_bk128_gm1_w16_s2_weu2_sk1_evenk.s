	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	v_dual_mov_b32 v15, 0 :: v_dual_and_b32 v12, 15, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v13, 4, v0
	v_dual_mov_b32 v27, 0 :: v_dual_lshlrev_b32 v8, 3, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v11, 3, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v26, 0 :: v_dual_lshlrev_b32 v9, 2, v12
	v_dual_mov_b32 v29, 0 :: v_dual_and_b32 v10, 56, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v39, 64, v11
	v_and_b32_e32 v56, 0xe0, v0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_lshrrev_b32_e32 v14, 1, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v57, v0, 4, 1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshlrev_b32_e32 v34, 2, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v58, 16, v13
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v16, 1, v56
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s6, s6, 31
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
	s_lshr_b32 s12, s12, 27
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
	s_ashr_i32 s6, s6, 5
.Ltmp11:
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s5
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshrrev_b32_e32 v17, 2, v56
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_and_b32_e32 v18, 56, v14
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v22, v57, v16
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v25, v58, v12
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v16, v34, v17
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xor_b32_e32 v8, v8, v18
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_lshlrev_b32 v35, 6, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v37, 0, v16
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_readfirstlane_b32 s9, v1
	v_lshlrev_b32_e32 v36, 5, v56
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v24, 2, v22
	v_or_b32_e32 v23, 4, v22
	v_or_b32_e32 v21, 6, v22
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v20, 8, v22
	v_or_b32_e32 v19, 10, v22
	v_or_b32_e32 v18, 12, v22
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_u32_f32 s9, s9
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v17, 14, v22
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v38, 0, v8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_mul_i32 s11, s11, s9
	s_mul_hi_u32 s11, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s11
	s_xor_b32 s11, s2, s5
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s9, s8
	s_sub_i32 s10, s10, s12
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s10, s8
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s10, s13, s10
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s8, s12, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s8, s8, s11
	s_sub_i32 s20, s8, s11
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s6, s20
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s20, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s6, s6, 1
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s19, s6
	s_xor_b32 s21, s2, s6
	s_cvt_f32_u32 s16, s19
	s_ashr_i32 s30, s21, 31
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	s_mul_f32 s18, s16, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_cvt_u32_f32 s10, s18
	s_sub_i32 s18, 0, s19
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s18, s18, s10
	s_mul_hi_u32 s5, s10, s18
	s_abs_i32 s18, s2
	s_add_i32 s5, s10, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_hi_u32 s5, s18, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s22, s5, s19
	s_sub_i32 s21, s18, s22
	s_add_i32 s22, s5, 1
	s_sub_i32 s23, s21, s19
	s_cmp_ge_u32 s21, s19
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s18, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s5, s22, s5
	s_cselect_b32 s21, s23, s21
	s_add_i32 s22, s5, 1
	s_cmp_ge_u32 s21, s19
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s19, s11
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s5, s22, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s21, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s34, s5, s30
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s35, s4, 0x7f
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s21
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s34, s30
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s31, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s21, s5, s6
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mul_lo_u32 v3, s31, v13
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s21
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s33, s3, 6
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s20
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s35, 31
.Ltmp15:
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v1, s33, v9
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s28, s2, 5
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v2, s33, v10
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s2, s28, s31
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mul_lo_u32 v4, s31, v11
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s22, s35, s3
.Ltmp19:
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mul_lo_u32 v5, s31, v39
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v3, v3, v9, s2
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s6, s5, 7
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s31, v1
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 64, v1
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s29, s22, 7
.Ltmp21:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s31, v2
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 64, v2
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s35, 0x7f
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_mul_i32 s20, s6, s31
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_add_i32 s20, s20, s33
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add_nc_u32_e32 v6, s33, v3
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, vcc_lo, s4
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add3_u32 v1, v4, v10, s20
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s3, s5
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add3_u32 v2, v5, v10, s20
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e64 v4, 0x80000000, v6, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s5
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e64 v5, 0x80000000, v1, s4
	v_cndmask_b32_e64 v6, 0x80000000, v2, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b32 v40, v4, s[8:11], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b64 v[4:5], v5, s[16:19], 0 offen
	buffer_load_b64 v[6:7], v6, s[16:19], 0 offen
	s_load_b64 s[4:5], s[0:1], 0x20
	v_or_b32_e32 v16, s28, v25
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_lt_i32 s35, 0x100
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(2)
	ds_store_b32 v37, v40 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v38, v[4:5], v[6:7] offset1:8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	s_add_i32 s1, s33, 64
	v_mul_lo_u32 v4, v16, s29
	v_or_b32_e32 v7, s1, v9
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add_nc_u32_e32 v3, s1, v3
	v_or_b32_e32 v5, s6, v22
	v_or_b32_e32 v6, s6, v24
	v_or_b32_e32 v8, s6, v23
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s0, s31, v7
	v_or_b32_e32 v26, s6, v21
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v4, 1, v4
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s20, s12
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	s_mov_b32 s22, s10
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	s_mov_b32 s23, s11
	v_or_b32_e32 v27, s6, v20
	v_or_b32_e32 v28, s6, v19
	v_or_b32_e32 v7, s6, v18
	v_or_b32_e32 v29, s6, v17
	buffer_load_b32 v77, v3, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v3, 1, v5
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v78, v4, s[20:23], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v4, 1, v6
	v_lshlrev_b32_e32 v5, 1, v8
	s_and_b32 s25, s15, 0xffff
	s_mov_b32 s24, s14
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	v_lshlrev_b32_e32 v6, 1, v26
	v_lshlrev_b32_e32 v8, 1, v27
	v_lshlrev_b32_e32 v26, 1, v28
	v_lshlrev_b32_e32 v7, 1, v7
	v_lshlrev_b32_e32 v27, 1, v29
	s_clause 0x7
	buffer_load_u16 v79, v3, s[24:27], 0 offen
	buffer_load_u16 v80, v4, s[24:27], 0 offen
	buffer_load_u16 v81, v5, s[24:27], 0 offen
	buffer_load_u16 v82, v6, s[24:27], 0 offen
	buffer_load_u16 v83, v8, s[24:27], 0 offen
	buffer_load_u16 v84, v26, s[24:27], 0 offen
	buffer_load_u16 v85, v7, s[24:27], 0 offen
	buffer_load_u16 v86, v27, s[24:27], 0 offen
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v3, s1, v10
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add_nc_u32_e32 v1, 64, v1
	v_add_nc_u32_e32 v2, 64, v2
	.loc	1 164 26 is_stmt 0              ; generate_amdgcn.py:164:26
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
	.loc	1 156 27 is_stmt 1              ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s0, s31, v3
	v_and_b32_e32 v3, 56, v34
	.loc	1 156 26 is_stmt 0              ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_or3_b32 v30, v36, v3, v35
	.loc	1 164 26 is_stmt 1              ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	s_clause 0x1
	buffer_load_b64 v[59:60], v1, s[16:19], 0 offen
	buffer_load_b64 v[61:62], v2, s[16:19], 0 offen
	v_and_or_b32 v2, 0x438, v34, v35
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v1, 0
	v_xor_b32_e32 v31, 8, v30
	v_xor_b32_e32 v32, 16, v30
	v_xor_b32_e32 v33, 24, v30
	v_xor_b32_e32 v26, 8, v2
	v_xor_b32_e32 v27, 16, v2
	v_xor_b32_e32 v28, 24, v2
	v_xor_b32_e32 v29, 32, v2
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v40, 0, v2
	v_xor_b32_e32 v50, 40, v2
	v_xor_b32_e32 v73, 48, v2
	v_xor_b32_e32 v75, 56, v2
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v41, 0, v30
	v_xor_b32_e32 v49, 32, v30
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v42, 0, v26
	v_add_nc_u32_e32 v43, 0, v31
	v_xor_b32_e32 v51, 40, v30
	v_add_nc_u32_e32 v44, 0, v27
	v_add_nc_u32_e32 v45, 0, v32
	v_xor_b32_e32 v74, 48, v30
	v_xor_b32_e32 v76, 56, v30
	v_add_nc_u32_e32 v46, 0, v28
	v_add_nc_u32_e32 v47, 0, v33
	v_add_nc_u32_e32 v48, 0, v29
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v33, v8 :: v_dual_mov_b32 v30, v5
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[52:53], v40 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[54:55], v41
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v29, v4 :: v_dual_mov_b32 v28, v3
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[63:64], v42 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[65:66], v43
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v27, v2 :: v_dual_mov_b32 v26, v1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[67:68], v44 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[69:70], v45
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v32, v7 :: v_dual_mov_b32 v31, v6
	v_add_nc_u32_e32 v49, 0, v49
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[2:3], v46 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[4:5], v47
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v50, 0, v50
	v_add_nc_u32_e32 v51, 0, v51
	ds_load_b64 v[6:7], v48 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[71:72], v49
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_lt_u32 s35, 0x180
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[54:55], v[52:53], v[26:33] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v52, 0, v73
	v_add_nc_u32_e32 v53, 0, v74
	ds_load_b64 v[73:74], v50 offset:8192
	v_add_nc_u32_e32 v54, 0, v75
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[65:66], v[63:64], v[26:33] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[63:64], v51
	v_add_nc_u32_e32 v55, 0, v76
	ds_load_b64 v[65:66], v53
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[69:70], v[67:68], v[26:33] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[67:68], v52 offset:8192
	ds_load_b64 v[69:70], v54 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[75:76], v55
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(11)
	ds_store_b32 v37, v77 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v38, v[59:60], v[61:62] offset1:8
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[26:33], v[4:5], v[2:3], v[26:33] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[71:72], v[6:7], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[63:64], v[73:74], v[26:33] neg_lo:[1,1,0]
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v63, 16, v85
	v_lshlrev_b32_e32 v64, 16, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[26:33], v[65:66], v[67:68], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[75:76], v[69:70], v[26:33] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v26
	v_cvt_f32_i32_e32 v3, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v28
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v6, v30
	v_cvt_f32_i32_e32 v7, v31
	v_cvt_f32_i32_e32 v8, v32
	v_cvt_f32_i32_e32 v26, v33
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v27, 16, v78
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v28, 16, v79
	v_lshlrev_b32_e32 v29, 16, v80
	v_lshlrev_b32_e32 v30, 16, v81
	v_lshlrev_b32_e32 v31, 16, v82
	v_lshlrev_b32_e32 v32, 16, v83
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v2, v2, v27 :: v_dual_lshlrev_b32 v33, 16, v84
	v_mul_f32_e32 v3, v3, v27
	v_mul_f32_e32 v4, v4, v27
	v_mul_f32_e32 v5, v5, v27
	v_mul_f32_e32 v6, v6, v27
	v_mul_f32_e32 v7, v7, v27
	v_mul_f32_e32 v8, v8, v27
	v_mul_f32_e32 v65, v26, v27
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v2, v28, 0
	v_fma_f32 v27, v3, v29, 0
	v_fma_f32 v28, v4, v30, 0
	v_fma_f32 v29, v5, v31, 0
	v_fma_f32 v30, v6, v32, 0
	v_fma_f32 v31, v7, v33, 0
	v_fma_f32 v32, v8, v63, 0
	v_fma_f32 v33, v65, v64, 0
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	s_lshl_b32 s1, s34, 7
	v_add3_u32 v2, s28, v58, v12
	v_or_b32_e32 v3, s1, v11
	s_lshl_b32 s0, s34, 8
	s_lshl_b32 s35, s7, 1
	v_or_b32_e32 v5, s1, v39
	v_add3_u32 v4, s35, s0, v56
	s_lshl_b32 s0, s30, 7
	v_mul_lo_u32 v2, s29, v2
	v_subrev_nc_u32_e32 v3, s0, v3
	v_sub_nc_u32_e32 v59, s31, v9
	v_sub_nc_u32_e32 v60, s31, v10
	s_lshl_b32 s1, s30, 8
	v_lshlrev_b32_e32 v57, 1, v57
	v_mad_u64_u32 v[11:12], null, s31, v3, v[10:11]
	v_lshl_add_u32 v56, v2, 1, 2
	v_subrev_nc_u32_e32 v2, s0, v5
	v_add_nc_u32_e32 v3, s28, v13
	v_subrev_nc_u32_e32 v39, s1, v4
	s_add_i32 s30, s33, 0x80
	s_add_i32 s33, s29, -2
	v_mad_u64_u32 v[12:13], null, s31, v2, v[10:11]
	v_mad_u64_u32 v[9:10], null, s31, v3, v[9:10]
	s_mov_b32 s20, s12
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_mov_b32 s24, s14
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s30, v59
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v2, s30, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v5, v57, v39
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s1, s30, v60
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add_nc_u32_e32 v3, s30, v11
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v4, s30, v12
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s1, s3
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v7, v1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s33, s33, -1
	s_add_i32 s30, s30, 64
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b32 v10, v2, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v13, v56, s[20:23], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v58, v5, s[24:27], 0 offen
	buffer_load_u16 v85, v5, s[24:27], 0 offen offset:4
	buffer_load_u16 v86, v5, s[24:27], 0 offen offset:8
	buffer_load_u16 v87, v5, s[24:27], 0 offen offset:12
	buffer_load_u16 v88, v5, s[24:27], 0 offen offset:16
	buffer_load_u16 v89, v5, s[24:27], 0 offen offset:20
	buffer_load_u16 v90, v5, s[24:27], 0 offen offset:24
	buffer_load_u16 v91, v5, s[24:27], 0 offen offset:28
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v2, 0x80000000, v3, s0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v5, v1
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v3, 0x80000000, v4, s0
	s_clause 0x1
	buffer_load_b64 v[69:70], v2, s[16:19], 0 offen
	buffer_load_b64 v[71:72], v3, s[16:19], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v39, s35, v39
	v_mov_b32_e32 v6, v1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v56, 2, v56
	s_cmp_lg_u32 s33, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt vmcnt(10)
	v_dual_mov_b32 v68, v8 :: v_dual_lshlrev_b32 v13, 16, v13
	v_dual_mov_b32 v67, v7 :: v_dual_mov_b32 v66, v6
	v_dual_mov_b32 v65, v5 :: v_dual_mov_b32 v64, v4
	v_dual_mov_b32 v63, v3 :: v_dual_mov_b32 v62, v2
	v_mov_b32_e32 v61, v1
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[2:3], v41
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[4:5], v40 offset:8192
	ds_load_b64 v[6:7], v42 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[73:74], v43
	ds_load_b64 v[75:76], v45
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[77:78], v44 offset:8192
	ds_load_b64 v[79:80], v46 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[81:82], v47
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[83:84], v48 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[2:3], v[4:5], v[61:68] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[2:3], v49
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[4:5], v50 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[73:74], v[6:7], v[61:68] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[6:7], v51
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[73:74], v52 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[75:76], v[77:78], v[61:68] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[75:76], v53
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[77:78], v54 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[81:82], v[79:80], v[61:68] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[79:80], v55
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v37, v10 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v38, v[69:70], v[71:72] offset1:8
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[61:68], v[2:3], v[83:84], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[6:7], v[4:5], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[75:76], v[73:74], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[79:80], v[77:78], v[61:68] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v5, v64
	v_cvt_f32_i32_e32 v2, v61
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v63
	v_cvt_f32_i32_e32 v6, v65
	v_cvt_f32_i32_e32 v7, v66
	v_cvt_f32_i32_e32 v8, v67
	v_cvt_f32_i32_e32 v61, v68
	v_dual_mul_f32 v3, v3, v13 :: v_dual_lshlrev_b32 v58, 16, v58
	v_dual_mul_f32 v5, v5, v13 :: v_dual_lshlrev_b32 v64, 16, v87
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v62, 16, v85
	v_lshlrev_b32_e32 v63, 16, v86
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v4, v4, v13 :: v_dual_lshlrev_b32 v65, 16, v88
	v_dual_mul_f32 v6, v6, v13 :: v_dual_lshlrev_b32 v67, 16, v90
	v_dual_mul_f32 v7, v7, v13 :: v_dual_lshlrev_b32 v68, 16, v91
	v_dual_mul_f32 v2, v2, v13 :: v_dual_fmac_f32 v29, v5, v64
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v27, v3, v62 :: v_dual_lshlrev_b32 v66, 16, v89
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v8, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v13, v61, v13 :: v_dual_fmac_f32 v26, v2, v58
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v28, v4, v63
	v_dual_fmac_f32 v30, v6, v65 :: v_dual_fmac_f32 v31, v7, v66
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v32, v8, v67 :: v_dual_fmac_f32 v33, v13, v68
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_mov_b32_e32 v7, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_and_b32_e32 v1, 56, v34
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_or_b32 v13, 0x438, v34, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_or3_b32 v15, v36, v1, v35
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v5, 0, v13
	v_xad_u32 v1, v13, 24, 0
	v_xad_u32 v2, v13, 16, 0
	v_xad_u32 v3, v13, 8, 0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v4, 0, v15
	v_xad_u32 v8, v15, 8, 0
	v_xad_u32 v6, v15, 24, 0
	v_xad_u32 v7, v15, 16, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v46, v13, 32, 0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[9:10], v4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[11:12], v5 offset:8192
	ds_load_b64 v[34:35], v1 offset:8192
	ds_load_b64 v[36:37], v2 offset:8192
	ds_load_b64 v[38:39], v3 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[40:41], v8
	ds_load_b64 v[42:43], v6
	ds_load_b64 v[44:45], v7
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v1, 0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v48, v15, 32, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v49, v13, 40, 0
	ds_load_b64 v[46:47], v46 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v50, v15, 40, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	s_waitcnt lgkmcnt(7)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[9:10], v48
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[11:12], v49 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v48, v15, 48, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v49, v13, 48, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[40:41], v[38:39], v[1:8] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[38:39], v50
	ds_load_b64 v[40:41], v48
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v13, v13, 56, 0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xad_u32 v15, v15, 56, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[44:45], v[36:37], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[36:37], v49 offset:8192
	ds_load_b64 v[44:45], v13 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[48:49], v15
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[42:43], v[34:35], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[46:47], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[38:39], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[40:41], v[36:37], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[48:49], v[44:45], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v15, v1
	v_cvt_f32_i32_e32 v1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v3
	v_cvt_f32_i32_e32 v3, v4
	v_cvt_f32_i32_e32 v4, v5
	v_cvt_f32_i32_e32 v5, v6
	v_cvt_f32_i32_e32 v6, v7
	v_cvt_f32_i32_e32 v7, v8
.LBB0_6:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v8, s29, v25
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s0, s29, -1
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s1, s28, s29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s0, s0, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s9, s13, 0xffff
	.loc	1 178 26 is_stmt 0              ; generate_amdgcn.py:178:26
	s_add_i32 s1, s1, s0
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s0, s0, s7
	s_mov_b32 s11, 0x31027000
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v8, s1, v8, 1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s6, s0
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 179 18 is_stmt 0              ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v9, s0, v22, 1
	v_add_lshl_u32 v10, s0, v24, 1
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	s_mov_b32 s8, s12
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v11, s0, v23, 1
	v_add_lshl_u32 v12, s0, v21, 1
	v_add_lshl_u32 v13, s0, v20, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v19, s0, v19, 1
	v_add_lshl_u32 v18, s0, v18, 1
	v_add_lshl_u32 v17, s0, v17, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	s_clause 0x7
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v22, 0x7632
	v_mov_b16_e32 v20.h, 0
	v_dual_mov_b32 v21, 0x5410 :: v_dual_and_b32 v0, 16, v0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v16, v16, s7
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v23.h, v20.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b16_e32 v25.h, v20.h
	v_mov_b16_e32 v24.h, v20.h
	v_mov_b16_e32 v34.h, v20.h
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s7, s11
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v1, v1, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v9, 16, v9
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v10, 16, v10
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v1, v1, v10, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v27, v1, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v1, v1, v1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v2, v2, v8 :: v_dual_lshlrev_b32 v11, 16, v11
	v_dual_mul_f32 v6, v6, v8 :: v_dual_lshlrev_b32 v19, 16, v19
	v_mul_f32_e32 v15, v15, v8
	v_dual_mul_f32 v4, v4, v8 :: v_dual_lshlrev_b32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v11, v28
	v_fma_f32 v6, v6, v18, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v4, v4, v13, v30
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v28, v2, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v3, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v32, v6, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v5, v5, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v30, v4, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v2, v2, v2 :: v_dual_mul_f32 v7, v7, v8
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v15, v9, v26
	v_fma_f32 v3, v3, v12, v29
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v6, v6, v6
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v19, v31
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v2, 0, v2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v26, v8, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v29, v3, s2
	v_cndmask_b32_e64 v5, v31, v5, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v8, v8, v8
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v17, v33
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v5, v5, v5
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v4, 0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v33, v7, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v6, 0, v6 :: v_dual_mul_f32 v1, v1, v1
	v_max_f32_e32 v7, v7, v7
	v_dual_max_f32 v5, 0, v5 :: v_dual_mul_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v8, v8, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v20.l, v1.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v3, v3, v3 :: v_dual_mul_f32 v6, v6, v6
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v7, 0, v7 :: v_dual_mul_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v23.l, v8.h
	v_and_b32_e32 v9, 1, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v20.l, v3.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v5, v5, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v25.l, v4.h
	v_and_b32_e32 v10, 1, v23
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v7, v7, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v20
	v_mov_b16_e32 v20.l, v5.h
	v_and_b32_e32 v12, 1, v25
	v_add3_u32 v8, v8, v10, 0x7fff
	v_mov_b16_e32 v24.l, v2.h
	v_add3_u32 v1, v1, v9, 0x7fff
	v_dual_cndmask_b32 v9, 0x1054, v21 :: v_dual_and_b32 v10, 1, v20
	v_add3_u32 v4, v4, v12, 0x7fff
	v_mov_b16_e32 v1.l, v8.h
	v_mov_b16_e32 v34.l, v6.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v5, v5, v10, 0x7fff
	v_cndmask_b32_e32 v10, 0x3276, v22, vcc_lo
	v_mov_b16_e32 v5.l, v4.h
	v_and_b32_e32 v0, 1, v24
	v_add3_u32 v3, v3, v11, 0x7fff
	v_mov_b16_e32 v20.l, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v8, v5, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v5, vcc_lo
	v_add3_u32 v0, v2, v0, 0x7fff
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v3.l, v0.h
	v_and_b32_e32 v4, 1, v34
	v_add3_u32 v2, v6, v4, 0x7fff
	v_and_b32_e32 v4, 1, v20
	v_lshl_or_b32 v6, v9, 8, v9
	v_lshl_or_b32 v9, v10, 8, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v0, v7, v4, 0x7fff
	v_and_b32_e32 v4, 0x540054, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v6, 0x760076, v9
	v_mov_b16_e32 v0.l, v2.h
	v_lshl_or_b32 v2, v4, 4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v4, v6, 4, v6
	v_cndmask_b32_e32 v5, v3, v0, vcc_lo
	v_cndmask_b32_e32 v3, v0, v3, vcc_lo
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_and_or_b32 v6, 0x78, v14, s6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v2, 0x5040504, v2
	v_and_b32_e32 v4, 0x7060706, v4
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s6, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v0, v1, v8, v2
	v_perm_b32 v1, v1, v8, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v2, v5, v3, v2
	v_perm_b32 v3, v5, v3, v4
	v_add_lshl_u32 v4, v6, v16, 1
	buffer_store_b128 v[0:3], v4, s[4:7], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 92
		.amdhsa_next_free_sgpr 36
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
		.amdhsa_inst_pref_size 34
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 92
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4272
; TotalNumSgprs: 38
; NumVgprs: 92
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 38
; NumVGPRsForWavesPerEU: 92
; Occupancy: 16
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     92
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
