	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[72:73], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	v_mov_b32_e32 v165, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v165
	v_lshlrev_b32_e32 v0, 1, v165
	v_and_b32_e32 v37, 0x7f, v165
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s72, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s5, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s5, s5, 24
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s4, s4, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s12, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s3, s3, s12
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s4, s12, s4
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s3, s3, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s4
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s13, s3
	s_cvt_f32_u32 s5, s13
	s_sub_i32 s6, 0, s13
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v1, 0
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_abs_i32 s6, s2
	s_add_i32 s5, s5, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s14, s6, s5
	s_ashr_i32 s15, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s17, s14, 1
	s_sub_i32 s16, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s18, s16, s13
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s13, s17, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s13, s13, s15
	s_sub_i32 s80, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s80, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s12
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s6, s6, s2
	s_addc_u32 s7, s7, s3
	s_load_b64 s[74:75], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s10, s2
	s_addc_u32 s3, s11, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[76:77], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[78:79], s[2:3], 0x0
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[6:7], s[4:5], 0x0
	s_mov_b32 s4, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s2, s74, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s75, 0, s2
	v_add_nc_u32_e32 v65, s74, v2
	.loc	1 1066 35                       ; ragged.py:1066:35
	s_mul_i32 s17, s6, s72
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[76:77], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[78:79], v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_cmp_gt_i32 s73, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v8, s17 :: v_dual_lshlrev_b32 v35, 1, v165
	v_dual_mov_b32 v6, s74 :: v_dual_and_b32 v7, 0x7f, v165
	.loc	1 1254 13 is_stmt 1             ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s74, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr8
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[68:71], s[0:1], 0x40
	s_load_b128 s[12:15], s[0:1], 0x10
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v106, 0x80, v165
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v113, 15, v165
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v9, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s3, 0, v106
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v103, 0
	v_mov_b32_e32 v102, 0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_lshl_b32 s16, s80, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	v_lshrrev_b32_e32 v1, 5, v165
	v_and_b32_e32 v2, 0xe0, v165
	v_lshlrev_b32_e32 v35, 5, v113
	v_and_b32_e32 v36, 24, v0
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x0
	s_load_b32 s0, s[0:1], 0x50
	.loc	1 1045 18 is_stmt 0             ; ragged.py:1045:18
	v_or_b32_e32 v1, s16, v1
	v_lshlrev_b32_e32 v2, 4, v2
	v_cndmask_b32_e64 v34, 0x88, 0, s3
	v_or_b32_e32 v104, 0x300, v165
	v_or_b32_e32 v105, 0x700, v165
	v_or_b32_e32 v3, 0xf8, v1
	v_or_b32_e32 v4, 0xf0, v1
	v_or_b32_e32 v5, 0xe8, v1
	v_or_b32_e32 v6, 0xe0, v1
	v_or_b32_e32 v7, 0xd8, v1
	v_or_b32_e32 v8, 0xd0, v1
	v_or_b32_e32 v9, 0xc8, v1
	v_or_b32_e32 v10, 0xc0, v1
	v_or_b32_e32 v11, 0xb8, v1
	v_or_b32_e32 v12, 0xb0, v1
	v_or_b32_e32 v13, 0xa8, v1
	v_or_b32_e32 v14, 0xa0, v1
	v_or_b32_e32 v15, 0x98, v1
	v_or_b32_e32 v16, 0x90, v1
	v_or_b32_e32 v17, 0x88, v1
	v_or_b32_e32 v18, 0x80, v1
	v_or_b32_e32 v19, 0x78, v1
	v_or_b32_e32 v20, 0x70, v1
	v_or_b32_e32 v21, 0x68, v1
	v_or_b32_e32 v22, 0x60, v1
	v_or_b32_e32 v23, 0x58, v1
	v_or_b32_e32 v24, 0x50, v1
	v_or_b32_e32 v25, 0x48, v1
	v_or_b32_e32 v26, 64, v1
	v_or_b32_e32 v27, 56, v1
	v_or_b32_e32 v28, 48, v1
	v_or_b32_e32 v29, 40, v1
	v_or_b32_e32 v30, 32, v1
	v_or_b32_e32 v31, 24, v1
	v_or_b32_e32 v32, 16, v1
	v_or_b32_e32 v33, 8, v1
	v_add_nc_u32_e32 v1, s17, v1
	v_add_nc_u32_e32 v5, s17, v5
	v_add_nc_u32_e32 v4, s17, v4
	v_add_nc_u32_e32 v3, s17, v3
	v_add_nc_u32_e32 v33, s17, v33
	v_add_nc_u32_e32 v8, s17, v8
	v_mul_lo_u32 v101, v5, s73
	v_mov_b32_e32 v5, 0
	v_mul_lo_u32 v103, v3, s73
	v_mov_b32_e32 v3, 0
	v_or3_b32 v71, v35, v36, v2
	v_mov_b32_e32 v35, 0
	v_mul_lo_u32 v102, v4, s73
	v_mov_b32_e32 v4, 0
	v_mul_lo_u32 v1, v1, s73
	v_add_nc_u32_e32 v2, s17, v31
	v_mov_b32_e32 v31, 0
	v_mul_lo_u32 v98, v8, s73
	v_mov_b32_e32 v8, 0
	v_add_nc_u32_e32 v30, s17, v30
	v_add_nc_u32_e32 v9, s17, v9
	v_add_nc_u32_e32 v29, s17, v29
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off
	scratch_store_b32 off, v113, off offset:60
	v_mul_lo_u32 v1, v33, s73
	scratch_store_b32 off, v106, off offset:64 ; 4-byte Folded Spill
	v_mul_lo_u32 v97, v9, s73
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v10, s17, v10
	v_add_nc_u32_e32 v28, s17, v28
	v_add_nc_u32_e32 v13, s17, v13
	v_add_nc_u32_e32 v25, s17, v25
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s17, v32
	v_mul_lo_u32 v96, v10, s73
	v_mov_b32_e32 v10, 0
	v_add_nc_u32_e32 v14, s17, v14
	v_add_nc_u32_e32 v24, s17, v24
	v_mul_lo_u32 v1, v1, s73
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v15, s17, v15
	v_mul_lo_u32 v92, v14, s73
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v23, s17, v23
	v_add_nc_u32_e32 v18, s17, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v91, v15, s73
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v2, s73
	scratch_store_b32 off, v37, off offset:72 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s17, v26
	v_mov_b32_e32 v26, 0
	v_mul_lo_u32 v93, v13, s73
	v_mov_b32_e32 v13, 0
	v_dual_mov_b32 v15, 0 :: v_dual_add_nc_u32 v20, s17, v20
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v30, s73
	v_add_nc_u32_e32 v19, s17, v19
	v_xor_b32_e32 v0, v34, v37
	v_or_b32_e32 v106, 0x3f0, v165
	v_or_b32_e32 v107, 0x7f0, v165
	v_xor_b32_e32 v110, 8, v71
	v_mul_lo_u32 v87, v19, s73
	v_mov_b32_e32 v19, 0
	scratch_store_b32 off, v1, off offset:16 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v29, s73
	v_xor_b32_e32 v108, 0x110, v0
	v_xor_b32_e32 v111, 16, v71
	v_xor_b32_e32 v112, 24, v71
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v36, 0
	scratch_store_b32 off, v1, off offset:20 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v28, s73
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s17, v27
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v1, v1, s73
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v2, s73
	v_add_nc_u32_e32 v2, s17, v21
	v_mov_b32_e32 v21, 0
	v_mul_lo_u32 v88, v18, s73
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v25, s73
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v25, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v24, s73
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v24, 0
	v_add_nc_u32_e32 v104, 0, v104
	v_dual_mov_b32 v86, v0 :: v_dual_add_nc_u32 v105, 0, v105
	v_mov_b32_e32 v32, 0
	v_add_nc_u32_e32 v106, 0, v106
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v23, s73
	v_mov_b32_e32 v23, 0
	v_add_nc_u32_e32 v107, 0, v107
	v_add_nc_u32_e32 v108, 0, v108
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_lshrrev_b32_e32 v109, 6, v165
	v_add_nc_u32_e32 v110, 0, v110
	v_add_nc_u32_e32 v111, 0, v111
	v_add_nc_u32_e32 v112, 0, v112
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s17, v22
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v113, 0, v113
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	v_mul_lo_u32 v1, v1, s73
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s1, 0
	s_mov_b32 s4, s8
	s_mov_b32 s5, s9
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v2, s73
	v_add_nc_u32_e32 v2, s17, v16
	v_mov_b32_e32 v16, 0
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v90, v2, s73
	v_add_nc_u32_e32 v2, s17, v11
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v20, s73
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v20, 0
	v_mul_lo_u32 v95, v2, s73
	v_add_nc_u32_e32 v2, s17, v6
	v_mov_b32_e32 v6, 0
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s17, v17
	v_mul_lo_u32 v100, v2, s73
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v17, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v89, v1, s73
	v_add_nc_u32_e32 v1, s17, v12
	v_mov_b32_e32 v12, 0
	v_mul_lo_u32 v94, v1, s73
	v_add_nc_u32_e32 v1, s17, v7
	v_mov_b32_e32 v7, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v99, v1, s73
	v_mov_b32_e32 v1, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v114, s1, v109
	v_dual_mov_b32 v85, v165 :: v_dual_add_nc_u32 v84, 0, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[114:115], null, v114, s0, v[65:66]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v130, 0x80000000, v114, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v114, 4, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v114, s1, v114
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[114:115], null, v114, s0, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v131, 0x80000000, v114, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v114, 8, v109
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v114, s1, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[114:115], null, v114, s0, v[65:66]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v132, 0x80000000, v114, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v114, 12, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v114, s1, v114
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[114:115], null, v114, s0, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v133, 0x80000000, v114, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v114, 16, v109
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v114, s1, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[114:115], null, v114, s0, v[65:66]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v134, 0x80000000, v114, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v114, 20, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v114, s1, v114
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[114:115], null, v114, s0, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v135, 0x80000000, v114, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v114, 24, v109
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v114, s1, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[114:115], null, v114, s0, v[65:66]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v136, 0x80000000, v114, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v114, 28, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v114, s1, v114
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[114:115], null, v114, s0, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v137, 0x80000000, v114, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_and_b32_e32 v114, 31, v165
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v114, s1, v114
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s1, s1, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s1, s73
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v143, v92, v114
	v_add_nc_u32_e32 v144, v93, v114
	v_add_nc_u32_e32 v145, v94, v114
	v_add_nc_u32_e32 v146, v95, v114
	v_add_nc_u32_e32 v147, v96, v114
	v_add_nc_u32_e32 v148, v97, v114
	v_add_nc_u32_e32 v138, v87, v114
	v_add_nc_u32_e32 v139, v88, v114
	v_add_nc_u32_e32 v140, v89, v114
	v_add_nc_u32_e32 v141, v90, v114
	v_add_nc_u32_e32 v142, v91, v114
	v_add_nc_u32_e32 v149, v98, v114
	v_add_nc_u32_e32 v150, v99, v114
	v_add_nc_u32_e32 v151, v100, v114
	v_add_nc_u32_e32 v152, v101, v114
	v_add_nc_u32_e32 v153, v102, v114
	v_add_nc_u32_e32 v154, v103, v114
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v115, v0, v114
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v116, v0, v114
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v117, v0, v114
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v118, v0, v114
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v119, v0, v114
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v120, v0, v114
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v121, v0, v114
	scratch_load_b32 v0, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v122, v0, v114
	scratch_load_b32 v0, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, v0, v114
	scratch_load_b32 v0, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v124, v0, v114
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v125, v0, v114
	scratch_load_b32 v0, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v126, v0, v114
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v127, v0, v114
	scratch_load_b32 v0, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v128, v0, v114
	scratch_load_b32 v0, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v129, v0, v114
	.loc	1 1070 30 is_stmt 0             ; ragged.py:1070:30
	s_clause 0x1f
	buffer_load_u8 v155, v115, s[8:11], 0 offen
	buffer_load_u8 v114, v116, s[8:11], 0 offen
	buffer_load_u8 v156, v117, s[8:11], 0 offen
	buffer_load_u8 v115, v118, s[8:11], 0 offen
	buffer_load_u8 v157, v119, s[8:11], 0 offen
	buffer_load_u8 v116, v120, s[8:11], 0 offen
	buffer_load_u8 v158, v121, s[8:11], 0 offen
	buffer_load_u8 v117, v122, s[8:11], 0 offen
	buffer_load_u8 v159, v123, s[8:11], 0 offen
	buffer_load_u8 v118, v124, s[8:11], 0 offen
	buffer_load_u8 v160, v125, s[8:11], 0 offen
	buffer_load_u8 v119, v126, s[8:11], 0 offen
	buffer_load_u8 v161, v127, s[8:11], 0 offen
	buffer_load_u8 v120, v128, s[8:11], 0 offen
	buffer_load_u8 v162, v129, s[8:11], 0 offen
	buffer_load_u8 v121, v138, s[8:11], 0 offen
	buffer_load_u8 v163, v139, s[8:11], 0 offen
	buffer_load_u8 v122, v140, s[8:11], 0 offen
	buffer_load_u8 v164, v141, s[8:11], 0 offen
	buffer_load_u8 v123, v142, s[8:11], 0 offen
	buffer_load_u8 v143, v143, s[8:11], 0 offen
	buffer_load_u8 v124, v144, s[8:11], 0 offen
	buffer_load_u8 v144, v145, s[8:11], 0 offen
	buffer_load_u8 v125, v146, s[8:11], 0 offen
	buffer_load_u8 v145, v147, s[8:11], 0 offen
	buffer_load_u8 v126, v148, s[8:11], 0 offen
	buffer_load_u8 v146, v149, s[8:11], 0 offen
	buffer_load_u8 v127, v150, s[8:11], 0 offen
	buffer_load_u8 v147, v151, s[8:11], 0 offen
	buffer_load_u8 v128, v152, s[8:11], 0 offen
	buffer_load_u8 v148, v153, s[8:11], 0 offen
	buffer_load_u8 v129, v154, s[8:11], 0 offen
	.loc	1 1069 30 is_stmt 1             ; ragged.py:1069:30
	s_clause 0x7
	buffer_load_u8 v130, v130, s[4:7], 0 offen
	buffer_load_u8 v131, v131, s[4:7], 0 offen
	buffer_load_u8 v132, v132, s[4:7], 0 offen
	buffer_load_u8 v134, v134, s[4:7], 0 offen
	buffer_load_u8 v135, v135, s[4:7], 0 offen
	buffer_load_u8 v136, v136, s[4:7], 0 offen
	buffer_load_u8 v137, v137, s[4:7], 0 offen
	buffer_load_u8 v133, v133, s[4:7], 0 offen
	v_add_nc_u32_e32 v138, 0, v165
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v138, v130
	s_waitcnt vmcnt(6)
	ds_store_b8 v138, v131 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v138, v132 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v138, v134 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v138, v135 offset:1280
	s_waitcnt vmcnt(2)
	ds_store_b8 v138, v136 offset:1536
	s_waitcnt vmcnt(0)
	ds_store_b8 v104, v133
	ds_store_b8 v105, v137
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v149, v113 offset:192
	ds_load_u8 v150, v113 offset:128
	ds_load_u8 v151, v113 offset:208
	ds_load_u8 v152, v113 offset:144
	ds_load_u8 v153, v113 offset:224
	ds_load_u8 v154, v113 offset:160
	ds_load_u8 v165, v113 offset:240
	ds_load_u8 v166, v113 offset:176
	ds_load_u8 v167, v113 offset:448
	ds_load_u8 v168, v113 offset:384
	ds_load_u8 v169, v113 offset:464
	ds_load_u8 v170, v113 offset:400
	ds_load_u8 v171, v113 offset:480
	ds_load_u8 v172, v113 offset:416
	ds_load_u8 v173, v113 offset:496
	ds_load_u8 v174, v113 offset:432
	ds_load_u8 v175, v113 offset:320
	ds_load_u8 v176, v113 offset:256
	ds_load_u8 v177, v113 offset:336
	ds_load_u8 v178, v113 offset:272
	ds_load_u8 v179, v113 offset:352
	ds_load_u8 v180, v113 offset:288
	ds_load_u8 v181, v113 offset:368
	ds_load_u8 v182, v113 offset:304
	ds_load_u8 v183, v113 offset:64
	ds_load_u8 v184, v113 offset:80
	ds_load_u8 v185, v113 offset:96
	ds_load_u8 v186, v113 offset:112
	ds_load_u8 v187, v113
	ds_load_u8 v188, v113 offset:16
	ds_load_u8 v189, v113 offset:32
	ds_load_u8 v190, v113 offset:48
	ds_load_u8 v191, v113 offset:960
	ds_load_u8 v192, v113 offset:896
	ds_load_u8 v193, v113 offset:1024
	ds_load_u8 v194, v113 offset:976
	ds_load_u8 v195, v113 offset:912
	ds_load_u8 v196, v113 offset:992
	ds_load_u8 v197, v113 offset:928
	ds_load_u8 v198, v113 offset:944
	ds_load_u8 v199, v113 offset:832
	ds_load_u8 v200, v113 offset:768
	ds_load_u8 v201, v113 offset:848
	ds_load_u8 v202, v113 offset:784
	ds_load_u8 v203, v113 offset:864
	ds_load_u8 v204, v113 offset:800
	ds_load_u8 v205, v113 offset:880
	ds_load_u8 v206, v113 offset:816
	ds_load_u8 v207, v113 offset:704
	ds_load_u8 v208, v113 offset:640
	ds_load_u8 v209, v113 offset:720
	ds_load_u8 v210, v113 offset:656
	ds_load_u8 v211, v113 offset:736
	ds_load_u8 v212, v113 offset:672
	ds_load_u8 v213, v113 offset:752
	ds_load_u8 v214, v113 offset:688
	ds_load_u8 v215, v113 offset:576
	ds_load_u8 v216, v113 offset:512
	ds_load_u8 v217, v113 offset:592
	ds_load_u8 v218, v113 offset:528
	ds_load_u8 v219, v113 offset:608
	ds_load_u8 v220, v113 offset:544
	ds_load_u8 v221, v113 offset:624
	ds_load_u8 v222, v113 offset:560
	ds_load_u8 v223, v113 offset:1216
	ds_load_u8 v224, v113 offset:1280
	ds_load_u8 v225, v113 offset:1232
	ds_load_u8 v226, v113 offset:1168
	ds_load_u8 v227, v113 offset:1248
	ds_load_u8 v228, v113 offset:1184
	ds_load_u8 v229, v113 offset:1264
	ds_load_u8 v230, v113 offset:1200
	ds_load_u8 v231, v113 offset:1152
	ds_load_u8 v232, v113 offset:1088
	ds_load_u8 v233, v113 offset:1104
	ds_load_u8 v234, v113 offset:1040
	ds_load_u8 v235, v113 offset:1120
	ds_load_u8 v236, v113 offset:1056
	ds_load_u8 v237, v113 offset:1136
	ds_load_u8 v238, v113 offset:1072
	ds_load_u8 v239, v113 offset:1472
	ds_load_u8 v130, v113 offset:1536
	ds_load_u8 v240, v113 offset:1488
	ds_load_u8 v241, v113 offset:1424
	ds_load_u8 v242, v113 offset:1504
	ds_load_u8 v243, v113 offset:1440
	ds_load_u8 v244, v113 offset:1520
	ds_load_u8 v245, v113 offset:1456
	ds_load_u8 v246, v113 offset:1408
	ds_load_u8 v247, v113 offset:1344
	ds_load_u8 v248, v113 offset:1360
	ds_load_u8 v249, v113 offset:1296
	ds_load_u8 v250, v113 offset:1376
	ds_load_u8 v251, v113 offset:1312
	ds_load_u8 v252, v113 offset:1392
	ds_load_u8 v253, v113 offset:1328
	ds_load_u8 v139, v113 offset:1984
	ds_load_u8 v135, v113 offset:2000
	ds_load_u8 v137, v113 offset:1936
	ds_load_u8 v133, v113 offset:2016
	ds_load_u8 v134, v113 offset:1952
	ds_load_u8 v254, v106
	ds_load_u8 v131, v107
	ds_load_u8 v132, v113 offset:1968
	ds_load_u8 v255, v113 offset:1920
	ds_load_u8 v68, v113 offset:1856
	ds_load_u8 v69, v113 offset:1872
	ds_load_u8 v66, v113 offset:1808
	ds_load_u8 v140, v113 offset:1888
	ds_load_u8 v141, v113 offset:1824
	ds_load_u8 v136, v113 offset:1904
	ds_load_u8 v138, v113 offset:1840
	ds_load_u8 v67, v113 offset:1728
	ds_load_u8 v72, v113 offset:1792
	ds_load_u8 v0, v113 offset:1744
	ds_load_u8 v73, v113 offset:1680
	ds_load_u8 v74, v113 offset:1760
	ds_load_u8 v75, v113 offset:1696
	ds_load_u8 v142, v113 offset:1776
	ds_load_u8 v76, v113 offset:1712
	ds_load_u8 v77, v113 offset:1664
	ds_load_u8 v78, v113 offset:1600
	ds_load_u8 v79, v113 offset:1616
	ds_load_u8 v80, v113 offset:1552
	ds_load_u8 v81, v113 offset:1632
	ds_load_u8 v82, v113 offset:1568
	ds_load_u8 v83, v113 offset:1648
	ds_load_u8 v70, v113 offset:1584
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v84, v155
	ds_store_b8 v84, v156 offset:512
	ds_store_b8 v84, v157 offset:1024
	ds_store_b8 v84, v158 offset:1536
	ds_store_b8 v84, v159 offset:2048
	ds_store_b8 v84, v160 offset:2560
	ds_store_b8 v84, v161 offset:3072
	ds_store_b8 v84, v162 offset:3584
	ds_store_b8 v84, v163 offset:4096
	ds_store_b8 v84, v164 offset:4608
	ds_store_b8 v84, v143 offset:5120
	ds_store_b8 v84, v144 offset:5632
	ds_store_b8 v84, v145 offset:6144
	ds_store_b8 v84, v146 offset:6656
	ds_store_b8 v84, v147 offset:7168
	ds_store_b8 v84, v148 offset:7680
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v84, v176, v175, 0xc0c0004
	v_perm_b32 v143, v168, v167, 0xc0c0004
	v_perm_b32 v145, v187, v183, 0xc0c0004
	v_perm_b32 v147, v188, v184, 0xc0c0004
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_store_b8 v108, v114
	ds_store_b8 v108, v115 offset:512
	ds_store_b8 v108, v116 offset:1024
	ds_store_b8 v108, v117 offset:1536
	ds_store_b8 v108, v118 offset:2048
	ds_store_b8 v108, v119 offset:2560
	ds_store_b8 v108, v120 offset:3072
	ds_store_b8 v108, v121 offset:3584
	ds_store_b8 v108, v122 offset:4096
	ds_store_b8 v108, v123 offset:4608
	ds_store_b8 v108, v124 offset:5120
	ds_store_b8 v108, v125 offset:5632
	ds_store_b8 v108, v126 offset:6144
	ds_store_b8 v108, v127 offset:6656
	ds_store_b8 v108, v128 offset:7168
	ds_store_b8 v108, v129 offset:7680
	s_waitcnt lgkmcnt(0)
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v144, v143, 16, v84
	v_perm_b32 v84, v178, v177, 0xc0c0004
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v68, v72, v68, 0xc0c0004
	v_perm_b32 v72, v255, v139, 0xc0c0004
	v_perm_b32 v146, v150, v149, 0xc0c0004
	v_perm_b32 v149, v189, v185, 0xc0c0004
	v_perm_b32 v148, v152, v151, 0xc0c0004
	v_perm_b32 v151, v190, v186, 0xc0c0004
	v_perm_b32 v150, v154, v153, 0xc0c0004
	v_lshl_or_b32 v143, v146, 16, v145
	v_perm_b32 v145, v170, v169, 0xc0c0004
	v_perm_b32 v152, v166, v165, 0xc0c0004
	v_perm_b32 v78, v130, v78, 0xc0c0004
	v_perm_b32 v67, v77, v67, 0xc0c0004
	v_perm_b32 v66, v66, v69, 0xc0c0004
	v_lshl_or_b32 v146, v145, 16, v84
	v_lshl_or_b32 v145, v148, 16, v147
	v_perm_b32 v84, v180, v179, 0xc0c0004
	v_perm_b32 v147, v172, v171, 0xc0c0004
	v_perm_b32 v0, v73, v0, 0xc0c0004
	v_mov_b32_e32 v165, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v147, 16, v84
	v_lshl_or_b32 v147, v150, 16, v149
	v_perm_b32 v84, v182, v181, 0xc0c0004
	v_perm_b32 v149, v174, v173, 0xc0c0004
	v_lshl_or_b32 v150, v149, 16, v84
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_add_nc_u32_e32 v84, 0, v71
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v149, v152, 16, v151
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[114:117], v84 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v84, v200, v199, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[114:115], v[143:144], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[143:144], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[145:146], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[116:117], v[145:146], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[114:115], v[147:148], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[116:117], v[147:148], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[114:115], v[149:150], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[116:117], v[149:150], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v114, v192, v191, 0xc0c0004
	v_perm_b32 v115, v216, v215, 0xc0c0004
	v_perm_b32 v116, v208, v207, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v119, v114, 16, v84
	v_perm_b32 v84, v202, v201, 0xc0c0004
	v_lshl_or_b32 v118, v116, 16, v115
	v_perm_b32 v114, v195, v194, 0xc0c0004
	v_perm_b32 v115, v218, v217, 0xc0c0004
	v_perm_b32 v116, v210, v209, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v121, v114, 16, v84
	v_perm_b32 v84, v204, v203, 0xc0c0004
	v_lshl_or_b32 v120, v116, 16, v115
	v_perm_b32 v114, v197, v196, 0xc0c0004
	v_perm_b32 v115, v220, v219, 0xc0c0004
	v_perm_b32 v116, v212, v211, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v123, v114, 16, v84
	v_perm_b32 v84, v222, v221, 0xc0c0004
	v_lshl_or_b32 v122, v116, 16, v115
	v_perm_b32 v114, v214, v213, 0xc0c0004
	v_perm_b32 v115, v206, v205, 0xc0c0004
	v_perm_b32 v116, v198, v254, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v124, v114, 16, v84
	v_perm_b32 v84, v224, v247, 0xc0c0004
	v_lshl_or_b32 v125, v116, 16, v115
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[114:117], v110 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[114:115], v[118:119], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[118:119], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[120:121], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[116:117], v[120:121], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[114:115], v[122:123], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[116:117], v[122:123], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[114:115], v[124:125], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[116:117], v[124:125], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v114, v246, v239, 0xc0c0004
	v_perm_b32 v115, v193, v232, 0xc0c0004
	v_perm_b32 v116, v231, v223, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v119, v114, 16, v84
	v_perm_b32 v84, v249, v248, 0xc0c0004
	v_lshl_or_b32 v118, v116, 16, v115
	v_perm_b32 v114, v241, v240, 0xc0c0004
	v_perm_b32 v115, v234, v233, 0xc0c0004
	v_perm_b32 v116, v226, v225, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v121, v114, 16, v84
	v_perm_b32 v84, v251, v250, 0xc0c0004
	v_lshl_or_b32 v120, v116, 16, v115
	v_perm_b32 v114, v243, v242, 0xc0c0004
	v_perm_b32 v115, v236, v235, 0xc0c0004
	v_perm_b32 v116, v228, v227, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v123, v114, 16, v84
	v_perm_b32 v84, v253, v252, 0xc0c0004
	v_lshl_or_b32 v122, v116, 16, v115
	v_perm_b32 v114, v245, v244, 0xc0c0004
	v_perm_b32 v115, v238, v237, 0xc0c0004
	v_perm_b32 v116, v230, v229, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v125, v114, 16, v84
	v_lshl_or_b32 v124, v116, 16, v115
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[114:117], v111 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[114:115], v[118:119], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[118:119], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[120:121], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[116:117], v[120:121], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[114:115], v[122:123], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[116:117], v[122:123], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[114:115], v[124:125], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[116:117], v[124:125], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v119, v72, 16, v68
	v_lshl_or_b32 v118, v67, 16, v78
	v_perm_b32 v67, v137, v135, 0xc0c0004
	v_perm_b32 v68, v80, v79, 0xc0c0004
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[114:117], v112 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v121, v67, 16, v66
	v_lshl_or_b32 v120, v0, 16, v68
	v_perm_b32 v0, v141, v140, 0xc0c0004
	v_perm_b32 v66, v134, v133, 0xc0c0004
	v_perm_b32 v67, v82, v81, 0xc0c0004
	v_perm_b32 v68, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v123, v66, 16, v0
	v_perm_b32 v0, v70, v83, 0xc0c0004
	v_lshl_or_b32 v122, v68, 16, v67
	v_perm_b32 v66, v76, v142, 0xc0c0004
	v_perm_b32 v67, v138, v136, 0xc0c0004
	v_perm_b32 v68, v132, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v124, v66, 16, v0
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[114:115], v[118:119], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v125, v68, 16, v67
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[118:119], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[120:121], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[116:117], v[120:121], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[114:115], v[122:123], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[116:117], v[122:123], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[114:115], v[124:125], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[116:117], v[124:125], v[57:64] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v97, v7
	v_cvt_f32_i32_e32 v70, v34
	v_cvt_f32_i32_e32 v34, v35
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v35, off, off offset:68
	scratch_load_b32 v7, off, off offset:72
	scratch_load_b32 v113, off, off offset:60
	scratch_load_b32 v106, off, off offset:64
	v_cvt_f32_i32_e32 v103, v1
	v_cvt_f32_i32_e32 v102, v2
	v_cvt_f32_i32_e32 v101, v3
	v_cvt_f32_i32_e32 v100, v4
	v_cvt_f32_i32_e32 v99, v5
	v_cvt_f32_i32_e32 v98, v6
	v_cvt_f32_i32_e32 v96, v8
	v_cvt_f32_i32_e32 v95, v9
	v_cvt_f32_i32_e32 v94, v10
	v_cvt_f32_i32_e32 v93, v11
	v_cvt_f32_i32_e32 v92, v12
	v_cvt_f32_i32_e32 v91, v13
	v_cvt_f32_i32_e32 v90, v14
	v_cvt_f32_i32_e32 v89, v15
	v_cvt_f32_i32_e32 v88, v16
	v_cvt_f32_i32_e32 v87, v17
	v_cvt_f32_i32_e32 v86, v18
	v_cvt_f32_i32_e32 v85, v19
	v_cvt_f32_i32_e32 v84, v20
	v_cvt_f32_i32_e32 v83, v21
	v_cvt_f32_i32_e32 v82, v22
	v_cvt_f32_i32_e32 v81, v23
	v_cvt_f32_i32_e32 v80, v24
	v_cvt_f32_i32_e32 v79, v25
	v_cvt_f32_i32_e32 v78, v26
	v_cvt_f32_i32_e32 v77, v27
	v_cvt_f32_i32_e32 v76, v28
	v_cvt_f32_i32_e32 v75, v29
	v_cvt_f32_i32_e32 v74, v30
	v_cvt_f32_i32_e32 v73, v31
	v_cvt_f32_i32_e32 v72, v32
	v_cvt_f32_i32_e32 v71, v33
	v_cvt_f32_i32_e32 v33, v36
	v_cvt_f32_i32_e32 v32, v37
	v_cvt_f32_i32_e32 v31, v38
	v_cvt_f32_i32_e32 v30, v39
	v_cvt_f32_i32_e32 v29, v40
	v_cvt_f32_i32_e32 v28, v41
	v_cvt_f32_i32_e32 v27, v42
	v_cvt_f32_i32_e32 v26, v43
	v_cvt_f32_i32_e32 v25, v44
	v_cvt_f32_i32_e32 v24, v45
	v_cvt_f32_i32_e32 v23, v46
	v_cvt_f32_i32_e32 v22, v47
	v_cvt_f32_i32_e32 v21, v48
	v_cvt_f32_i32_e32 v20, v49
	v_cvt_f32_i32_e32 v19, v50
	v_cvt_f32_i32_e32 v18, v51
	v_cvt_f32_i32_e32 v17, v52
	v_cvt_f32_i32_e32 v16, v53
	v_cvt_f32_i32_e32 v15, v54
	v_cvt_f32_i32_e32 v14, v55
	v_cvt_f32_i32_e32 v13, v56
	v_cvt_f32_i32_e32 v12, v57
	v_cvt_f32_i32_e32 v11, v58
	v_cvt_f32_i32_e32 v10, v59
	v_cvt_f32_i32_e32 v9, v60
	v_cvt_f32_i32_e32 v4, v61
	v_cvt_f32_i32_e32 v3, v62
	v_cvt_f32_i32_e32 v2, v63
	v_cvt_f32_i32_e32 v1, v64
	v_dual_mov_b32 v8, s17 :: v_dual_mov_b32 v5, v65
	v_mov_b32_e32 v6, s74
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v0, 48, v113
	v_or_b32_e32 v39, 16, v113
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s65, s13, 0xffff
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v36, s0, s74, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v37, null, s75, 0, s0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 32, v113
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	s_mov_b32 s64, s12
	s_mov_b32 s27, 0x76543210
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[76:77], v[36:37]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[78:79], v[36:37]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v37, s1, s74, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v38, null, s75, 0, s1
	v_add_co_u32 v39, s1, s74, v39
	v_add_co_ci_u32_e64 v40, null, s75, 0, s1
	v_add_co_u32 v41, s1, s74, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v42, null, s75, 0, s1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[76:77], v[39:40]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[78:79], v[39:40]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[76:77], v[37:38]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s7, s[76:77], v[41:42]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[78:79], v[41:42]
	v_cmp_gt_i64_e64 s4, s[78:79], v[37:38]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v0, 1, v41
	v_lshlrev_b32_e32 v38, 1, v39
	v_lshlrev_b32_e32 v36, 1, v36
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s7, s7, s8
	s_and_b32 s5, s5, s6
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s7
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s4
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e64 v38, 0x80000000, v38, s5
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	s_clause 0x3
	buffer_load_u16 v0, v0, s[64:67], 0 offen
	buffer_load_u16 v59, v38, s[64:67], 0 offen
	buffer_load_u16 v60, v37, s[64:67], 0 offen
	buffer_load_u16 v61, v36, s[64:67], 0 offen
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_or_b32_e32 v36, s16, v165
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s65, s15, 0xffff
	s_mov_b32 s64, s14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_lshl_u32 v8, v36, v8, 1
	buffer_load_u16 v62, v8, s[64:67], 0 offen
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(5)
	v_lshrrev_b32_e32 v8, 7, v106
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s72, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v37, 62, v8
	v_or_b32_e32 v38, 60, v8
	v_or_b32_e32 v39, 58, v8
	v_or_b32_e32 v41, 56, v8
	v_or_b32_e32 v43, 54, v8
	v_or_b32_e32 v45, 52, v8
	v_or_b32_e32 v47, 50, v8
	v_or_b32_e32 v49, 48, v8
	v_or_b32_e32 v51, 46, v8
	v_or_b32_e32 v53, 44, v8
	v_or_b32_e32 v55, 42, v8
	v_or_b32_e32 v57, 40, v8
	v_or_b32_e32 v64, 38, v8
	v_or_b32_e32 v66, 36, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s65, s72, s65
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s73, s65, 1
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v63, 28, v35
	v_lshlrev_b32_e32 v35, 5, v165
	v_and_b32_e32 v36, 0xf0, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v65, 32, v35
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v35, s0, s74, v37
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v67, v36, 2, 0
	v_lshl_add_u32 v68, v36, 1, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v36, null, s75, 0, s0
	v_add_co_u32 v37, s0, s74, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v38, null, s75, 0, s0
	v_add_co_u32 v39, s0, s74, v39
	v_add_co_ci_u32_e64 v40, null, s75, 0, s0
	v_add_co_u32 v41, s0, s74, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v42, null, s75, 0, s0
	v_add_co_u32 v43, s0, s74, v43
	v_add_co_ci_u32_e64 v44, null, s75, 0, s0
	v_add_co_u32 v45, s0, s74, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v46, null, s75, 0, s0
	v_add_co_u32 v47, s0, s74, v47
	v_add_co_ci_u32_e64 v48, null, s75, 0, s0
	v_add_co_u32 v49, s0, s74, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v50, null, s75, 0, s0
	v_add_co_u32 v51, s0, s74, v51
	v_add_co_ci_u32_e64 v52, null, s75, 0, s0
	v_add_co_u32 v53, s0, s74, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v54, null, s75, 0, s0
	v_add_co_u32 v55, s0, s74, v55
	v_add_co_ci_u32_e64 v56, null, s75, 0, s0
	v_add_co_u32 v57, s0, s74, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v58, null, s75, 0, s0
	v_add_co_u32 v104, s0, s74, v64
	v_add_co_ci_u32_e64 v105, null, s75, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[76:77], v[35:36]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[78:79], v[35:36]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v35, 16, v59
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[76:77], v[37:38]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[78:79], v[37:38]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[76:77], v[41:42]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[78:79], v[41:42]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[76:77], v[43:44]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[78:79], v[43:44]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s14, s[76:77], v[47:48]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[78:79], v[47:48]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s20, s[76:77], v[53:54]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[78:79], v[53:54]
	.loc	1 1119 36 is_stmt 1             ; ragged.py:1119:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v53, 16, v62
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v59, v82, v35
	v_dual_mul_f32 v38, v103, v0 :: v_dual_lshlrev_b32 v37, 16, v61
	v_mul_f32_e32 v42, v99, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v63, v67, v65, v63
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v44, v97, v0
	v_dual_mul_f32 v61, v80, v35 :: v_dual_lshlrev_b32 v36, 16, v60
	v_mul_f32_e32 v48, v93, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[76:77], v[39:40]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[78:79], v[39:40]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s12, s[76:77], v[45:46]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[78:79], v[45:46]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s16, s[76:77], v[49:50]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[78:79], v[49:50]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s18, s[76:77], v[51:52]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[78:79], v[51:52]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s22, s[76:77], v[55:56]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[78:79], v[55:56]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s24, s[76:77], v[57:58]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s25, s[78:79], v[57:58]
	.loc	1 1115 17 is_stmt 1             ; ragged.py:1115:17
	v_mul_f32_e32 v39, v102, v0
	v_mul_f32_e32 v40, v101, v0
	v_mul_f32_e32 v41, v100, v0
	v_dual_mul_f32 v43, v98, v0 :: v_dual_mul_f32 v54, v87, v35
	v_dual_mul_f32 v45, v96, v0 :: v_dual_mul_f32 v56, v85, v35
	v_mul_f32_e32 v46, v95, v0
	v_dual_mul_f32 v47, v94, v0 :: v_dual_mul_f32 v58, v83, v35
	v_dual_mul_f32 v49, v92, v0 :: v_dual_mul_f32 v60, v81, v35
	v_dual_mul_f32 v50, v91, v0 :: v_dual_mul_f32 v65, v77, v35
	v_dual_mul_f32 v51, v90, v0 :: v_dual_mul_f32 v62, v79, v35
	v_dual_mul_f32 v52, v89, v0 :: v_dual_mul_f32 v67, v76, v35
	v_dual_mul_f32 v0, v88, v0 :: v_dual_mul_f32 v69, v75, v35
	v_mul_f32_e32 v55, v86, v35
	v_mul_f32_e32 v57, v84, v35
	v_dual_mul_f32 v64, v78, v35 :: v_dual_mul_f32 v71, v71, v36
	v_dual_mul_f32 v74, v74, v35 :: v_dual_mul_f32 v33, v33, v36
	v_dual_mul_f32 v73, v73, v35 :: v_dual_mul_f32 v70, v70, v36
	v_dual_mul_f32 v35, v72, v35 :: v_dual_mul_f32 v34, v34, v36
	v_dual_mul_f32 v72, v32, v36 :: v_dual_mul_f32 v19, v19, v37
	v_dual_mul_f32 v75, v31, v36 :: v_dual_mul_f32 v20, v20, v37
	v_mul_f32_e32 v76, v30, v36
	v_dual_mul_f32 v77, v29, v36 :: v_dual_mul_f32 v86, v15, v37
	v_mul_f32_e32 v78, v28, v36
	v_dual_mul_f32 v79, v27, v36 :: v_dual_mul_f32 v14, v14, v37
	v_dual_mul_f32 v80, v26, v36 :: v_dual_mul_f32 v85, v16, v37
	v_dual_mul_f32 v81, v25, v36 :: v_dual_mul_f32 v12, v12, v37
	v_dual_mul_f32 v82, v24, v36 :: v_dual_mul_f32 v13, v13, v37
	v_dual_mul_f32 v83, v23, v36 :: v_dual_mul_f32 v10, v10, v37
	v_dual_mul_f32 v84, v22, v36 :: v_dual_mul_f32 v11, v11, v37
	v_dual_mul_f32 v36, v21, v36 :: v_dual_mul_f32 v3, v3, v37
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v63, v53
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v68
	ds_load_b128 v[25:28], v68 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v53, v18, v37
	v_mul_f32_e32 v63, v17, v37
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[15:18], v68 offset:512
	ds_load_b128 v[29:32], v68 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v9, v9, v37
	v_mul_f32_e32 v4, v4, v37
	v_mul_f32_e32 v2, v2, v37
	v_mul_f32_e32 v1, v1, v37
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s26, s[76:77], v[104:105]
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v37, v38, v21 :: v_dual_mul_f32 v38, v39, v22
	v_dual_mul_f32 v39, v40, v23 :: v_dual_mul_f32 v40, v41, v24
	v_dual_mul_f32 v41, v42, v25 :: v_dual_mul_f32 v42, v43, v26
	v_dual_mul_f32 v43, v44, v27 :: v_dual_mul_f32 v44, v45, v28
	v_dual_mul_f32 v45, v46, v15 :: v_dual_mul_f32 v46, v47, v16
	v_dual_mul_f32 v47, v48, v17 :: v_dual_mul_f32 v48, v49, v18
	v_dual_mul_f32 v49, v50, v29 :: v_dual_mul_f32 v50, v51, v30
	v_dual_mul_f32 v51, v52, v31 :: v_dual_mul_f32 v52, v54, v21
	v_mul_f32_e32 v0, v0, v32
	v_dual_mul_f32 v54, v55, v22 :: v_dual_mul_f32 v55, v56, v23
	v_dual_mul_f32 v56, v57, v24 :: v_dual_mul_f32 v57, v58, v25
	v_dual_mul_f32 v58, v59, v26 :: v_dual_mul_f32 v59, v60, v27
	v_dual_mul_f32 v60, v61, v28 :: v_dual_mul_f32 v61, v62, v15
	v_mul_f32_e32 v62, v64, v16
	v_dual_mul_f32 v64, v65, v17 :: v_dual_mul_f32 v35, v35, v32
	v_mul_f32_e32 v65, v67, v18
	v_dual_mul_f32 v67, v69, v29 :: v_dual_mul_f32 v68, v74, v30
	v_mul_f32_e32 v69, v73, v31
	v_dual_mul_f32 v71, v71, v21 :: v_dual_mul_f32 v70, v70, v22
	v_dual_mul_f32 v34, v34, v23 :: v_dual_mul_f32 v33, v33, v24
	v_dual_mul_f32 v72, v72, v25 :: v_dual_mul_f32 v73, v75, v26
	v_dual_mul_f32 v74, v76, v27 :: v_dual_mul_f32 v75, v77, v28
	v_dual_mul_f32 v76, v78, v15 :: v_dual_mul_f32 v77, v79, v16
	v_dual_mul_f32 v78, v80, v17 :: v_dual_mul_f32 v79, v81, v18
	v_dual_mul_f32 v80, v82, v29 :: v_dual_mul_f32 v81, v83, v30
	v_dual_mul_f32 v82, v84, v31 :: v_dual_mul_f32 v19, v19, v22
	v_mul_f32_e32 v36, v36, v32
	v_dual_mul_f32 v20, v20, v21 :: v_dual_mul_f32 v13, v13, v28
	v_dual_mul_f32 v21, v53, v23 :: v_dual_mul_f32 v22, v63, v24
	v_dual_mul_f32 v23, v85, v25 :: v_dual_mul_f32 v24, v86, v26
	v_dual_mul_f32 v11, v11, v16 :: v_dual_mul_f32 v14, v14, v27
	v_dual_mul_f32 v9, v9, v18 :: v_dual_mul_f32 v12, v12, v15
	v_dual_mul_f32 v3, v3, v30 :: v_dual_mul_f32 v10, v10, v17
	v_dual_mul_f32 v1, v1, v32 :: v_dual_mul_f32 v4, v4, v29
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_max_f32_e32 v17, 0, v39
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v2, v2, v31 :: v_dual_max_f32 v15, 0, v37
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v16, 0, v38 :: v_dual_max_f32 v25, 0, v41
	v_dual_max_f32 v18, 0, v40 :: v_dual_max_f32 v27, 0, v43
	v_dual_max_f32 v26, 0, v42 :: v_dual_max_f32 v29, 0, v45
	v_dual_max_f32 v28, 0, v44 :: v_dual_max_f32 v31, 0, v47
	v_dual_max_f32 v30, 0, v46 :: v_dual_max_f32 v37, 0, v49
	v_dual_max_f32 v32, 0, v48 :: v_dual_max_f32 v39, 0, v51
	v_dual_max_f32 v38, 0, v50 :: v_dual_max_f32 v43, 0, v56
	v_dual_max_f32 v0, 0, v0 :: v_dual_max_f32 v41, 0, v54
	v_dual_max_f32 v40, 0, v52 :: v_dual_max_f32 v47, 0, v58
	v_dual_max_f32 v42, 0, v55 :: v_dual_max_f32 v51, 0, v60
	v_dual_max_f32 v46, 0, v57 :: v_dual_max_f32 v55, 0, v62
	v_dual_max_f32 v50, 0, v59 :: v_dual_max_f32 v59, 0, v65
	v_dual_max_f32 v54, 0, v61 :: v_dual_max_f32 v67, 0, v67
	v_dual_max_f32 v58, 0, v64 :: v_dual_max_f32 v35, 0, v35
	v_dual_max_f32 v83, 0, v68 :: v_dual_max_f32 v84, 0, v69
	v_dual_max_f32 v85, 0, v71 :: v_dual_max_f32 v70, 0, v70
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v33, 0, v33
	v_dual_max_f32 v86, 0, v72 :: v_dual_max_f32 v87, 0, v73
	v_dual_max_f32 v88, 0, v74 :: v_dual_max_f32 v89, 0, v75
	v_dual_max_f32 v90, 0, v76 :: v_dual_max_f32 v91, 0, v77
	v_dual_max_f32 v92, 0, v78 :: v_dual_max_f32 v93, 0, v79
	v_dual_max_f32 v94, 0, v80 :: v_dual_max_f32 v95, 0, v81
	v_dual_max_f32 v96, 0, v82 :: v_dual_max_f32 v97, 0, v36
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v19, 0, v19
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v1, 0, v1
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v44, v15, v15 :: v_dual_mul_f32 v45, v16, v16
	v_dual_mul_f32 v48, v17, v17 :: v_dual_mul_f32 v49, v18, v18
	v_dual_mul_f32 v52, v25, v25 :: v_dual_mul_f32 v53, v26, v26
	v_dual_mul_f32 v60, v29, v29 :: v_dual_mul_f32 v61, v30, v30
	v_dual_mul_f32 v64, v31, v31 :: v_dual_mul_f32 v65, v32, v32
	v_dual_mul_f32 v71, v37, v37 :: v_dual_mul_f32 v72, v38, v38
	v_dual_mul_f32 v75, v39, v39 :: v_dual_mul_f32 v76, v0, v0
	v_dual_mul_f32 v79, v40, v40 :: v_dual_mul_f32 v80, v41, v41
	v_dual_mul_f32 v81, v42, v42 :: v_dual_mul_f32 v82, v43, v43
	v_dual_mul_f32 v78, v46, v46 :: v_dual_mul_f32 v77, v47, v47
	v_dual_mul_f32 v68, v54, v54 :: v_dual_mul_f32 v69, v55, v55
	v_dual_mul_f32 v62, v58, v58 :: v_dual_mul_f32 v63, v59, v59
	v_dual_mul_f32 v58, v67, v67 :: v_dual_mul_f32 v55, v84, v84
	v_mul_f32_e32 v59, v83, v83
	v_dual_mul_f32 v56, v27, v27 :: v_dual_mul_f32 v57, v28, v28
	v_dual_mul_f32 v73, v50, v50 :: v_dual_mul_f32 v74, v51, v51
	v_dual_mul_f32 v54, v35, v35 :: v_dual_mul_f32 v51, v70, v70
	v_mul_f32_e32 v50, v85, v85
	v_dual_mul_f32 v46, v34, v34 :: v_dual_mul_f32 v47, v33, v33
	v_dual_mul_f32 v42, v86, v86 :: v_dual_mul_f32 v43, v87, v87
	v_dual_mul_f32 v38, v90, v90 :: v_dual_mul_f32 v37, v91, v91
	v_dual_mul_f32 v35, v92, v92 :: v_dual_mul_f32 v36, v93, v93
	v_dual_mul_f32 v34, v94, v94 :: v_dual_mul_f32 v33, v95, v95
	v_dual_mul_f32 v31, v96, v96 :: v_dual_mul_f32 v32, v97, v97
	v_dual_mul_f32 v30, v20, v20 :: v_dual_mul_f32 v29, v21, v21
	v_dual_mul_f32 v28, v19, v19 :: v_dual_mul_f32 v27, v22, v22
	v_dual_mul_f32 v26, v23, v23 :: v_dual_mul_f32 v25, v24, v24
	v_dual_mul_f32 v21, v14, v14 :: v_dual_mul_f32 v22, v13, v13
	v_dual_mul_f32 v23, v12, v12 :: v_dual_mul_f32 v24, v11, v11
	v_dual_mul_f32 v20, v10, v10 :: v_dual_mul_f32 v15, v4, v4
	v_dual_mul_f32 v14, v9, v9 :: v_dual_mul_f32 v17, v2, v2
	v_mul_f32_e32 v16, v3, v3
	v_dual_mul_f32 v18, v1, v1 :: v_dual_max_f32 v9, v79, v80
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v44, v45
	v_max3_f32 v1, v49, v52, v53
	v_max3_f32 v3, v61, v64, v65
	v_max3_f32 v4, v71, v72, v75
	v_max3_f32 v10, v82, v78, v77
	v_max3_f32 v11, v69, v62, v63
	v_max3_f32 v12, v58, v59, v55
.Ltmp6:
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v39, v88, v88 :: v_dual_mul_f32 v40, v89, v89
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v56, v57, v60
	v_max3_f32 v0, v0, v48, v1
	v_max3_f32 v1, v3, v4, v76
	v_max3_f32 v3, v73, v74, v68
	v_max3_f32 v4, v9, v81, v10
	v_max3_f32 v9, v11, v12, v54
	v_max_f32_e32 v10, v50, v51
	v_max3_f32 v11, v47, v42, v43
	v_max3_f32 v12, v37, v35, v36
	v_max3_f32 v13, v34, v33, v31
	v_max3_f32 v0, v0, v2, v1
	v_max3_f32 v2, v4, v3, v9
	v_max3_f32 v1, v39, v40, v38
	v_max3_f32 v3, v10, v46, v11
	v_max3_f32 v4, v12, v13, v32
	v_max_f32_e32 v9, v30, v28
	v_max3_f32 v10, v27, v26, v25
	v_max3_f32 v11, v24, v20, v14
	v_max3_f32 v12, v15, v16, v17
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v13, v0, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v3, v1, v4
	v_max3_f32 v1, v21, v22, v23
	v_max3_f32 v4, v9, v29, v10
	v_max3_f32 v9, v11, v12, v18
	v_max_f32_e32 v10, v13, v13
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v2, s27, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v3, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s28, s74, v66
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v4, v1, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v12, v12, v12
	v_dual_max_f32 v1, v0, v10 :: v_dual_and_b32 v0, 3, v165
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v9, v4, s27, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v11 :: v_dual_and_b32 v41, 8, v165
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v11, 4, v165
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v12
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v13, v0, 9, 0
	v_lshlrev_b32_e32 v19, 5, v0
	v_lshlrev_b32_e32 v12, 4, v165
	v_and_b32_e32 v10, 0x60, v165
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v13, v11, 2, v13
	v_lshlrev_b32_e32 v67, 1, v106
	v_and_or_b32 v66, 0x680, v12, v19
	v_xor_b32_e32 v19, v19, v10
	v_lshrrev_b32_e32 v70, 3, v106
	v_lshl_add_u32 v13, v41, 4, v13
	v_lshl_add_u32 v85, v11, 6, 0
	v_xor_b32_e32 v66, v66, v10
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v9
.Ltmp21:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s75, 0, s28
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v9, v13, v67, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v19, v85, v70, v66
.Ltmp23:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v13, 34, v8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s28, s[76:77], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s29, s[78:79], v[83:84]
.Ltmp24:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v9, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v19
.Ltmp25:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s27, s74, v13
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 32, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s75, 0, s27
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v13, 30, v8
	v_or_b32_e32 v19, 28, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s33, s74, v9
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s30, s[76:77], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s31, s[78:79], v[85:86]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s75, 0, s33
	v_add_co_u32 v85, s33, s74, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v86, null, s75, 0, s33
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s33, s[76:77], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s34, s[78:79], v[83:84]
.Ltmp26:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v9, v1
	v_dual_mov_b32 v13, v2 :: v_dual_mov_b32 v66, v3
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v66, v66 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v67, v4, v4
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v13, v13, v13
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v4, v4, v4
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp33:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s35, s[76:77], v[85:86]
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v66
	v_max_f32_e32 v13, v2, v13
.Ltmp35:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s36, s[78:79], v[85:86]
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v12, 0x2f0, v12
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s27, s[78:79], v[104:105]
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v66, v3
	v_mov_b32_e32 v70, v13
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v9, v1, v9 :: v_dual_max_f32 v4, v67, v4
.Ltmp38:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s37, s74, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s75, 0, s37
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v66, v66 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s37, s[76:77], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s38, s[78:79], v[1:2]
.Ltmp41:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v70, v70 :: v_dual_mov_b32 v67, v4
.Ltmp42:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v70, 6, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v13, v2
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v19, v9
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v67, v67
.Ltmp46:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v67, 24, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v19, v19
.Ltmp48:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v19, 26, v8
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp50:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s40, s74, v67
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v9, v1
	v_max_f32_e32 v9, v66, v66
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v66, v2
.Ltmp53:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s39, s74, v19
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v13, v4
.Ltmp55:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s75, 0, s39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s75, 0, s40
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp59:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s39, s[76:77], v[83:84]
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp61:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s41, s[76:77], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s42, s[78:79], v[85:86]
.Ltmp62:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v66 :: v_dual_mov_b32 v19, v1
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v66, 1, v10
.Ltmp64:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v10, 5, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_max_f32_e32 v1, v1, v19
	v_max_f32_e32 v19, v13, v13
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v13, 4, v0
	v_lshlrev_b32_e32 v0, 3, v41
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v9
	v_dual_max_f32 v4, v4, v19 :: v_dual_add_nc_u32 v41, 0, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v9, v3
	v_add3_u32 v19, v41, v66, v0
.Ltmp70:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v41, 22, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v87, s40, s74, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v88, null, s75, 0, s40
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp74:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s40, s[78:79], v[83:84]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s43, s[76:77], v[87:88]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s44, s[78:79], v[87:88]
.Ltmp75:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v9
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v9, 5, v11
	v_add_nc_u32_e32 v11, 0, v13
	ds_store_b128 v19, v[1:4]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v11, v9, v0
	s_barrier
.Ltmp77:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 18, v8
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[1:4], v0
.Ltmp79:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 20, v8
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s45, s74, v0
	v_add_co_ci_u32_e64 v84, null, s75, 0, s45
	v_add_co_u32 v85, s45, s74, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v86, null, s75, 0, s45
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s45, s[76:77], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s46, s[78:79], v[83:84]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 12, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s47, s[76:77], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s48, s[78:79], v[85:86]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v0, v1, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v8
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v2, v2, v2
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s49, s74, v1
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v1, 14, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s75, 0, s49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v11, null, 0x40e00000, 0x40e00000, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s49, s74, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v86, null, s75, 0, s49
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v1, v11
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v87, s49, s74, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 10, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v88, null, s75, 0, s49
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s49, s[76:77], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s50, s[78:79], v[83:84]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v83, s55, s74, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v19, -v11, v1, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 8, v8
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s51, s[76:77], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s52, s[78:79], v[85:86]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v1, v19, v1
	v_div_scale_f32 v19, vcc_lo, v0, 0x40e00000, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s75, 0, s55
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v41, null, 0x40e00000, 0x40e00000, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s55, s74, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v9, v19, v1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s75, 0, s55
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s55, s[76:77], v[83:84]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v66, v41
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s56, s[78:79], v[83:84]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v67, -v11, v9, v19
	v_max_f32_e32 v83, 0x2b8cbccc, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s57, s[76:77], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s58, s[78:79], v[85:86]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s53, s[76:77], v[87:88]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v9, v67, v1
	v_max_f32_e32 v67, 0x2b8cbccc, v4
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v83
	v_fma_f32 v2, -v41, v66, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v11, -v11, v9, v19
	v_div_scale_f32 v19, s61, v3, 0x40e00000, v3
	v_rcp_f32_e32 v84, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v66, v2, v66
	v_div_scale_f32 v85, null, 0x40e00000, 0x40e00000, v67
	v_div_fmas_f32 v9, v11, v1, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s59, s74, v70
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v11, v19, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v86, v85
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s54, s[78:79], v[87:88]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v70, -v4, v84, 1.0
	v_div_fixup_f32 v0, v9, 0x40e00000, v0
	v_fma_f32 v9, -v41, v11, v19
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v87.h, 0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s75, 0, s59
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v84, v70, v84
	v_div_scale_f32 v70, s62, v83, 0x40e00000, v83
	v_fmac_f32_e32 v11, v9, v66
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v9.l, v0.h
	v_mov_b16_e32 v9.h, v87.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v88, v70, v84
	v_fma_f32 v89, -v85, v86, 1.0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s59, s[76:77], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[78:79], v[1:2]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v1, -v41, v11, v19
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v9, -v4, v88, v70
	v_fmac_f32_e32 v86, v89, v86
	v_div_scale_f32 v19, s63, v67, 0x40e00000, v67
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v88, v9, v84
	v_div_fmas_f32 v1, v1, v66, v11
	v_mul_f32_e32 v11, v19, v86
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v9, v0, v2, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v2, -v4, v88, v70
	v_div_fixup_f32 v1, v1, 0x40e00000, v3
	v_fma_f32 v3, -v85, v11, v19
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v66, 0xffff0000, v9
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 4, v8
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v2, v84, v88
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v11, v3, v86
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v66, v66, v44
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s61, s74, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v19, -v85, v11, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v0, v84
	v_div_scale_f32 v85, null, v66, v66, v45
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v87.l, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v11, v19, v86, v11
	v_div_fixup_f32 v2, v2, 0x40e00000, v83
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v88, vcc_lo, v44, v66, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v67, v11, 0x40e00000, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v19, -v84, v0, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v41, 1, v87
	v_mov_b16_e32 v11.l, v2.h
	v_mov_b16_e32 v11.h, v87.h
	v_mov_b16_e32 v87.l, v67.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v0, v19, v0
	v_div_scale_f32 v90, null, v66, v66, v48
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v1, v41, 0x7fff
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v89, v88, v0
	v_fma_f32 v41, -v85, v86, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v70, 1, v87
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v91, v90
	v_div_scale_f32 v92, null, v66, v66, v49
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s75, 0, s61
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v11, v2, v11, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v84, v89, v88
	v_fmac_f32_e32 v86, v41, v86
	v_div_scale_f32 v93, s61, v45, v66, v45
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v67, v70, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v67, v92
	v_fmac_f32_e32 v89, v87, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v87, v93, v86
	v_fma_f32 v94, -v90, v91, 1.0
	v_div_scale_f32 v96, null, v66, v66, v52
	v_fma_f32 v84, -v84, v89, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v85, v87, v93
	v_fmac_f32_e32 v91, v94, v91
	v_div_scale_f32 v94, s62, v48, v66, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v95, -v92, v67, 1.0
	v_div_fmas_f32 v0, v84, v0, v89
	v_dual_fmac_f32 v87, v88, v86 :: v_dual_mul_f32 v84, v94, v91
	v_rcp_f32_e32 v88, v96
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v67, v95, v67
	v_div_scale_f32 v89, s63, v49, v66, v49
	v_div_scale_f32 v95, null, v66, v66, v53
	v_div_fixup_f32 v44, v0, v66, v44
	v_fma_f32 v0, -v85, v87, v93
	v_fma_f32 v85, -v90, v84, v94
	v_mul_f32_e32 v93, v89, v67
	v_rcp_f32_e32 v97, v95
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v98, -v96, v88, 1.0
	v_div_fmas_f32 v0, v0, v86, v87
	v_fmac_f32_e32 v84, v85, v91
	v_fma_f32 v85, -v92, v93, v89
	v_div_scale_f32 v86, s61, v52, v66, v52
	v_fmac_f32_e32 v88, v98, v88
	v_div_fixup_f32 v45, v0, v66, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v95, v97, 1.0
	v_fma_f32 v0, -v90, v84, v94
	v_fmac_f32_e32 v93, v85, v67
	v_div_scale_f32 v90, null, v66, v66, v56
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v85, v86, v88
	v_fmac_f32_e32 v97, v87, v97
	v_div_scale_f32 v87, s64, v53, v66, v53
	v_div_fmas_f32 v0, v0, v91, v84
	v_fma_f32 v84, -v92, v93, v89
	v_rcp_f32_e32 v91, v90
	v_div_scale_f32 v94, null, v66, v66, v57
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v89, -v96, v85, v86
	v_mul_f32_e32 v92, v87, v97
	v_div_fmas_f32 v67, v84, v67, v93
	v_rcp_f32_e32 v84, v94
	v_div_fixup_f32 v48, v0, v66, v48
	v_fmac_f32_e32 v85, v89, v88
	v_fma_f32 v89, -v95, v92, v87
	v_fma_f32 v93, -v90, v91, 1.0
	v_div_fixup_f32 v49, v67, v66, v49
	v_div_scale_f32 v67, s62, v56, v66, v56
	v_fma_f32 v0, -v96, v85, v86
	v_fmac_f32_e32 v92, v89, v97
	v_fmac_f32_e32 v91, v93, v91
	v_fma_f32 v86, -v94, v84, 1.0
	v_div_scale_f32 v89, null, v66, v66, v60
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v93, null, v66, v66, v61
	v_div_fmas_f32 v0, v0, v88, v85
	v_fma_f32 v85, -v95, v92, v87
	v_dual_mul_f32 v87, v67, v91 :: v_dual_fmac_f32 v84, v86, v84
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v88, s61, v57, v66, v57
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v52, v0, v66, v52
	v_div_fmas_f32 v85, v85, v97, v92
	v_fma_f32 v92, -v90, v87, v67
	v_mul_f32_e32 v95, v88, v84
	v_rcp_f32_e32 v97, v93
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v89, v86, 1.0
	v_fmac_f32_e32 v87, v92, v91
	v_fma_f32 v0, -v94, v95, v88
	v_div_scale_f32 v92, null, v66, v66, v64
	v_div_fixup_f32 v53, v85, v66, v53
	v_fmac_f32_e32 v86, v96, v86
	v_div_scale_f32 v85, s63, v60, v66, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v96, -v93, v97, 1.0
	v_fma_f32 v67, -v90, v87, v67
	v_fmac_f32_e32 v95, v0, v84
	v_rcp_f32_e32 v90, v92
	v_dual_mul_f32 v0, v85, v86 :: v_dual_fmac_f32 v97, v96, v97
	v_div_scale_f32 v96, s64, v61, v66, v61
	v_div_fmas_f32 v67, v67, v91, v87
	v_fma_f32 v87, -v94, v95, v88
	v_div_scale_f32 v98, null, v66, v66, v65
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v88, -v89, v0, v85
	v_mul_f32_e32 v91, v96, v97
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v90, 1.0
	v_div_fmas_f32 v84, v87, v84, v95
	v_rcp_f32_e32 v87, v98
	v_fmac_f32_e32 v0, v88, v86
	v_fma_f32 v88, -v93, v91, v96
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s61, v64, v66, v64
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v83, 0xffff0000, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v56, v67, v66, v56
	v_div_fixup_f32 v57, v84, v66, v57
	v_fma_f32 v67, -v89, v0, v85
	v_dual_fmac_f32 v91, v88, v97 :: v_dual_mul_f32 v84, v94, v90
	v_fma_f32 v85, -v98, v87, 1.0
	v_div_scale_f32 v88, null, v66, v66, v71
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v89, s62, v65, v66, v65
	v_div_fmas_f32 v0, v67, v86, v0
	v_fma_f32 v67, -v93, v91, v96
	v_fma_f32 v86, -v92, v84, v94
	v_fmac_f32_e32 v87, v85, v87
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v93, null, v66, v66, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v86, v90
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v60, v0, v66, v60
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v67, v67, v97, v91
	v_mul_f32_e32 v91, v89, v87
	v_fma_f32 v0, -v92, v84, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v88, v85, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v61, v67, v66, v61
	v_fma_f32 v67, -v98, v91, v89
	v_div_scale_f32 v92, s63, v71, v66, v71
	v_fmac_f32_e32 v85, v95, v85
	v_fma_f32 v94, -v93, v86, 1.0
	v_div_scale_f32 v95, null, v66, v66, v75
	v_div_fmas_f32 v0, v0, v90, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v67, v87 :: v_dual_fmac_f32 v86, v94, v86
	v_rcp_f32_e32 v84, v95
	v_div_scale_f32 v94, null, v66, v66, v76
	v_mul_f32_e32 v67, v92, v85
	v_div_scale_f32 v90, s61, v72, v66, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v97, v94
	v_div_fixup_f32 v64, v0, v66, v64
	v_fma_f32 v0, -v98, v91, v89
	v_fma_f32 v89, -v88, v67, v92
	v_mul_f32_e32 v96, v90, v86
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v70, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v87, v91
	v_fmac_f32_e32 v67, v89, v85
	v_fma_f32 v87, -v93, v96, v90
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v89, s62, v75, v66, v75
	v_fma_f32 v91, -v94, v97, 1.0
	v_div_fixup_f32 v65, v0, v66, v65
	v_fma_f32 v0, -v88, v67, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v96, v87, v86 :: v_dual_mul_f32 v87, v89, v84
	v_fmac_f32_e32 v97, v91, v97
	v_div_scale_f32 v91, null, v83, v83, v79
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v88, s64, v76, v66, v76
	v_div_fmas_f32 v0, v0, v85, v67
	v_fma_f32 v67, -v93, v96, v90
	v_fma_f32 v85, -v95, v87, v89
	v_rcp_f32_e32 v90, v91
	v_div_scale_f32 v93, null, v83, v83, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v92, v88, v97 :: v_dual_fmac_f32 v87, v85, v84
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v85, v93
	v_div_fmas_f32 v67, v67, v86, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v86, -v94, v92, v88
	v_div_fixup_f32 v71, v0, v66, v71
	v_fma_f32 v96, -v91, v90, 1.0
	v_fma_f32 v0, -v95, v87, v89
	v_div_fixup_f32 v72, v67, v66, v72
	v_fmac_f32_e32 v92, v86, v97
	v_div_scale_f32 v67, s61, v79, v83, v79
	v_fmac_f32_e32 v90, v96, v90
	v_fma_f32 v86, -v93, v85, 1.0
	v_div_scale_f32 v89, null, v83, v83, v81
	s_mov_b32 vcc_lo, s62
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v19, 2, v8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v84, v87
	v_fma_f32 v84, -v94, v92, v88
	v_mul_f32_e32 v87, v67, v90
	v_fmac_f32_e32 v85, v86, v85
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v88, s62, v80, v83, v80
	v_div_scale_f32 v94, null, v83, v83, v82
	s_mov_b32 vcc_lo, s64
	v_mul_f32_e32 v95, v88, v85
	v_div_fmas_f32 v84, v84, v97, v92
	v_fma_f32 v92, -v91, v87, v67
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v89, v86, 1.0
	v_div_fixup_f32 v75, v0, v66, v75
	v_fma_f32 v0, -v93, v95, v88
	v_fmac_f32_e32 v87, v92, v90
	v_div_fixup_f32 v76, v84, v66, v76
	v_fmac_f32_e32 v86, v96, v86
	v_div_scale_f32 v66, s63, v81, v83, v81
	v_div_scale_f32 v84, null, v83, v83, v78
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v94, v97, 1.0
	v_fma_f32 v67, -v91, v87, v67
	v_fmac_f32_e32 v95, v0, v85
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v0, v66, v86
	v_rcp_f32_e32 v91, v84
	v_fmac_f32_e32 v97, v92, v97
	v_div_scale_f32 v92, s64, v82, v83, v82
	v_div_fmas_f32 v67, v67, v90, v87
	v_fma_f32 v87, -v93, v95, v88
	v_div_scale_f32 v96, null, v83, v83, v77
	s_mov_b32 vcc_lo, s62
	v_dual_mul_f32 v90, v92, v97 :: v_dual_and_b32 v41, 0xffff0000, v2
	v_fma_f32 v88, -v89, v0, v66
	v_div_fmas_f32 v85, v87, v85, v95
	v_rcp_f32_e32 v87, v96
	v_fma_f32 v93, -v84, v91, 1.0
	v_div_fixup_f32 v79, v67, v83, v79
	v_fmac_f32_e32 v0, v88, v86
	v_fma_f32 v88, -v94, v90, v92
	v_div_fixup_f32 v80, v85, v83, v80
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s61, v78, v83, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v90, v88, v97
	v_fma_f32 v85, -v96, v87, 1.0
	v_div_scale_f32 v88, null, v83, v83, v73
	v_fma_f32 v66, -v89, v0, v66
	v_mul_f32_e32 v67, v93, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v85, v87
	v_rcp_f32_e32 v85, v88
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v89, s62, v77, v83, v77
	v_div_fmas_f32 v0, v66, v86, v0
	v_fma_f32 v66, -v94, v90, v92
	v_fma_f32 v86, -v84, v67, v93
	v_div_scale_f32 v92, null, v83, v83, v74
	s_mov_b32 vcc_lo, s64
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v88, v85, 1.0
	v_fmac_f32_e32 v67, v86, v91
	v_rcp_f32_e32 v86, v92
	v_div_fmas_f32 v66, v66, v97, v90
	v_mul_f32_e32 v90, v89, v87
	v_div_fixup_f32 v81, v0, v83, v81
	v_fma_f32 v0, -v84, v67, v93
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v94, null, v83, v83, v68
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v82, v66, v83, v82
	v_fma_f32 v66, -v96, v90, v89
	v_div_scale_f32 v84, s63, v73, v83, v73
	v_fma_f32 v93, -v92, v86, 1.0
	v_div_fmas_f32 v0, v0, v91, v67
	v_rcp_f32_e32 v67, v94
	v_fmac_f32_e32 v90, v66, v87
	v_mul_f32_e32 v66, v84, v85
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v91, s61, v74, v83, v74
	v_div_scale_f32 v93, null, v83, v83, v69
	v_div_fixup_f32 v78, v0, v83, v78
	v_fma_f32 v0, -v96, v90, v89
	v_fma_f32 v89, -v88, v66, v84
	v_mul_f32_e32 v95, v91, v86
	v_rcp_f32_e32 v96, v93
	v_fma_f32 v97, -v94, v67, 1.0
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v66, v89, v85
	v_div_fmas_f32 v0, v0, v87, v90
	v_fma_f32 v87, -v92, v95, v91
	v_fmac_f32_e32 v67, v97, v67
	v_div_scale_f32 v89, s62, v68, v83, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v77, v0, v83, v77
	v_fma_f32 v90, -v93, v96, 1.0
	v_fma_f32 v0, -v88, v66, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v95, v87, v86 :: v_dual_mul_f32 v84, v89, v67
	v_div_scale_f32 v88, null, v83, v83, v62
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v96, v90, v96
	v_div_scale_f32 v87, s64, v69, v83, v69
	v_div_fmas_f32 v0, v0, v85, v66
	v_fma_f32 v66, -v92, v95, v91
	v_fma_f32 v85, -v94, v84, v89
	v_rcp_f32_e32 v90, v88
	v_div_scale_f32 v92, null, v83, v83, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v91, v87, v96 :: v_dual_fmac_f32 v84, v85, v67
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v66, v66, v86, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v86, -v93, v91, v87
	v_div_fixup_f32 v73, v0, v83, v73
	v_fma_f32 v95, -v88, v90, 1.0
	v_fma_f32 v0, -v94, v84, v89
	v_div_fixup_f32 v74, v66, v83, v74
	v_fmac_f32_e32 v91, v86, v96
	v_div_scale_f32 v66, s61, v62, v83, v62
	v_fmac_f32_e32 v90, v95, v90
	v_fma_f32 v86, -v92, v85, 1.0
	v_div_scale_f32 v89, null, v83, v83, v58
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v97, null, v83, v83, v54
	v_div_fmas_f32 v0, v0, v67, v84
	v_fma_f32 v67, -v93, v91, v87
	v_mul_f32_e32 v84, v66, v90
	v_fmac_f32_e32 v85, v86, v85
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v87, s62, v63, v83, v63
	v_div_scale_f32 v93, null, v83, v83, v59
	s_mov_b32 vcc_lo, s64
	v_mul_f32_e32 v94, v87, v85
	v_div_fmas_f32 v67, v67, v96, v91
	v_fma_f32 v91, -v88, v84, v66
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v89, v86, 1.0
	v_div_fixup_f32 v68, v0, v83, v68
	v_fma_f32 v0, -v92, v94, v87
	v_fmac_f32_e32 v84, v91, v90
	v_div_fixup_f32 v69, v67, v83, v69
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v67, s63, v58, v83, v58
	v_div_scale_f32 v91, null, v83, v83, v55
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v93, v96, 1.0
	v_fma_f32 v66, -v88, v84, v66
	v_fmac_f32_e32 v94, v0, v85
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v0, v67, v86
	v_rcp_f32_e32 v88, v91
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s64, v59, v83, v59
	v_div_fmas_f32 v66, v66, v90, v84
	v_fma_f32 v84, -v92, v94, v87
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v87, -v89, v0, v67
	v_mul_f32_e32 v90, v95, v96
	v_div_fixup_f32 v62, v66, v83, v62
	v_div_fmas_f32 v84, v84, v85, v94
	v_rcp_f32_e32 v85, v97
	v_fma_f32 v92, -v91, v88, 1.0
	v_fmac_f32_e32 v0, v87, v86
	v_fma_f32 v87, -v93, v90, v95
	v_div_fixup_f32 v63, v84, v83, v63
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s61, v55, v83, v55
	v_fmac_f32_e32 v90, v87, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v97, v85, 1.0
	v_div_scale_f32 v87, null, v70, v70, v50
	v_fma_f32 v66, -v89, v0, v67
	v_mul_f32_e32 v67, v92, v88
	v_fmac_f32_e32 v85, v84, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v89, s62, v54, v83, v54
	v_div_fmas_f32 v0, v66, v86, v0
	v_fma_f32 v66, -v93, v90, v95
	v_fma_f32 v86, -v91, v67, v92
	v_div_scale_f32 v93, null, v70, v70, v51
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v58, v0, v83, v58
	v_fmac_f32_e32 v67, v86, v88
	v_rcp_f32_e32 v86, v93
	v_fma_f32 v94, -v87, v84, 1.0
	v_div_fmas_f32 v66, v66, v96, v90
	v_mul_f32_e32 v90, v89, v85
	v_fma_f32 v0, -v91, v67, v92
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v94, null, v70, v70, v46
	v_div_fixup_f32 v59, v66, v83, v59
	v_fma_f32 v66, -v97, v90, v89
	v_div_scale_f32 v91, s63, v50, v70, v50
	v_fma_f32 v92, -v93, v86, 1.0
	v_div_fmas_f32 v0, v0, v88, v67
	v_rcp_f32_e32 v67, v94
	v_fmac_f32_e32 v90, v66, v85
	v_mul_f32_e32 v66, v91, v84
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v88, s61, v51, v70, v51
	v_div_scale_f32 v92, null, v70, v70, v47
	v_div_fixup_f32 v55, v0, v83, v55
	v_fma_f32 v0, -v97, v90, v89
	v_fma_f32 v89, -v87, v66, v91
	v_mul_f32_e32 v95, v88, v86
	v_rcp_f32_e32 v96, v92
	v_fma_f32 v97, -v94, v67, 1.0
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v66, v89, v84
	v_div_fmas_f32 v0, v0, v85, v90
	v_fma_f32 v85, -v93, v95, v88
	v_fmac_f32_e32 v67, v97, v67
	v_div_scale_f32 v89, s62, v46, v70, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v54, v0, v83, v54
	v_fma_f32 v90, -v92, v96, 1.0
	v_fma_f32 v0, -v87, v66, v91
	v_fmac_f32_e32 v95, v85, v86
	v_mul_f32_e32 v83, v89, v67
	v_div_scale_f32 v87, null, v70, v70, v42
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v96, v90, v96
	v_div_scale_f32 v85, s64, v47, v70, v47
	v_div_fmas_f32 v0, v0, v84, v66
	v_fma_f32 v66, -v93, v95, v88
	v_fma_f32 v84, -v94, v83, v89
	v_rcp_f32_e32 v88, v87
	v_div_scale_f32 v91, null, v70, v70, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v90, v85, v96 :: v_dual_fmac_f32 v83, v84, v67
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v66, v66, v86, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v86, -v92, v90, v85
	v_div_fixup_f32 v50, v0, v70, v50
	v_fma_f32 v93, -v87, v88, 1.0
	v_fma_f32 v0, -v94, v83, v89
	v_div_fixup_f32 v51, v66, v70, v51
	v_fmac_f32_e32 v90, v86, v96
	v_div_scale_f32 v66, s61, v42, v70, v42
	v_fmac_f32_e32 v88, v93, v88
	v_fma_f32 v86, -v91, v84, 1.0
	v_div_scale_f32 v89, null, v70, v70, v39
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v67, v83
	v_fma_f32 v67, -v92, v90, v85
	v_mul_f32_e32 v83, v66, v88
	v_fmac_f32_e32 v84, v86, v84
	v_rcp_f32_e32 v85, v89
	v_div_scale_f32 v86, s62, v43, v70, v43
	v_div_scale_f32 v92, null, v70, v70, v40
	s_mov_b32 vcc_lo, s64
	v_mul_f32_e32 v93, v86, v84
	v_div_fmas_f32 v67, v67, v96, v90
	v_fma_f32 v90, -v87, v83, v66
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v89, v85, 1.0
	v_div_fixup_f32 v46, v0, v70, v46
	v_fma_f32 v0, -v91, v93, v86
	v_fmac_f32_e32 v83, v90, v88
	v_div_scale_f32 v90, null, v70, v70, v38
	v_div_fixup_f32 v47, v67, v70, v47
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v67, s63, v39, v70, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v66, -v87, v83, v66
	v_fmac_f32_e32 v93, v0, v84
	v_rcp_f32_e32 v87, v90
	s_mov_b32 vcc_lo, s61
	v_dual_mul_f32 v0, v67, v85 :: v_dual_fmac_f32 v95, v94, v95
	v_div_scale_f32 v94, s64, v40, v70, v40
	v_div_fmas_f32 v66, v66, v88, v83
	v_fma_f32 v83, -v91, v93, v86
	v_div_scale_f32 v96, null, v70, v70, v37
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v86, -v89, v0, v67
	v_mul_f32_e32 v88, v94, v95
	v_fma_f32 v91, -v90, v87, 1.0
	v_div_fmas_f32 v83, v83, v84, v93
	v_rcp_f32_e32 v84, v96
	v_fmac_f32_e32 v0, v86, v85
	v_fma_f32 v86, -v92, v88, v94
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s61, v38, v70, v38
	v_div_fixup_f32 v42, v66, v70, v42
	v_div_fixup_f32 v43, v83, v70, v43
	v_fma_f32 v66, -v89, v0, v67
	v_fmac_f32_e32 v88, v86, v95
	v_mul_f32_e32 v67, v91, v87
	v_fma_f32 v83, -v96, v84, 1.0
	v_div_scale_f32 v86, null, v70, v70, v35
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v89, s62, v37, v70, v37
	v_div_fmas_f32 v0, v66, v85, v0
	v_fma_f32 v66, -v92, v88, v94
	v_fma_f32 v85, -v90, v67, v91
	v_fmac_f32_e32 v84, v83, v84
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v92, null, v70, v70, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v67, v85, v87
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v39, v0, v70, v39
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v66, v66, v95, v88
	v_mul_f32_e32 v88, v89, v84
	v_fma_f32 v0, -v90, v67, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v83, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v40, v66, v70, v40
	v_fma_f32 v66, -v96, v88, v89
	v_div_scale_f32 v90, s63, v35, v70, v35
	v_fmac_f32_e32 v83, v93, v83
	v_fma_f32 v91, -v92, v85, 1.0
	v_div_scale_f32 v93, null, v70, v70, v34
	v_div_fmas_f32 v0, v0, v87, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v66, v84 :: v_dual_fmac_f32 v85, v91, v85
	v_rcp_f32_e32 v67, v93
	v_div_scale_f32 v91, null, v70, v70, v33
	v_mul_f32_e32 v66, v90, v83
	v_div_scale_f32 v87, s61, v36, v70, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v95, v91
	v_div_fixup_f32 v0, v0, v70, v38
	v_fma_f32 v38, -v96, v88, v89
	v_fma_f32 v89, -v86, v66, v90
	v_mul_f32_e32 v94, v87, v85
	v_fma_f32 v96, -v93, v67, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v38, v38, v84, v88
	v_fmac_f32_e32 v66, v89, v83
	v_fma_f32 v84, -v92, v94, v87
	v_fmac_f32_e32 v67, v96, v67
	v_div_scale_f32 v88, s62, v34, v70, v34
	v_fma_f32 v89, -v91, v95, 1.0
	v_div_fixup_f32 v37, v38, v70, v37
	v_fma_f32 v38, -v86, v66, v90
	v_fmac_f32_e32 v94, v84, v85
	v_mul_f32_e32 v84, v88, v67
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v89, null, v70, v70, v31
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v86, s64, v33, v70, v33
	v_div_fmas_f32 v38, v38, v83, v66
	v_fma_f32 v66, -v92, v94, v87
	v_fma_f32 v83, -v93, v84, v88
	v_rcp_f32_e32 v87, v89
	v_div_scale_f32 v92, null, v70, v70, v32
	v_mul_f32_e32 v90, v86, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v83, v67
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v83, v92
	v_div_fmas_f32 v66, v66, v85, v94
	v_fma_f32 v85, -v91, v90, v86
	v_div_fixup_f32 v35, v38, v70, v35
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v89, v87, 1.0
	v_fma_f32 v38, -v93, v84, v88
	v_div_fixup_f32 v36, v66, v70, v36
	v_fmac_f32_e32 v90, v85, v95
	v_div_scale_f32 v66, s61, v31, v70, v31
	v_fmac_f32_e32 v87, v94, v87
	v_fma_f32 v85, -v92, v83, 1.0
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v93, null, v41, v41, v28
	v_div_fmas_f32 v38, v38, v67, v84
	v_fma_f32 v67, -v91, v90, v86
	v_mul_f32_e32 v84, v66, v87
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, null, v41, v41, v30
	s_mov_b32 vcc_lo, s64
	v_div_scale_f32 v86, s62, v32, v70, v32
	v_div_fmas_f32 v67, v67, v95, v90
	v_rcp_f32_e32 v88, v85
	v_fma_f32 v90, -v89, v84, v66
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v91, v86, v83
	v_div_fixup_f32 v34, v38, v70, v34
	v_div_fixup_f32 v33, v67, v70, v33
	v_rcp_f32_e32 v67, v93
	v_fmac_f32_e32 v84, v90, v87
	v_fma_f32 v38, -v92, v91, v86
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v95, null, v41, v41, v27
	v_fma_f32 v90, -v85, v88, 1.0
	v_fma_f32 v66, -v89, v84, v66
	v_div_scale_f32 v89, null, v41, v41, v29
	v_fmac_f32_e32 v91, v38, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v90, v88
	v_div_fmas_f32 v66, v66, v87, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v94, -v93, v67, 1.0
	v_fma_f32 v84, -v92, v91, v86
	v_div_scale_f32 v38, s63, v30, v41, v30
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v67, v94, v67
	v_div_scale_f32 v87, s61, v28, v41, v28
	v_div_fmas_f32 v83, v84, v83, v91
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v89, v90, 1.0
	v_mul_f32_e32 v86, v38, v88
	v_rcp_f32_e32 v97, v95
	v_div_fixup_f32 v31, v66, v70, v31
	v_div_fixup_f32 v32, v83, v70, v32
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s64, v29, v41, v29
	v_fma_f32 v94, -v85, v86, v38
	v_div_scale_f32 v83, null, v41, v41, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v91, v92, v90
	v_fma_f32 v70, -v95, v97, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v86, v94, v88
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v66, -v89, v91, v92
	v_mul_f32_e32 v96, v87, v67
	v_fma_f32 v38, -v85, v86, v38
	v_fmac_f32_e32 v97, v70, v97
	v_div_scale_f32 v70, s62, v27, v41, v27
	v_fmac_f32_e32 v91, v66, v90
	v_fma_f32 v84, -v93, v96, v87
	v_rcp_f32_e32 v66, v83
	v_div_fmas_f32 v38, v38, v88, v86
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v85, v70, v97 :: v_dual_fmac_f32 v96, v84, v67
	v_div_scale_f32 v86, null, v41, v41, v25
	v_div_fixup_f32 v30, v38, v41, v30
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v93, v96, v87
	v_fma_f32 v87, -v83, v66, 1.0
	v_rcp_f32_e32 v88, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v67, v84, v67, v96
	v_fma_f32 v84, -v89, v91, v92
	s_mov_b32 vcc_lo, s64
	v_fma_f32 v89, -v95, v85, v70
	v_fmac_f32_e32 v66, v87, v66
	v_div_scale_f32 v87, s61, v26, v41, v26
	v_div_fmas_f32 v84, v84, v90, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v89, v97
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v38, v87, v66
	v_div_fixup_f32 v28, v67, v41, v28
	v_div_fixup_f32 v29, v84, v41, v29
	v_div_scale_f32 v84, null, v41, v41, v21
	v_fma_f32 v70, -v95, v85, v70
	v_fma_f32 v89, -v83, v38, v87
	v_fma_f32 v67, -v86, v88, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v90, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v70, v97, v85
	v_fmac_f32_e32 v38, v89, v66
	v_div_scale_f32 v89, null, v41, v41, v22
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v27, v70, v41, v27
	v_fma_f32 v70, -v83, v38, v87
	v_rcp_f32_e32 v91, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v84, v90, 1.0
	v_fmac_f32_e32 v88, v67, v88
	v_div_scale_f32 v67, s63, v25, v41, v25
	v_div_fmas_f32 v38, v70, v66, v38
	v_fmac_f32_e32 v90, v87, v90
	v_div_scale_f32 v87, null, v41, v41, v24
	v_div_scale_f32 v66, null, v41, v41, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v26, v38, v41, v26
	v_fma_f32 v38, -v89, v91, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v93, v87
	v_div_scale_f32 v70, s61, v21, v41, v21
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v91, v38, v91
	v_div_scale_f32 v38, s62, v22, v41, v22
	v_mul_f32_e32 v85, v67, v88
	v_div_scale_f32 v94, s63, v23, v41, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v95, -v87, v93, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v86, v85, v67
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v95, v93
	v_div_scale_f32 v95, s64, v24, v41, v24
	v_fmac_f32_e32 v85, v83, v88
	v_rcp_f32_e32 v83, v66
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v67, -v86, v85, v67
	v_mul_f32_e32 v86, v70, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v67, v67, v88, v85
	v_fma_f32 v92, -v66, v83, 1.0
	v_fma_f32 v85, -v84, v86, v70
	v_mul_f32_e32 v88, v38, v91
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v25, v67, v41, v25
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v92, null, v41, v41, v20
	v_fmac_f32_e32 v86, v85, v90
	v_fma_f32 v85, -v89, v88, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v97, v94, v83
	v_rcp_f32_e32 v96, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v67, -v84, v86, v70
	v_fmac_f32_e32 v88, v85, v91
	v_fma_f32 v70, -v66, v97, v94
	v_mul_f32_e32 v84, v95, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v67, v67, v90, v86
	v_fma_f32 v38, -v89, v88, v38
	v_fmac_f32_e32 v97, v70, v83
	v_fma_f32 v85, -v92, v96, 1.0
	v_fma_f32 v70, -v87, v84, v95
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v86, null, v41, v41, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v96, v85, v96
	v_div_scale_f32 v85, s61, v20, v41, v20
	v_fma_f32 v66, -v66, v97, v94
	v_fmac_f32_e32 v84, v70, v93
	v_div_fmas_f32 v38, v38, v91, v88
	v_mul_f32_e32 v70, v85, v96
	s_mov_b32 vcc_lo, s63
	v_rcp_f32_e32 v88, v86
	v_div_fmas_f32 v66, v66, v83, v97
	v_fma_f32 v83, -v87, v84, v95
	v_fma_f32 v87, -v92, v70, v85
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v22, v38, v41, v22
	v_div_fixup_f32 v23, v66, v41, v23
	v_div_fmas_f32 v83, v83, v93, v84
	v_fmac_f32_e32 v70, v87, v96
	v_div_scale_f32 v66, null, v41, v41, v15
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v24, v83, v41, v24
	v_fma_f32 v38, -v92, v70, v85
	v_div_scale_f32 v83, null, v41, v41, v17
	v_div_fixup_f32 v21, v67, v41, v21
	v_fma_f32 v67, -v86, v88, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v38, v38, v96, v70
	v_rcp_f32_e32 v70, v66
	v_rcp_f32_e32 v87, v83
	v_div_scale_f32 v84, vcc_lo, v14, v41, v14
	v_fmac_f32_e32 v88, v67, v88
	v_div_fixup_f32 v20, v38, v41, v20
	v_div_scale_f32 v67, null, v41, v41, v16
	v_div_scale_f32 v90, null, v41, v41, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v66, v70, 1.0
	v_fma_f32 v94, -v83, v87, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v67
	v_rcp_f32_e32 v92, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v70, v38, v70
	v_div_scale_f32 v38, s61, v15, v41, v15
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v94, s63, v17, v41, v17
	v_mul_f32_e32 v89, v84, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v91, -v67, v85, 1.0
	v_fma_f32 v96, -v90, v92, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v98, v94, v87
	v_mul_f32_e32 v95, v38, v70
	v_fma_f32 v93, -v86, v89, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v96, s64, v18, v41, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v89, v93, v88
	v_fma_f32 v93, -v66, v95, v38
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v99, v96, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v86, v89, v84
	v_fmac_f32_e32 v95, v93, v70
	v_fma_f32 v93, -v83, v98, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v88, v89
	v_fma_f32 v38, -v66, v95, v38
	s_mov_b32 vcc_lo, s61
	s_mov_b32 s61, 0xc1000000
	v_fma_f32 v66, -v90, v99, v96
	v_fmac_f32_e32 v98, v93, v87
	v_div_fmas_f32 v38, v38, v70, v95
	v_div_fixup_f32 v14, v84, v41, v14
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v50, v50, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v99, v66, v92
	v_fma_f32 v66, -v83, v98, v94
	v_div_fixup_f32 v15, v38, v41, v15
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v44
	v_rndne_f32_e32 v44, v48
	v_rndne_f32_e32 v48, v52
	v_rndne_f32_e32 v52, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v70, -v90, v99, v96
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s61, 0x40e00000
	v_med3_f32 v44, v44, s61, 0x40e00000
	v_med3_f32 v48, v48, s61, 0x40e00000
	v_med3_f32 v52, v52, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v60
	v_rndne_f32_e32 v60, v64
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v91, s62, v16, v41, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v97, v91, v85
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v38, v38, s61, 0x40e00000
	v_med3_f32 v51, v51, s61, 0x40e00000
	v_med3_f32 v47, v47, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v67, v97, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s61, 0x40e00000
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v0, v0
	v_med3_f32 v56, v56, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v86, v85
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v60, v60, s61, 0x40e00000
	v_med3_f32 v73, v73, s61, 0x40e00000
	v_med3_f32 v63, v63, s61, 0x40e00000
	v_med3_f32 v59, v59, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v67, -v67, v97, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v30, v30, s61, 0x40e00000
	v_med3_f32 v22, v22, s61, 0x40e00000
	v_med3_f32 v14, v14, s61, 0x40e00000
	v_cvt_i32_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v67, v67, v85, v97
	s_mov_b32 vcc_lo, s63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v66, v66, v87, v98
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v16, v67, v41, v16
	v_div_fmas_f32 v70, v70, v92, v99
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v17, v66, v41, v17
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v43, v43
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v18, v70, v41, v18
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v45
	v_rndne_f32_e32 v45, v49
	v_rndne_f32_e32 v49, v53
	v_rndne_f32_e32 v53, v57
	v_rndne_f32_e32 v57, v61
	v_rndne_f32_e32 v61, v65
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v16, v16, s61, 0x40e00000
	v_med3_f32 v41, v41, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v71
	v_rndne_f32_e32 v70, v79
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s61, 0x40e00000
	v_cvt_i32_f32_e32 v101, v16
	v_and_b32_e32 v16, 15, v50
	v_and_b32_e32 v50, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 16, v165
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s61, 0x40e00000
	v_med3_f32 v20, v20, s61, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v88, v30
	v_cvt_i32_f32_e32 v95, v22
	v_cvt_i32_f32_e32 v99, v14
	v_and_b32_e32 v14, 15, v38
	v_and_b32_e32 v22, 15, v51
	v_and_b32_e32 v30, 15, v47
	v_and_b32_e32 v38, 15, v43
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v43, 13, v165
	v_lshlrev_b32_e32 v47, 8, v0
	v_and_b32_e32 v51, 64, v165
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v76
	v_rndne_f32_e32 v76, v78
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v17, v17
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s61, 0x40e00000
	v_med3_f32 v70, v70, s61, 0x40e00000
	v_cvt_i32_f32_e32 v87, v32
	v_cvt_i32_f32_e32 v98, v20
	v_and_b32_e32 v20, 15, v41
	v_and_b32_e32 v32, 15, v48
	v_and_b32_e32 v48, 15, v56
	v_and_b32_e32 v56, 15, v60
	v_and_b32_e32 v60, 15, v61
	v_and_b32_e32 v41, 15, v73
	v_and_b32_e32 v61, 15, v63
	v_and_b32_e32 v73, 15, v59
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v59, 3, v106
	v_and_or_b32 v63, 0xe000, v43, v47
	v_xor_b32_e32 v12, v12, v51
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s61, 0x40e00000
	v_med3_f32 v76, v76, s61, 0x40e00000
	v_med3_f32 v69, v69, s61, 0x40e00000
	v_med3_f32 v58, v58, s61, 0x40e00000
	v_med3_f32 v42, v42, s61, 0x40e00000
	v_med3_f32 v35, v35, s61, 0x40e00000
	v_med3_f32 v26, v26, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v68, v68, s61, 0x40e00000
	v_med3_f32 v15, v15, s61, 0x40e00000
	v_med3_f32 v17, v17, s61, 0x40e00000
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v70, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v12, v63, v59, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s61, 0x40e00000
	v_med3_f32 v33, v33, s61, 0x40e00000
	v_med3_f32 v24, v24, s61, 0x40e00000
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v79, v76
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v92, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v72
	v_rndne_f32_e32 v72, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s61, 0x40e00000
	v_med3_f32 v54, v54, s61, 0x40e00000
	v_med3_f32 v37, v37, s61, 0x40e00000
	v_med3_f32 v18, v18, s61, 0x40e00000
	v_cvt_i32_f32_e32 v81, v68
	v_cvt_i32_f32_e32 v100, v15
	v_cvt_i32_f32_e32 v102, v17
	v_and_b32_e32 v68, 15, v64
	v_and_b32_e32 v15, 15, v70
	v_and_b32_e32 v17, 15, v88
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v64, 0, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v85, v34
	v_cvt_i32_f32_e32 v86, v33
	v_cvt_i32_f32_e32 v97, v24
	v_and_b32_e32 v24, 15, v44
	v_and_b32_e32 v44, 15, v53
	v_and_b32_e32 v33, 15, v79
	v_and_b32_e32 v53, 15, v69
	v_and_b32_e32 v69, 15, v58
	v_and_b32_e32 v34, 15, v42
	v_and_b32_e32 v58, 15, v35
	v_and_b32_e32 v35, 15, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v80
	v_rndne_f32_e32 v77, v77
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v23, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s61, 0x40e00000
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v83, v37
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v64, v[14:17]
	ds_store_b128 v64, v[32:35] offset:256
	v_lshlrev_b32_e32 v15, 6, v165
	v_cndmask_b32_e64 v16, 0x2010, 0, s3
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v75
	v_rndne_f32_e32 v75, v82
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v27, v27
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v57, v57, s61, 0x40e00000
	v_med3_f32 v71, v71, s61, 0x40e00000
	v_med3_f32 v72, v72, s61, 0x40e00000
	v_med3_f32 v77, v77, s61, 0x40e00000
	v_med3_f32 v62, v62, s61, 0x40e00000
	v_med3_f32 v55, v55, s61, 0x40e00000
	v_med3_f32 v46, v46, s61, 0x40e00000
	v_med3_f32 v28, v28, s61, 0x40e00000
	v_med3_f32 v29, v29, s61, 0x40e00000
	v_med3_f32 v23, v23, s61, 0x40e00000
	v_cvt_i32_f32_e32 v84, v36
	v_and_b32_e32 v36, 15, v49
	v_and_b32_e32 v49, 15, v81
	v_and_b32_e32 v81, 15, v54
	v_and_b32_e32 v54, 15, v83
	v_and_b32_e32 v83, 15, v18
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v18, 2, v0
	v_and_or_b32 v10, 0x300, v15, v10
	v_xor_b32_e32 v13, v16, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s61, 0x40e00000
	v_med3_f32 v65, v65, s61, 0x40e00000
	v_med3_f32 v66, v66, s61, 0x40e00000
	v_med3_f32 v67, v67, s61, 0x40e00000
	v_med3_f32 v75, v75, s61, 0x40e00000
	v_med3_f32 v74, v74, s61, 0x40e00000
	v_med3_f32 v39, v39, s61, 0x40e00000
	v_med3_f32 v40, v40, s61, 0x40e00000
	v_med3_f32 v31, v31, s61, 0x40e00000
	v_med3_f32 v25, v25, s61, 0x40e00000
	v_med3_f32 v21, v21, s61, 0x40e00000
	v_med3_f32 v27, v27, s61, 0x40e00000
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v78, v72
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v89, v28
	v_cvt_i32_f32_e32 v90, v29
	v_cvt_i32_f32_e32 v96, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v10, v13, v10, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v82, v40
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v93, v25
	v_cvt_i32_f32_e32 v94, v21
	v_cvt_i32_f32_e32 v91, v27
	v_and_b32_e32 v40, 15, v52
	v_and_b32_e32 v52, 15, v57
	v_and_b32_e32 v21, 15, v71
	v_and_b32_e32 v25, 15, v78
	v_and_b32_e32 v37, 15, v77
	v_and_b32_e32 v57, 15, v62
	v_and_b32_e32 v77, 15, v55
	v_and_b32_e32 v26, 15, v46
	v_and_b32_e32 v62, 15, v84
	v_and_b32_e32 v23, 15, v89
	v_and_b32_e32 v27, 15, v90
	v_and_b32_e32 v51, 15, v96
	v_and_b32_e32 v55, 15, v97
	v_and_b32_e32 v59, 15, v98
	v_and_b32_e32 v63, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v14, v12, 16, 0
	v_xad_u32 v17, v12, 32, 0
	v_xad_u32 v12, v12, 48, 0
	v_add_nc_u32_e32 v16, 0, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v28, 15, v45
	v_and_b32_e32 v72, 15, v65
	v_and_b32_e32 v76, 15, v66
	v_and_b32_e32 v80, 15, v67
	v_and_b32_e32 v29, 15, v75
	v_and_b32_e32 v45, 15, v74
	v_and_b32_e32 v42, 15, v39
	v_and_b32_e32 v46, 15, v82
	v_and_b32_e32 v70, 15, v85
	v_and_b32_e32 v74, 15, v86
	v_and_b32_e32 v78, 15, v31
	v_and_b32_e32 v82, 15, v87
	v_and_b32_e32 v39, 15, v93
	v_and_b32_e32 v43, 15, v94
	v_and_b32_e32 v71, 15, v100
	v_and_b32_e32 v75, 15, v101
	v_and_b32_e32 v79, 15, v102
	v_and_b32_e32 v31, 15, v91
	v_and_b32_e32 v47, 15, v95
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v64, v[48:51] offset:2048
	ds_store_b128 v64, v[68:71] offset:2304
	ds_store_b128 v14, v[20:23]
	ds_store_b128 v14, v[36:39] offset:256
	ds_store_b128 v14, v[52:55] offset:2048
	ds_store_b128 v14, v[72:75] offset:2304
	ds_store_b128 v17, v[24:27]
	ds_store_b128 v17, v[40:43] offset:256
	ds_store_b128 v17, v[56:59] offset:2048
	ds_store_b128 v17, v[76:79] offset:2304
	ds_store_b128 v12, v[28:31]
	ds_store_b128 v12, v[44:47] offset:256
	ds_store_b128 v12, v[60:63] offset:2048
	ds_store_b128 v12, v[80:83] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[12:15], v16
	ds_load_b128 v[20:23], v16 offset:128
	ds_load_b128 v[24:27], v16 offset:4096
	ds_load_b128 v[28:31], v16 offset:4224
	v_xad_u32 v16, 0x8040, v10, 0
	v_xad_u32 v17, 0x4020, v10, 0
	v_xad_u32 v10, 0xc060, v10, 0
	ds_load_b128 v[48:51], v16
	ds_load_b128 v[52:55], v16 offset:128
	ds_load_b128 v[56:59], v16 offset:4096
	ds_load_b128 v[60:63], v16 offset:4224
	ds_load_b128 v[67:70], v10 offset:4096
	ds_load_b128 v[71:74], v10
	ds_load_b128 v[75:78], v10 offset:128
	ds_load_b128 v[79:82], v10 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v16, s3, s74, v19
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[32:35], v17
	ds_load_b128 v[36:39], v17 offset:128
	ds_load_b128 v[40:43], v17 offset:4096
	ds_load_b128 v[44:47], v17 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v17, null, s75, 0, s3
	v_add_co_u32 v18, s3, s74, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s75, 0, s3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[76:77], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[78:79], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v4, v8, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v10, v24, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v3, s80, 7, v7
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(9)
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v49, v57, 4, v49
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 4, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(6)
	v_lshl_or_b32 v56, v67, 4, v71
	v_lshl_or_b32 v71, v26, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 6, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v57, v68, 4, v72
	v_lshl_or_b32 v72, v27, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 8, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[76:77], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[78:79], v[16:17]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 10, v4
	v_add_nc_u32_e32 v17, 12, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s63, s[76:77], v[18:19]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s64, s[78:79], v[18:19]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v66, v25, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 14, v4
	v_mad_u64_u32 v[12:13], null, v12, s73, v[3:4]
	v_add_nc_u32_e32 v19, 16, v4
	v_mad_u64_u32 v[13:14], null, v14, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v65, v28, 4, v20
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 18, v4
	v_mad_u64_u32 v[14:15], null, v15, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v68, v29, 4, v21
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v21, 20, v4
	v_mad_u64_u32 v[15:16], null, v16, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v69, 4, v73
	v_lshl_or_b32 v69, v30, 4, v22
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v22, 22, v4
	v_mad_u64_u32 v[16:17], null, v17, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v70, 4, v74
	v_lshl_or_b32 v70, v31, 4, v23
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v23, 24, v4
	v_mad_u64_u32 v[17:18], null, v18, s73, v[3:4]
	v_add_nc_u32_e32 v24, 26, v4
	v_mad_u64_u32 v[18:19], null, v19, s73, v[3:4]
	v_add_nc_u32_e32 v25, 28, v4
	v_mad_u64_u32 v[19:20], null, v20, s73, v[3:4]
	v_add_nc_u32_e32 v26, 30, v4
	v_mad_u64_u32 v[20:21], null, v21, s73, v[3:4]
	v_add_nc_u32_e32 v27, 32, v4
	v_mad_u64_u32 v[21:22], null, v22, s73, v[3:4]
	v_add_nc_u32_e32 v28, 34, v4
	v_mad_u64_u32 v[22:23], null, v23, s73, v[3:4]
	v_add_nc_u32_e32 v29, 36, v4
	v_mad_u64_u32 v[23:24], null, v24, s73, v[3:4]
	v_add_nc_u32_e32 v30, 38, v4
	v_mad_u64_u32 v[24:25], null, v25, s73, v[3:4]
	v_add_nc_u32_e32 v31, 40, v4
	v_mad_u64_u32 v[25:26], null, v26, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v64, v40, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v32, 42, v4
	v_mad_u64_u32 v[6:7], null, v4, s73, v[3:4]
	v_mad_u64_u32 v[26:27], null, v27, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v67, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v33, 44, v4
	v_mad_u64_u32 v[27:28], null, v28, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v42, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 2, v4
	v_add_nc_u32_e32 v34, 46, v4
	v_mad_u64_u32 v[28:29], null, v29, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v43, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v35, 48, v4
	v_mad_u64_u32 v[29:30], null, v30, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v44, v44, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v36, 50, v4
	v_mad_u64_u32 v[30:31], null, v31, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v45, v45, 4, v37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v37, 52, v4
	v_mad_u64_u32 v[31:32], null, v32, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v46, v46, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v38, 54, v4
	v_mad_u64_u32 v[32:33], null, v33, s73, v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v47, 4, v39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v39, 56, v4
	v_mad_u64_u32 v[7:8], null, v8, s73, v[3:4]
	v_mad_u64_u32 v[33:34], null, v34, s73, v[3:4]
	v_add_nc_u32_e32 v40, 58, v4
	v_mad_u64_u32 v[34:35], null, v35, s73, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v41, 60, v4
	v_add_nc_u32_e32 v73, 62, v4
	v_mad_u64_u32 v[35:36], null, v36, s73, v[3:4]
	v_mad_u64_u32 v[36:37], null, v37, s73, v[3:4]
	v_mad_u64_u32 v[37:38], null, v38, s73, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s64, s68
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[38:39], null, v39, s73, v[3:4]
	v_mad_u64_u32 v[39:40], null, v40, s73, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v10, v6, s[64:67], 0 offen
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s59, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[40:41], null, v41, s73, v[3:4]
	v_mad_u64_u32 v[3:4], null, v73, s73, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v4, 0x80000000, v7, s61
	v_cndmask_b32_e32 v7, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s57, s58
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v60, 4, v52
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s55, s56
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v60, v79, 4, v75
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s53, s54
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v64, v4, s[64:67], 0 offen
	buffer_store_b8 v48, v6, s[64:67], 0 offen
	buffer_store_b8 v56, v7, s[64:67], 0 offen
	buffer_store_b8 v65, v8, s[64:67], 0 offen
	buffer_store_b8 v44, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s51, s52
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v53, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s49, s50
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v61, v80, 4, v76
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s47, s48
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v54, v62, 4, v54
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s45, s46
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v62, v81, 4, v77
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s43, s44
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v52, v4, s[64:67], 0 offen
	buffer_store_b8 v60, v6, s[64:67], 0 offen
	buffer_store_b8 v66, v7, s[64:67], 0 offen
	buffer_store_b8 v67, v8, s[64:67], 0 offen
	buffer_store_b8 v49, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s41, s42
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v55, v63, 4, v55
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s39, s40
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v0, 2, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s37, s38
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v82, 4, v78
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s35, s36
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s33, s34
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v57, v4, s[64:67], 0 offen
	buffer_store_b8 v68, v6, s[64:67], 0 offen
	buffer_store_b8 v45, v7, s[64:67], 0 offen
	buffer_store_b8 v53, v8, s[64:67], 0 offen
	buffer_store_b8 v61, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v26, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s30, s31
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s3, s72, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s28, s29
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v11.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s26, s27
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v9.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s24, s25
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s22, s23
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v71, v4, s[64:67], 0 offen
	buffer_store_b8 v42, v6, s[64:67], 0 offen
	buffer_store_b8 v50, v7, s[64:67], 0 offen
	buffer_store_b8 v58, v8, s[64:67], 0 offen
	buffer_store_b8 v69, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s20, s21
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s18, s19
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s16, s17
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s14, s15
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s12, s13
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v46, v4, s[64:67], 0 offen
	buffer_store_b8 v54, v6, s[64:67], 0 offen
	buffer_store_b8 v62, v7, s[64:67], 0 offen
	buffer_store_b8 v72, v8, s[64:67], 0 offen
	buffer_store_b8 v43, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s10, s11
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s8, s9
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v40, vcc_lo
	s_clause 0x4
	buffer_store_b8 v51, v4, s[64:67], 0 offen
	buffer_store_b8 v59, v6, s[64:67], 0 offen
	buffer_store_b8 v70, v7, s[64:67], 0 offen
	buffer_store_b8 v47, v8, s[64:67], 0 offen
	buffer_store_b8 v55, v10, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v165
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 3, v113
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s3, 24
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s72, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v63, v3, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v3, 0, v4
	v_add3_u32 v0, v0, v6, v4
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v3, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v165
	s_and_b32 s65, s71, 0xffff
	s_mov_b32 s64, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s80, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[64:67], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp80:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 80
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 81
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 80
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18928
; TotalNumSgprs: 83
; NumVgprs: 256
; ScratchSize: 80
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 83
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
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
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
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
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 80
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 19
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
