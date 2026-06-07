	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x0
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s9, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v9, 2, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v40, 4, v0
	v_and_b32_e32 v26, 15, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v11, 0x17f, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v39, 1, v0
	v_and_b32_e32 v2, 0x7c, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v12, 0, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v41, 0x70, v39
	v_or_b32_e32 v18, v41, v26
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s6, s6, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s11, s6, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s11, s11, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s6, s6, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s6, s6, 5
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[20:21], s[18:19]
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s5, s4
	s_mov_b32 s19, 0x31027000
	s_cvt_f32_u32 s8, s5
	s_sub_i32 s10, 0, s5
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s23, s19
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s22, s18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s8
	s_mul_hi_u32 s10, s8, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s8, s9, s8
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s8, s5
	s_sub_i32 s9, s9, s11
	s_add_i32 s11, s8, 1
	s_sub_i32 s12, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s8, s11, s8
	s_cselect_b32 s9, s12, s9
	s_add_i32 s11, s8, 1
	s_cmp_ge_u32 s9, s5
	s_load_b32 s12, s[0:1], 0x38
	s_cselect_b32 s5, s11, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s10
	s_sub_i32 s5, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s8, s5, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s5, s4
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s6, s8
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s9, s6, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s5, s2
	s_abs_i32 s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s10, s6
	s_sub_i32 s11, 0, s6
	v_rcp_iflag_f32_e32 v1, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v1
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshrrev_b32_e32 v1, 5, v0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_cvt_u32_f32 s10, s10
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s10
	s_mul_hi_u32 s4, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, s4
	s_mul_hi_u32 s4, s5, s10
	s_xor_b32 s10, s2, s9
	s_mul_i32 s13, s4, s6
	s_ashr_i32 s11, s10, 31
	s_sub_i32 s5, s5, s13
	s_add_i32 s10, s4, 1
	s_sub_i32 s13, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s13, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s10, s4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s5, s12, 31
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s10, s7, 1
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s6, s3, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s25, s4, s11
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s12, s5
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s5, s10, s6
	v_mad_u64_u32 v[3:4], null, s10, v1, v[2:3]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s10, s25, s11
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s27, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s10, s9
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mad_u64_u32 v[4:5], null, s27, v40, v[26:27]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s4
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s10, s10, 7
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s8
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v3, s5, s10, v3
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s5, s2, 5
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s12, 1
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s2, s5, s27
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s4, -1, 0
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v4, s6, s2, v4
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_lshl_add_u32 v6, s7, 5, v3
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v5, s7, v3
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v7, 0x80000000, v4, s4
	.loc	1 113 30 is_stmt 0              ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v4, 16, v4
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s12, 33
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v8, s7, v6
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s2, -1, 0
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v7, v7, s[16:19], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b32 v10, v3, s[20:23], 0 offen
	buffer_load_b32 v5, v5, s[20:23], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v4, v4, s[16:19], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b32 v6, v6, s[20:23], 0 offen
	buffer_load_b32 v8, v8, s[20:23], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v3, v0, 7, 1
	s_mov_b32 s22, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmpk_gt_i32 s12, 0x41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v3, 0x88, v3
	v_xor_b32_e32 v19, v3, v11
	v_and_b32_e32 v3, 0x108, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v11, 0, v19
	s_waitcnt vmcnt(5)
	ds_store_b8 v11, v7 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(3)
	ds_store_2addr_stride64_b32 v12, v10, v5 offset1:16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b8 v11, v4 offset:8704
	.loc	1 0 0                           ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v12, v6, v8 offset0:8 offset1:24
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_lshl_or_b32 v31, v26, 4, v3
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_or_b32_e32 v55, v41, v26
	s_mov_b32 s23, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v32, 8, v31
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_or_b32_e32 v43, 0x80, v55
	v_or_b32_e32 v45, 0x100, v55
	v_or_b32_e32 v46, 0x180, v55
	v_or_b32_e32 v47, 0x200, v55
	v_or_b32_e32 v48, 0x280, v55
	v_or_b32_e32 v49, 0x300, v55
	v_or_b32_e32 v50, 0x380, v55
	v_or_b32_e32 v42, 0x400, v55
	v_or_b32_e32 v44, 0x480, v55
	v_or_b32_e32 v51, 0x500, v55
	v_or_b32_e32 v52, 0x580, v55
	v_or_b32_e32 v53, 0x600, v55
	v_or_b32_e32 v54, 0x680, v55
	v_or_b32_e32 v56, 0x700, v55
	v_or_b32_e32 v57, 0x780, v55
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s23, -1
                                        ; implicit-def: $vgpr31
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr57
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[8:9], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s23
	s_mov_b32 s24, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	v_lshlrev_b32_e32 v1, 1, v1
	v_lshl_or_b32 v31, v26, 4, v3
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s0, s27, 15
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_lshl_b32 s1, s25, 7
	s_lshl_b32 s22, s11, 7
	v_lshl_or_b32 v1, s3, 5, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s3, s0, 4
	v_xor_b32_e32 v32, 8, v31
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_sub_nc_u32_e64 v5, s3, 3 clamp
	s_mov_b32 s26, 1
	v_add_nc_u32_e32 v4, 0x41, v1
	v_add_nc_u32_e32 v1, 64, v1
	s_lshl_b32 s25, s7, 5
	s_add_i32 s0, 0, 0x2000
	s_add_i32 s11, 0, 0x2200
	s_add_i32 s3, 0, 0x800
	v_mul_lo_u32 v7, s7, v1
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v3, s5, v40
	v_mul_lo_u32 v6, s7, v4
	s_mov_b32 s23, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v8, v1
	v_mad_u64_u32 v[3:4], null, s27, v3, s[6:7]
	v_readfirstlane_b32 s6, v5
	v_mov_b32_e32 v5, v1
	v_add3_u32 v4, v6, s1, v2
	v_add3_u32 v2, v7, s1, v2
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_add3_u32 v20, v3, v26, 32
	v_subrev_nc_u32_e32 v21, s22, v4
	v_subrev_nc_u32_e32 v22, s22, v2
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	s_add_i32 s27, s6, 1
	s_add_i32 s6, 0, 0x1000
	s_add_i32 s1, 0, 0x1800
	s_mov_b32 s22, s18
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v25, v20, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b32 v42, v22, s[20:23], 0 offen
	buffer_load_b32 v43, v21, s[20:23], 0 offen
	s_mov_b32 s28, s0
	s_mov_b32 s0, s11
	s_mov_b32 s11, s24
	s_mov_b32 s24, s3
	v_add_nc_u32_e32 v24, s11, v18
	s_mov_b32 s3, s6
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v23, s28, v31
	v_add_nc_u32_e32 v27, s28, v32
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v28, s3, v18
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v29, v24 offset:640
	ds_load_u8 v30, v24 offset:896
	ds_load_u8 v33, v24 offset:768
	ds_load_u8 v34, v24 offset:512
	ds_load_u8 v35, v24 offset:128
	ds_load_u8 v36, v24 offset:384
	ds_load_u8 v37, v24 offset:256
	ds_load_u8 v38, v24
	ds_load_u8 v44, v24 offset:1664
	ds_load_u8 v45, v24 offset:1920
	ds_load_u8 v46, v24 offset:1792
	ds_load_u8 v47, v24 offset:1536
	ds_load_u8 v48, v24 offset:1152
	ds_load_u8 v49, v24 offset:1408
	ds_load_u8 v50, v24 offset:1280
	ds_load_u8 v51, v24 offset:1024
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v52, v28 offset:640
	ds_load_u8 v53, v28 offset:896
	ds_load_u8 v54, v28 offset:768
	ds_load_u8 v55, v28 offset:512
	ds_load_u8 v56, v28 offset:128
	ds_load_u8 v57, v28 offset:384
	ds_load_u8 v58, v28 offset:256
	ds_load_u8 v59, v28
	ds_load_u8 v60, v28 offset:1664
	ds_load_u8 v61, v28 offset:1920
	ds_load_u8 v62, v28 offset:1792
	ds_load_u8 v63, v28 offset:1536
	ds_load_u8 v64, v28 offset:1152
	ds_load_u8 v65, v28 offset:1408
	ds_load_u8 v66, v28 offset:1280
	ds_load_u8 v67, v28 offset:1024
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[23:24], v23
	ds_load_b64 v[27:28], v27
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v29, v34, v29, 0xc0c0004
	v_perm_b32 v30, v33, v30, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v33, v38, v35, 0xc0c0004
	v_perm_b32 v34, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v35, v47, v44, 0xc0c0004
	v_perm_b32 v36, v46, v45, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v44, v55, v52, 0xc0c0004
	v_perm_b32 v45, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v47, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v46, v59, v56, 0xc0c0004
	s_mov_b32 s6, s1
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s1, s26, 1
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v37, v51, v48, 0xc0c0004
	v_perm_b32 v38, v50, v49, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v48, v63, v60, 0xc0c0004
	v_perm_b32 v49, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v51, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v67, v64, 0xc0c0004
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v30, v30, 16, v29
	v_lshl_or_b32 v29, v34, 16, v33
	v_lshl_or_b32 v34, v36, 16, v35
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v36, v45, 16, v44
	v_lshl_or_b32 v35, v47, 16, v46
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s1, 2
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v33, v38, 16, v37
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s26, s1, 0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v38, v49, 16, v48
	v_lshl_or_b32 v37, v51, 16, v50
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[29:30], v[23:24], v[10:17] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[23:24], v[1:8] neg_lo:[1,1,0]
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_lshl_b32 s1, s26, 9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_lshl_b32 s3, s26, 11
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s1, s1, 0
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_add_i32 s3, s3, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v21, s25, v21
	v_add_nc_u32_e32 v22, s25, v22
	v_add_nc_u32_e32 v20, 16, v20
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v23, s1, v19
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[33:34], v[27:28], v[10:17] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[1:8], v[37:38], v[27:28], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s27, s27, -1
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v24, s3, v9
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s11, s1, 0x2000
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_add_i32 s1, s3, 0x1000
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s27, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b8 v23, v25 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v24, v42, v43 offset1:16
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_or_b32_e32 v43, 0x80, v18
	v_or_b32_e32 v45, 0x100, v18
	v_or_b32_e32 v46, 0x180, v18
	v_or_b32_e32 v47, 0x200, v18
	v_or_b32_e32 v48, 0x280, v18
	v_or_b32_e32 v49, 0x300, v18
	v_or_b32_e32 v50, 0x380, v18
	v_or_b32_e32 v42, 0x400, v18
	v_or_b32_e32 v44, 0x480, v18
	v_or_b32_e32 v51, 0x500, v18
	v_or_b32_e32 v52, 0x580, v18
	v_or_b32_e32 v53, 0x600, v18
	v_or_b32_e32 v54, 0x680, v18
	v_or_b32_e32 v56, 0x700, v18
	v_or_b32_e32 v57, 0x780, v18
	v_mov_b32_e32 v55, v18
	s_mov_b32 s22, s24
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v8, 0
	s_add_i32 s0, 0, 0x2000
	s_add_i32 s11, 0, 0x2200
	s_add_i32 s3, 0, 0x800
	s_add_i32 s6, 0, 0x1000
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v7, v8
	v_dual_mov_b32 v11, v9 :: v_dual_mov_b32 v10, v8
	v_mov_b32_e32 v17, v9
	v_mov_b32_e32 v15, v9
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v16, v8
	s_add_i32 s1, 0, 0x1800
.LBB0_8:                                ; %._crit_edge
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v9, s0, v31
	v_dual_mov_b32 v25, v17 :: v_dual_add_nc_u32 v18, s0, v32
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v24, v16
	ds_load_b64 v[29:30], v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_b64 v[27:28], v18
	v_cndmask_b32_e64 v9, 0, 1, s4
	v_dual_mov_b32 v21, v13 :: v_dual_mov_b32 v20, v12
	v_dual_mov_b32 v23, v15 :: v_dual_mov_b32 v22, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v9
	v_dual_mov_b32 v19, v11 :: v_dual_mov_b32 v18, v10
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v24, s22, v48
	v_add_nc_u32_e32 v25, s22, v47
	v_add_nc_u32_e32 v22, s22, v50
	v_add_nc_u32_e32 v35, s22, v43
	v_add_nc_u32_e32 v23, s22, v49
	v_add_nc_u32_e32 v33, s22, v46
	v_add_nc_u32_e32 v34, s22, v45
	v_add_nc_u32_e32 v36, s22, v55
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v24, v24
	ds_load_u8 v25, v25
	ds_load_u8 v22, v22
	ds_load_u8 v35, v35
	ds_load_u8 v36, v36
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	ds_load_u8 v23, v23
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v19, s22, v54
	v_add_nc_u32_e32 v20, s22, v53
	v_add_nc_u32_e32 v9, s22, v57
	v_add_nc_u32_e32 v38, s22, v42
	v_add_nc_u32_e32 v21, s22, v52
	v_add_nc_u32_e32 v37, s22, v51
	v_add_nc_u32_e32 v58, s22, v44
	v_add_nc_u32_e32 v18, s22, v56
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v59, v19
	ds_load_u8 v60, v20
	ds_load_u8 v9, v9
	ds_load_u8 v38, v38
	ds_load_u8 v61, v21
	ds_load_u8 v37, v37
	ds_load_u8 v62, v18
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v18, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v20, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v21, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v19, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v35, v60, v59, 0xc0c0004
	v_lshl_or_b32 v33, v21, 16, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v34, v19, 16, v18
	v_dual_mov_b32 v25, v17 :: v_dual_mov_b32 v24, v16
	v_dual_mov_b32 v23, v15 :: v_dual_mov_b32 v22, v14
	v_dual_mov_b32 v21, v13 :: v_dual_mov_b32 v20, v12
	v_dual_mov_b32 v19, v11 :: v_dual_mov_b32 v18, v10
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v62, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v38, v58, 0xc0c0004
	v_perm_b32 v37, v37, v61, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[18:25], v[33:34], v[29:30], v[18:25] neg_lo:[1,1,0]
	v_lshl_or_b32 v34, v9, 16, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v37, 16, v36
	v_wmma_i32_16x16x16_iu4 v[18:25], v[33:34], v[27:28], v[18:25] neg_lo:[1,1,0]
.LBB0_10:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v17, s6, v48
	v_add_nc_u32_e32 v33, s6, v47
	v_add_nc_u32_e32 v15, s6, v50
	v_add_nc_u32_e32 v36, s6, v43
	v_add_nc_u32_e32 v16, s6, v49
	v_add_nc_u32_e32 v34, s6, v46
	v_add_nc_u32_e32 v35, s6, v45
	v_add_nc_u32_e32 v37, s6, v55
	v_add_nc_u32_e32 v11, s6, v54
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v17, v17
	ds_load_u8 v33, v33
	ds_load_u8 v15, v15
	ds_load_u8 v36, v36
	ds_load_u8 v37, v37
	ds_load_u8 v34, v34
	ds_load_u8 v35, v35
	ds_load_u8 v16, v16
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v12, s6, v53
	v_add_nc_u32_e32 v9, s6, v57
	v_add_nc_u32_e32 v38, s6, v42
	v_add_nc_u32_e32 v13, s6, v52
	v_add_nc_u32_e32 v14, s6, v51
	v_add_nc_u32_e32 v58, s6, v44
	v_add_nc_u32_e32 v10, s6, v56
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v11, v11
	ds_load_u8 v12, v12
	ds_load_u8 v59, v9
	ds_load_u8 v38, v38
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	ds_load_u8 v60, v10
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v9, v33, v17, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v10, v16, v15, 0xc0c0004
	v_perm_b32 v15, v37, v36, 0xc0c0004
	v_perm_b32 v16, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	v_lshl_or_b32 v10, v10, 16, v9
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	v_lshl_or_b32 v9, v16, 16, v15
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v12, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v38, v58, 0xc0c0004
	v_dual_mov_b32 v16, v24 :: v_dual_mov_b32 v17, v25
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v10, v12, 16, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v9, v13, 16, v15
	v_mov_b32_e32 v12, v20
	v_dual_mov_b32 v14, v22 :: v_dual_mov_b32 v13, v21
	v_mov_b32_e32 v15, v23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[27:28], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v10, v18 :: v_dual_mov_b32 v11, v19
.LBB0_12:                               ; %._crit_edge54
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v9, s11, v31
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v30, v13 :: v_dual_add_nc_u32 v27, s11, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v29, v12 :: v_dual_mov_b32 v34, v11
	ds_load_b64 v[37:38], v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_b64 v[35:36], v27
	v_cndmask_b32_e64 v9, 0, 1, s2
	v_dual_mov_b32 v28, v17 :: v_dual_mov_b32 v27, v16
	v_dual_mov_b32 v32, v15 :: v_dual_mov_b32 v31, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v9
	v_mov_b32_e32 v33, v10
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v34, s3, v48
	v_add_nc_u32_e32 v58, s3, v47
	v_add_nc_u32_e32 v32, s3, v50
	v_add_nc_u32_e32 v61, s3, v43
	v_add_nc_u32_e32 v33, s3, v49
	v_add_nc_u32_e32 v59, s3, v46
	v_add_nc_u32_e32 v60, s3, v45
	v_add_nc_u32_e32 v62, s3, v55
	v_add_nc_u32_e32 v28, s3, v54
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v34, v34
	ds_load_u8 v58, v58
	ds_load_u8 v32, v32
	ds_load_u8 v61, v61
	ds_load_u8 v62, v62
	ds_load_u8 v59, v59
	ds_load_u8 v60, v60
	ds_load_u8 v33, v33
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v29, s3, v53
	v_add_nc_u32_e32 v9, s3, v57
	v_add_nc_u32_e32 v63, s3, v42
	v_add_nc_u32_e32 v30, s3, v52
	v_add_nc_u32_e32 v31, s3, v51
	v_add_nc_u32_e32 v64, s3, v44
	v_add_nc_u32_e32 v27, s3, v56
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v65, v28
	ds_load_u8 v29, v29
	ds_load_u8 v9, v9
	ds_load_u8 v63, v63
	ds_load_u8 v30, v30
	ds_load_u8 v31, v31
	ds_load_u8 v66, v27
	ds_load_u8 v64, v64
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v27, v58, v34, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v28, v33, v32, 0xc0c0004
	v_perm_b32 v32, v62, v61, 0xc0c0004
	v_perm_b32 v33, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v29, v29, v65, 0xc0c0004
	v_lshl_or_b32 v28, v28, 16, v27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	v_lshl_or_b32 v27, v33, 16, v32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v66, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v63, v64, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[18:25], v[27:28], v[37:38], v[18:25] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v28, v9, 16, v29
	v_lshl_or_b32 v27, v30, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[27:28], v[35:36], v[18:25] neg_lo:[1,1,0]
	v_mov_b32_e32 v28, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v30, v21
	v_mov_b32_e32 v32, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v34, v19 :: v_dual_mov_b32 v27, v24
	v_mov_b32_e32 v29, v20
	v_mov_b32_e32 v31, v22
	v_mov_b32_e32 v33, v18
.LBB0_14:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v17, s1, v48
	v_add_nc_u32_e32 v18, s1, v47
	v_add_nc_u32_e32 v15, s1, v50
	v_add_nc_u32_e32 v21, s1, v43
	v_add_nc_u32_e32 v16, s1, v49
	v_add_nc_u32_e32 v19, s1, v46
	v_add_nc_u32_e32 v20, s1, v45
	v_add_nc_u32_e32 v22, s1, v55
	v_add_nc_u32_e32 v11, s1, v54
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	ds_load_u8 v15, v15
	ds_load_u8 v21, v21
	ds_load_u8 v22, v22
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v16, v16
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v12, s1, v53
	v_add_nc_u32_e32 v9, s1, v57
	v_add_nc_u32_e32 v23, s1, v42
	v_add_nc_u32_e32 v13, s1, v52
	v_add_nc_u32_e32 v14, s1, v51
	v_add_nc_u32_e32 v24, s1, v44
	v_add_nc_u32_e32 v10, s1, v56
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v11, v11
	ds_load_u8 v12, v12
	ds_load_u8 v25, v9
	ds_load_u8 v23, v23
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	ds_load_u8 v42, v10
	ds_load_u8 v24, v24
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v9, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v10, v16, v15, 0xc0c0004
	v_perm_b32 v15, v22, v21, 0xc0c0004
	v_perm_b32 v16, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	v_lshl_or_b32 v10, v10, 16, v9
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	v_lshl_or_b32 v9, v16, 16, v15
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v12, v42, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v23, v24, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[37:38], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v10, v12, 16, v11
	v_lshl_or_b32 v9, v13, 16, v15
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[35:36], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_17
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v28, v17 :: v_dual_mov_b32 v27, v16
	v_dual_mov_b32 v30, v13 :: v_dual_mov_b32 v29, v12
	v_dual_mov_b32 v32, v15 :: v_dual_mov_b32 v31, v14
	v_dual_mov_b32 v34, v11 :: v_dual_mov_b32 v33, v10
.LBB0_17:
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v36, 0x5410 :: v_dual_and_b32 v9, 16, v40
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_or_b32 v10, v40, 1, v41
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v35, v1
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s17, s13, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 128 22 is_stmt 0              ; generate_amdgcn.py:128:22
	v_or3_b32 v9, v9, v26, s5
	s_mov_b32 s19, 0x31027000
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_or_b32_e32 v16, 2, v10
	v_or_b32_e32 v15, 4, v10
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v17, 1, v9
	s_mov_b32 s16, s12
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	s_add_i32 s0, s10, s7
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v18, 6, v10
	v_or_b32_e32 v11, 14, v10
	v_or_b32_e32 v12, 12, v10
	v_or_b32_e32 v13, 10, v10
	v_or_b32_e32 v14, 8, v10
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	buffer_load_u16 v17, v17, s[16:19], 0 offen
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v19, s10, v10
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v10, s0, v10, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v20, s10, v16
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v16, s0, v16, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v21, s10, v15
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v15, s0, v15, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v22, s10, v18
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	s_and_b32 s17, s15, 0xffff
	s_mov_b32 s16, s14
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v18, s0, v18, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v23, s10, v14
	v_or_b32_e32 v24, s10, v13
	v_or_b32_e32 v25, s10, v12
	v_or_b32_e32 v26, s10, v11
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v14, s0, v14, 1
	v_add_lshl_u32 v13, s0, v13, 1
	v_add_lshl_u32 v12, s0, v12, 1
	v_add_lshl_u32 v11, s0, v11, 1
	s_clause 0x7
	buffer_load_u16 v10, v10, s[16:19], 0 offen
	buffer_load_u16 v16, v16, s[16:19], 0 offen
	buffer_load_u16 v15, v15, s[16:19], 0 offen
	buffer_load_u16 v18, v18, s[16:19], 0 offen
	buffer_load_u16 v14, v14, s[16:19], 0 offen
	buffer_load_u16 v13, v13, s[16:19], 0 offen
	buffer_load_u16 v12, v12, s[16:19], 0 offen
	buffer_load_u16 v11, v11, s[16:19], 0 offen
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_mov_b32 v37, 0x7632 :: v_dual_lshlrev_b32 v20, 1, v20
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v1.h, 0
	s_mov_b32 s11, 0x76543210
	s_and_b32 s9, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v40.h, v1.h
	v_mov_b16_e32 v42.h, v1.h
	v_mov_b16_e32 v38.h, v1.h
	v_mov_b16_e32 v41.h, v1.h
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v16, v17, v16 :: v_dual_lshlrev_b32 v19, 1, v19
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	buffer_load_u16 v19, v19, s[16:19], 0 offen
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v2, v16, v2
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v12, 16, v12
	v_lshlrev_b32_e32 v10, 16, v10
	v_lshlrev_b32_e32 v18, 16, v18
	v_lshlrev_b32_e32 v15, 16, v15
	v_lshlrev_b32_e32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v10, v17, v10 :: v_dual_lshlrev_b32 v21, 1, v21
	v_dual_mul_f32 v15, v17, v15 :: v_dual_lshlrev_b32 v24, 1, v24
	v_dual_mul_f32 v18, v17, v18 :: v_dual_lshlrev_b32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v13, v17, v13 :: v_dual_lshlrev_b32 v26, 1, v26
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v10, v10, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v12, v17, v12 :: v_dual_mul_f32 v3, v15, v3
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v4, v18, v4
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v6, v13, v6 :: v_dual_mul_f32 v7, v12, v7
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v19, v17, v19 :: v_dual_lshlrev_b32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v19, v19, v33 :: v_dual_lshlrev_b32 v14, 16, v14
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v14, v17, v14 :: v_dual_lshlrev_b32 v25, 1, v25
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x6
	buffer_load_u16 v20, v20, s[16:19], 0 offen
	buffer_load_u16 v22, v22, s[16:19], 0 offen
	buffer_load_u16 v21, v21, s[16:19], 0 offen
	buffer_load_u16 v24, v24, s[16:19], 0 offen
	buffer_load_u16 v23, v23, s[16:19], 0 offen
	buffer_load_u16 v26, v26, s[16:19], 0 offen
	buffer_load_u16 v25, v25, s[16:19], 0 offen
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v5, v14, v5 :: v_dual_lshlrev_b32 v20, 16, v20
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v22, 16, v22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v21, 16, v21
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v20, v17, v20 :: v_dual_lshlrev_b32 v23, 16, v23
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v21, v17, v21 :: v_dual_lshlrev_b32 v26, 16, v26
	v_mul_f32_e32 v24, v17, v24
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v11, v17, v11 :: v_dual_and_b32 v0, 16, v0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v22, v17, v22 :: v_dual_lshlrev_b32 v25, 16, v25
	v_mul_f32_e32 v23, v17, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v13, v21, v29 :: v_dual_mul_f32 v8, v11, v8
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v25, v17, v25
	v_mul_f32_e32 v17, v17, v26
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v11, v20, v34
	v_dual_mul_f32 v12, v22, v30 :: v_dual_mul_f32 v15, v23, v31
	v_mul_f32_e32 v14, v24, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v16, v17, v28
	v_dual_mul_f32 v17, v25, v27 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v10
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v23, 0xbfb8aa3b, v5 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v4
	v_mul_f32_e32 v25, 0xbfb8aa3b, v7
	v_mul_f32_e32 v21, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v23
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v25
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v21
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0x42800000, s4
	v_cndmask_b32_e64 v25, 0, 0x42800000, s6
	v_cndmask_b32_e64 v21, 0, 0x42800000, s2
	v_mul_f32_e32 v24, 0xbfb8aa3b, v6
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v10
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s6
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v7
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v24
	v_exp_f32_e32 v20, v20
	v_dual_mul_f32 v26, 0xbfb8aa3b, v8 :: v_dual_fmac_f32 v23, 0xbfb8aa3b, v5
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v24, 0, 0x42800000, s3
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v26
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	s_delay_alu instid0(TRANS32_DEP_3)
	v_ldexp_f32 v20, v20, v27
	v_cndmask_b32_e64 v26, 0, 0x42800000, s5
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s5
	v_ldexp_f32 v25, v25, v34
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v6
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v21, v21, v30
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v24, v24
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v2
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s1
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v34, s2, v3, v21, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v24, v24, v31
	v_ldexp_f32 v23, v23, v32
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v4
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v48, null, v25, v25, v7
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_add_f32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v18, v18, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v56, v48
	v_div_scale_f32 v35, null, v24, v24, v6
	v_div_scale_f32 v44, null, v23, v23, v5
	v_div_scale_f32 v57, s6, v7, v25, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v53, v35
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v22, v22, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v54, v44
	v_fma_f32 v65, -v48, v56, 1.0
	v_div_scale_f32 v45, s4, v5, v23, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v56, v65, v56
	v_fma_f32 v62, -v35, v53, 1.0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v63, -v44, v54, 1.0
	v_mul_f32_e32 v65, v57, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v53, v62, v53
	v_div_scale_f32 v27, null, v20, v20, v10
	v_div_scale_f32 v28, vcc_lo, v10, v20, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v48, v65, v57
	v_rcp_f32_e32 v49, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v58, -v27, v49, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v26, 0xbfb8aa3b, v8 :: v_dual_fmac_f32 v49, v58, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v33
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v33, null, v21, v21, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v52, v33
	v_fma_f32 v61, -v33, v52, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v61, v52
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v26, 1.0, v26 :: v_dual_mul_f32 v61, v34, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v46, null, v26, v26, v8
	v_div_scale_f32 v47, s5, v8, v26, v8
	v_fma_f32 v69, -v33, v61, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v55, v46
	v_fma_f32 v64, -v46, v55, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_fmac_f32 v55, v64, v55
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v31, null, v22, v22, v4
	v_div_scale_f32 v32, s1, v4, v22, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v51, v31
	v_fma_f32 v60, -v31, v51, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v18, 1.0, v18 :: v_dual_fmac_f32 v51, v60, v51
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v29, null, v18, v18, v2
	v_div_scale_f32 v30, s0, v2, v18, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v50, v29
	v_fma_f32 v59, -v29, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v59, v50
	v_mul_f32_e32 v59, v30, v50
	v_div_scale_f32 v43, s3, v6, v24, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v29, v59, v30
	v_fmac_f32_e32 v59, v67, v50
	v_dual_fmac_f32 v54, v63, v54 :: v_dual_fmac_f32 v61, v69, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v58, v28, v49 :: v_dual_mul_f32 v63, v45, v54
	v_fma_f32 v66, -v27, v58, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v44, v63, v45
	v_dual_fmac_f32 v58, v66, v49 :: v_dual_fmac_f32 v63, v71, v54
	v_dual_mul_f32 v60, v32, v51 :: v_dual_fmac_f32 v65, v73, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v27, v58, v28
	v_fma_f32 v28, -v29, v59, v30
	v_fma_f32 v30, -v33, v61, v34
	v_fma_f32 v68, -v31, v60, v32
	v_fma_f32 v34, -v48, v65, v57
	v_div_fmas_f32 v27, v27, v49, v58
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v60, v68, v51
	v_div_fmas_f32 v28, v28, v50, v59
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v10, v27, v20, v10
	v_fma_f32 v29, -v31, v60, v32
	v_fma_f32 v32, -v44, v63, v45
	v_div_fixup_f32 v2, v28, v18, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v10, v19, v10
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v29, v29, v51, v60
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v11, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v20, v30, v52, v61
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v1.l, v10.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v64, v47, v55
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v29, v22, v4
	v_div_fixup_f32 v3, v20, v21, v3
	v_mul_f32_e32 v62, v43, v53
	v_fma_f32 v72, -v46, v64, v47
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v38.l, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v4, v12, v4 :: v_dual_mul_f32 v3, v13, v3
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v70, -v35, v62, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v64, v72, v55
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v2, v2
	v_mov_b16_e32 v40.l, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v62, v70, v53
	v_fma_f32 v33, -v46, v64, v47
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v13, 1, v40
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v31, -v35, v62, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v18, v31, v53, v62
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v19, v32, v54, v63
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v18, v24, v6
	v_div_fmas_f32 v11, v33, v55, v64
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v5, v19, v23, v5
	v_div_fmas_f32 v12, v34, v56, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v8, v11, v26, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v1
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v15, v5
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v7, v12, v25, v7
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v12, 1, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v10, v10, v11, 0x7fff
	v_mov_b16_e32 v41.l, v5.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v7, v17, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v2, v2, v12, 0x7fff
	v_cmp_o_f32_e64 s4, v5, v5
	v_cndmask_b16 v2.l, 0x7fff, v10.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b16_e32 v42.l, v7.h
	v_add3_u32 v0, v3, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v7, v7
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v10, 0x1054, v36 :: v_dual_and_b32 v3, 1, v42
	v_mov_b16_e32 v1.l, v4.h
	v_cmp_o_f32_e64 s1, v4, v4
	v_add3_u32 v3, v7, v3, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v10, 8, v10
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v6, v14, v6 :: v_dual_and_b32 v11, 1, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v14, 1, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s6
	v_and_b32_e32 v3, 0x540054, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v1.l, v6.h
	v_cmp_o_f32_e64 s3, v6, v6
	v_add3_u32 v5, v5, v14, 0x7fff
	v_add3_u32 v4, v4, v11, 0x7fff
	v_cndmask_b32_e32 v11, 0x3276, v37, vcc_lo
	v_and_b32_e32 v12, 1, v1
	v_cndmask_b16 v4.l, 0x7fff, v0.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s1
	v_lshl_or_b32 v10, v11, 8, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v6, v6, v12, 0x7fff
	v_cndmask_b16 v6.l, 0x7fff, v5.h, s4
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v8, v16, v8 :: v_dual_cndmask_b32 v5, v6, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v1.l, v8.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s5, v8, v8
	v_and_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v8, v1, 0x7fff
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v8, v9, s7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s5
	v_and_b32_e32 v7, 0x760076, v10
	v_cndmask_b32_e32 v1, v2, v6, vcc_lo
	v_lshl_or_b32 v2, v3, 4, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v6, v4, v0, vcc_lo
	v_lshl_or_b32 v3, v7, 4, v7
	v_cndmask_b32_e32 v4, v0, v4, vcc_lo
	v_permlanex16_b32 v1, v1, s11, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 0x5040504, v2
	v_permlanex16_b32 v6, v6, s11, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v3, 0x7060706, v3
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_and_or_b32 v7, 0x78, v39, s10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s10, s18
	v_perm_b32 v0, v1, v5, v2
	v_perm_b32 v2, v6, v4, v2
	v_perm_b32 v1, v1, v5, v3
	v_perm_b32 v3, v6, v4, v3
	v_add_lshl_u32 v4, v7, v8, 1
	s_mov_b32 s11, s19
	buffer_store_b128 v[0:3], v4, s[8:11], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 74
		.amdhsa_next_free_sgpr 29
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
		.amdhsa_inst_pref_size 53
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.num_vgpr, 74
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.numbered_sgpr, 29
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6732
; TotalNumSgprs: 31
; NumVgprs: 74
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 31
; NumVGPRsForWavesPerEU: 74
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
	.byte	105                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     74
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
