	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v0
	v_lshlrev_b32_e32 v36, 1, v0
	v_and_b32_e32 v37, 0x7f, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s72, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	s_ashr_i32 s4, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_load_b64 s[2:3], s[4:5], 0x0
	s_mov_b32 s5, 0
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s73, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s3, s74, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s75, 0, s3
	v_add_nc_u32_e32 v65, s74, v2
	.loc	1 1066 35                       ; ragged.py:1066:35
	s_mul_i32 s17, s2, s72
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[76:77], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[78:79], v[3:4]
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v8, s17 :: v_dual_lshlrev_b32 v35, 1, v0
	v_dual_mov_b32 v6, s74 :: v_dual_and_b32 v7, 0x7f, v0
	.loc	1 1254 13 is_stmt 1             ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s74, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr8
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[64:67], s[0:1], 0x40
	s_load_b128 s[8:11], s[0:1], 0x10
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v106, 0x80, v0
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v112, 15, v0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v11, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s2, 0, v106
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v103, 0
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v102, 0
	s_lshl_b32 s16, s80, 8
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_and_b32 s81, s3, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	v_lshrrev_b32_e32 v1, 5, v0
	v_and_b32_e32 v2, 0xe0, v0
	v_cndmask_b32_e64 v34, 0x88, 0, s2
	v_lshlrev_b32_e32 v35, 5, v112
	v_and_b32_e32 v36, 24, v36
	.loc	1 1045 18 is_stmt 0             ; ragged.py:1045:18
	v_or_b32_e32 v1, s16, v1
	v_lshlrev_b32_e32 v2, 4, v2
	v_xor_b32_e32 v66, v34, v37
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x0
	s_load_b32 s0, s[0:1], 0x50
	v_or_b32_e32 v104, 0x300, v0
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
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v5, s17, v5
	v_add_nc_u32_e32 v4, s17, v4
	v_add_nc_u32_e32 v3, s17, v3
	v_add_nc_u32_e32 v33, s17, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v101, v5, s73
	v_dual_mov_b32 v5, 0 :: v_dual_add_nc_u32 v8, s17, v8
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
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v33, s73
	v_add_nc_u32_e32 v10, s17, v10
	v_mul_lo_u32 v97, v9, s73
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v28, s17, v28
	v_add_nc_u32_e32 v13, s17, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v96, v10, s73
	v_mov_b32_e32 v10, 0
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s17, v32
	v_add_nc_u32_e32 v25, s17, v25
	v_add_nc_u32_e32 v14, s17, v14
	v_add_nc_u32_e32 v24, s17, v24
	v_add_nc_u32_e32 v15, s17, v15
	v_mul_lo_u32 v1, v1, s73
	v_add_nc_u32_e32 v23, s17, v23
	v_mul_lo_u32 v92, v14, s73
	v_mov_b32_e32 v14, 0
	v_mul_lo_u32 v91, v15, s73
	v_dual_mov_b32 v15, 0 :: v_dual_add_nc_u32 v18, s17, v18
	v_add_nc_u32_e32 v20, s17, v20
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v2, s73
	v_add_nc_u32_e32 v2, s17, v26
	v_mov_b32_e32 v26, 0
	v_mul_lo_u32 v93, v13, s73
	v_mov_b32_e32 v13, 0
	v_add_nc_u32_e32 v19, s17, v19
	v_or_b32_e32 v105, 0x700, v0
	v_or_b32_e32 v106, 0x3f0, v0
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v30, s73
	v_or_b32_e32 v107, 0x7f0, v0
	v_xor_b32_e32 v108, 0x110, v66
	v_xor_b32_e32 v109, 8, v71
	v_xor_b32_e32 v110, 16, v71
	v_xor_b32_e32 v111, 24, v71
	v_mul_lo_u32 v87, v19, s73
	v_mov_b32_e32 v19, 0
	scratch_store_b32 off, v1, off offset:16 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v29, s73
	v_mul_lo_u32 v86, v20, s73
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v29, 0
	v_mov_b32_e32 v30, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_mov_b32_e32 v38, 0
	scratch_store_b32 off, v1, off offset:20 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v28, s73
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s17, v27
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v1, v1, s73
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v2, s73
	v_add_nc_u32_e32 v2, s17, v21
	v_mov_b32_e32 v21, 0
	v_mul_lo_u32 v88, v18, s73
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v25, s73
	v_mov_b32_e32 v33, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v24, s73
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v24, 0
	v_dual_mov_b32 v85, v66 :: v_dual_add_nc_u32 v104, 0, v104
	v_add_nc_u32_e32 v105, 0, v105
	v_add_nc_u32_e32 v106, 0, v106
	v_add_nc_u32_e32 v107, 0, v107
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v23, s73
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v108, 0, v108
	v_add_nc_u32_e32 v109, 0, v109
	v_add_nc_u32_e32 v110, 0, v110
	v_add_nc_u32_e32 v111, 0, v111
	v_add_nc_u32_e32 v112, 0, v112
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s17, v22
	v_mov_b32_e32 v22, 0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	v_mul_lo_u32 v1, v1, s73
	s_mov_b32 s1, 0
	s_mov_b32 s4, s12
	s_mov_b32 s5, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v2, s73
	v_add_nc_u32_e32 v2, s17, v16
	v_mov_b32_e32 v16, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v90, v2, s73
	v_add_nc_u32_e32 v2, s17, v11
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s17, v17
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v17, 0
	v_mul_lo_u32 v95, v2, s73
	v_add_nc_u32_e32 v2, s17, v6
	v_mul_lo_u32 v89, v1, s73
	v_dual_mov_b32 v6, 0 :: v_dual_add_nc_u32 v1, s17, v12
	v_mov_b32_e32 v12, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v100, v2, s73
	v_mov_b32_e32 v2, 0
	v_mul_lo_u32 v94, v1, s73
	v_add_nc_u32_e32 v1, s17, v7
	v_mov_b32_e32 v7, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v99, v1, s73
	v_mov_b32_e32 v1, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_lshrrev_b32_e32 v113, 6, v0
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_add_nc_u32_e32 v70, 0, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v115, s1, v113
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[113:114], null, v115, s0, v[65:66]
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v115
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s81, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e32 v129, 0x80000000, v113, vcc_lo
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v113, 4, v115
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v113
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[113:114], null, v113, s0, v[65:66]
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 vcc_lo, s81, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v130, 0x80000000, v113, vcc_lo
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v113, 8, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v113
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[113:114], null, v113, s0, v[65:66]
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 vcc_lo, s81, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v131, 0x80000000, v113, vcc_lo
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v113, 12, v115
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v113
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[113:114], null, v113, s0, v[65:66]
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 vcc_lo, s81, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v132, 0x80000000, v113, vcc_lo
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v113, 16, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v113
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[113:114], null, v113, s0, v[65:66]
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 vcc_lo, s81, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v133, 0x80000000, v113, vcc_lo
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v113, 20, v115
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v113
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[113:114], null, v113, s0, v[65:66]
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 vcc_lo, s81, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v134, 0x80000000, v113, vcc_lo
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v113, 24, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v113
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[113:114], null, v113, s0, v[65:66]
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 vcc_lo, s81, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v135, 0x80000000, v113, vcc_lo
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v113, 28, v115
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v113
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[113:114], null, v113, s0, v[65:66]
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v66, off, off          ; 4-byte Folded Reload
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s81, vcc_lo
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_dual_cndmask_b32 v136, 0x80000000, v113 :: v_dual_and_b32 v113, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v113, s1, v113
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s1, s1, 32
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s1, s73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v113
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v146, v96, v113
	v_add_nc_u32_e32 v139, v89, v113
	v_add_nc_u32_e32 v150, v100, v113
	v_add_nc_u32_e32 v143, v93, v113
	.loc	1 1070 30 is_stmt 0             ; ragged.py:1070:30
	v_dual_cndmask_b32 v146, 0x80000000, v146 :: v_dual_add_nc_u32 v147, v97, v113
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v128, v86, v113
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v150, 0x80000000, v150 :: v_dual_add_nc_u32 v151, v101, v113
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v138, v88, v113
	v_add_nc_u32_e32 v140, v90, v113
	v_add_nc_u32_e32 v142, v92, v113
	v_add_nc_u32_e32 v144, v94, v113
	v_add_nc_u32_e32 v137, v87, v113
	v_add_nc_u32_e32 v148, v98, v113
	v_add_nc_u32_e32 v141, v91, v113
	v_add_nc_u32_e32 v149, v99, v113
	v_add_nc_u32_e32 v152, v102, v113
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v144, 0x80000000, v144 :: v_dual_add_nc_u32 v145, v95, v113
	v_dual_cndmask_b32 v137, 0x80000000, v137 :: v_dual_cndmask_b32 v148, 0x80000000, v148
	v_cndmask_b32_e32 v141, 0x80000000, v141, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v149, 0x80000000, v149 :: v_dual_cndmask_b32 v152, 0x80000000, v152
	v_cndmask_b32_e32 v145, 0x80000000, v145, vcc_lo
	v_cndmask_b32_e32 v139, 0x80000000, v139, vcc_lo
	v_cndmask_b32_e32 v143, 0x80000000, v143, vcc_lo
	v_dual_cndmask_b32 v147, 0x80000000, v147 :: v_dual_cndmask_b32 v128, 0x80000000, v128
	v_dual_cndmask_b32 v151, 0x80000000, v151 :: v_dual_cndmask_b32 v138, 0x80000000, v138
	v_cndmask_b32_e32 v140, 0x80000000, v140, vcc_lo
	v_cndmask_b32_e32 v142, 0x80000000, v142, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v114, v66, v113
	scratch_load_b32 v66, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v115, v66, v113
	scratch_load_b32 v66, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v116, v66, v113
	scratch_load_b32 v66, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v116, 0x80000000, v116 :: v_dual_add_nc_u32 v117, v66, v113
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v66, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v118, v66, v113
	scratch_load_b32 v66, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v118, 0x80000000, v118 :: v_dual_add_nc_u32 v119, v66, v113
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v66, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v120, v66, v113
	scratch_load_b32 v66, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v120, 0x80000000, v120 :: v_dual_add_nc_u32 v121, v66, v113
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v66, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v121, 0x80000000, v121, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v122, v66, v113
	scratch_load_b32 v66, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v122, 0x80000000, v122 :: v_dual_cndmask_b32 v115, 0x80000000, v115
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, v66, v113
	scratch_load_b32 v66, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v123, 0x80000000, v123 :: v_dual_add_nc_u32 v124, v66, v113
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v66, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v124, 0x80000000, v124 :: v_dual_cndmask_b32 v117, 0x80000000, v117
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v125, v66, v113
	scratch_load_b32 v66, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v125, 0x80000000, v125, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v126, v66, v113
	scratch_load_b32 v66, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v126, 0x80000000, v126 :: v_dual_cndmask_b32 v119, 0x80000000, v119
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v127, v66, v113
	v_add_nc_u32_e32 v113, v103, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v127, 0x80000000, v127 :: v_dual_cndmask_b32 v114, 0x80000000, v114
	v_cndmask_b32_e32 v153, 0x80000000, v113, vcc_lo
	s_clause 0x1f
	buffer_load_u8 v154, v114, s[12:15], 0 offen
	buffer_load_u8 v113, v115, s[12:15], 0 offen
	buffer_load_u8 v155, v116, s[12:15], 0 offen
	buffer_load_u8 v114, v117, s[12:15], 0 offen
	buffer_load_u8 v156, v118, s[12:15], 0 offen
	buffer_load_u8 v115, v119, s[12:15], 0 offen
	buffer_load_u8 v157, v120, s[12:15], 0 offen
	buffer_load_u8 v116, v121, s[12:15], 0 offen
	buffer_load_u8 v158, v122, s[12:15], 0 offen
	buffer_load_u8 v117, v123, s[12:15], 0 offen
	buffer_load_u8 v159, v124, s[12:15], 0 offen
	buffer_load_u8 v118, v125, s[12:15], 0 offen
	buffer_load_u8 v160, v126, s[12:15], 0 offen
	buffer_load_u8 v119, v127, s[12:15], 0 offen
	buffer_load_u8 v161, v128, s[12:15], 0 offen
	buffer_load_u8 v120, v137, s[12:15], 0 offen
	buffer_load_u8 v137, v138, s[12:15], 0 offen
	buffer_load_u8 v121, v139, s[12:15], 0 offen
	buffer_load_u8 v138, v140, s[12:15], 0 offen
	buffer_load_u8 v122, v141, s[12:15], 0 offen
	buffer_load_u8 v139, v142, s[12:15], 0 offen
	buffer_load_u8 v123, v143, s[12:15], 0 offen
	buffer_load_u8 v140, v144, s[12:15], 0 offen
	buffer_load_u8 v124, v145, s[12:15], 0 offen
	buffer_load_u8 v141, v146, s[12:15], 0 offen
	buffer_load_u8 v125, v147, s[12:15], 0 offen
	buffer_load_u8 v142, v148, s[12:15], 0 offen
	buffer_load_u8 v126, v149, s[12:15], 0 offen
	buffer_load_u8 v143, v150, s[12:15], 0 offen
	buffer_load_u8 v127, v151, s[12:15], 0 offen
	buffer_load_u8 v144, v152, s[12:15], 0 offen
	buffer_load_u8 v128, v153, s[12:15], 0 offen
	.loc	1 1069 30 is_stmt 1             ; ragged.py:1069:30
	s_clause 0x7
	buffer_load_u8 v129, v129, s[4:7], 0 offen
	buffer_load_u8 v130, v130, s[4:7], 0 offen
	buffer_load_u8 v131, v131, s[4:7], 0 offen
	buffer_load_u8 v133, v133, s[4:7], 0 offen
	buffer_load_u8 v134, v134, s[4:7], 0 offen
	buffer_load_u8 v135, v135, s[4:7], 0 offen
	buffer_load_u8 v136, v136, s[4:7], 0 offen
	buffer_load_u8 v132, v132, s[4:7], 0 offen
	v_add_nc_u32_e32 v145, 0, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v145, v129
	s_waitcnt vmcnt(6)
	ds_store_b8 v145, v130 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v145, v131 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v145, v133 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v145, v134 offset:1280
	s_waitcnt vmcnt(2)
	ds_store_b8 v145, v135 offset:1536
	s_waitcnt vmcnt(0)
	ds_store_b8 v104, v132
	ds_store_b8 v105, v136
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v129, v112 offset:192
	ds_load_u8 v130, v112 offset:128
	ds_load_u8 v131, v112 offset:208
	ds_load_u8 v132, v112 offset:144
	ds_load_u8 v133, v112 offset:224
	ds_load_u8 v134, v112 offset:160
	ds_load_u8 v135, v112 offset:240
	ds_load_u8 v136, v112 offset:176
	ds_load_u8 v145, v112 offset:448
	ds_load_u8 v146, v112 offset:384
	ds_load_u8 v147, v112 offset:464
	ds_load_u8 v148, v112 offset:400
	ds_load_u8 v149, v112 offset:480
	ds_load_u8 v150, v112 offset:416
	ds_load_u8 v151, v112 offset:496
	ds_load_u8 v152, v112 offset:432
	ds_load_u8 v153, v112 offset:320
	ds_load_u8 v162, v112 offset:256
	ds_load_u8 v163, v112 offset:336
	ds_load_u8 v164, v112 offset:272
	ds_load_u8 v165, v112 offset:352
	ds_load_u8 v166, v112 offset:288
	ds_load_u8 v167, v112 offset:368
	ds_load_u8 v168, v112 offset:304
	ds_load_u8 v169, v112 offset:64
	ds_load_u8 v170, v112 offset:80
	ds_load_u8 v171, v112 offset:96
	ds_load_u8 v172, v112 offset:112
	ds_load_u8 v173, v112
	ds_load_u8 v174, v112 offset:16
	ds_load_u8 v175, v112 offset:32
	ds_load_u8 v176, v112 offset:48
	ds_load_u8 v177, v112 offset:960
	ds_load_u8 v178, v112 offset:896
	ds_load_u8 v179, v112 offset:1024
	ds_load_u8 v180, v112 offset:976
	ds_load_u8 v181, v112 offset:912
	ds_load_u8 v182, v112 offset:992
	ds_load_u8 v183, v112 offset:928
	ds_load_u8 v184, v112 offset:944
	ds_load_u8 v185, v112 offset:832
	ds_load_u8 v186, v112 offset:768
	ds_load_u8 v187, v112 offset:848
	ds_load_u8 v188, v112 offset:784
	ds_load_u8 v189, v112 offset:864
	ds_load_u8 v190, v112 offset:800
	ds_load_u8 v191, v112 offset:880
	ds_load_u8 v192, v112 offset:816
	ds_load_u8 v193, v112 offset:704
	ds_load_u8 v194, v112 offset:640
	ds_load_u8 v195, v112 offset:720
	ds_load_u8 v196, v112 offset:656
	ds_load_u8 v197, v112 offset:736
	ds_load_u8 v198, v112 offset:672
	ds_load_u8 v199, v112 offset:752
	ds_load_u8 v200, v112 offset:688
	ds_load_u8 v201, v112 offset:576
	ds_load_u8 v202, v112 offset:512
	ds_load_u8 v203, v112 offset:592
	ds_load_u8 v204, v112 offset:528
	ds_load_u8 v205, v112 offset:608
	ds_load_u8 v206, v112 offset:544
	ds_load_u8 v207, v112 offset:624
	ds_load_u8 v208, v112 offset:560
	ds_load_u8 v209, v112 offset:1216
	ds_load_u8 v210, v112 offset:1280
	ds_load_u8 v211, v112 offset:1232
	ds_load_u8 v212, v112 offset:1168
	ds_load_u8 v213, v112 offset:1248
	ds_load_u8 v214, v112 offset:1184
	ds_load_u8 v215, v112 offset:1264
	ds_load_u8 v216, v112 offset:1200
	ds_load_u8 v217, v112 offset:1152
	ds_load_u8 v218, v112 offset:1088
	ds_load_u8 v219, v112 offset:1104
	ds_load_u8 v220, v112 offset:1040
	ds_load_u8 v221, v112 offset:1120
	ds_load_u8 v222, v112 offset:1056
	ds_load_u8 v223, v112 offset:1136
	ds_load_u8 v224, v112 offset:1072
	ds_load_u8 v225, v112 offset:1472
	ds_load_u8 v226, v112 offset:1536
	ds_load_u8 v227, v112 offset:1488
	ds_load_u8 v228, v112 offset:1424
	ds_load_u8 v229, v112 offset:1504
	ds_load_u8 v230, v112 offset:1440
	ds_load_u8 v231, v112 offset:1520
	ds_load_u8 v232, v112 offset:1456
	ds_load_u8 v233, v112 offset:1408
	ds_load_u8 v234, v112 offset:1344
	ds_load_u8 v235, v112 offset:1360
	ds_load_u8 v236, v112 offset:1296
	ds_load_u8 v237, v112 offset:1376
	ds_load_u8 v238, v112 offset:1312
	ds_load_u8 v239, v112 offset:1392
	ds_load_u8 v240, v112 offset:1328
	ds_load_u8 v241, v112 offset:1984
	ds_load_u8 v242, v112 offset:2000
	ds_load_u8 v243, v112 offset:1936
	ds_load_u8 v244, v112 offset:2016
	ds_load_u8 v245, v112 offset:1952
	ds_load_u8 v246, v106
	ds_load_u8 v247, v107
	ds_load_u8 v248, v112 offset:1968
	ds_load_u8 v249, v112 offset:1920
	ds_load_u8 v250, v112 offset:1856
	ds_load_u8 v251, v112 offset:1872
	ds_load_u8 v252, v112 offset:1808
	ds_load_u8 v253, v112 offset:1888
	ds_load_u8 v254, v112 offset:1824
	ds_load_u8 v255, v112 offset:1904
	ds_load_u8 v68, v112 offset:1840
	ds_load_u8 v69, v112 offset:1728
	ds_load_u8 v66, v112 offset:1792
	ds_load_u8 v67, v112 offset:1744
	ds_load_u8 v72, v112 offset:1680
	ds_load_u8 v73, v112 offset:1760
	ds_load_u8 v74, v112 offset:1696
	ds_load_u8 v75, v112 offset:1776
	ds_load_u8 v76, v112 offset:1712
	ds_load_u8 v77, v112 offset:1664
	ds_load_u8 v78, v112 offset:1600
	ds_load_u8 v79, v112 offset:1616
	ds_load_u8 v80, v112 offset:1552
	ds_load_u8 v81, v112 offset:1632
	ds_load_u8 v82, v112 offset:1568
	ds_load_u8 v83, v112 offset:1648
	ds_load_u8 v84, v112 offset:1584
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v70, v154
	ds_store_b8 v70, v155 offset:512
	ds_store_b8 v70, v156 offset:1024
	ds_store_b8 v70, v157 offset:1536
	ds_store_b8 v70, v158 offset:2048
	ds_store_b8 v70, v159 offset:2560
	ds_store_b8 v70, v160 offset:3072
	ds_store_b8 v70, v161 offset:3584
	ds_store_b8 v70, v137 offset:4096
	ds_store_b8 v70, v138 offset:4608
	ds_store_b8 v70, v139 offset:5120
	ds_store_b8 v70, v140 offset:5632
	ds_store_b8 v70, v141 offset:6144
	ds_store_b8 v70, v142 offset:6656
	ds_store_b8 v70, v143 offset:7168
	ds_store_b8 v70, v144 offset:7680
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v70, v162, v153, 0xc0c0004
	v_perm_b32 v137, v146, v145, 0xc0c0004
	v_perm_b32 v129, v130, v129, 0xc0c0004
	v_perm_b32 v131, v132, v131, 0xc0c0004
	v_perm_b32 v133, v134, v133, 0xc0c0004
	v_perm_b32 v138, v173, v169, 0xc0c0004
	v_lshl_or_b32 v130, v137, 16, v70
	v_perm_b32 v70, v164, v163, 0xc0c0004
	v_perm_b32 v137, v148, v147, 0xc0c0004
	v_perm_b32 v135, v136, v135, 0xc0c0004
	v_lshl_or_b32 v129, v129, 16, v138
	v_perm_b32 v138, v174, v170, 0xc0c0004
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_store_b8 v108, v113
	ds_store_b8 v108, v114 offset:512
	ds_store_b8 v108, v115 offset:1024
	ds_store_b8 v108, v116 offset:1536
	ds_store_b8 v108, v117 offset:2048
	ds_store_b8 v108, v118 offset:2560
	ds_store_b8 v108, v119 offset:3072
	ds_store_b8 v108, v120 offset:3584
	ds_store_b8 v108, v121 offset:4096
	ds_store_b8 v108, v122 offset:4608
	ds_store_b8 v108, v123 offset:5120
	ds_store_b8 v108, v124 offset:5632
	ds_store_b8 v108, v125 offset:6144
	ds_store_b8 v108, v126 offset:6656
	ds_store_b8 v108, v127 offset:7168
	ds_store_b8 v108, v128 offset:7680
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v132, v137, 16, v70
	v_perm_b32 v70, v166, v165, 0xc0c0004
	v_perm_b32 v137, v150, v149, 0xc0c0004
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v131, v131, 16, v138
	v_perm_b32 v138, v175, v171, 0xc0c0004
	v_lshl_or_b32 v134, v137, 16, v70
	v_perm_b32 v70, v168, v167, 0xc0c0004
	v_perm_b32 v137, v152, v151, 0xc0c0004
	v_perm_b32 v66, v66, v250, 0xc0c0004
	v_lshl_or_b32 v133, v133, 16, v138
	v_perm_b32 v138, v176, v172, 0xc0c0004
	v_perm_b32 v78, v226, v78, 0xc0c0004
	v_lshl_or_b32 v136, v137, 16, v70
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_add_nc_u32_e32 v70, 0, v71
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v69, v77, v69, 0xc0c0004
	v_lshl_or_b32 v135, v135, 16, v138
	v_perm_b32 v67, v72, v67, 0xc0c0004
	v_perm_b32 v68, v68, v255, 0xc0c0004
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[113:116], v70 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v70, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[113:114], v[129:130], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[115:116], v[129:130], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[113:114], v[131:132], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[115:116], v[131:132], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[113:114], v[133:134], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[115:116], v[133:134], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[113:114], v[135:136], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[115:116], v[135:136], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v113, v178, v177, 0xc0c0004
	v_perm_b32 v114, v202, v201, 0xc0c0004
	v_perm_b32 v115, v194, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v118, v113, 16, v70
	v_perm_b32 v70, v188, v187, 0xc0c0004
	v_lshl_or_b32 v117, v115, 16, v114
	v_perm_b32 v113, v181, v180, 0xc0c0004
	v_perm_b32 v114, v204, v203, 0xc0c0004
	v_perm_b32 v115, v196, v195, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v120, v113, 16, v70
	v_perm_b32 v70, v190, v189, 0xc0c0004
	v_lshl_or_b32 v119, v115, 16, v114
	v_perm_b32 v113, v183, v182, 0xc0c0004
	v_perm_b32 v114, v206, v205, 0xc0c0004
	v_perm_b32 v115, v198, v197, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v122, v113, 16, v70
	v_perm_b32 v70, v208, v207, 0xc0c0004
	v_lshl_or_b32 v121, v115, 16, v114
	v_perm_b32 v113, v200, v199, 0xc0c0004
	v_perm_b32 v114, v192, v191, 0xc0c0004
	v_perm_b32 v115, v184, v246, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v123, v113, 16, v70
	v_perm_b32 v70, v210, v234, 0xc0c0004
	v_lshl_or_b32 v124, v115, 16, v114
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[113:116], v109 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[113:114], v[117:118], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[115:116], v[117:118], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[113:114], v[119:120], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[115:116], v[119:120], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[113:114], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[115:116], v[121:122], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[113:114], v[123:124], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[115:116], v[123:124], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v113, v233, v225, 0xc0c0004
	v_perm_b32 v114, v179, v218, 0xc0c0004
	v_perm_b32 v115, v217, v209, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v118, v113, 16, v70
	v_perm_b32 v70, v236, v235, 0xc0c0004
	v_lshl_or_b32 v117, v115, 16, v114
	v_perm_b32 v113, v228, v227, 0xc0c0004
	v_perm_b32 v114, v220, v219, 0xc0c0004
	v_perm_b32 v115, v212, v211, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v120, v113, 16, v70
	v_perm_b32 v70, v238, v237, 0xc0c0004
	v_lshl_or_b32 v119, v115, 16, v114
	v_perm_b32 v113, v230, v229, 0xc0c0004
	v_perm_b32 v114, v222, v221, 0xc0c0004
	v_perm_b32 v115, v214, v213, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v122, v113, 16, v70
	v_perm_b32 v70, v240, v239, 0xc0c0004
	v_lshl_or_b32 v121, v115, 16, v114
	v_perm_b32 v113, v232, v231, 0xc0c0004
	v_perm_b32 v114, v224, v223, 0xc0c0004
	v_perm_b32 v115, v216, v215, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v124, v113, 16, v70
	v_perm_b32 v70, v249, v241, 0xc0c0004
	v_lshl_or_b32 v123, v115, 16, v114
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[113:116], v110 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[113:114], v[117:118], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[115:116], v[117:118], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[113:114], v[119:120], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[115:116], v[119:120], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[113:114], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[115:116], v[121:122], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[113:114], v[123:124], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[115:116], v[123:124], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v118, v70, 16, v66
	v_lshl_or_b32 v117, v69, 16, v78
	v_perm_b32 v66, v252, v251, 0xc0c0004
	v_perm_b32 v69, v243, v242, 0xc0c0004
	v_perm_b32 v70, v80, v79, 0xc0c0004
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[113:116], v111 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v120, v69, 16, v66
	v_lshl_or_b32 v119, v67, 16, v70
	v_perm_b32 v66, v254, v253, 0xc0c0004
	v_perm_b32 v67, v245, v244, 0xc0c0004
	v_perm_b32 v69, v82, v81, 0xc0c0004
	v_perm_b32 v70, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v122, v67, 16, v66
	v_perm_b32 v66, v84, v83, 0xc0c0004
	v_lshl_or_b32 v121, v70, 16, v69
	v_perm_b32 v67, v76, v75, 0xc0c0004
	v_perm_b32 v69, v248, v247, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v123, v67, 16, v66
	v_lshl_or_b32 v124, v69, 16, v68
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[113:114], v[117:118], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[115:116], v[117:118], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[113:114], v[119:120], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[115:116], v[119:120], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[113:114], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[115:116], v[121:122], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[113:114], v[123:124], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[115:116], v[123:124], v[57:64] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v103, v1
	v_cvt_f32_i32_e32 v102, v2
	v_cvt_f32_i32_e32 v101, v3
	v_cvt_f32_i32_e32 v100, v4
	v_cvt_f32_i32_e32 v99, v5
	v_cvt_f32_i32_e32 v98, v6
	v_cvt_f32_i32_e32 v97, v7
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
	v_cvt_f32_i32_e32 v70, v34
	v_cvt_f32_i32_e32 v34, v35
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
	v_dual_mov_b32 v8, s17 :: v_dual_lshlrev_b32 v35, 1, v0
	v_dual_mov_b32 v6, s74 :: v_dual_and_b32 v7, 0x7f, v0
	v_dual_mov_b32 v5, v65 :: v_dual_and_b32 v112, 15, v0
	v_and_b32_e32 v106, 0x80, v0
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v36, 48, v112
	v_or_b32_e32 v38, 32, v112
	v_or_b32_e32 v39, 16, v112
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s69, s9, 0xffff
	s_mov_b32 s71, 0x31027000
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v36, s0, s74, v36
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v37, null, s75, 0, s0
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_mov_b32 s68, s8
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v64, 28, v35
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[76:77], v[36:37]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[78:79], v[36:37]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v37, s1, s74, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v38, null, s75, 0, s1
	v_add_co_u32 v39, s1, s74, v39
	v_add_co_ci_u32_e64 v40, null, s75, 0, s1
	v_add_co_u32 v41, s1, s74, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v42, null, s75, 0, s1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[76:77], v[39:40]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[78:79], v[39:40]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[76:77], v[37:38]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s6, s[76:77], v[41:42]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[78:79], v[41:42]
	v_cmp_gt_i64_e64 s3, s[78:79], v[37:38]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v38, 1, v41
	v_lshlrev_b32_e32 v36, 1, v36
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v39, 1, v39
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s6, s6, s7
	s_and_b32 s4, s4, s5
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e64 v38, 0x80000000, v38, s6
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s3
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	v_cndmask_b32_e64 v39, 0x80000000, v39, s4
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	s_clause 0x3
	buffer_load_u16 v59, v38, s[68:71], 0 offen
	buffer_load_u16 v60, v39, s[68:71], 0 offen
	buffer_load_u16 v61, v37, s[68:71], 0 offen
	buffer_load_u16 v62, v36, s[68:71], 0 offen
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_or_b32_e32 v36, s16, v0
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s69, s11, 0xffff
	s_mov_b32 s68, s10
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshlrev_b32_e32 v35, 5, v0
	s_mov_b32 s26, 0x76543210
	.loc	1 1119 36                       ; ragged.py:1119:36
	v_add_lshl_u32 v8, v36, v8, 1
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v36, 0xf0, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v67, 32, v35
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v63, v8, s[68:71], 0 offen
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v8, 7, v106
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v68, v36, 2, 0
	v_lshl_add_u32 v69, v36, 1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v37, 62, v8
	v_or_b32_e32 v38, 60, v8
	v_or_b32_e32 v39, 58, v8
	v_or_b32_e32 v41, 56, v8
	v_or_b32_e32 v43, 54, v8
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v35, s0, s74, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v36, null, s75, 0, s0
	v_add_co_u32 v37, s0, s74, v38
	v_add_co_ci_u32_e64 v38, null, s75, 0, s0
	v_add_co_u32 v39, s0, s74, v39
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v45, 52, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v40, null, s75, 0, s0
	v_add_co_u32 v41, s0, s74, v41
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v47, 50, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v42, null, s75, 0, s0
	v_add_co_u32 v43, s0, s74, v43
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v49, 48, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v44, null, s75, 0, s0
	v_add_co_u32 v45, s0, s74, v45
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v51, 46, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v46, null, s75, 0, s0
	v_add_co_u32 v47, s0, s74, v47
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v53, 44, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v48, null, s75, 0, s0
	v_add_co_u32 v49, s0, s74, v49
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v55, 42, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v50, null, s75, 0, s0
	v_add_co_u32 v51, s0, s74, v51
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v57, 40, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v52, null, s75, 0, s0
	v_add_co_u32 v53, s0, s74, v53
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v65, 38, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v54, null, s75, 0, s0
	v_add_co_u32 v55, s0, s74, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v56, null, s75, 0, s0
	v_add_co_u32 v57, s0, s74, v57
	v_add_co_ci_u32_e64 v58, null, s75, 0, s0
	v_add_co_u32 v104, s0, s74, v65
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v105, null, s75, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[76:77], v[35:36]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[78:79], v[35:36]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[76:77], v[37:38]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[78:79], v[37:38]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[76:77], v[45:46]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[78:79], v[45:46]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[76:77], v[53:54]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[78:79], v[53:54]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[76:77], v[55:56]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[78:79], v[55:56]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[76:77], v[57:58]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[78:79], v[57:58]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[76:77], v[39:40]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[78:79], v[39:40]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[76:77], v[41:42]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[78:79], v[41:42]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[76:77], v[43:44]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[78:79], v[43:44]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[76:77], v[47:48]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[78:79], v[47:48]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[76:77], v[49:50]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[78:79], v[49:50]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[76:77], v[51:52]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[78:79], v[51:52]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v66, 36, v8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[76:77], v[104:105]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s68, s72, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s72, s68
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	s_ashr_i32 s73, s68, 1
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v36, 16, v60
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v58, v84, v36 :: v_dual_lshlrev_b32 v35, 16, v59
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v42, v100, v35 :: v_dual_lshlrev_b32 v37, 16, v61
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v47, v95, v35 :: v_dual_lshlrev_b32 v38, 16, v62
	v_mul_f32_e32 v45, v97, v35
	v_mul_f32_e32 v55, v87, v36
	v_mul_f32_e32 v56, v86, v36
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v64, v68, v67, v64
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v65, v78, v36 :: v_dual_lshlrev_b32 v54, 16, v63
	v_mul_f32_e32 v39, v103, v35
	v_mul_f32_e32 v40, v102, v35
	v_mul_f32_e32 v41, v101, v35
	v_mul_f32_e32 v43, v99, v35
	v_dual_mul_f32 v44, v98, v35 :: v_dual_mul_f32 v57, v85, v36
	v_dual_mul_f32 v46, v96, v35 :: v_dual_mul_f32 v59, v83, v36
	v_dual_mul_f32 v48, v94, v35 :: v_dual_mul_f32 v61, v81, v36
	v_dual_mul_f32 v49, v93, v35 :: v_dual_mul_f32 v60, v82, v36
	v_dual_mul_f32 v50, v92, v35 :: v_dual_mul_f32 v63, v79, v36
	v_dual_mul_f32 v51, v91, v35 :: v_dual_mul_f32 v62, v80, v36
	v_dual_mul_f32 v52, v90, v35 :: v_dual_mul_f32 v67, v77, v36
	v_dual_mul_f32 v53, v89, v35 :: v_dual_mul_f32 v68, v76, v36
	v_dual_mul_f32 v35, v88, v35 :: v_dual_mul_f32 v74, v74, v36
	v_dual_mul_f32 v75, v75, v36 :: v_dual_mul_f32 v34, v34, v37
	v_mul_f32_e32 v73, v73, v36
	v_dual_mul_f32 v36, v72, v36 :: v_dual_mul_f32 v71, v71, v37
	v_mul_f32_e32 v70, v70, v37
	v_dual_mul_f32 v33, v33, v37 :: v_dual_mul_f32 v20, v20, v38
	v_mul_f32_e32 v72, v32, v37
	v_dual_mul_f32 v76, v31, v37 :: v_dual_mul_f32 v13, v13, v38
	v_mul_f32_e32 v77, v30, v37
	v_dual_mul_f32 v78, v29, v37 :: v_dual_mul_f32 v19, v19, v38
	v_mul_f32_e32 v79, v28, v37
	v_dual_mul_f32 v80, v27, v37 :: v_dual_mul_f32 v9, v9, v38
	v_dual_mul_f32 v81, v26, v37 :: v_dual_mul_f32 v86, v16, v38
	v_dual_mul_f32 v82, v25, v37 :: v_dual_mul_f32 v87, v15, v38
	v_dual_mul_f32 v83, v24, v37 :: v_dual_mul_f32 v14, v14, v38
	v_dual_mul_f32 v84, v23, v37 :: v_dual_mul_f32 v1, v1, v38
	v_dual_mul_f32 v85, v22, v37 :: v_dual_mul_f32 v12, v12, v38
	v_dual_mul_f32 v37, v21, v37 :: v_dual_mul_f32 v10, v10, v38
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v64, v54
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v69
	ds_load_b128 v[25:28], v69 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v54, v18, v38
	v_mul_f32_e32 v64, v17, v38
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[15:18], v69 offset:512
	ds_load_b128 v[29:32], v69 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v11, v11, v38
	v_mul_f32_e32 v4, v4, v38
	v_mul_f32_e32 v3, v3, v38
	v_mul_f32_e32 v2, v2, v38
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v38, v39, v21 :: v_dual_mul_f32 v39, v40, v22
	v_dual_mul_f32 v40, v41, v23 :: v_dual_mul_f32 v41, v42, v24
	v_dual_mul_f32 v42, v43, v25 :: v_dual_mul_f32 v43, v44, v26
	v_dual_mul_f32 v44, v45, v27 :: v_dual_mul_f32 v45, v46, v28
	v_dual_mul_f32 v46, v47, v15 :: v_dual_mul_f32 v47, v48, v16
	v_dual_mul_f32 v48, v49, v17 :: v_dual_mul_f32 v49, v50, v18
	v_dual_mul_f32 v50, v51, v29 :: v_dual_mul_f32 v51, v52, v30
	v_dual_mul_f32 v52, v53, v31 :: v_dual_mul_f32 v35, v35, v32
	v_mul_f32_e32 v53, v55, v21
	v_dual_mul_f32 v55, v56, v22 :: v_dual_mul_f32 v56, v57, v23
	v_dual_mul_f32 v57, v58, v24 :: v_dual_mul_f32 v58, v59, v25
	v_dual_mul_f32 v59, v60, v26 :: v_dual_mul_f32 v60, v61, v27
	v_dual_mul_f32 v61, v62, v28 :: v_dual_mul_f32 v62, v63, v15
	v_dual_mul_f32 v63, v65, v16 :: v_dual_mul_f32 v70, v70, v22
	v_dual_mul_f32 v65, v67, v17 :: v_dual_mul_f32 v36, v36, v32
	v_dual_mul_f32 v67, v68, v18 :: v_dual_mul_f32 v34, v34, v23
	v_dual_mul_f32 v68, v75, v29 :: v_dual_mul_f32 v69, v74, v30
	v_dual_mul_f32 v72, v72, v25 :: v_dual_mul_f32 v73, v73, v31
	v_dual_mul_f32 v74, v76, v26 :: v_dual_mul_f32 v71, v71, v21
	v_mul_f32_e32 v76, v78, v28
	v_mul_f32_e32 v33, v33, v24
	v_dual_mul_f32 v75, v77, v27 :: v_dual_mul_f32 v78, v80, v16
	v_mul_f32_e32 v77, v79, v15
	v_dual_mul_f32 v79, v81, v17 :: v_dual_mul_f32 v80, v82, v18
	v_dual_mul_f32 v81, v83, v29 :: v_dual_mul_f32 v14, v14, v27
	v_dual_mul_f32 v82, v84, v30 :: v_dual_mul_f32 v83, v85, v31
	v_dual_mul_f32 v20, v20, v21 :: v_dual_mul_f32 v37, v37, v32
	v_dual_mul_f32 v19, v19, v22 :: v_dual_mul_f32 v12, v12, v15
	v_dual_mul_f32 v21, v54, v23 :: v_dual_mul_f32 v4, v4, v29
	v_dual_mul_f32 v22, v64, v24 :: v_dual_mul_f32 v23, v86, v25
	v_dual_mul_f32 v24, v87, v26 :: v_dual_mul_f32 v13, v13, v28
	v_dual_mul_f32 v10, v10, v17 :: v_dual_mul_f32 v11, v11, v16
	v_dual_mul_f32 v2, v2, v31 :: v_dual_mul_f32 v9, v9, v18
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v18, 0, v41 :: v_dual_mul_f32 v3, v3, v30
	v_dual_max_f32 v26, 0, v43 :: v_dual_mul_f32 v1, v1, v32
	v_dual_max_f32 v28, 0, v45 :: v_dual_max_f32 v15, 0, v38
	v_max_f32_e32 v30, 0, v47
	v_dual_max_f32 v16, 0, v39 :: v_dual_max_f32 v17, 0, v40
	v_dual_max_f32 v32, 0, v49 :: v_dual_max_f32 v25, 0, v42
	v_max_f32_e32 v40, 0, v52
	v_dual_max_f32 v27, 0, v44 :: v_dual_max_f32 v38, 0, v50
	v_dual_max_f32 v29, 0, v46 :: v_dual_max_f32 v42, 0, v55
	v_dual_max_f32 v31, 0, v48 :: v_dual_max_f32 v46, 0, v57
	v_dual_max_f32 v39, 0, v51 :: v_dual_max_f32 v54, 0, v61
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v84, 0, v69
	v_dual_max_f32 v41, 0, v53 :: v_dual_max_f32 v50, 0, v59
	v_max_f32_e32 v43, 0, v56
	v_dual_max_f32 v47, 0, v58 :: v_dual_max_f32 v36, 0, v36
	v_dual_max_f32 v55, 0, v62 :: v_dual_max_f32 v90, 0, v76
	v_dual_max_f32 v58, 0, v63 :: v_dual_max_f32 v59, 0, v65
	v_dual_max_f32 v70, 0, v70 :: v_dual_max_f32 v63, 0, v67
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v67, 0, v68
	v_dual_max_f32 v88, 0, v74 :: v_dual_max_f32 v85, 0, v73
	v_dual_max_f32 v92, 0, v78 :: v_dual_max_f32 v51, 0, v60
	v_dual_max_f32 v86, 0, v71 :: v_dual_max_f32 v33, 0, v33
	v_max_f32_e32 v94, 0, v80
	v_dual_max_f32 v87, 0, v72 :: v_dual_max_f32 v96, 0, v82
	v_dual_max_f32 v89, 0, v75 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v91, 0, v77 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v93, 0, v79 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v95, 0, v81 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v83, 0, v83 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v97, 0, v37 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v23, 0, v23 :: v_dual_mul_f32 v48, v17, v17
	v_dual_max_f32 v13, 0, v13 :: v_dual_mul_f32 v44, v15, v15
	v_dual_max_f32 v11, 0, v11 :: v_dual_mul_f32 v52, v25, v25
	v_dual_max_f32 v9, 0, v9 :: v_dual_mul_f32 v56, v27, v27
	v_dual_max_f32 v1, 0, v1 :: v_dual_mul_f32 v64, v31, v31
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v45, v16, v16 :: v_dual_mul_f32 v72, v39, v39
	v_dual_mul_f32 v49, v18, v18 :: v_dual_mul_f32 v76, v35, v35
	v_dual_mul_f32 v53, v26, v26 :: v_dual_mul_f32 v78, v47, v47
	v_dual_mul_f32 v57, v28, v28 :: v_dual_mul_f32 v80, v42, v42
	v_dual_mul_f32 v61, v30, v30 :: v_dual_mul_f32 v68, v55, v55
	v_dual_mul_f32 v65, v32, v32 :: v_dual_mul_f32 v82, v46, v46
	v_dual_mul_f32 v71, v38, v38 :: v_dual_mul_f32 v62, v59, v59
	v_dual_mul_f32 v75, v40, v40 :: v_dual_mul_f32 v74, v54, v54
	v_mul_f32_e32 v79, v41, v41
	v_dual_mul_f32 v77, v50, v50 :: v_dual_mul_f32 v42, v87, v87
	v_dual_mul_f32 v69, v58, v58 :: v_dual_mul_f32 v38, v91, v91
	v_dual_mul_f32 v63, v63, v63 :: v_dual_mul_f32 v46, v34, v34
	v_dual_mul_f32 v58, v67, v67 :: v_dual_mul_f32 v59, v84, v84
	v_dual_mul_f32 v40, v90, v90 :: v_dual_mul_f32 v55, v85, v85
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v3, 0, v3 :: v_dual_mul_f32 v60, v29, v29
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v81, v43, v43 :: v_dual_mul_f32 v54, v36, v36
	v_dual_mul_f32 v73, v51, v51 :: v_dual_mul_f32 v50, v86, v86
	v_dual_mul_f32 v51, v70, v70 :: v_dual_mul_f32 v34, v95, v95
	v_dual_mul_f32 v47, v33, v33 :: v_dual_mul_f32 v30, v20, v20
	v_dual_mul_f32 v43, v88, v88 :: v_dual_mul_f32 v32, v97, v97
	v_dual_mul_f32 v39, v89, v89 :: v_dual_mul_f32 v28, v19, v19
	v_dual_mul_f32 v37, v92, v92 :: v_dual_mul_f32 v26, v23, v23
	v_dual_mul_f32 v35, v93, v93 :: v_dual_mul_f32 v36, v94, v94
	v_mul_f32_e32 v33, v96, v96
	v_dual_mul_f32 v31, v83, v83 :: v_dual_mul_f32 v20, v10, v10
	v_dual_mul_f32 v29, v21, v21 :: v_dual_mul_f32 v16, v3, v3
	v_mul_f32_e32 v27, v22, v22
	v_dual_mul_f32 v25, v24, v24 :: v_dual_mul_f32 v18, v1, v1
	v_dual_mul_f32 v21, v14, v14 :: v_dual_max_f32 v10, v79, v80
	v_dual_mul_f32 v22, v13, v13 :: v_dual_mul_f32 v23, v12, v12
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v70, 1, v106
.Ltmp6:
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v24, v11, v11
	v_dual_mul_f32 v14, v9, v9 :: v_dual_mul_f32 v15, v4, v4
	v_mul_f32_e32 v17, v2, v2
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v44, v45
	v_max3_f32 v2, v49, v52, v53
	v_max3_f32 v4, v61, v64, v65
	v_max3_f32 v9, v71, v72, v75
	v_max3_f32 v11, v82, v78, v77
	v_max3_f32 v12, v69, v62, v63
	v_max3_f32 v13, v58, v59, v55
	v_max3_f32 v3, v56, v57, v60
	v_max3_f32 v1, v1, v48, v2
	v_max3_f32 v2, v4, v9, v76
	v_max3_f32 v4, v73, v74, v68
	v_max3_f32 v9, v10, v81, v11
	v_max3_f32 v10, v12, v13, v54
	v_max_f32_e32 v11, v50, v51
	v_max3_f32 v12, v47, v42, v43
	v_max3_f32 v13, v37, v35, v36
	v_max3_f32 v19, v34, v33, v31
	v_max3_f32 v1, v1, v3, v2
	v_max3_f32 v2, v9, v4, v10
	v_max3_f32 v3, v39, v40, v38
	v_max3_f32 v4, v11, v46, v12
	v_max3_f32 v9, v13, v19, v32
	v_max_f32_e32 v10, v30, v28
	v_max3_f32 v11, v27, v26, v25
	v_max3_f32 v12, v24, v20, v14
	v_max3_f32 v13, v15, v16, v17
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v19, v1, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v4, v3, v9
	v_max3_f32 v4, v21, v22, v23
	v_max3_f32 v9, v10, v29, v11
	v_max3_f32 v10, v12, v13, v18
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v12, v2, s26, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v3, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s27, s74, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v9, v4, v10
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v11, v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v13, v13, v13 :: v_dual_and_b32 v10, 0x60, v0
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v19, 4, v0
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v12 :: v_dual_max_f32 v1, v1, v11
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v66, 8, v0
	v_permlanex16_b32 v11, v4, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v13 :: v_dual_lshlrev_b32 v12, 4, v0
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v85, 3, v106
	v_lshl_add_u32 v86, v19, 6, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v9, 3, v0
.Ltmp20:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s75, 0, s27
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v13, v9, 9, 0
	v_lshlrev_b32_e32 v41, 5, v9
.Ltmp23:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[76:77], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[78:79], v[83:84]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp24:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v13, v19, 2, v13
	v_and_or_b32 v67, 0x680, v12, v41
	v_xor_b32_e32 v41, v41, v10
.Ltmp25:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v12, 0x2f0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v13, v66, 4, v13
	v_xor_b32_e32 v67, v67, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v11, v13, v70, v41
	v_add3_u32 v41, v86, v85, v67
.Ltmp27:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v13, 34, v8
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v11, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v41
.Ltmp29:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s26, s74, v13
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v11, 32, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s75, 0, s26
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v13, 30, v8
	v_or_b32_e32 v41, 28, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s31, s74, v11
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[76:77], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[78:79], v[85:86]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s75, 0, s31
	v_add_co_u32 v85, s31, s74, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v86, null, s75, 0, s31
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[76:77], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[78:79], v[83:84]
.Ltmp30:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v13, v2
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v70, v4, v4
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_waitcnt lgkmcnt(0)
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_barrier
.Ltmp33:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[76:77], v[85:86]
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
.Ltmp35:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[78:79], v[85:86]
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v13, v13
.Ltmp37:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[78:79], v[104:105]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v70, v4
	v_dual_max_f32 v13, v2, v13 :: v_dual_mov_b32 v70, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v83, v13
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v11, v1
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v11
	v_max_f32_e32 v11, v1, v11
.Ltmp43:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s36, s74, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s75, 0, s36
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v41, v11
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp45:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[76:77], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[78:79], v[1:2]
.Ltmp46:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v83, v83
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v67, v3
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v41, v41 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v13, v2
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v70, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max_f32_e32 v1, v41, v41
.Ltmp53:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v41, 26, v8
	v_or_b32_e32 v70, 24, v8
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v67, v67, v67 :: v_dual_max_f32 v4, v4, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v1, v11, v1
.Ltmp55:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s38, s74, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v67
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v13, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v41, v1
.Ltmp58:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s75, 0, s38
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v67, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s39, s74, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s75, 0, s39
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v41, v41, v41
.Ltmp64:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[76:77], v[83:84]
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v67, v67
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v67, v2
.Ltmp67:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[76:77], v[85:86]
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v41
	v_max_f32_e32 v41, v13, v13
	v_max_f32_e32 v3, v3, v11
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_lshlrev_b32_e32 v13, 4, v9
	v_lshlrev_b32_e32 v9, 3, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v11, v3 :: v_dual_add_nc_u32 v66, 0, v106
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v67, v67, v67 :: v_dual_max_f32 v4, v4, v41
.Ltmp71:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[78:79], v[85:86]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v67
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v67, 1, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_lshlrev_b32 v10, 5, v10
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v41, v66, v67, v9
.Ltmp77:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v66, 22, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v11
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v11, 5, v19
	v_add_nc_u32_e32 v19, 0, v13
.Ltmp80:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v87, s39, s74, v66
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v41, v[1:4]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v9, v19, v11, v9
	s_barrier
.Ltmp82:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v11, 18, v8
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v88, null, s75, 0, s39
.Ltmp83:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[1:4], v9
.Ltmp84:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 20, v8
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[78:79], v[83:84]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[76:77], v[87:88]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[78:79], v[87:88]
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s44, s74, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v84, null, s75, 0, s44
	v_add_co_u32 v85, s44, s74, v11
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 16, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s75, 0, s44
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[76:77], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[78:79], v[83:84]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v83, s48, s74, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[76:77], v[85:86]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v1, v1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[78:79], v[85:86]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s75, 0, s48
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 12, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v11, 0x2b8cbccc, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 14, v8
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v3, v3, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[78:79], v[83:84]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v2, v2, v2
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v11
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s48, s74, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v86, null, s75, 0, s48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v1, v19
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v87, s48, s74, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 10, v8
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v88, null, s75, 0, s48
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[76:77], v[83:84]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s54, s74, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v41, -v19, v1, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 8, v8
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v66, null, 0x40e00000, 0x40e00000, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[76:77], v[85:86]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v1, v41, v1
	v_div_scale_f32 v41, vcc_lo, v11, 0x40e00000, v11
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[78:79], v[85:86]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s75, 0, s54
	v_add_co_u32 v85, s54, s74, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v9, v41, v1
	v_rcp_f32_e32 v67, v66
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s75, 0, s54
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[76:77], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[78:79], v[83:84]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v70, -v19, v9, v41
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v84, 0x2b8cbccc, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[76:77], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[78:79], v[85:86]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v9, v70, v1
	v_fma_f32 v2, -v66, v67, 1.0
	v_max_f32_e32 v70, 0x2b8cbccc, v4
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v19, -v19, v9, v41
	v_fmac_f32_e32 v67, v2, v67
	v_div_scale_f32 v41, s60, v3, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v4
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v83, 6, v8
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v9, v19, v1, v9
	v_mul_f32_e32 v19, v41, v67
	v_div_scale_f32 v86, null, 0x40e00000, 0x40e00000, v70
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[76:77], v[87:88]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[78:79], v[87:88]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s58, s74, v83
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v83, -v4, v85, 1.0
	v_div_fixup_f32 v9, v9, 0x40e00000, v11
	v_fma_f32 v11, -v66, v19, v41
	v_rcp_f32_e32 v87, v86
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v88.h, 0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s75, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v85, v83, v85
	v_div_scale_f32 v83, s61, v84, 0x40e00000, v84
	v_fmac_f32_e32 v19, v11, v67
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v11.l, v9.h
	v_mov_b16_e32 v11.h, v88.h
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[76:77], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v89, v83, v85
	v_fma_f32 v90, -v86, v87, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[78:79], v[1:2]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v11
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v1, -v66, v19, v41
	v_fma_f32 v11, -v4, v89, v83
	v_fmac_f32_e32 v87, v90, v87
	v_div_scale_f32 v41, s62, v70, 0x40e00000, v70
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v9, v9, v2, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v89, v11, v85
	v_div_fmas_f32 v1, v1, v67, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v11, v41, v87 :: v_dual_and_b32 v66, 0xffff0000, v9
	s_mov_b32 vcc_lo, s61
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 4, v8
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v1, v1, 0x40e00000, v3
	v_fma_f32 v3, -v4, v89, v83
	v_fma_f32 v4, -v86, v11, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v67, null, v66, v66, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v88.l, v1.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v19, v3, v85, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v11, v4, v87
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v85, v67
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s60, s74, v2
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v2, -v86, v11, v41
	v_div_fixup_f32 v41, v19, 0x40e00000, v84
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v66, v66, v45
	v_div_scale_f32 v90, null, v66, v66, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v2, v87, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v19, -v67, v85, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v86, v84
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v11, 1, v88
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v87, vcc_lo, v44, v66, v44
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v70
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v70.l, v41.h
	v_mov_b16_e32 v70.h, v88.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v19, v85
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v1, v11, 0x7fff
	v_mov_b16_e32 v88.l, v2.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v91, null, v66, v66, v49
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v11, 1, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v89, v87, v85
	v_fma_f32 v70, -v84, v86, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s75, 0, s60
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v83, 1, v88
	v_add3_u32 v11, v41, v11, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v41, -v67, v89, v87
	v_fmac_f32_e32 v86, v70, v86
	v_rcp_f32_e32 v88, v90
	v_div_scale_f32 v92, s60, v45, v66, v45
	v_rcp_f32_e32 v93, v91
	v_fmac_f32_e32 v89, v41, v85
	v_div_scale_f32 v97, null, v66, v66, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v94, v92, v86
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v2, v83, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v67, -v67, v89, v87
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v95, -v90, v88, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v83, 0xffff0000, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v84, v94, v92
	v_fma_f32 v96, -v91, v93, 1.0
	v_div_fmas_f32 v67, v67, v85, v89
	v_fmac_f32_e32 v88, v95, v88
	v_div_scale_f32 v95, s61, v48, v66, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v94, v87, v86 :: v_dual_fmac_f32 v93, v96, v93
	v_rcp_f32_e32 v87, v97
	v_div_scale_f32 v96, null, v66, v66, v53
	v_mul_f32_e32 v85, v95, v88
	v_div_scale_f32 v89, s62, v49, v66, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v98, v96
	v_div_fixup_f32 v44, v67, v66, v44
	v_fma_f32 v67, -v84, v94, v92
	v_fma_f32 v84, -v90, v85, v95
	v_mul_f32_e32 v92, v89, v93
	v_fma_f32 v99, -v97, v87, 1.0
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v70, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v67, v67, v86, v94
	v_fmac_f32_e32 v85, v84, v88
	v_fma_f32 v84, -v91, v92, v89
	v_fmac_f32_e32 v87, v99, v87
	v_div_scale_f32 v86, s60, v52, v66, v52
	v_fma_f32 v94, -v96, v98, 1.0
	v_div_fixup_f32 v45, v67, v66, v45
	v_fma_f32 v67, -v90, v85, v95
	v_fmac_f32_e32 v92, v84, v93
	v_mul_f32_e32 v84, v86, v87
	v_fmac_f32_e32 v98, v94, v98
	v_div_scale_f32 v94, null, v66, v66, v56
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v90, s63, v53, v66, v53
	v_div_fmas_f32 v67, v67, v88, v85
	v_fma_f32 v85, -v91, v92, v89
	v_fma_f32 v88, -v97, v84, v86
	v_rcp_f32_e32 v89, v94
	v_div_scale_f32 v95, null, v66, v66, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v91, v90, v98 :: v_dual_fmac_f32 v84, v88, v87
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v85, v85, v93, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v92, -v96, v91, v90
	v_div_fixup_f32 v48, v67, v66, v48
	v_fma_f32 v93, -v94, v89, 1.0
	v_fma_f32 v67, -v97, v84, v86
	v_div_fixup_f32 v49, v85, v66, v49
	v_fmac_f32_e32 v91, v92, v98
	v_div_scale_f32 v85, s61, v56, v66, v56
	v_fmac_f32_e32 v89, v93, v89
	v_fma_f32 v86, -v95, v88, 1.0
	v_div_scale_f32 v92, null, v66, v66, v60
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v93, null, v66, v66, v61
	v_div_fmas_f32 v67, v67, v87, v84
	v_fma_f32 v84, -v96, v91, v90
	v_dual_mul_f32 v87, v85, v89 :: v_dual_fmac_f32 v88, v86, v88
	v_rcp_f32_e32 v86, v92
	v_div_scale_f32 v90, s60, v57, v66, v57
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v52, v67, v66, v52
	v_div_fmas_f32 v84, v84, v98, v91
	v_fma_f32 v91, -v94, v87, v85
	v_mul_f32_e32 v96, v90, v88
	v_rcp_f32_e32 v98, v93
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v92, v86, 1.0
	v_fmac_f32_e32 v87, v91, v89
	v_fma_f32 v67, -v95, v96, v90
	v_div_scale_f32 v91, null, v66, v66, v64
	v_div_fixup_f32 v53, v84, v66, v53
	v_fmac_f32_e32 v86, v97, v86
	v_div_scale_f32 v84, s62, v60, v66, v60
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v93, v98, 1.0
	v_fma_f32 v85, -v94, v87, v85
	v_fmac_f32_e32 v96, v67, v88
	v_rcp_f32_e32 v94, v91
	v_mul_f32_e32 v67, v84, v86
	v_fmac_f32_e32 v98, v97, v98
	v_div_scale_f32 v97, s63, v61, v66, v61
	v_div_fmas_f32 v85, v85, v89, v87
	v_fma_f32 v87, -v95, v96, v90
	v_div_scale_f32 v99, null, v66, v66, v65
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v89, -v92, v67, v84
	v_mul_f32_e32 v90, v97, v98
	v_fma_f32 v95, -v91, v94, 1.0
	v_div_fmas_f32 v87, v87, v88, v96
	v_rcp_f32_e32 v88, v99
	v_fmac_f32_e32 v67, v89, v86
	v_fma_f32 v89, -v93, v90, v97
	v_fmac_f32_e32 v94, v95, v94
	v_div_scale_f32 v95, s60, v64, v66, v64
	v_div_fixup_f32 v56, v85, v66, v56
	v_div_fixup_f32 v57, v87, v66, v57
	v_fma_f32 v84, -v92, v67, v84
	v_fmac_f32_e32 v90, v89, v98
	v_mul_f32_e32 v85, v95, v94
	v_fma_f32 v87, -v99, v88, 1.0
	v_div_scale_f32 v89, null, v66, v66, v71
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v92, s61, v65, v66, v65
	v_div_fmas_f32 v67, v84, v86, v67
	v_fma_f32 v84, -v93, v90, v97
	v_fma_f32 v86, -v91, v85, v95
	v_fmac_f32_e32 v88, v87, v88
	v_rcp_f32_e32 v87, v89
	v_div_scale_f32 v93, null, v66, v66, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v86, v94
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v60, v67, v66, v60
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v84, v84, v98, v90
	v_mul_f32_e32 v90, v92, v88
	v_fma_f32 v67, -v91, v85, v95
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v96, -v89, v87, 1.0
	v_div_scale_f32 v91, s62, v71, v66, v71
	v_div_fixup_f32 v61, v84, v66, v61
	v_fma_f32 v84, -v99, v90, v92
	v_fmac_f32_e32 v87, v96, v87
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v93, v86, 1.0
	v_div_scale_f32 v96, null, v66, v66, v75
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v90, v84, v88
	v_div_fmas_f32 v67, v67, v94, v85
	v_mul_f32_e32 v84, v91, v87
	v_fmac_f32_e32 v86, v95, v86
	v_rcp_f32_e32 v85, v96
	v_div_scale_f32 v94, s60, v72, v66, v72
	v_div_scale_f32 v95, null, v66, v66, v76
	v_div_fixup_f32 v64, v67, v66, v64
	v_fma_f32 v67, -v99, v90, v92
	v_fma_f32 v92, -v89, v84, v91
	v_mul_f32_e32 v97, v94, v86
	v_rcp_f32_e32 v98, v95
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v99, -v96, v85, 1.0
	v_div_fmas_f32 v67, v67, v88, v90
	v_fmac_f32_e32 v84, v92, v87
	v_fma_f32 v88, -v93, v97, v94
	v_div_scale_f32 v90, s61, v75, v66, v75
	v_fmac_f32_e32 v85, v99, v85
	v_div_fixup_f32 v65, v67, v66, v65
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v95, v98, 1.0
	v_fma_f32 v67, -v89, v84, v91
	v_fmac_f32_e32 v97, v88, v86
	v_div_scale_f32 v91, null, v83, v83, v79
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v88, v90, v85
	v_fmac_f32_e32 v98, v92, v98
	v_div_scale_f32 v89, s63, v76, v66, v76
	v_div_fmas_f32 v67, v67, v87, v84
	v_fma_f32 v84, -v93, v97, v94
	v_rcp_f32_e32 v92, v91
	v_div_scale_f32 v94, null, v83, v83, v80
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v87, -v96, v88, v90
	v_mul_f32_e32 v93, v89, v98
	v_div_fmas_f32 v84, v84, v86, v97
	v_rcp_f32_e32 v86, v94
	v_div_fixup_f32 v71, v67, v66, v71
	v_fmac_f32_e32 v88, v87, v85
	v_fma_f32 v87, -v95, v93, v89
	v_fma_f32 v97, -v91, v92, 1.0
	v_div_fixup_f32 v72, v84, v66, v72
	v_div_scale_f32 v84, s60, v79, v83, v79
	v_fma_f32 v67, -v96, v88, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v93, v87, v98 :: v_dual_fmac_f32 v92, v97, v92
	v_fma_f32 v87, -v94, v86, 1.0
	v_div_scale_f32 v90, null, v83, v83, v81
	s_mov_b32 vcc_lo, s61
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_barrier
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v67, v67, v85, v88
	v_fma_f32 v85, -v95, v93, v89
	v_mul_f32_e32 v88, v84, v92
	v_fmac_f32_e32 v86, v87, v86
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v89, s61, v80, v83, v80
	v_div_scale_f32 v95, null, v83, v83, v82
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v96, v89, v86
	v_div_fmas_f32 v85, v85, v98, v93
	v_fma_f32 v93, -v91, v88, v84
	v_rcp_f32_e32 v98, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v90, v87, 1.0
	v_div_fixup_f32 v75, v67, v66, v75
	v_div_fixup_f32 v76, v85, v66, v76
	v_fmac_f32_e32 v88, v93, v92
	v_fma_f32 v66, -v94, v96, v89
	v_fmac_f32_e32 v87, v97, v87
	v_div_scale_f32 v67, s62, v81, v83, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v84, -v91, v88, v84
	v_fma_f32 v93, -v95, v98, 1.0
	v_fmac_f32_e32 v96, v66, v86
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v66, v67, v87
	v_div_fmas_f32 v84, v84, v92, v88
	v_fmac_f32_e32 v98, v93, v98
	v_div_scale_f32 v93, s63, v82, v83, v82
	v_fma_f32 v88, -v94, v96, v89
	v_div_scale_f32 v97, null, v83, v83, v77
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v89, -v90, v66, v67
	v_mul_f32_e32 v92, v93, v98
	v_div_fmas_f32 v86, v88, v86, v96
	v_rcp_f32_e32 v88, v97
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v66, v89, v87
	v_fma_f32 v89, -v95, v92, v93
	v_div_fixup_f32 v80, v86, v83, v80
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v19, 2, v8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v9.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v67, -v90, v66, v67
	v_fmac_f32_e32 v92, v89, v98
	v_div_scale_f32 v89, null, v83, v83, v73
	v_fma_f32 v86, -v97, v88, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v66, v67, v87, v66
	v_fma_f32 v67, -v95, v92, v93
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v88, v86, v88
	v_rcp_f32_e32 v86, v89
	v_div_fmas_f32 v67, v67, v98, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v89, v86, 1.0
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v85, null, v83, v83, v78
	v_div_fixup_f32 v79, v84, v83, v79
	v_div_scale_f32 v93, null, v83, v83, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v91, v85
	v_div_scale_f32 v90, s61, v77, v83, v77
	v_div_fixup_f32 v81, v66, v83, v81
	v_div_scale_f32 v95, null, v83, v83, v68
	v_mul_f32_e32 v92, v90, v88
	v_div_fixup_f32 v82, v67, v83, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v94, -v85, v91, 1.0
	v_fma_f32 v67, -v97, v92, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v94, v91
	v_div_scale_f32 v94, s60, v78, v83, v78
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v92, v67, v88
	v_mul_f32_e32 v84, v94, v91
	v_fma_f32 v87, -v85, v84, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v87, v91
	v_rcp_f32_e32 v87, v93
	v_fma_f32 v66, -v85, v84, v94
	v_div_scale_f32 v85, s62, v73, v83, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v66, v66, v91, v84
	v_fma_f32 v94, -v93, v87, 1.0
	v_rcp_f32_e32 v84, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v67, v85, v86
	v_div_scale_f32 v91, s60, v74, v83, v74
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v94, null, v83, v83, v69
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v41, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v78, v66, v83, v78
	v_fma_f32 v66, -v97, v92, v90
	v_fma_f32 v90, -v89, v67, v85
	v_mul_f32_e32 v96, v91, v87
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v67, v90, v86
	v_div_fmas_f32 v66, v66, v88, v92
	v_fma_f32 v88, -v93, v96, v91
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s61, v68, v83, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v77, v66, v83, v77
	v_fma_f32 v92, -v94, v97, 1.0
	v_fma_f32 v66, -v89, v67, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v96, v88, v87 :: v_dual_mul_f32 v85, v90, v84
	v_div_scale_f32 v89, null, v83, v83, v62
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v97, v92, v97
	v_div_scale_f32 v88, s63, v69, v83, v69
	v_div_fmas_f32 v66, v66, v86, v67
	v_fma_f32 v67, -v93, v96, v91
	v_fma_f32 v86, -v95, v85, v90
	v_rcp_f32_e32 v91, v89
	v_div_scale_f32 v93, null, v83, v83, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v92, v88, v97 :: v_dual_fmac_f32 v85, v86, v84
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v67, v67, v87, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v87, -v94, v92, v88
	v_div_fixup_f32 v73, v66, v83, v73
	v_fma_f32 v96, -v89, v91, 1.0
	v_fma_f32 v66, -v95, v85, v90
	v_div_fixup_f32 v74, v67, v83, v74
	v_fmac_f32_e32 v92, v87, v97
	v_div_scale_f32 v67, s60, v62, v83, v62
	v_fmac_f32_e32 v91, v96, v91
	v_fma_f32 v87, -v93, v86, 1.0
	v_div_scale_f32 v90, null, v83, v83, v58
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v98, null, v83, v83, v54
	v_div_fmas_f32 v66, v66, v84, v85
	v_fma_f32 v84, -v94, v92, v88
	v_mul_f32_e32 v85, v67, v91
	v_fmac_f32_e32 v86, v87, v86
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v88, s61, v63, v83, v63
	v_div_scale_f32 v94, null, v83, v83, v59
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v95, v88, v86
	v_div_fmas_f32 v84, v84, v97, v92
	v_fma_f32 v92, -v89, v85, v67
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v90, v87, 1.0
	v_div_fixup_f32 v68, v66, v83, v68
	v_fma_f32 v66, -v93, v95, v88
	v_fmac_f32_e32 v85, v92, v91
	v_div_fixup_f32 v69, v84, v83, v69
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v84, s62, v58, v83, v58
	v_div_scale_f32 v92, null, v83, v83, v55
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v94, v97, 1.0
	v_fma_f32 v67, -v89, v85, v67
	v_fmac_f32_e32 v95, v66, v86
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v66, v84, v87
	v_rcp_f32_e32 v89, v92
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s63, v59, v83, v59
	v_div_fmas_f32 v67, v67, v91, v85
	v_fma_f32 v85, -v93, v95, v88
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v88, -v90, v66, v84
	v_mul_f32_e32 v91, v96, v97
	v_div_fixup_f32 v62, v67, v83, v62
	v_div_fmas_f32 v85, v85, v86, v95
	v_rcp_f32_e32 v86, v98
	v_fma_f32 v93, -v92, v89, 1.0
	v_fmac_f32_e32 v66, v88, v87
	v_fma_f32 v88, -v94, v91, v96
	v_div_fixup_f32 v63, v85, v83, v63
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s60, v55, v83, v55
	v_fmac_f32_e32 v91, v88, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v98, v86, 1.0
	v_div_scale_f32 v88, null, v70, v70, v50
	v_fma_f32 v67, -v90, v66, v84
	v_mul_f32_e32 v84, v93, v89
	v_fmac_f32_e32 v86, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v90, s61, v54, v83, v54
	v_div_fmas_f32 v66, v67, v87, v66
	v_fma_f32 v67, -v94, v91, v96
	v_fma_f32 v87, -v92, v84, v93
	v_div_scale_f32 v94, null, v70, v70, v51
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v58, v66, v83, v58
	v_fmac_f32_e32 v84, v87, v89
	v_rcp_f32_e32 v87, v94
	v_fma_f32 v95, -v88, v85, 1.0
	v_div_fmas_f32 v67, v67, v97, v91
	v_mul_f32_e32 v91, v90, v86
	v_fma_f32 v66, -v92, v84, v93
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v70, v70, v46
	v_div_fixup_f32 v59, v67, v83, v59
	v_fma_f32 v67, -v98, v91, v90
	v_div_scale_f32 v92, s62, v50, v70, v50
	v_fma_f32 v93, -v94, v87, 1.0
	v_div_fmas_f32 v66, v66, v89, v84
	v_rcp_f32_e32 v84, v95
	v_fmac_f32_e32 v91, v67, v86
	v_mul_f32_e32 v67, v92, v85
	v_fmac_f32_e32 v87, v93, v87
	v_div_scale_f32 v89, s60, v51, v70, v51
	v_div_scale_f32 v93, null, v70, v70, v47
	v_div_fixup_f32 v55, v66, v83, v55
	v_fma_f32 v66, -v98, v91, v90
	v_fma_f32 v90, -v88, v67, v92
	v_mul_f32_e32 v96, v89, v87
	v_rcp_f32_e32 v97, v93
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v67, v90, v85
	v_div_fmas_f32 v66, v66, v86, v91
	v_fma_f32 v86, -v94, v96, v89
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s61, v46, v70, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v54, v66, v83, v54
	v_fma_f32 v91, -v93, v97, 1.0
	v_fma_f32 v66, -v88, v67, v92
	v_fmac_f32_e32 v96, v86, v87
	v_mul_f32_e32 v83, v90, v84
	v_div_scale_f32 v88, null, v70, v70, v42
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v97, v91, v97
	v_div_scale_f32 v86, s63, v47, v70, v47
	v_div_fmas_f32 v66, v66, v85, v67
	v_fma_f32 v67, -v94, v96, v89
	v_fma_f32 v85, -v95, v83, v90
	v_rcp_f32_e32 v89, v88
	v_div_scale_f32 v92, null, v70, v70, v43
	v_mul_f32_e32 v91, v86, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v85, v84
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v67, v67, v87, v96
	v_fma_f32 v87, -v93, v91, v86
	v_div_fixup_f32 v50, v66, v70, v50
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v89, 1.0
	v_fma_f32 v66, -v95, v83, v90
	v_div_fixup_f32 v51, v67, v70, v51
	v_fmac_f32_e32 v91, v87, v97
	v_div_scale_f32 v67, s60, v42, v70, v42
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v87, -v92, v85, 1.0
	v_div_scale_f32 v90, null, v70, v70, v39
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v66, v66, v84, v83
	v_fma_f32 v83, -v93, v91, v86
	v_mul_f32_e32 v84, v67, v89
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v86, v90
	v_div_scale_f32 v87, s61, v43, v70, v43
	v_div_scale_f32 v93, null, v70, v70, v40
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v94, v87, v85
	v_div_fmas_f32 v83, v83, v97, v91
	v_fma_f32 v91, -v88, v84, v67
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v86, 1.0
	v_div_fixup_f32 v46, v66, v70, v46
	v_fma_f32 v66, -v92, v94, v87
	v_fmac_f32_e32 v84, v91, v89
	v_div_scale_f32 v91, null, v70, v70, v38
	v_div_fixup_f32 v47, v83, v70, v47
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v83, s62, v39, v70, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v93, v96, 1.0
	v_fma_f32 v67, -v88, v84, v67
	v_fmac_f32_e32 v94, v66, v85
	v_rcp_f32_e32 v88, v91
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v66, v83, v86
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s63, v40, v70, v40
	v_div_fmas_f32 v67, v67, v89, v84
	v_fma_f32 v84, -v92, v94, v87
	v_div_scale_f32 v97, null, v70, v70, v37
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v87, -v90, v66, v83
	v_mul_f32_e32 v89, v95, v96
	v_fma_f32 v92, -v91, v88, 1.0
	v_div_fmas_f32 v84, v84, v85, v94
	v_rcp_f32_e32 v85, v97
	v_fmac_f32_e32 v66, v87, v86
	v_fma_f32 v87, -v93, v89, v95
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s60, v38, v70, v38
	v_div_fixup_f32 v42, v67, v70, v42
	v_div_fixup_f32 v43, v84, v70, v43
	v_fma_f32 v67, -v90, v66, v83
	v_fmac_f32_e32 v89, v87, v96
	v_mul_f32_e32 v83, v92, v88
	v_fma_f32 v84, -v97, v85, 1.0
	v_div_scale_f32 v87, null, v70, v70, v35
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v90, s61, v37, v70, v37
	v_div_fmas_f32 v66, v67, v86, v66
	v_fma_f32 v67, -v93, v89, v95
	v_fma_f32 v86, -v91, v83, v92
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v93, null, v70, v70, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v86, v88
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v39, v66, v70, v39
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v67, v67, v96, v89
	v_mul_f32_e32 v89, v90, v85
	v_fma_f32 v66, -v91, v83, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v40, v67, v70, v40
	v_fma_f32 v67, -v97, v89, v90
	v_div_scale_f32 v91, s62, v35, v70, v35
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v92, -v93, v86, 1.0
	v_div_scale_f32 v94, null, v70, v70, v34
	v_div_fmas_f32 v66, v66, v88, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v67, v85 :: v_dual_fmac_f32 v86, v92, v86
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v92, null, v70, v70, v33
	v_mul_f32_e32 v67, v91, v84
	v_div_scale_f32 v88, s60, v36, v70, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v92
	v_div_fixup_f32 v38, v66, v70, v38
	v_fma_f32 v66, -v97, v89, v90
	v_fma_f32 v90, -v87, v67, v91
	v_mul_f32_e32 v95, v88, v86
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v66, v66, v85, v89
	v_fmac_f32_e32 v67, v90, v84
	v_fma_f32 v85, -v93, v95, v88
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v89, s61, v34, v70, v34
	v_fma_f32 v90, -v92, v96, 1.0
	v_div_fixup_f32 v37, v66, v70, v37
	v_fma_f32 v66, -v87, v67, v91
	v_fmac_f32_e32 v95, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v85, v89, v83 :: v_dual_fmac_f32 v96, v90, v96
	v_div_scale_f32 v90, null, v70, v70, v31
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v87, s63, v33, v70, v33
	v_div_fmas_f32 v66, v66, v84, v67
	v_fma_f32 v67, -v93, v95, v88
	v_fma_f32 v84, -v94, v85, v89
	v_rcp_f32_e32 v88, v90
	v_div_scale_f32 v93, null, v70, v70, v32
	v_mul_f32_e32 v91, v87, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v84, v83
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v84, v93
	v_div_fmas_f32 v67, v67, v86, v95
	v_fma_f32 v86, -v92, v91, v87
	v_div_fixup_f32 v35, v66, v70, v35
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v88, 1.0
	v_fma_f32 v66, -v94, v85, v89
	v_div_fixup_f32 v36, v67, v70, v36
	v_fmac_f32_e32 v91, v86, v96
	v_div_scale_f32 v67, s60, v31, v70, v31
	v_fmac_f32_e32 v88, v95, v88
	v_fma_f32 v86, -v93, v84, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v94, null, v41, v41, v28
	v_div_fmas_f32 v66, v66, v83, v85
	v_fma_f32 v83, -v92, v91, v87
	v_mul_f32_e32 v85, v67, v88
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, null, v41, v41, v30
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v87, s61, v32, v70, v32
	v_div_fmas_f32 v83, v83, v96, v91
	v_rcp_f32_e32 v89, v86
	v_fma_f32 v91, -v90, v85, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v92, v87, v84
	v_div_fixup_f32 v34, v66, v70, v34
	v_div_fixup_f32 v33, v83, v70, v33
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v85, v91, v88
	v_fma_f32 v66, -v93, v92, v87
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v96, null, v41, v41, v27
	v_fma_f32 v91, -v86, v89, 1.0
	v_fma_f32 v67, -v90, v85, v67
	v_div_scale_f32 v90, null, v41, v41, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v66, v84 :: v_dual_fmac_f32 v89, v91, v89
	v_div_fmas_f32 v67, v67, v88, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v91, v90
	v_div_scale_f32 v66, s62, v30, v41, v30
	v_fma_f32 v85, -v93, v92, v87
	v_fma_f32 v95, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v87, v66, v89
	v_div_scale_f32 v88, s60, v28, v41, v28
	v_fmac_f32_e32 v83, v95, v83
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v90, v91, 1.0
	v_rcp_f32_e32 v98, v96
	v_div_fmas_f32 v84, v85, v84, v92
	v_fma_f32 v95, -v86, v87, v66
	v_mul_f32_e32 v97, v88, v83
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s63, v29, v41, v29
	v_div_fixup_f32 v31, v67, v70, v31
	v_div_fixup_f32 v32, v84, v70, v32
	v_div_scale_f32 v84, null, v41, v41, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v92, v93, v91 :: v_dual_fmac_f32 v87, v95, v89
	v_fma_f32 v85, -v94, v97, v88
	v_fma_f32 v70, -v96, v98, 1.0
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v67, -v90, v92, v93
	v_fma_f32 v66, -v86, v87, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v97, v85, v83 :: v_dual_fmac_f32 v98, v70, v98
	v_div_scale_f32 v70, s61, v27, v41, v27
	v_fmac_f32_e32 v92, v67, v91
	v_rcp_f32_e32 v67, v84
	v_div_fmas_f32 v66, v66, v89, v87
	v_fma_f32 v85, -v94, v97, v88
	v_mul_f32_e32 v86, v70, v98
	v_div_scale_f32 v87, null, v41, v41, v25
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v30, v66, v41, v30
	v_div_fmas_f32 v83, v85, v83, v97
	v_fma_f32 v85, -v90, v92, v93
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v84, v67, 1.0
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v90, -v96, v86, v70
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v28, v83, v41, v28
	v_fmac_f32_e32 v67, v88, v67
	v_div_scale_f32 v88, s60, v26, v41, v26
	v_fmac_f32_e32 v86, v90, v98
	v_div_fmas_f32 v85, v85, v91, v92
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v66, v88, v67
	v_fma_f32 v83, -v87, v89, 1.0
	v_fma_f32 v70, -v96, v86, v70
	v_div_fixup_f32 v29, v85, v41, v29
	v_div_scale_f32 v85, null, v41, v41, v21
	v_fma_f32 v90, -v84, v66, v88
	v_fmac_f32_e32 v89, v83, v89
	v_div_scale_f32 v83, s62, v25, v41, v25
	v_div_fmas_f32 v70, v70, v98, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v66, v90, v67
	v_rcp_f32_e32 v91, v85
	v_mul_f32_e32 v86, v83, v89
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v27, v70, v41, v27
	v_fma_f32 v70, -v84, v66, v88
	v_div_scale_f32 v90, null, v41, v41, v22
	v_fma_f32 v84, -v87, v86, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v66, v70, v67, v66
	v_div_scale_f32 v67, null, v41, v41, v23
	v_fma_f32 v88, -v85, v91, 1.0
	v_rcp_f32_e32 v92, v90
	v_fmac_f32_e32 v86, v84, v89
	v_rcp_f32_e32 v84, v67
	v_div_scale_f32 v70, s60, v21, v41, v21
	v_fmac_f32_e32 v91, v88, v91
	v_div_scale_f32 v88, null, v41, v41, v24
	v_div_fixup_f32 v26, v66, v41, v26
	v_fma_f32 v83, -v87, v86, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v90, v92, 1.0
	v_rcp_f32_e32 v94, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v67, v84, 1.0
	v_mul_f32_e32 v87, v70, v91
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v92, v66, v92
	v_div_scale_f32 v66, s61, v22, v41, v22
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v93, null, v41, v41, v20
	v_div_fmas_f32 v83, v83, v89, v86
	v_fma_f32 v86, -v85, v87, v70
	v_mul_f32_e32 v89, v66, v92
	v_div_scale_f32 v95, s62, v23, v41, v23
	v_fma_f32 v96, -v88, v94, 1.0
	v_rcp_f32_e32 v97, v93
	v_fmac_f32_e32 v87, v86, v91
	v_fma_f32 v86, -v90, v89, v66
	v_mul_f32_e32 v98, v95, v84
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s63, v24, v41, v24
	v_div_fixup_f32 v25, v83, v41, v25
	v_fma_f32 v70, -v85, v87, v70
	v_fmac_f32_e32 v89, v86, v92
	v_fma_f32 v83, -v67, v98, v95
	v_mul_f32_e32 v85, v96, v94
	v_fma_f32 v86, -v93, v97, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v66, -v90, v89, v66
	v_fmac_f32_e32 v98, v83, v84
	v_fma_f32 v83, -v88, v85, v96
	v_fmac_f32_e32 v97, v86, v97
	v_div_scale_f32 v86, s60, v20, v41, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v67, v98, v95
	v_fmac_f32_e32 v85, v83, v94
	v_div_fmas_f32 v70, v70, v91, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v83, v86, v97
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v87, null, v41, v41, v14
	v_div_fmas_f32 v66, v66, v92, v89
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v21, v70, v41, v21
	v_div_fmas_f32 v67, v67, v84, v98
	v_fma_f32 v84, -v88, v85, v96
	v_fma_f32 v88, -v93, v83, v86
	v_rcp_f32_e32 v89, v87
	v_div_fixup_f32 v22, v66, v41, v22
	v_div_fixup_f32 v23, v67, v41, v23
	v_div_scale_f32 v67, null, v41, v41, v15
	v_fmac_f32_e32 v83, v88, v97
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v91, null, v41, v41, v18
	v_div_fmas_f32 v84, v84, v94, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v66, -v93, v83, v86
	v_fma_f32 v70, -v87, v89, 1.0
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v93, v91
	v_div_fixup_f32 v24, v84, v41, v24
	v_div_fmas_f32 v66, v66, v97, v83
	v_rcp_f32_e32 v83, v67
	v_fmac_f32_e32 v89, v70, v89
	v_div_scale_f32 v70, null, v41, v41, v16
	v_div_scale_f32 v84, null, v41, v41, v17
	v_div_scale_f32 v85, vcc_lo, v14, v41, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v86, v70
	v_rcp_f32_e32 v88, v84
	v_div_fixup_f32 v20, v66, v41, v20
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v66, -v67, v83, 1.0
	v_mul_f32_e32 v90, v85, v89
	v_fma_f32 v97, -v91, v93, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v66, v83
	v_div_scale_f32 v66, s60, v15, v41, v15
	v_fma_f32 v92, -v70, v86, 1.0
	v_fma_f32 v95, -v84, v88, 1.0
	v_fma_f32 v94, -v87, v90, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v96, v66, v83 :: v_dual_fmac_f32 v93, v97, v93
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v92, s61, v16, v41, v16
	v_fmac_f32_e32 v88, v95, v88
	v_div_scale_f32 v95, s62, v17, v41, v17
	v_fmac_f32_e32 v90, v94, v89
	v_fma_f32 v94, -v67, v96, v66
	v_div_scale_f32 v97, s63, v18, v41, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v98, v92, v86 :: v_dual_mul_f32 v99, v95, v88
	v_fmac_f32_e32 v96, v94, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v100, v97, v93
	v_fma_f32 v85, -v87, v90, v85
	v_fma_f32 v87, -v70, v98, v92
	v_fma_f32 v94, -v84, v99, v95
	v_fma_f32 v66, -v67, v96, v66
	v_fma_f32 v67, -v91, v100, v97
	v_div_fmas_f32 v85, v85, v89, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v98, v87, v86 :: v_dual_fmac_f32 v99, v94, v88
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v100, v67, v93
	v_div_fmas_f32 v66, v66, v83, v96
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v70, -v70, v98, v92
	v_fma_f32 v67, -v84, v99, v95
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v83, -v91, v100, v97
	v_div_fixup_f32 v14, v85, v41, v14
	v_div_fmas_f32 v70, v70, v86, v98
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v15, v66, v41, v15
	v_div_fmas_f32 v67, v67, v88, v99
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v16, v70, v41, v16
	v_div_fmas_f32 v83, v83, v93, v100
	s_mov_b32 s60, 0xc1000000
	v_div_fixup_f32 v17, v67, v41, v17
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v18, v83, v41, v18
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v44
	v_rndne_f32_e32 v44, v45
	v_rndne_f32_e32 v45, v48
	v_rndne_f32_e32 v48, v49
	v_rndne_f32_e32 v49, v52
	v_rndne_f32_e32 v52, v53
	v_rndne_f32_e32 v53, v56
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v60
	v_rndne_f32_e32 v60, v61
	v_rndne_f32_e32 v61, v64
	v_rndne_f32_e32 v64, v65
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v52, v52, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v60, v60, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v64, v64
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_med3_f32 v30, v30, s60, 0x40e00000
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v86, v36
	v_and_b32_e32 v36, 15, v52
	v_and_b32_e32 v52, 15, v60
	v_and_b32_e32 v60, 15, v64
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v64, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v71
	v_rndne_f32_e32 v71, v79
	v_rndne_f32_e32 v50, v50
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_med3_f32 v14, v14, s60, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v84, v38
	v_cvt_i32_f32_e32 v90, v30
	v_cvt_i32_f32_e32 v97, v22
	v_and_b32_e32 v22, 15, v51
	v_and_b32_e32 v30, 15, v47
	v_and_b32_e32 v38, 15, v43
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v43, 13, v0
	v_lshlrev_b32_e32 v47, 8, v64
	v_and_b32_e32 v51, 64, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v78, v78
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v17, v17
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_cvt_i32_f32_e32 v100, v20
	v_cvt_i32_f32_e32 v101, v14
	v_and_b32_e32 v14, 15, v41
	v_and_b32_e32 v20, 15, v44
	v_and_b32_e32 v44, 15, v56
	v_and_b32_e32 v56, 15, v61
	v_and_b32_e32 v41, 15, v73
	v_and_b32_e32 v61, 15, v63
	v_and_b32_e32 v73, 15, v59
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v59, 3, v106
	v_and_or_b32 v63, 0xe000, v43, v47
	v_xor_b32_e32 v12, v12, v51
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v32, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v78, v78, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_med3_f32 v26, v26, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v50, v50
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v12, v63, v59, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v34, v34, s60, 0x40e00000
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v94, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v76
	v_rndne_f32_e32 v76, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_cvt_i32_f32_e32 v82, v68
	v_cvt_i32_f32_e32 v102, v15
	v_cvt_i32_f32_e32 v103, v16
	v_cvt_i32_f32_e32 v104, v17
	v_and_b32_e32 v68, 15, v65
	v_and_b32_e32 v15, 15, v71
	v_and_b32_e32 v16, 15, v50
	v_and_b32_e32 v17, 15, v90
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v65, 0, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v83, v40
	v_cvt_i32_f32_e32 v87, v34
	v_cvt_i32_f32_e32 v88, v33
	v_cvt_i32_f32_e32 v89, v32
	v_and_b32_e32 v32, 15, v49
	v_and_b32_e32 v40, 15, v53
	v_and_b32_e32 v33, 15, v78
	v_and_b32_e32 v53, 15, v69
	v_and_b32_e32 v69, 15, v58
	v_and_b32_e32 v34, 15, v42
	v_and_b32_e32 v58, 15, v35
	v_and_b32_e32 v35, 15, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v72
	v_rndne_f32_e32 v67, v75
	v_rndne_f32_e32 v72, v80
	v_rndne_f32_e32 v75, v81
	v_rndne_f32_e32 v77, v77
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v24, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v65, v[14:17]
	ds_store_b128 v65, v[32:35] offset:256
	v_lshlrev_b32_e32 v15, 6, v0
	v_cndmask_b32_e64 v16, 0x2010, 0, s2
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v27, v27
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v76, v76, s60, 0x40e00000
	v_med3_f32 v77, v77, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v28, v28, s60, 0x40e00000
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v23, v23, s60, 0x40e00000
	v_med3_f32 v24, v24, s60, 0x40e00000
	v_and_b32_e32 v26, 15, v46
	v_and_b32_e32 v46, 15, v83
	v_and_b32_e32 v83, 15, v18
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v18, 2, v64
	v_and_or_b32 v10, 0x300, v15, v10
	v_xor_b32_e32 v13, v16, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v31, v31, s60, 0x40e00000
	v_med3_f32 v25, v25, s60, 0x40e00000
	v_med3_f32 v21, v21, s60, 0x40e00000
	v_med3_f32 v27, v27, s60, 0x40e00000
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v79, v72
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v81, v76
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v85, v37
	v_cvt_i32_f32_e32 v91, v28
	v_cvt_i32_f32_e32 v92, v29
	v_cvt_i32_f32_e32 v98, v23
	v_cvt_i32_f32_e32 v99, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v10, v13, v10, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v95, v25
	v_cvt_i32_f32_e32 v96, v21
	v_cvt_i32_f32_e32 v93, v27
	v_and_b32_e32 v24, 15, v45
	v_and_b32_e32 v28, 15, v48
	v_and_b32_e32 v48, 15, v57
	v_and_b32_e32 v21, 15, v79
	v_and_b32_e32 v25, 15, v75
	v_and_b32_e32 v29, 15, v81
	v_and_b32_e32 v37, 15, v77
	v_and_b32_e32 v49, 15, v82
	v_and_b32_e32 v57, 15, v62
	v_and_b32_e32 v77, 15, v55
	v_and_b32_e32 v81, 15, v54
	v_and_b32_e32 v50, 15, v84
	v_and_b32_e32 v54, 15, v85
	v_and_b32_e32 v62, 15, v86
	v_and_b32_e32 v23, 15, v91
	v_and_b32_e32 v27, 15, v92
	v_and_b32_e32 v51, 15, v98
	v_and_b32_e32 v55, 15, v99
	v_and_b32_e32 v59, 15, v100
	v_and_b32_e32 v63, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v14, v12, 16, 0
	v_xad_u32 v17, v12, 32, 0
	v_xad_u32 v12, v12, 48, 0
	v_add_nc_u32_e32 v16, 0, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v72, 15, v66
	v_and_b32_e32 v76, 15, v67
	v_and_b32_e32 v80, 15, v70
	v_and_b32_e32 v45, 15, v74
	v_and_b32_e32 v42, 15, v39
	v_and_b32_e32 v70, 15, v87
	v_and_b32_e32 v74, 15, v88
	v_and_b32_e32 v78, 15, v31
	v_and_b32_e32 v82, 15, v89
	v_and_b32_e32 v39, 15, v95
	v_and_b32_e32 v43, 15, v96
	v_and_b32_e32 v71, 15, v102
	v_and_b32_e32 v75, 15, v103
	v_and_b32_e32 v79, 15, v104
	v_and_b32_e32 v31, 15, v93
	v_and_b32_e32 v47, 15, v97
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v65, v[48:51] offset:2048
	ds_store_b128 v65, v[68:71] offset:2304
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
	v_add_co_u32 v16, s2, s74, v19
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[32:35], v17
	ds_load_b128 v[36:39], v17 offset:128
	ds_load_b128 v[40:43], v17 offset:4096
	ds_load_b128 v[44:47], v17 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v17, null, s75, 0, s2
	v_add_co_u32 v18, s2, s74, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s75, 0, s2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[76:77], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[78:79], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v4, v8, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v10, v24, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v3, s80, 7, v7
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(9)
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v50, v58, 4, v50
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 4, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(6)
	v_lshl_or_b32 v57, v68, 4, v72
	v_lshl_or_b32 v72, v26, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 6, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v58, v69, 4, v73
	v_lshl_or_b32 v73, v27, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 8, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[76:77], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[78:79], v[16:17]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 10, v4
	v_add_nc_u32_e32 v17, 12, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[76:77], v[18:19]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[78:79], v[18:19]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v67, 4, v71
	v_lshl_or_b32 v67, v25, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 14, v4
	v_mad_u64_u32 v[12:13], null, v12, s73, v[3:4]
	v_add_nc_u32_e32 v19, 16, v4
	v_mad_u64_u32 v[13:14], null, v14, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v66, v28, 4, v20
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 18, v4
	v_mad_u64_u32 v[14:15], null, v15, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v68, v29, 4, v21
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v21, 20, v4
	v_mad_u64_u32 v[6:7], null, v4, s73, v[3:4]
	v_mad_u64_u32 v[15:16], null, v16, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
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
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v28, 34, v4
	v_mad_u64_u32 v[22:23], null, v23, s73, v[3:4]
	v_add_nc_u32_e32 v29, 36, v4
	v_mad_u64_u32 v[23:24], null, v24, s73, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v30, 38, v4
	v_mad_u64_u32 v[24:25], null, v25, s73, v[3:4]
	v_add_nc_u32_e32 v31, 40, v4
	v_mad_u64_u32 v[25:26], null, v26, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v65, v40, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v32, 42, v4
	v_mad_u64_u32 v[26:27], null, v27, s73, v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v71, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v33, 44, v4
	v_mad_u64_u32 v[27:28], null, v28, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v42, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v34, 46, v4
	v_mad_u64_u32 v[28:29], null, v29, s73, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v10, v6, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 2, v4
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
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v47, 4, v39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v39, 56, v4
	v_mad_u64_u32 v[7:8], null, v8, s73, v[3:4]
	v_mad_u64_u32 v[33:34], null, v34, s73, v[3:4]
	v_add_nc_u32_e32 v40, 58, v4
	v_mad_u64_u32 v[34:35], null, v35, s73, v[3:4]
	v_add_nc_u32_e32 v41, 60, v4
	v_add_nc_u32_e32 v74, 62, v4
	v_mad_u64_u32 v[35:36], null, v36, s73, v[3:4]
	v_mad_u64_u32 v[36:37], null, v37, s73, v[3:4]
	v_mad_u64_u32 v[37:38], null, v38, s73, v[3:4]
	v_mad_u64_u32 v[38:39], null, v39, s73, v[3:4]
	v_mad_u64_u32 v[39:40], null, v40, s73, v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[40:41], null, v41, s73, v[3:4]
	v_mad_u64_u32 v[3:4], null, v74, s73, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v4, 0x80000000, v7, s60
	v_cndmask_b32_e32 v7, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v60, 4, v52
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v60, v79, 4, v75
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v65, v4, s[68:71], 0 offen
	buffer_store_b8 v48, v6, s[68:71], 0 offen
	buffer_store_b8 v56, v7, s[68:71], 0 offen
	buffer_store_b8 v66, v8, s[68:71], 0 offen
	buffer_store_b8 v44, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v53, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v61, v80, 4, v76
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v54, v62, 4, v54
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v62, v81, 4, v77
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v52, v4, s[68:71], 0 offen
	buffer_store_b8 v60, v6, s[68:71], 0 offen
	buffer_store_b8 v67, v7, s[68:71], 0 offen
	buffer_store_b8 v71, v8, s[68:71], 0 offen
	buffer_store_b8 v49, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v55, v63, 4, v55
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v82, 4, v78
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s72, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v11.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v57, v4, s[68:71], 0 offen
	buffer_store_b8 v68, v6, s[68:71], 0 offen
	buffer_store_b8 v45, v7, s[68:71], 0 offen
	buffer_store_b8 v53, v8, s[68:71], 0 offen
	buffer_store_b8 v61, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v26, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v72, v4, s[68:71], 0 offen
	buffer_store_b8 v42, v6, s[68:71], 0 offen
	buffer_store_b8 v50, v7, s[68:71], 0 offen
	buffer_store_b8 v58, v8, s[68:71], 0 offen
	buffer_store_b8 v69, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v46, v4, s[68:71], 0 offen
	buffer_store_b8 v54, v6, s[68:71], 0 offen
	buffer_store_b8 v62, v7, s[68:71], 0 offen
	buffer_store_b8 v73, v8, s[68:71], 0 offen
	buffer_store_b8 v43, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v40, vcc_lo
	s_clause 0x4
	buffer_store_b8 v51, v4, s[68:71], 0 offen
	buffer_store_b8 v59, v6, s[68:71], 0 offen
	buffer_store_b8 v70, v7, s[68:71], 0 offen
	buffer_store_b8 v47, v8, s[68:71], 0 offen
	buffer_store_b8 v55, v10, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v7, 2, v64
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 3, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v63, v3, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v3, 0, v4
	v_add3_u32 v4, v7, v6, v4
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s72, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v3, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_and_b32 s69, s67, 0xffff
	s_mov_b32 s68, s66
	s_and_b32 vcc_lo, vcc_lo, s81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v2, s80, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp85:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 60
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
		.amdhsa_next_free_sgpr 82
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 82
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 60
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19084
; TotalNumSgprs: 84
; NumVgprs: 256
; ScratchSize: 60
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 84
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
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
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 60
    .sgpr_count:     84
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 14
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
