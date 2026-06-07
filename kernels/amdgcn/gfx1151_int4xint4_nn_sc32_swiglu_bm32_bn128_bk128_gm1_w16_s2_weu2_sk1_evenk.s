	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v7, 2, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v3, 5, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v26, 15, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v10, 0x17f, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v9, 1, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v46, 0, v7
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr31
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr44
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v27, 0x70, v9
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
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
	s_sub_i32 s19, s8, s11
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s6, s19
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s19, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s6, s6, 1
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s16, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_f32_u32 s17, s16
	v_rcp_iflag_f32_e32 v1, s17
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_readfirstlane_b32 s17, v1
	s_sub_i32 s10, 0, s16
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v1, 0x7c, v7
	s_mov_b32 s11, 0x31027000
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s31, s11
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s17, s17
	s_mul_i32 s10, s10, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s17, s10
	s_abs_i32 s10, s2
	s_add_i32 s17, s17, s5
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s6
	s_mul_i32 s18, s5, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s18, s10, s18
	s_add_i32 s20, s5, 1
	s_sub_i32 s21, s18, s16
	s_cmp_ge_u32 s18, s16
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s20, s5
	s_cselect_b32 s18, s21, s18
	s_add_i32 s20, s5, 1
	s_cmp_ge_u32 s18, s16
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s5, s20, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s20, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s4, 31
.Ltmp13:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s18, s5, s17
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s20
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s5, s21, 31
.Ltmp15:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s22, s18, s17
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s35, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s4, s5, 27
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s5, s22, s6
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s33, s7, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s5
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s16, s3, 4
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s19
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[5:6], null, s33, v3, v[1:2]
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s27, s2, 5
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v4, s16, v26
	v_or_b32_e32 v8, s16, v3
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_or_b32_e32 v6, s27, v2
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s20, s33, s16
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s26, s22, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s22, s21, s4
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s6, s35, v4
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s4, 16, v4
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e32 vcc_lo, s35, v8
	.loc	1 156 51                        ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s5, 16, v8
	.loc	1 166 34 is_stmt 1              ; generate_amdgcn.py:166:34
	v_add3_u32 v8, s26, s20, v5
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[4:5], null, v6, s35, v[4:5]
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s34, s22, 5
.Ltmp21:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s21, 31
	.loc	1 174 43                        ; generate_amdgcn.py:174:43
	v_add_nc_u32_e32 v5, s7, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s6, s4, s6
	s_and_b32 s19, s5, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s6
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	v_dual_cndmask_b32 v6, 0x80000000, v8 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u8 v8, v4, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1
	buffer_load_b32 v6, v6, s[28:31], 0 offen
	buffer_load_b32 v5, v5, s[28:31], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_bfe_i32 v4, v0, 7, 1
	v_or_b32_e32 v45, v27, v26
	s_mov_b32 s6, -1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s21, 63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v4, 0x88, v4
	v_xor_b32_e32 v4, v4, v10
	v_and_b32_e32 v10, 0x108, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v47, 0, v4
	v_lshl_or_b32 v4, v26, 4, v10
	s_waitcnt vmcnt(2)
	ds_store_b8 v47, v8 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v46, v6, v5 offset1:8
                                        ; implicit-def: $vgpr6
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_or_b32_e32 v6, v27, v26
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v30, 0x80, v6
	v_or_b32_e32 v31, 0x100, v6
	v_or_b32_e32 v32, 0x180, v6
	v_or_b32_e32 v33, 0x200, v6
	v_or_b32_e32 v34, 0x280, v6
	v_or_b32_e32 v35, 0x300, v6
	v_or_b32_e32 v36, 0x380, v6
	v_or_b32_e32 v37, 0x400, v6
	v_or_b32_e32 v38, 0x480, v6
	v_or_b32_e32 v39, 0x500, v6
	v_or_b32_e32 v40, 0x580, v6
	v_or_b32_e32 v41, 0x600, v6
	v_or_b32_e32 v42, 0x680, v6
	v_or_b32_e32 v43, 0x700, v6
	v_or_b32_e32 v44, 0x780, v6
.LBB0_2:                                ; %Flow190
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_xor_b32_e32 v5, 8, v4
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v28, 16, v2
	v_bfe_u32 v29, v0, 4, 1
	v_dual_mov_b32 v13, 0 :: v_dual_add_nc_u32 v48, 0, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v49, 0, v5
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_mov_b32_e32 v10, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_add_i32 s1, s34, -1
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v4, 1, v3
	v_sub_nc_u32_e32 v50, s35, v3
	v_add3_u32 v3, s27, v28, v26
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v5, 0xe0, v0
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v2, s27, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v3, s34, v3
	v_lshl_or_b32 v5, s18, 8, v5
	s_add_i32 s45, s16, 16
	v_lshl_or_b32 v4, s3, 5, v4
	s_lshl_b32 s6, s17, 8
	v_or_b32_e32 v30, 0x80, v45
	v_subrev_nc_u32_e32 v53, s6, v5
	v_or_b32_e32 v31, 0x100, v45
	v_lshlrev_b32_e32 v54, 1, v3
	v_mad_u64_u32 v[2:3], null, s35, v2, s[16:17]
	s_mov_b32 s16, 0
	s_lshl_b32 s17, s17, 7
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v7, s33, v5
	v_add3_u32 v57, v2, v26, 16
	v_or_b32_e32 v32, 0x180, v45
	v_or_b32_e32 v33, 0x200, v45
	v_or_b32_e32 v34, 0x280, v45
	v_subrev_nc_u32_e32 v52, s6, v7
	s_lshl_b32 s6, s18, 7
	s_mov_b32 s18, s16
	v_add_nc_u32_e32 v6, 33, v4
	v_add_nc_u32_e32 v4, 32, v4
	v_or_b32_e32 v35, 0x300, v45
	v_or_b32_e32 v36, 0x380, v45
	v_or_b32_e32 v37, 0x400, v45
	v_mul_lo_u32 v6, s7, v6
	v_mul_lo_u32 v4, s7, v4
	v_or_b32_e32 v38, 0x480, v45
	v_or_b32_e32 v39, 0x500, v45
	v_or_b32_e32 v40, 0x580, v45
	v_or_b32_e32 v41, 0x600, v45
	v_or_b32_e32 v42, 0x680, v45
	v_or_b32_e32 v43, 0x700, v45
	v_add3_u32 v5, v6, s6, v1
	v_add3_u32 v1, v4, s6, v1
	v_or_b32_e32 v44, 0x780, v45
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v58, s45, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v55, s17, v5
	v_subrev_nc_u32_e32 v56, s17, v1
	s_mov_b32 s17, s16
	v_mov_b32_e32 v1, s16
	v_dual_mov_b32 v2, s17 :: v_dual_lshlrev_b32 v51, 1, v29
	v_dual_mov_b32 v6, s21 :: v_dual_add_nc_u32 v59, 0, v45
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_mov_b32_e32 v5, s20
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_mov_b32_e32 v14, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_max_i32 s0, s1, 1
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s3, s7, 2
	s_lshl_b32 s6, s0, 4
	s_lshl_b32 s44, s7, 5
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_4:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_add_nc_u32_e32 v60, s16, v58
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	s_add_i32 s0, s45, s16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v61, s16, v57
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e32 vcc_lo, s0, v50
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v63, v51, v52
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s0, s35, v60
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s16, s16, 16
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s5
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v62, v51, v53
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s6, s16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v60, 0x80000000, v61, s0
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e32 v61, 0x80000000, v55, vcc_lo
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u8 v86, v60, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v87, v54, s[36:39], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0xf
	buffer_load_u16 v88, v62, s[40:43], 0 offen offset:4
	buffer_load_u16 v89, v62, s[40:43], 0 offen offset:24
	buffer_load_u16 v90, v62, s[40:43], 0 offen offset:16
	buffer_load_u16 v91, v62, s[40:43], 0 offen offset:8
	buffer_load_u16 v92, v62, s[40:43], 0 offen
	buffer_load_u16 v93, v63, s[40:43], 0 offen offset:4
	buffer_load_u16 v94, v63, s[40:43], 0 offen offset:24
	buffer_load_u16 v95, v63, s[40:43], 0 offen offset:16
	buffer_load_u16 v96, v63, s[40:43], 0 offen offset:8
	buffer_load_u16 v97, v63, s[40:43], 0 offen
	buffer_load_u16 v98, v62, s[40:43], 0 offen offset:12
	buffer_load_u16 v99, v63, s[40:43], 0 offen offset:12
	buffer_load_u16 v100, v62, s[40:43], 0 offen offset:20
	buffer_load_u16 v101, v63, s[40:43], 0 offen offset:20
	buffer_load_u16 v102, v62, s[40:43], 0 offen offset:28
	buffer_load_u16 v103, v63, s[40:43], 0 offen offset:28
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e32 v60, 0x80000000, v56, vcc_lo
	s_clause 0x1
	buffer_load_b32 v104, v60, s[28:31], 0 offen
	buffer_load_b32 v105, v61, s[28:31], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v60, v59 offset:640
	ds_load_u8 v61, v59 offset:896
	ds_load_u8 v62, v59 offset:768
	ds_load_u8 v63, v59 offset:512
	ds_load_u8 v64, v59 offset:128
	ds_load_u8 v65, v59 offset:384
	ds_load_u8 v66, v59 offset:256
	ds_load_u8 v67, v59
	ds_load_u8 v68, v59 offset:1664
	ds_load_u8 v69, v59 offset:1920
	ds_load_u8 v70, v59 offset:1792
	ds_load_u8 v71, v59 offset:1536
	ds_load_u8 v72, v59 offset:1152
	ds_load_u8 v73, v59 offset:1408
	ds_load_u8 v74, v59 offset:1280
	ds_load_u8 v75, v59 offset:1024
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v80, v59 offset:2688
	ds_load_u8 v81, v59 offset:2944
	ds_load_u8 v82, v59 offset:2816
	ds_load_u8 v83, v59 offset:2560
	ds_load_u8 v84, v59 offset:2176
	ds_load_u8 v85, v59 offset:2432
	ds_load_u8 v106, v59 offset:2304
	ds_load_u8 v107, v59 offset:2048
	ds_load_u8 v108, v59 offset:3712
	ds_load_u8 v109, v59 offset:3968
	ds_load_u8 v110, v59 offset:3840
	ds_load_u8 v111, v59 offset:3584
	ds_load_u8 v112, v59 offset:3200
	ds_load_u8 v113, v59 offset:3328
	ds_load_u8 v114, v59 offset:3456
	ds_load_u8 v115, v59 offset:3072
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[76:77], v48 offset:4096
	ds_load_b64 v[78:79], v49 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v60, v63, v60, 0xc0c0004
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v62, v67, v64, 0xc0c0004
	v_perm_b32 v63, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v64, v71, v68, 0xc0c0004
	v_perm_b32 v65, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v66, v75, v72, 0xc0c0004
	v_perm_b32 v67, v74, v73, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v70, v83, v80, 0xc0c0004
	v_perm_b32 v71, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v72, v107, v84, 0xc0c0004
	v_perm_b32 v73, v106, v85, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v69, v61, 16, v60
	v_lshl_or_b32 v68, v63, 16, v62
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v74, v111, v108, 0xc0c0004
	v_perm_b32 v75, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v106, v113, v114, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v84, v115, v112, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v81, v65, 16, v64
	v_lshl_or_b32 v80, v67, 16, v66
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v83, v71, 16, v70
	v_lshl_or_b32 v82, v73, 16, v72
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[60:67], v[68:69], v[76:77], v[1:8] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v85, v75, 16, v74
	v_lshl_or_b32 v84, v106, 16, v84
	v_wmma_i32_16x16x16_iu4 v[68:75], v[82:83], v[76:77], v[1:8] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[60:67], v[80:81], v[78:79], v[60:67] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[68:75], v[84:85], v[78:79], v[68:75] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(19)
	ds_store_b8 v47, v86 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v46, v104, v105 offset1:8
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v77, 16, v88
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v76, 16, v87
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v61, v76, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v25, v61, v77
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v70, v76, v70 :: v_dual_add_nc_u32 v55, s44, v55
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v65, v76, v65 :: v_dual_lshlrev_b32 v78, 16, v92
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v75, v76, v75 :: v_dual_lshlrev_b32 v84, 16, v96
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v60, v76, v60
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v69, v76, v69 :: v_dual_add_nc_u32 v52, s3, v52
	v_dual_mul_f32 v68, v76, v68 :: v_dual_add_nc_u32 v53, s3, v53
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v63, v76, v63 :: v_dual_add_nc_u32 v56, s44, v56
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v71, v76, v71 :: v_dual_add_nc_u32 v54, 2, v54
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v79, 16, v93
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v67, v76, v67 :: v_dual_lshlrev_b32 v80, 16, v97
	v_dual_mul_f32 v64, v76, v64 :: v_dual_lshlrev_b32 v81, 16, v98
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v73, v76, v73 :: v_dual_lshlrev_b32 v82, 16, v91
	v_dual_mul_f32 v72, v76, v72 :: v_dual_lshlrev_b32 v83, 16, v99
	v_dual_mul_f32 v74, v76, v74 :: v_dual_lshlrev_b32 v85, 16, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v22, v63, v81 :: v_dual_lshlrev_b32 v87, 16, v90
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v19, v70, v84 :: v_dual_lshlrev_b32 v90, 16, v95
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v18, v65, v85 :: v_dual_lshlrev_b32 v91, 16, v102
	v_dual_fmac_f32 v24, v60, v78 :: v_dual_lshlrev_b32 v89, 16, v89
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v15, v72, v90 :: v_dual_lshlrev_b32 v92, 16, v103
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v62, v76, v62
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v88, 16, v101
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v66, v76, v66
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v93, 16, v94
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v11, v67, v91 :: v_dual_fmac_f32 v10, v68, v80
	v_fmac_f32_e32 v21, v62, v82
	v_dual_fmac_f32 v17, v64, v87 :: v_dual_fmac_f32 v16, v73, v88
	v_dual_fmac_f32 v14, v66, v89 :: v_dual_fmac_f32 v23, v69, v79
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v12, v74, v93
	v_fmac_f32_e32 v20, v71, v83
	v_fmac_f32_e32 v13, v75, v92
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v6, v45
.LBB0_6:                                ; %._crit_edge
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[3:4], v48 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_b64 v[1:2], v49 offset:4096
	v_cndmask_b32_e64 v7, 0, 1, s2
	v_dual_mov_b32 v5, 0 :: v_dual_add_nc_u32 v46, 0, v44
	v_add_nc_u32_e32 v43, 0, v43
	v_add_nc_u32_e32 v48, 0, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v7
	v_add_nc_u32_e32 v49, 0, v41
	v_add_nc_u32_e32 v44, 0, v40
	v_add_nc_u32_e32 v45, 0, v39
	v_add_nc_u32_e32 v42, 0, v38
	v_add_nc_u32_e32 v47, 0, v37
	v_add_nc_u32_e32 v54, 0, v36
	v_add_nc_u32_e32 v50, 0, v35
	v_add_nc_u32_e32 v56, 0, v34
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v57, 0, v33
	v_add_nc_u32_e32 v52, 0, v32
	v_add_nc_u32_e32 v53, 0, v31
	v_add_nc_u32_e32 v51, 0, v30
	v_add_nc_u32_e32 v55, 0, v6
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v32, 0
	v_mov_b32_e32 v6, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v6, v56
	ds_load_u8 v7, v57
	ds_load_u8 v8, v54
	ds_load_u8 v30, v55
	ds_load_u8 v32, v52
	ds_load_u8 v33, v53
	ds_load_u8 v34, v50
	ds_load_u8 v35, v51
	ds_load_u8 v39, v48
	ds_load_u8 v40, v49
	ds_load_u8 v41, v46
	ds_load_u8 v58, v47
	ds_load_u8 v59, v44
	ds_load_u8 v60, v45
	ds_load_u8 v61, v43
	ds_load_u8 v62, v42
	v_mov_b32_e32 v31, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v36, v31
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_mov_b32_e32 v37, v31
	v_mov_b32_e32 v38, v31
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v7, v34, v8, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v30, v35, 0xc0c0004
	v_perm_b32 v30, v33, v32, 0xc0c0004
	v_mov_b32_e32 v32, v31
	v_mov_b32_e32 v33, v31
	v_mov_b32_e32 v34, v31
	v_lshl_or_b32 v7, v7, 16, v6
	v_lshl_or_b32 v6, v30, 16, v8
	v_mov_b32_e32 v35, v31
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v8, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v30, v61, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v58, v62, 0xc0c0004
	v_perm_b32 v40, v60, v59, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[31:38], v[6:7], v[3:4], v[31:38] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v30, 16, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v6, v40, 16, v39
	v_wmma_i32_16x16x16_iu4 v[31:38], v[6:7], v[1:2], v[31:38] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v7, v31
	v_cvt_f32_i32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v31, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v6, v35
	v_cvt_f32_i32_e32 v30, v36
	v_cvt_f32_i32_e32 v8, v37
	v_cvt_f32_i32_e32 v33, v38
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_mov_b32_e32 v41, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	ds_load_u8 v5, v56 offset:2048
	ds_load_u8 v35, v57 offset:2048
	ds_load_u8 v36, v54 offset:2048
	ds_load_u8 v37, v55 offset:2048
	ds_load_u8 v39, v52 offset:2048
	ds_load_u8 v40, v53 offset:2048
	ds_load_u8 v41, v50 offset:2048
	ds_load_u8 v50, v51 offset:2048
	ds_load_u8 v48, v48 offset:2048
	ds_load_u8 v49, v49 offset:2048
	ds_load_u8 v46, v46 offset:2048
	ds_load_u8 v47, v47 offset:2048
	ds_load_u8 v51, v44 offset:2048
	ds_load_u8 v52, v45 offset:2048
	ds_load_u8 v53, v43 offset:2048
	ds_load_u8 v54, v42 offset:2048
	v_mov_b32_e32 v38, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v43, v38
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v5, v35, v5, 0xc0c0004
	v_mov_b32_e32 v44, v38
	v_mov_b32_e32 v45, v38
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v42, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v35, v41, v36, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v37, v37, v50, 0xc0c0004
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v40, v38
	v_mov_b32_e32 v41, v38
	v_lshl_or_b32 v36, v35, 16, v5
	v_lshl_or_b32 v35, v42, 16, v37
	v_mov_b32_e32 v42, v38
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v5, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v53, v46, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v54, 0xc0c0004
	v_perm_b32 v47, v52, v51, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[38:45], v[35:36], v[3:4], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v37, 16, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v3, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[38:45], v[3:4], v[1:2], v[38:45] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v5, v38
	v_cvt_f32_i32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v38, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v35, v42
	v_cvt_f32_i32_e32 v37, v43
	v_cvt_f32_i32_e32 v36, v44
	v_cvt_f32_i32_e32 v40, v45
.LBB0_10:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v2, v28, v26
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v1, v29, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s0, s27, s34
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s1, s33
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v3, s34, v2
	s_add_i32 s0, s0, s1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s1, s26, s3
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v4, 2, v1
	v_or_b32_e32 v26, 4, v1
	v_or_b32_e32 v27, 6, v1
	v_or_b32_e32 v28, 8, v1
	v_or_b32_e32 v29, 10, v1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v3, s0, v3, 1
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_add_i32 s0, s1, s7
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v42, 12, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v43, s1, v1, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v44, 14, v1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v1, s0, v1, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v45, s1, v4, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v4, s0, v4, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v46, s1, v26, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v26, s0, v26, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v47, s1, v27, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v27, s0, v27, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s9, s13, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s12
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v49, s1, v29, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_add_lshl_u32 v29, s0, v29, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v48, s1, v28, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_add_lshl_u32 v28, s0, v28, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	v_add_lshl_u32 v51, s1, v44, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v50, s1, v42, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x3
	buffer_load_u16 v52, v1, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	v_add_lshl_u32 v1, s0, v42, 1
	v_add_lshl_u32 v42, s0, v44, 1
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v44, 0x80000000, v51, s2
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x5
	buffer_load_u16 v29, v29, s[8:11], 0 offen
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	buffer_load_u16 v44, v44, s[8:11], 0 offen
	buffer_load_u16 v50, v50, s[8:11], 0 offen
	buffer_load_u16 v42, v42, s[8:11], 0 offen
	buffer_load_u16 v51, v1, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	s_clause 0x5
	buffer_load_u16 v43, v43, s[8:11], 0 offen
	buffer_load_u16 v45, v45, s[8:11], 0 offen
	buffer_load_u16 v46, v46, s[8:11], 0 offen
	buffer_load_u16 v47, v47, s[8:11], 0 offen
	buffer_load_u16 v48, v48, s[8:11], 0 offen
	buffer_load_u16 v49, v49, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v54, 0x7632
	v_mov_b16_e32 v1.h, 0
	v_dual_mov_b32 v53, 0x5410 :: v_dual_and_b32 v0, 16, v0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_or_b32_e32 v2, s27, v2
	s_mov_b32 s8, 0x76543210
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.h, v1.h
	v_mov_b16_e32 v56.h, v1.h
	v_mov_b16_e32 v55.h, v1.h
	v_mov_b16_e32 v58.h, v1.h
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, s11
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(14)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v7, v7, v3 :: v_dual_lshlrev_b32 v4, 16, v4
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v35, v35, v3
	v_mul_f32_e32 v40, v40, v3
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v31, v31, v3 :: v_dual_lshlrev_b32 v26, 16, v26
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v32, v32, v3 :: v_dual_lshlrev_b32 v29, 16, v29
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v38, v38, v3
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v37, v37, v3 :: v_dual_lshlrev_b32 v28, 16, v28
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v5, v5, v3 :: v_dual_lshlrev_b32 v46, 16, v46
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v41, v41, v3 :: v_dual_lshlrev_b32 v48, 16, v48
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v34, v34, v3 :: v_dual_lshlrev_b32 v49, 16, v49
	v_dual_mul_f32 v33, v33, v3 :: v_dual_lshlrev_b32 v50, 16, v50
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v39, v39, v3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v30, v30, v3
	v_mul_f32_e32 v6, v6, v3
	v_mul_f32_e32 v8, v8, v3
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v3, v36, v3
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v28, v35, v28, v15
	v_fma_f32 v35, v40, v42, v13
	v_fma_f32 v4, v39, v4, v23
	v_fma_f32 v27, v41, v27, v20
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v8, v50, v14
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v38, v26, v19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v13, v35, s2
	v_cndmask_b32_e64 v4, v23, v4, s2
	v_cndmask_b32_e64 v20, v20, v27, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v14, v8, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v27, 0xbfb8aa3b, v13 :: v_dual_mul_f32 v14, 0xbfb8aa3b, v4
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v29, v37, v29, v16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v19, v26, s2
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v5, v5, v52, v10
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v27
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v34, v34, v47, v22
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v16, v29, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v27, 0, 0x42800000, s5
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v10, v5, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v3, v3, v51, v12
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v13
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v48, v17
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v22, v34, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v20
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v32, v32, v45, v25
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v17, v6, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v17, 0xbfb8aa3b, v19
	v_exp_f32_e32 v14, v14
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v31, v46, v21
	v_fma_f32 v30, v30, v49, v18
	v_fma_f32 v33, v33, v44, v11
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v15, v28, s2
	v_cndmask_b32_e64 v3, v12, v3, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v12, 0xbfb8aa3b, v5
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v43, v24
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v27, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v25, v32, s2
	v_cndmask_b32_e64 v7, v24, v7, s2
	v_cndmask_b32_e64 v21, v21, v31, s2
	v_cndmask_b32_e64 v18, v18, v30, s2
	v_cndmask_b32_e64 v11, v11, v33, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v12
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v17
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s5
	v_ldexp_f32 v14, v14, v28
	v_cndmask_b32_e64 v12, 0, 0x42800000, s0
	v_mul_f32_e32 v23, 0xbfb8aa3b, v15
	v_cndmask_b32_e64 v17, 0, 0x42800000, s2
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v24
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v20
	v_ldexp_f32 v27, v27, v34
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v5
	v_cndmask_b32_e64 v24, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v23
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v19
	v_exp_f32_e32 v22, v22
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v14, v14, v4
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v23, 0, 0x42800000, s4
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v43, v28
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v15
	v_ldexp_f32 v22, v22, v30
	v_exp_f32_e32 v24, v24
	v_exp_f32_e32 v12, v12
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s0
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s4
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v40, null, v27, v27, v13
	v_fma_f32 v52, -v28, v43, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v24, v24, v32
	s_delay_alu instid0(TRANS32_DEP_3)
	v_ldexp_f32 v12, v12, v29
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v43, v52, v43
	v_div_scale_f32 v32, null, v22, v22, v20
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v23, v23, v33
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v49, v40
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v45, v32
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_add_f32 v23, 1.0, v23
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v29, vcc_lo, v4, v14, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v17, v17, v31
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v30, null, v12, v12, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v38, null, v23, v23, v15
	v_fma_f32 v60, -v32, v45, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v64, -v40, v49, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v48, v38
	v_fmac_f32_e32 v45, v60, v45
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v26
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v49, v64, v49
	v_div_scale_f32 v34, null, v17, v17, v19
	v_div_scale_f32 v39, s4, v15, v23, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v26, 0, 0x42800000, s6
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v46, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v38, v48, 1.0
	v_rcp_f32_e32 v44, v30
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v31, s0, v5, v12, v5
	v_fmac_f32_e32 v48, v63, v48
	v_div_scale_f32 v33, s1, v20, v22, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v26, v26
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v61, -v34, v46, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v63, v39, v48
	v_fma_f32 v59, -v30, v44, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v41, s5, v13, v27, v13
	v_fmac_f32_e32 v46, v61, v46
	v_fma_f32 v71, -v38, v63, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v36, null, v24, v24, v16
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v26, v26, v35
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v35, s2, v19, v17, v19
	v_mul_f32_e32 v52, v29, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v47, v36
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v61, v35, v46
	v_fma_f32 v66, -v28, v52, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v42, null, v26, v26, v3
	v_fma_f32 v69, -v34, v61, v35
	v_fmac_f32_e32 v44, v59, v44
	v_div_scale_f32 v51, s6, v3, v26, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v50, v42
	v_fmac_f32_e32 v61, v69, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v59, v31, v44 :: v_dual_fmac_f32 v52, v66, v43
	v_fma_f32 v62, -v36, v47, 1.0
	v_fma_f32 v67, -v30, v59, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v28, v52, v29
	v_fmac_f32_e32 v47, v62, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v42, v50, 1.0
	v_div_scale_f32 v37, s3, v16, v24, v16
	v_fmac_f32_e32 v59, v67, v44
	v_div_fmas_f32 v28, v28, v43, v52
	v_fmac_f32_e32 v50, v65, v50
	v_mul_f32_e32 v60, v33, v45
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v29, -v30, v59, v31
	v_fma_f32 v31, -v34, v61, v35
	v_mul_f32_e32 v65, v51, v50
	v_fma_f32 v68, -v32, v60, v33
	v_div_fixup_f32 v4, v28, v14, v4
	v_div_fmas_f32 v29, v29, v44, v59
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v73, -v42, v65, v51
	v_fmac_f32_e32 v60, v68, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v5, v29, v12, v5
	v_mul_f32_e32 v62, v37, v47
	v_fmac_f32_e32 v65, v73, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v30, -v32, v60, v33
	v_fmac_f32_e32 v63, v71, v48
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v5, v7, v5
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v70, -v36, v62, v37
	v_fma_f32 v35, -v42, v65, v51
	v_div_fmas_f32 v30, v30, v45, v60
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v33, -v38, v63, v39
	v_div_fmas_f32 v14, v31, v46, v61
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v20, v30, v22, v20
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v55.l, v5.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v64, v41, v49
	v_div_fixup_f32 v14, v14, v17, v19
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v10, v10, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v14, v21, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v56.l, v14.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v62, v70, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v36, v62, v37
	v_div_fmas_f32 v12, v32, v47, v62
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v22, v33, v48, v63
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v12, v12, v24, v16
	v_div_fixup_f32 v15, v22, v23, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v6, v6, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v15, 1, v55
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v72, -v40, v64, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.l, v6.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v5, v5, v15, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v64, v72, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v15, 1, v57
	v_cmp_o_f32_e64 s2, v14, v14
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v34, -v40, v64, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v7, v34, v49, v64
	s_mov_b32 vcc_lo, s6
	v_div_fmas_f32 v16, v35, v50, v65
	v_div_fixup_f32 v7, v7, v27, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v3, v16, v26, v3
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v4, v25, v4 :: v_dual_mul_f32 v7, v11, v7
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v3, v8, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v1.l, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_cmp_o_f32_e64 s5, v7, v7
	v_mov_b16_e32 v58.l, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v1
	v_mov_b16_e32 v1.l, v10.h
	v_cmp_o_f32_e64 s6, v3, v3
	v_add3_u32 v4, v4, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v8, 1, v1
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s0
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v12, v18, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v0, v14, v11, 0x7fff
	v_cndmask_b32_e32 v11, 0x1054, v53, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v1.l, v12.h
	v_cmp_o_f32_e64 s3, v12, v12
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v13, 1, v1
	v_mov_b16_e32 v1.l, v7.h
	v_add3_u32 v8, v10, v8, 0x7fff
	v_cmp_o_f32_e64 s1, v10, v10
	v_cndmask_b16 v8.l, 0x7fff, v0.h, s2
	v_add3_u32 v12, v12, v13, 0x7fff
	v_and_b32_e32 v1, 1, v1
	v_cmp_o_f32_e64 s4, v6, v6
	v_add3_u32 v6, v6, v15, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s1
	v_cndmask_b16 v5.h, 0x7fff, v12.h, s3
	v_add3_u32 v1, v7, v1, 0x7fff
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v7, v2, s7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s4
	v_and_b32_e32 v6, 1, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s5
	v_cndmask_b32_e32 v1, v4, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v3, v6, 0x7fff
	v_lshl_or_b32 v6, v11, 8, v11
	v_permlanex16_b32 v1, v1, s8, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s6
	v_cndmask_b32_e32 v12, 0x3276, v54, vcc_lo
	v_and_b32_e32 v3, 0x540054, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v11, v12, 8, v12
	v_lshl_or_b32 v2, v3, 4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v6, 0x760076, v11
	v_and_b32_e32 v2, 0x5040504, v2
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v3, v6, 4, v6
	v_cndmask_b32_e32 v10, v5, v4, vcc_lo
	v_cndmask_b32_e32 v4, v8, v0, vcc_lo
	v_cndmask_b32_e32 v5, v0, v8, vcc_lo
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_and_or_b32 v6, 0x78, v9, s26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v3, 0x7060706, v3
	v_perm_b32 v0, v1, v10, v2
	v_permlanex16_b32 v4, v4, s8, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s26, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v1, v1, v10, v3
	v_perm_b32 v2, v4, v5, v2
	v_perm_b32 v3, v4, v5, v3
	v_add_lshl_u32 v4, v6, v7, 1
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 116
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
		.amdhsa_inst_pref_size 52
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 116
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6568
; TotalNumSgprs: 48
; NumVgprs: 116
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 116
; Occupancy: 12
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     116
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
