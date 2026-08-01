	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v3, 63, v0
	v_lshlrev_b32_e32 v48, 1, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 0xff
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
	s_sub_i32 s23, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s23, s3
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
	s_load_b64 s[16:17], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s10, s2
	s_addc_u32 s3, s11, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[14:15], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[12:13], s[2:3], 0x0
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[6:7], s[4:5], 0x0
	s_mov_b32 s4, 0
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s35, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v4, s2, s16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v5, null, s17, 0, s2
	v_add_nc_u32_e32 v65, s16, v3
	.loc	1 1066 35                       ; ragged.py:1066:35
	s_mul_i32 s19, s6, s34
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[14:15], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[12:13], v[4:5]
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v5, s19 :: v_dual_lshlrev_b32 v6, 1, v0
	v_dual_mov_b32 v4, s16 :: v_dual_and_b32 v1, 0x80, v0
	.loc	1 1254 13 is_stmt 1             ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s16, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x40
	s_load_b128 s[8:11], s[0:1], 0x10
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v162, 15, v0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v88, 0
	s_lshl_b32 s18, s23, 8
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_and_b32 s33, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	v_lshrrev_b32_e32 v1, 5, v0
	v_and_b32_e32 v2, 0xe0, v0
	v_lshlrev_b32_e32 v36, 5, v162
	v_and_b32_e32 v37, 24, v48
	v_bfe_i32 v34, v0, 7, 1
	.loc	1 1045 18 is_stmt 0             ; ragged.py:1045:18
	v_or_b32_e32 v1, s18, v1
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b32 s20, s[0:1], 0x50
	v_and_b32_e32 v35, 0x7f, v0
	v_or_b32_e32 v102, 0x300, v0
	v_and_b32_e32 v34, 0x88, v34
	v_or_b32_e32 v14, 0xa0, v1
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
	v_add_nc_u32_e32 v1, s19, v1
	v_add_nc_u32_e32 v14, s19, v14
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v9, s19, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v33, s19, v33
	v_add_nc_u32_e32 v18, s19, v18
	v_mul_lo_u32 v90, v14, s35
	v_mov_b32_e32 v14, 0
	v_mul_lo_u32 v1, v1, s35
	v_add_nc_u32_e32 v15, s19, v15
	v_add_nc_u32_e32 v13, s19, v13
	v_mul_lo_u32 v95, v9, s35
	v_dual_mov_b32 v9, 0 :: v_dual_lshlrev_b32 v2, 4, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v89, v15, s35
	v_mul_lo_u32 v91, v13, s35
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v33, s35
	v_mov_b32_e32 v13, 0
	v_mov_b32_e32 v15, 0
	v_or3_b32 v69, v36, v37, v2
	v_add_nc_u32_e32 v2, s19, v31
	v_mov_b32_e32 v31, 0
	v_mul_lo_u32 v86, v18, s35
	v_mov_b32_e32 v18, 0
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s19, v32
	v_add_nc_u32_e32 v30, s19, v30
	v_add_nc_u32_e32 v19, s19, v19
	v_add_nc_u32_e32 v29, s19, v29
	v_add_nc_u32_e32 v20, s19, v20
	v_mul_lo_u32 v1, v1, s35
	v_add_nc_u32_e32 v28, s19, v28
	v_mul_lo_u32 v85, v19, s35
	v_mov_b32_e32 v19, 0
	v_mul_lo_u32 v84, v20, s35
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v25, s19, v25
	v_add_nc_u32_e32 v24, s19, v24
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v2, s35
	v_add_nc_u32_e32 v2, s19, v26
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v23, s19, v23
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v10, s19, v10
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v8, s19, v8
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v30, s35
	v_mul_lo_u32 v94, v10, s35
	v_dual_mov_b32 v10, 0 :: v_dual_add_nc_u32 v5, s19, v5
	v_mov_b32_e32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v4, s19, v4
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v3, s19, v3
	scratch_store_b32 off, v1, off offset:16 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v29, s35
	v_or_b32_e32 v103, 0x700, v0
	v_or_b32_e32 v104, 0x3f0, v0
	v_or_b32_e32 v105, 0x7f0, v0
	v_xor_b32_e32 v107, 8, v69
	v_xor_b32_e32 v108, 16, v69
	v_xor_b32_e32 v109, 24, v69
	v_mul_lo_u32 v96, v8, s35
	scratch_store_b32 off, v1, off offset:20 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v28, s35
	v_mul_lo_u32 v99, v5, s35
	v_mul_lo_u32 v100, v4, s35
	v_mul_lo_u32 v101, v3, s35
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v47, 0
	v_mov_b32_e32 v48, 0
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s19, v27
	v_mov_b32_e32 v27, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v1, v1, s35
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v58, 0
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v2, s35
	v_add_nc_u32_e32 v2, s19, v21
	v_mov_b32_e32 v21, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_mov_b32_e32 v33, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v25, s35
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v37, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v24, s35
	v_mov_b32_e32 v38, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v5, 0
	v_mov_b32_e32 v42, 0
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v103, 0, v103
	v_add_nc_u32_e32 v104, 0, v104
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v23, s35
	v_mov_b32_e32 v23, 0
	v_add_nc_u32_e32 v105, 0, v105
	v_add_nc_u32_e32 v107, 0, v107
	v_add_nc_u32_e32 v108, 0, v108
	v_add_nc_u32_e32 v109, 0, v109
	v_add_nc_u32_e32 v110, 0, v162
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s19, v22
	v_mov_b32_e32 v22, 0
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_and_b32 s7, s7, 0xffff
	v_mul_lo_u32 v1, v1, s35
	s_mov_b32 s21, 0
	s_mov_b32 s0, s4
	s_mov_b32 s1, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s2
	s_mov_b32 s7, s3
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v2, s35
	v_add_nc_u32_e32 v2, s19, v16
	v_mov_b32_e32 v16, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v88, v2, s35
	v_add_nc_u32_e32 v2, s19, v11
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s19, v17
	v_mov_b32_e32 v11, 0
	v_xor_b32_e32 v66, v34, v35
	v_mul_lo_u32 v93, v2, s35
	v_add_nc_u32_e32 v2, s19, v6
	v_mul_lo_u32 v87, v1, s35
	v_add_nc_u32_e32 v1, s19, v12
	v_xor_b32_e32 v106, 0x110, v66
	v_mov_b32_e32 v12, 0
	v_mul_lo_u32 v98, v2, s35
	v_mov_b32_e32 v17, 0
	v_mul_lo_u32 v92, v1, s35
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v1, s19, v7
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v2, 0
	v_mov_b32_e32 v6, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v97, v1, s35
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v7, 0 :: v_dual_add_nc_u32 v102, 0, v102
	v_dual_mov_b32 v83, v66 :: v_dual_add_nc_u32 v106, 0, v106
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_lshrrev_b32_e32 v111, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_add_nc_u32_e32 v68, 0, v83
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v113, s21, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[111:112], null, v113, s20, v[65:66]
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s35, v113
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s33, vcc_lo
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e32 v127, 0x80000000, v111, vcc_lo
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v111, 4, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s35, v111
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[111:112], null, v111, s20, v[65:66]
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 vcc_lo, s33, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v128, 0x80000000, v111, vcc_lo
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v111, 8, v113
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s35, v111
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[111:112], null, v111, s20, v[65:66]
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 vcc_lo, s33, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v129, 0x80000000, v111, vcc_lo
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v111, 12, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s35, v111
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[111:112], null, v111, s20, v[65:66]
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 vcc_lo, s33, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v130, 0x80000000, v111, vcc_lo
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v111, 16, v113
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s35, v111
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[111:112], null, v111, s20, v[65:66]
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 vcc_lo, s33, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v131, 0x80000000, v111, vcc_lo
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v111, 20, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s35, v111
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[111:112], null, v111, s20, v[65:66]
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 vcc_lo, s33, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v132, 0x80000000, v111, vcc_lo
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v111, 24, v113
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s35, v111
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[111:112], null, v111, s20, v[65:66]
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 vcc_lo, s33, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v133, 0x80000000, v111, vcc_lo
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v111, 28, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s35, v111
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[111:112], null, v111, s20, v[65:66]
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v66, off, off          ; 4-byte Folded Reload
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s33, vcc_lo
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_dual_cndmask_b32 v134, 0x80000000, v111 :: v_dual_and_b32 v111, 31, v0
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v111, s21, v111
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s21, s21, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s21, s35
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s35, v111
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v144, v94, v111
	v_add_nc_u32_e32 v137, v87, v111
	v_add_nc_u32_e32 v148, v98, v111
	v_add_nc_u32_e32 v141, v91, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1070 30 is_stmt 0             ; ragged.py:1070:30
	v_dual_cndmask_b32 v144, 0x80000000, v144 :: v_dual_add_nc_u32 v145, v95, v111
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v126, v84, v111
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v148, 0x80000000, v148 :: v_dual_add_nc_u32 v149, v99, v111
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v136, v86, v111
	v_add_nc_u32_e32 v138, v88, v111
	v_add_nc_u32_e32 v140, v90, v111
	v_add_nc_u32_e32 v142, v92, v111
	v_add_nc_u32_e32 v135, v85, v111
	v_add_nc_u32_e32 v146, v96, v111
	v_add_nc_u32_e32 v139, v89, v111
	v_add_nc_u32_e32 v147, v97, v111
	v_add_nc_u32_e32 v150, v100, v111
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v142, 0x80000000, v142 :: v_dual_add_nc_u32 v143, v93, v111
	v_dual_cndmask_b32 v135, 0x80000000, v135 :: v_dual_cndmask_b32 v146, 0x80000000, v146
	v_cndmask_b32_e32 v139, 0x80000000, v139, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v147, 0x80000000, v147 :: v_dual_cndmask_b32 v150, 0x80000000, v150
	v_cndmask_b32_e32 v143, 0x80000000, v143, vcc_lo
	v_cndmask_b32_e32 v137, 0x80000000, v137, vcc_lo
	v_cndmask_b32_e32 v141, 0x80000000, v141, vcc_lo
	v_dual_cndmask_b32 v145, 0x80000000, v145 :: v_dual_cndmask_b32 v126, 0x80000000, v126
	v_dual_cndmask_b32 v149, 0x80000000, v149 :: v_dual_cndmask_b32 v136, 0x80000000, v136
	v_cndmask_b32_e32 v138, 0x80000000, v138, vcc_lo
	v_cndmask_b32_e32 v140, 0x80000000, v140, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v112, v66, v111
	scratch_load_b32 v66, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v113, v66, v111
	scratch_load_b32 v66, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v114, v66, v111
	scratch_load_b32 v66, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v114, 0x80000000, v114 :: v_dual_add_nc_u32 v115, v66, v111
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v66, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v116, v66, v111
	scratch_load_b32 v66, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v116, 0x80000000, v116 :: v_dual_add_nc_u32 v117, v66, v111
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v66, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v118, v66, v111
	scratch_load_b32 v66, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v118, 0x80000000, v118 :: v_dual_add_nc_u32 v119, v66, v111
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v66, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v119, 0x80000000, v119, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v120, v66, v111
	scratch_load_b32 v66, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v120, 0x80000000, v120 :: v_dual_cndmask_b32 v113, 0x80000000, v113
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v121, v66, v111
	scratch_load_b32 v66, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v121, 0x80000000, v121 :: v_dual_add_nc_u32 v122, v66, v111
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v66, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v122, 0x80000000, v122 :: v_dual_cndmask_b32 v115, 0x80000000, v115
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, v66, v111
	scratch_load_b32 v66, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v123, 0x80000000, v123, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v124, v66, v111
	scratch_load_b32 v66, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v124, 0x80000000, v124 :: v_dual_cndmask_b32 v117, 0x80000000, v117
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v125, v66, v111
	v_add_nc_u32_e32 v111, v101, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v125, 0x80000000, v125 :: v_dual_cndmask_b32 v112, 0x80000000, v112
	v_cndmask_b32_e32 v151, 0x80000000, v111, vcc_lo
	s_clause 0x1f
	buffer_load_u8 v152, v112, s[4:7], 0 offen
	buffer_load_u8 v111, v113, s[4:7], 0 offen
	buffer_load_u8 v153, v114, s[4:7], 0 offen
	buffer_load_u8 v112, v115, s[4:7], 0 offen
	buffer_load_u8 v154, v116, s[4:7], 0 offen
	buffer_load_u8 v113, v117, s[4:7], 0 offen
	buffer_load_u8 v155, v118, s[4:7], 0 offen
	buffer_load_u8 v114, v119, s[4:7], 0 offen
	buffer_load_u8 v156, v120, s[4:7], 0 offen
	buffer_load_u8 v115, v121, s[4:7], 0 offen
	buffer_load_u8 v157, v122, s[4:7], 0 offen
	buffer_load_u8 v116, v123, s[4:7], 0 offen
	buffer_load_u8 v158, v124, s[4:7], 0 offen
	buffer_load_u8 v117, v125, s[4:7], 0 offen
	buffer_load_u8 v159, v126, s[4:7], 0 offen
	buffer_load_u8 v118, v135, s[4:7], 0 offen
	buffer_load_u8 v135, v136, s[4:7], 0 offen
	buffer_load_u8 v119, v137, s[4:7], 0 offen
	buffer_load_u8 v136, v138, s[4:7], 0 offen
	buffer_load_u8 v120, v139, s[4:7], 0 offen
	buffer_load_u8 v137, v140, s[4:7], 0 offen
	buffer_load_u8 v121, v141, s[4:7], 0 offen
	buffer_load_u8 v138, v142, s[4:7], 0 offen
	buffer_load_u8 v122, v143, s[4:7], 0 offen
	buffer_load_u8 v139, v144, s[4:7], 0 offen
	buffer_load_u8 v123, v145, s[4:7], 0 offen
	buffer_load_u8 v140, v146, s[4:7], 0 offen
	buffer_load_u8 v124, v147, s[4:7], 0 offen
	buffer_load_u8 v141, v148, s[4:7], 0 offen
	buffer_load_u8 v125, v149, s[4:7], 0 offen
	buffer_load_u8 v142, v150, s[4:7], 0 offen
	buffer_load_u8 v126, v151, s[4:7], 0 offen
	.loc	1 1069 30 is_stmt 1             ; ragged.py:1069:30
	s_clause 0x7
	buffer_load_u8 v127, v127, s[0:3], 0 offen
	buffer_load_u8 v128, v128, s[0:3], 0 offen
	buffer_load_u8 v129, v129, s[0:3], 0 offen
	buffer_load_u8 v131, v131, s[0:3], 0 offen
	buffer_load_u8 v132, v132, s[0:3], 0 offen
	buffer_load_u8 v133, v133, s[0:3], 0 offen
	buffer_load_u8 v134, v134, s[0:3], 0 offen
	buffer_load_u8 v130, v130, s[0:3], 0 offen
	v_add_nc_u32_e32 v143, 0, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v143, v127
	s_waitcnt vmcnt(6)
	ds_store_b8 v143, v128 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v143, v129 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v143, v131 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v143, v132 offset:1280
	s_waitcnt vmcnt(2)
	ds_store_b8 v143, v133 offset:1536
	s_waitcnt vmcnt(0)
	ds_store_b8 v102, v130
	ds_store_b8 v103, v134
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v127, v110 offset:192
	ds_load_u8 v128, v110 offset:128
	ds_load_u8 v129, v110 offset:208
	ds_load_u8 v130, v110 offset:144
	ds_load_u8 v131, v110 offset:224
	ds_load_u8 v132, v110 offset:160
	ds_load_u8 v133, v110 offset:240
	ds_load_u8 v134, v110 offset:176
	ds_load_u8 v143, v110 offset:448
	ds_load_u8 v144, v110 offset:384
	ds_load_u8 v145, v110 offset:464
	ds_load_u8 v146, v110 offset:400
	ds_load_u8 v147, v110 offset:480
	ds_load_u8 v148, v110 offset:416
	ds_load_u8 v149, v110 offset:496
	ds_load_u8 v150, v110 offset:432
	ds_load_u8 v151, v110 offset:320
	ds_load_u8 v160, v110 offset:256
	ds_load_u8 v161, v110 offset:336
	ds_load_u8 v162, v110 offset:272
	ds_load_u8 v163, v110 offset:352
	ds_load_u8 v164, v110 offset:288
	ds_load_u8 v165, v110 offset:368
	ds_load_u8 v166, v110 offset:304
	ds_load_u8 v167, v110 offset:64
	ds_load_u8 v168, v110 offset:80
	ds_load_u8 v169, v110 offset:96
	ds_load_u8 v170, v110 offset:112
	ds_load_u8 v171, v110
	ds_load_u8 v172, v110 offset:16
	ds_load_u8 v173, v110 offset:32
	ds_load_u8 v174, v110 offset:48
	ds_load_u8 v175, v110 offset:960
	ds_load_u8 v176, v110 offset:896
	ds_load_u8 v177, v110 offset:1024
	ds_load_u8 v178, v110 offset:976
	ds_load_u8 v179, v110 offset:912
	ds_load_u8 v180, v110 offset:992
	ds_load_u8 v181, v110 offset:928
	ds_load_u8 v182, v110 offset:944
	ds_load_u8 v183, v110 offset:832
	ds_load_u8 v184, v110 offset:768
	ds_load_u8 v185, v110 offset:848
	ds_load_u8 v186, v110 offset:784
	ds_load_u8 v187, v110 offset:864
	ds_load_u8 v188, v110 offset:800
	ds_load_u8 v189, v110 offset:880
	ds_load_u8 v190, v110 offset:816
	ds_load_u8 v191, v110 offset:704
	ds_load_u8 v192, v110 offset:640
	ds_load_u8 v193, v110 offset:720
	ds_load_u8 v194, v110 offset:656
	ds_load_u8 v195, v110 offset:736
	ds_load_u8 v196, v110 offset:672
	ds_load_u8 v197, v110 offset:752
	ds_load_u8 v198, v110 offset:688
	ds_load_u8 v199, v110 offset:576
	ds_load_u8 v200, v110 offset:512
	ds_load_u8 v201, v110 offset:592
	ds_load_u8 v202, v110 offset:528
	ds_load_u8 v203, v110 offset:608
	ds_load_u8 v204, v110 offset:544
	ds_load_u8 v205, v110 offset:624
	ds_load_u8 v206, v110 offset:560
	ds_load_u8 v207, v110 offset:1216
	ds_load_u8 v208, v110 offset:1280
	ds_load_u8 v209, v110 offset:1232
	ds_load_u8 v210, v110 offset:1168
	ds_load_u8 v211, v110 offset:1248
	ds_load_u8 v212, v110 offset:1184
	ds_load_u8 v213, v110 offset:1264
	ds_load_u8 v214, v110 offset:1200
	ds_load_u8 v215, v110 offset:1152
	ds_load_u8 v216, v110 offset:1088
	ds_load_u8 v217, v110 offset:1104
	ds_load_u8 v218, v110 offset:1040
	ds_load_u8 v219, v110 offset:1120
	ds_load_u8 v220, v110 offset:1056
	ds_load_u8 v221, v110 offset:1136
	ds_load_u8 v222, v110 offset:1072
	ds_load_u8 v223, v110 offset:1472
	ds_load_u8 v224, v110 offset:1536
	ds_load_u8 v225, v110 offset:1488
	ds_load_u8 v226, v110 offset:1424
	ds_load_u8 v227, v110 offset:1504
	ds_load_u8 v228, v110 offset:1440
	ds_load_u8 v229, v110 offset:1520
	ds_load_u8 v230, v110 offset:1456
	ds_load_u8 v231, v110 offset:1408
	ds_load_u8 v232, v110 offset:1344
	ds_load_u8 v233, v110 offset:1360
	ds_load_u8 v234, v110 offset:1296
	ds_load_u8 v235, v110 offset:1376
	ds_load_u8 v236, v110 offset:1312
	ds_load_u8 v237, v110 offset:1392
	ds_load_u8 v238, v110 offset:1328
	ds_load_u8 v239, v110 offset:1984
	ds_load_u8 v240, v110 offset:2000
	ds_load_u8 v241, v110 offset:1936
	ds_load_u8 v242, v110 offset:2016
	ds_load_u8 v243, v110 offset:1952
	ds_load_u8 v244, v104
	ds_load_u8 v245, v105
	ds_load_u8 v246, v110 offset:1968
	ds_load_u8 v247, v110 offset:1920
	ds_load_u8 v248, v110 offset:1856
	ds_load_u8 v249, v110 offset:1872
	ds_load_u8 v250, v110 offset:1808
	ds_load_u8 v251, v110 offset:1888
	ds_load_u8 v252, v110 offset:1824
	ds_load_u8 v253, v110 offset:1904
	ds_load_u8 v254, v110 offset:1840
	ds_load_u8 v255, v110 offset:1728
	ds_load_u8 v67, v110 offset:1792
	ds_load_u8 v66, v110 offset:1744
	ds_load_u8 v70, v110 offset:1680
	ds_load_u8 v71, v110 offset:1760
	ds_load_u8 v72, v110 offset:1696
	ds_load_u8 v73, v110 offset:1776
	ds_load_u8 v74, v110 offset:1712
	ds_load_u8 v75, v110 offset:1664
	ds_load_u8 v76, v110 offset:1600
	ds_load_u8 v77, v110 offset:1616
	ds_load_u8 v78, v110 offset:1552
	ds_load_u8 v79, v110 offset:1632
	ds_load_u8 v80, v110 offset:1568
	ds_load_u8 v81, v110 offset:1648
	ds_load_u8 v82, v110 offset:1584
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v68, v152
	ds_store_b8 v68, v153 offset:512
	ds_store_b8 v68, v154 offset:1024
	ds_store_b8 v68, v155 offset:1536
	ds_store_b8 v68, v156 offset:2048
	ds_store_b8 v68, v157 offset:2560
	ds_store_b8 v68, v158 offset:3072
	ds_store_b8 v68, v159 offset:3584
	ds_store_b8 v68, v135 offset:4096
	ds_store_b8 v68, v136 offset:4608
	ds_store_b8 v68, v137 offset:5120
	ds_store_b8 v68, v138 offset:5632
	ds_store_b8 v68, v139 offset:6144
	ds_store_b8 v68, v140 offset:6656
	ds_store_b8 v68, v141 offset:7168
	ds_store_b8 v68, v142 offset:7680
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v68, v160, v151, 0xc0c0004
	v_perm_b32 v135, v144, v143, 0xc0c0004
	v_perm_b32 v127, v128, v127, 0xc0c0004
	v_perm_b32 v129, v130, v129, 0xc0c0004
	v_perm_b32 v131, v132, v131, 0xc0c0004
	v_perm_b32 v136, v171, v167, 0xc0c0004
	v_lshl_or_b32 v128, v135, 16, v68
	v_perm_b32 v68, v162, v161, 0xc0c0004
	v_perm_b32 v135, v146, v145, 0xc0c0004
	v_perm_b32 v133, v134, v133, 0xc0c0004
	v_lshl_or_b32 v127, v127, 16, v136
	v_perm_b32 v136, v172, v168, 0xc0c0004
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_store_b8 v106, v111
	ds_store_b8 v106, v112 offset:512
	ds_store_b8 v106, v113 offset:1024
	ds_store_b8 v106, v114 offset:1536
	ds_store_b8 v106, v115 offset:2048
	ds_store_b8 v106, v116 offset:2560
	ds_store_b8 v106, v117 offset:3072
	ds_store_b8 v106, v118 offset:3584
	ds_store_b8 v106, v119 offset:4096
	ds_store_b8 v106, v120 offset:4608
	ds_store_b8 v106, v121 offset:5120
	ds_store_b8 v106, v122 offset:5632
	ds_store_b8 v106, v123 offset:6144
	ds_store_b8 v106, v124 offset:6656
	ds_store_b8 v106, v125 offset:7168
	ds_store_b8 v106, v126 offset:7680
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v130, v135, 16, v68
	v_perm_b32 v68, v164, v163, 0xc0c0004
	v_perm_b32 v135, v148, v147, 0xc0c0004
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v129, v129, 16, v136
	v_perm_b32 v136, v173, v169, 0xc0c0004
	v_lshl_or_b32 v132, v135, 16, v68
	v_perm_b32 v68, v166, v165, 0xc0c0004
	v_perm_b32 v135, v150, v149, 0xc0c0004
	v_perm_b32 v67, v67, v248, 0xc0c0004
	v_lshl_or_b32 v131, v131, 16, v136
	v_perm_b32 v136, v174, v170, 0xc0c0004
	v_perm_b32 v76, v224, v76, 0xc0c0004
	v_lshl_or_b32 v134, v135, 16, v68
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_add_nc_u32_e32 v68, 0, v69
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v75, v75, v255, 0xc0c0004
	v_lshl_or_b32 v133, v133, 16, v136
	v_perm_b32 v66, v70, v66, 0xc0c0004
	v_perm_b32 v70, v72, v71, 0xc0c0004
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[111:114], v68 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v68, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[111:112], v[127:128], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[113:114], v[127:128], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[111:112], v[129:130], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[113:114], v[129:130], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[111:112], v[131:132], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[113:114], v[131:132], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[111:112], v[133:134], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[113:114], v[133:134], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v111, v176, v175, 0xc0c0004
	v_perm_b32 v112, v200, v199, 0xc0c0004
	v_perm_b32 v113, v192, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v116, v111, 16, v68
	v_perm_b32 v68, v186, v185, 0xc0c0004
	v_lshl_or_b32 v115, v113, 16, v112
	v_perm_b32 v111, v179, v178, 0xc0c0004
	v_perm_b32 v112, v202, v201, 0xc0c0004
	v_perm_b32 v113, v194, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v118, v111, 16, v68
	v_perm_b32 v68, v188, v187, 0xc0c0004
	v_lshl_or_b32 v117, v113, 16, v112
	v_perm_b32 v111, v181, v180, 0xc0c0004
	v_perm_b32 v112, v204, v203, 0xc0c0004
	v_perm_b32 v113, v196, v195, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v120, v111, 16, v68
	v_perm_b32 v68, v206, v205, 0xc0c0004
	v_lshl_or_b32 v119, v113, 16, v112
	v_perm_b32 v111, v198, v197, 0xc0c0004
	v_perm_b32 v112, v190, v189, 0xc0c0004
	v_perm_b32 v113, v182, v244, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v121, v111, 16, v68
	v_perm_b32 v68, v208, v232, 0xc0c0004
	v_lshl_or_b32 v122, v113, 16, v112
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[111:114], v107 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[111:112], v[115:116], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[113:114], v[115:116], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[111:112], v[117:118], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[113:114], v[117:118], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[111:112], v[119:120], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[113:114], v[119:120], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[111:112], v[121:122], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[113:114], v[121:122], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v111, v231, v223, 0xc0c0004
	v_perm_b32 v112, v177, v216, 0xc0c0004
	v_perm_b32 v113, v215, v207, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v116, v111, 16, v68
	v_perm_b32 v68, v234, v233, 0xc0c0004
	v_lshl_or_b32 v115, v113, 16, v112
	v_perm_b32 v111, v226, v225, 0xc0c0004
	v_perm_b32 v112, v218, v217, 0xc0c0004
	v_perm_b32 v113, v210, v209, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v118, v111, 16, v68
	v_perm_b32 v68, v236, v235, 0xc0c0004
	v_lshl_or_b32 v117, v113, 16, v112
	v_perm_b32 v111, v228, v227, 0xc0c0004
	v_perm_b32 v112, v220, v219, 0xc0c0004
	v_perm_b32 v113, v212, v211, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v120, v111, 16, v68
	v_perm_b32 v68, v238, v237, 0xc0c0004
	v_lshl_or_b32 v119, v113, 16, v112
	v_perm_b32 v111, v230, v229, 0xc0c0004
	v_perm_b32 v112, v222, v221, 0xc0c0004
	v_perm_b32 v113, v214, v213, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v122, v111, 16, v68
	v_perm_b32 v68, v247, v239, 0xc0c0004
	v_lshl_or_b32 v121, v113, 16, v112
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[111:114], v108 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[111:112], v[115:116], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[113:114], v[115:116], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[111:112], v[117:118], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[113:114], v[117:118], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[111:112], v[119:120], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[113:114], v[119:120], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[111:112], v[121:122], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[113:114], v[121:122], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v116, v68, 16, v67
	v_lshl_or_b32 v115, v75, 16, v76
	v_perm_b32 v67, v250, v249, 0xc0c0004
	v_perm_b32 v68, v241, v240, 0xc0c0004
	v_perm_b32 v75, v78, v77, 0xc0c0004
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[111:114], v109 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v118, v68, 16, v67
	v_lshl_or_b32 v117, v66, 16, v75
	v_perm_b32 v66, v252, v251, 0xc0c0004
	v_perm_b32 v67, v243, v242, 0xc0c0004
	v_perm_b32 v68, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v120, v67, 16, v66
	v_lshl_or_b32 v119, v70, 16, v68
	v_perm_b32 v66, v82, v81, 0xc0c0004
	v_perm_b32 v67, v74, v73, 0xc0c0004
	v_perm_b32 v68, v254, v253, 0xc0c0004
	v_perm_b32 v70, v246, v245, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v121, v67, 16, v66
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[111:112], v[115:116], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v122, v70, 16, v68
	v_wmma_i32_16x16x16_iu4 v[17:24], v[113:114], v[115:116], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[111:112], v[117:118], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[113:114], v[117:118], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[111:112], v[119:120], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[113:114], v[119:120], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[111:112], v[121:122], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[113:114], v[121:122], v[1:8] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v80, v9
	v_cvt_f32_i32_e32 v78, v10
	v_cvt_f32_i32_e32 v75, v11
	v_cvt_f32_i32_e32 v76, v12
	v_cvt_f32_i32_e32 v84, v13
	v_cvt_f32_i32_e32 v83, v14
	v_cvt_f32_i32_e32 v82, v15
	v_cvt_f32_i32_e32 v81, v16
	v_cvt_f32_i32_e32 v88, v17
	v_cvt_f32_i32_e32 v74, v18
	v_cvt_f32_i32_e32 v73, v19
	v_cvt_f32_i32_e32 v72, v20
	v_cvt_f32_i32_e32 v71, v21
	v_cvt_f32_i32_e32 v91, v22
	v_cvt_f32_i32_e32 v90, v23
	v_cvt_f32_i32_e32 v89, v24
	v_cvt_f32_i32_e32 v70, v25
	v_cvt_f32_i32_e32 v69, v26
	v_cvt_f32_i32_e32 v68, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v79, v29
	v_cvt_f32_i32_e32 v77, v30
	v_cvt_f32_i32_e32 v30, v31
	v_cvt_f32_i32_e32 v29, v32
	v_cvt_f32_i32_e32 v85, v33
	v_cvt_f32_i32_e32 v27, v34
	v_cvt_f32_i32_e32 v26, v35
	v_cvt_f32_i32_e32 v24, v36
	v_cvt_f32_i32_e32 v22, v37
	v_cvt_f32_i32_e32 v87, v38
	v_cvt_f32_i32_e32 v86, v39
	v_cvt_f32_i32_e32 v39, v40
	v_cvt_f32_i32_e32 v25, v41
	v_cvt_f32_i32_e32 v23, v42
	v_cvt_f32_i32_e32 v20, v43
	v_cvt_f32_i32_e32 v21, v44
	v_cvt_f32_i32_e32 v34, v45
	v_cvt_f32_i32_e32 v33, v46
	v_cvt_f32_i32_e32 v32, v47
	v_cvt_f32_i32_e32 v31, v48
	v_cvt_f32_i32_e32 v40, v49
	v_cvt_f32_i32_e32 v19, v50
	v_cvt_f32_i32_e32 v18, v51
	v_cvt_f32_i32_e32 v16, v52
	v_cvt_f32_i32_e32 v14, v53
	v_cvt_f32_i32_e32 v43, v54
	v_cvt_f32_i32_e32 v42, v55
	v_cvt_f32_i32_e32 v41, v56
	v_cvt_f32_i32_e32 v17, v57
	v_cvt_f32_i32_e32 v15, v58
	v_cvt_f32_i32_e32 v12, v59
	v_cvt_f32_i32_e32 v13, v60
	v_cvt_f32_i32_e32 v38, v61
	v_cvt_f32_i32_e32 v37, v62
	v_cvt_f32_i32_e32 v36, v63
	v_cvt_f32_i32_e32 v35, v64
	v_cvt_f32_i32_e32 v44, v1
	v_cvt_f32_i32_e32 v11, v2
	v_cvt_f32_i32_e32 v10, v3
	v_cvt_f32_i32_e32 v9, v4
	v_cvt_f32_i32_e32 v2, v5
	v_cvt_f32_i32_e32 v46, v6
	v_cvt_f32_i32_e32 v45, v7
	v_dual_mov_b32 v4, s16 :: v_dual_and_b32 v1, 0x80, v0
	v_cvt_f32_i32_e32 v47, v8
	v_dual_mov_b32 v5, s19 :: v_dual_lshlrev_b32 v6, 1, v0
	v_dual_mov_b32 v3, v65 :: v_dual_and_b32 v162, 15, v0
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v48, 32, v162
	v_or_b32_e32 v7, 48, v162
	v_or_b32_e32 v50, 16, v162
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s31, 0x31027000
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v48, s1, s16, v48
	v_add_co_u32 v7, s0, s16, v7
	v_add_co_ci_u32_e64 v49, null, s17, 0, s1
	v_add_co_u32 v50, s1, s16, v50
	v_add_co_ci_u32_e64 v8, null, s17, 0, s0
	v_add_co_ci_u32_e64 v51, null, s17, 0, s1
	v_add_co_u32 v52, s1, s16, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v53, null, s17, 0, s1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[14:15], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[12:13], v[7:8]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[14:15], v[50:51]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s5, s[14:15], v[52:53]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[12:13], v[52:53]
	v_cmp_gt_i64_e64 s4, s[12:13], v[50:51]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[14:15], v[48:49]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[12:13], v[48:49]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v7, 1, v7
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v8, 1, v52
	v_lshlrev_b32_e32 v49, 1, v50
	v_lshlrev_b32_e32 v48, 1, v48
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s5, s5, s6
	s_and_b32 s3, s3, s4
	s_and_b32 s1, s1, s2
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_cndmask_b32_e64 v8, 0x80000000, v8, s5
	v_cndmask_b32_e64 v49, 0x80000000, v49, s3
	v_cndmask_b32_e64 v48, 0x80000000, v48, s1
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s28, s8
	s_clause 0x3
	buffer_load_u16 v50, v8, s[28:31], 0 offen
	buffer_load_u16 v49, v49, s[28:31], 0 offen
	buffer_load_u16 v48, v48, s[28:31], 0 offen
	buffer_load_u16 v51, v7, s[28:31], 0 offen
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_or_b32_e32 v7, s18, v0
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s29, s11, 0xffff
	s_mov_b32 s28, s10
	s_mov_b32 s0, 0x76543210
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v95, 3, v1
.Ltmp4:
	.loc	1 1119 36                       ; ragged.py:1119:36
	v_add_lshl_u32 v5, v7, v5, 1
	buffer_load_u16 v52, v5, s[28:31], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s29, s25, 0xffff
	s_mov_b32 s28, s24
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v49, 16, v49
	v_lshlrev_b32_e32 v50, 16, v50
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v66, 3, v0
.Ltmp6:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v5, 0xf0, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshlrev_b32_e32 v7, 5, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v65, v84, v50 :: v_dual_and_b32 v92, 4, v0
	v_mul_f32_e32 v59, v89, v50
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v56, v66, 9, 0
.Ltmp8:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v60, v80, v50
	v_mul_f32_e32 v64, v75, v50
	v_dual_mul_f32 v67, v85, v49 :: v_dual_and_b32 v54, 32, v7
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v98, v92, 2, v56
.Ltmp10:
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v53, 28, v6
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v56, v90, v50
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v55, v5, 2, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v62, v76, v50 :: v_dual_and_b32 v93, 8, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v57, v5, 1, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v76, v82, v50 :: v_dual_lshlrev_b32 v51, 16, v51
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v42, v42, v48
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v53, v55, v54, v53
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v61, v78, v50 :: v_dual_and_b32 v8, 0x60, v0
	v_dual_mul_f32 v75, v83, v50 :: v_dual_lshlrev_b32 v6, 1, v1
	v_dual_mul_f32 v73, v73, v50 :: v_dual_lshlrev_b32 v94, 4, v0
	v_mul_f32_e32 v54, v88, v50
	v_mul_f32_e32 v55, v91, v50
	v_dual_mul_f32 v90, v81, v50 :: v_dual_mul_f32 v39, v39, v49
	v_mul_f32_e32 v91, v86, v49
	v_dual_mul_f32 v74, v74, v50 :: v_dual_mul_f32 v43, v43, v48
	v_dual_mul_f32 v72, v72, v50 :: v_dual_mul_f32 v41, v41, v48
	v_dual_mul_f32 v50, v71, v50 :: v_dual_mul_f32 v99, v46, v51
	v_mul_f32_e32 v71, v87, v49
	v_dual_mul_f32 v47, v47, v51 :: v_dual_mul_f32 v102, v28, v49
	v_mul_f32_e32 v109, v23, v48
	v_dual_mul_f32 v104, v79, v49 :: v_dual_mul_f32 v111, v34, v48
	v_dual_mul_f32 v105, v30, v49 :: v_dual_mul_f32 v110, v21, v48
	v_dual_mul_f32 v107, v24, v49 :: v_dual_mul_f32 v112, v14, v48
	v_dual_mul_f32 v108, v22, v49 :: v_dual_mul_f32 v19, v19, v48
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v53, v52
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[78:81], v57 offset:512
	ds_load_b128 v[21:24], v57 offset:528
	ds_load_b128 v[82:85], v57
	ds_load_b128 v[86:89], v57 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v44, v44, v51 :: v_dual_lshlrev_b32 v7, 5, v66
	v_mul_f32_e32 v40, v40, v48
	v_dual_mul_f32 v100, v45, v51 :: v_dual_mul_f32 v103, v68, v49
	v_dual_mul_f32 v70, v70, v49 :: v_dual_mul_f32 v25, v25, v48
	v_dual_mul_f32 v101, v69, v49 :: v_dual_mul_f32 v20, v20, v48
	v_dual_mul_f32 v77, v77, v49 :: v_dual_mul_f32 v32, v32, v48
	v_dual_mul_f32 v106, v29, v49 :: v_dual_mul_f32 v31, v31, v48
	v_dual_mul_f32 v27, v27, v49 :: v_dual_mul_f32 v18, v18, v48
	v_dual_mul_f32 v26, v26, v49 :: v_dual_mul_f32 v33, v33, v48
	v_dual_mul_f32 v16, v16, v48 :: v_dual_mul_f32 v113, v17, v51
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v15, v15, v51 :: v_dual_mul_f32 v58, v54, v78
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v114, v13, v51 :: v_dual_mul_f32 v63, v55, v22
	v_dual_mul_f32 v115, v12, v51 :: v_dual_mul_f32 v48, v71, v22
	v_dual_mul_f32 v116, v38, v51 :: v_dual_mul_f32 v69, v59, v24
	v_dual_mul_f32 v117, v37, v51 :: v_dual_mul_f32 v34, v40, v78
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v119, v35, v51 :: v_dual_mul_f32 v52, v64, v84
	v_mul_f32_e32 v11, v11, v51
	v_dual_mul_f32 v10, v10, v51 :: v_dual_mul_f32 v45, v39, v24
	v_dual_mul_f32 v9, v9, v51 :: v_dual_mul_f32 v30, v43, v22
	v_dual_mul_f32 v2, v2, v51 :: v_dual_mul_f32 v29, v41, v24
	v_dual_mul_f32 v118, v36, v51 :: v_dual_mul_f32 v67, v67, v78
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v68, v56, v23 :: v_dual_mul_f32 v53, v62, v85
	v_dual_mul_f32 v46, v91, v23 :: v_dual_mul_f32 v17, v44, v78
	v_dual_mul_f32 v28, v42, v23 :: v_dual_mul_f32 v49, v60, v82
	v_dual_mul_f32 v12, v99, v22 :: v_dual_mul_f32 v13, v100, v23
	v_dual_mul_f32 v14, v47, v24 :: v_dual_mul_f32 v51, v61, v83
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v57, v90, v89 :: v_dual_mul_f32 v54, v65, v86
	v_dual_mul_f32 v56, v76, v88 :: v_dual_mul_f32 v55, v75, v87
	v_mul_f32_e32 v62, v50, v21
	v_dual_mul_f32 v61, v72, v81 :: v_dual_mul_f32 v60, v73, v80
	v_dual_mul_f32 v59, v74, v79 :: v_dual_mul_f32 v74, v105, v88
	v_dual_mul_f32 v75, v103, v84 :: v_dual_mul_f32 v76, v102, v85
	v_dual_mul_f32 v72, v101, v83 :: v_dual_mul_f32 v71, v70, v82
	v_dual_mul_f32 v73, v106, v89 :: v_dual_mul_f32 v78, v104, v86
	v_dual_mul_f32 v77, v77, v87 :: v_dual_mul_f32 v50, v108, v21
	v_dual_mul_f32 v64, v107, v81 :: v_dual_mul_f32 v65, v26, v80
	v_dual_mul_f32 v70, v27, v79 :: v_dual_mul_f32 v41, v20, v84
	v_dual_mul_f32 v42, v110, v85 :: v_dual_mul_f32 v43, v109, v83
	v_dual_mul_f32 v44, v25, v82 :: v_dual_mul_f32 v37, v32, v88
	v_mul_f32_e32 v36, v31, v89
	v_dual_mul_f32 v38, v33, v87 :: v_dual_mul_f32 v39, v111, v86
	v_dual_mul_f32 v31, v112, v21 :: v_dual_mul_f32 v26, v15, v83
	v_dual_mul_f32 v32, v16, v81 :: v_dual_mul_f32 v35, v19, v79
	v_mul_f32_e32 v33, v18, v80
	v_dual_mul_f32 v25, v115, v84 :: v_dual_mul_f32 v24, v114, v85
	v_dual_mul_f32 v27, v113, v82 :: v_dual_mul_f32 v20, v118, v88
	v_dual_mul_f32 v19, v119, v89 :: v_dual_mul_f32 v22, v117, v87
	v_dual_mul_f32 v23, v116, v86 :: v_dual_mul_f32 v16, v9, v81
	v_mul_f32_e32 v15, v2, v21
	v_dual_mul_f32 v18, v10, v80 :: v_dual_mul_f32 v21, v11, v79
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v2, |v49|, |v51|
	v_max3_f32 v9, |v53|, |v54|, |v55|
	v_max3_f32 v11, |v59|, |v60|, |v61|
	v_max3_f32 v40, |v62|, |v63|, |v68|
	v_max_f32_e64 v47, |v71|, |v72|
	v_max3_f32 v79, |v76|, |v78|, |v77|
	v_max3_f32 v81, |v70|, |v65|, |v64|
	v_max3_f32 v82, |v50|, |v48|, |v46|
	v_max_f32_e64 v83, |v44|, |v43|
	v_max3_f32 v84, |v42|, |v39|, |v38|
	v_max3_f32 v86, |v35|, |v33|, |v32|
	v_max3_f32 v87, |v31|, |v30|, |v28|
	v_max_f32_e64 v88, |v27|, |v26|
	v_max3_f32 v89, |v24|, |v23|, |v22|
	v_max3_f32 v91, |v21|, |v18|, |v16|
	v_max3_f32 v99, |v15|, |v12|, |v13|
	v_max3_f32 v10, |v56|, |v57|, |v58|
	v_max3_f32 v80, |v74|, |v73|, |v67|
	v_max3_f32 v85, |v37|, |v36|, |v34|
	v_max3_f32 v90, |v20|, |v19|, |v17|
	v_max3_f32 v2, v2, |v52|, v9
	v_max3_f32 v9, v11, v40, |v69|
	v_max3_f32 v11, v47, |v75|, v79
	v_max3_f32 v40, v81, v82, |v45|
	v_max3_f32 v47, v83, |v41|, v84
	v_max3_f32 v79, v86, v87, |v29|
	v_max3_f32 v81, v88, |v25|, v89
	v_max3_f32 v82, v91, v99, |v14|
	v_max3_f32 v2, v2, v10, v9
	v_max3_f32 v9, v11, v80, v40
	v_max3_f32 v10, v47, v85, v79
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v83, 0x680, v94, v7
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v11, v81, v90, v82
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v47, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v79, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v80, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v96, v92, 6, 0
	v_permlanex16_b32 v81, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_xor_b32_e32 v97, v7, v8
	v_lshl_add_u32 v40, v93, 4, v98
	v_xor_b32_e32 v83, v83, v8
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v47, v47, v47 :: v_dual_max_f32 v84, v80, v80
	v_dual_max_f32 v82, v79, v79 :: v_dual_max_f32 v85, v81, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v40, v40, v6, v97
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v2, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v81, v10, v84 :: v_dual_max_f32 v80, v9, v82
	v_max_f32_e32 v82, v11, v85
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v96, v95, v83
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v1, 0, v1
	ds_store_b128 v40, v[79:82]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[79:82], v2
	v_lshlrev_b32_e32 v83, 5, v92
	v_lshl_add_u32 v66, v66, 4, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v11, v80, v80 :: v_dual_mov_b32 v40, v81
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v2, v79
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v9, v79, v79 :: v_dual_mov_b32 v10, v80
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v40, v40 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v47, v82, v82
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v79, v81, v81 :: v_dual_max_f32 v40, v40, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v80, v82, v82
	v_max_f32_e32 v2, v2, v2
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v81, 1, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v47, v47, v80 :: v_dual_max_f32 v10, v10, v10
	v_max_f32_e32 v2, v9, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v9, v11, v10
	v_max_f32_e32 v10, v79, v40
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v11, v47 :: v_dual_mov_b32 v40, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v79, v9
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v80, v10
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v40, v40, v40 :: v_dual_max_f32 v79, v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v11, v47, v11 :: v_dual_max_f32 v80, v80, v80
	v_dual_max_f32 v2, v2, v40 :: v_dual_max_f32 v9, v9, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v47, v11 :: v_dual_lshlrev_b32 v40, 3, v93
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v10, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v79, v2 :: v_dual_mov_b32 v80, v9
	v_add3_u32 v1, v1, v81, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v82, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v47, v47, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v79, v79, v79 :: v_dual_max_f32 v80, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v84, v82, v82
	v_max_f32_e32 v82, v11, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v79, v2, v79 :: v_dual_max_f32 v80, v9, v80
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v66, v83, v40
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v10, v84
.Ltmp40:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v9, 4, v0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v40.h, 0
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v1, v[79:82]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[79:82], v2
.Ltmp42:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 48, v9
	v_or_b32_e32 v47, 32, v9
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s17, 0, s0
	v_add_co_u32 v10, s0, s16, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s17, 0, s0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v66, 16, v9
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_mov_b16_e32 v84.h, v40.h
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[14:15], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[12:13], v[1:2]
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_mov_b16_e32 v83.h, v40.h
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v79, v79, v79 :: v_dual_max_f32 v82, v82, v82
	v_dual_max_f32 v80, v80, v80 :: v_dual_max_f32 v81, v81, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v85, 0x2b8cbccc, v79
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v79, s0, s16, v47
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v86, 0x2b8cbccc, v80 :: v_dual_max_f32 v87, 0x2b8cbccc, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v89, null, 0x40e00000, 0x40e00000, v85
	v_div_scale_f32 v96, vcc_lo, v85, 0x40e00000, v85
	v_div_scale_f32 v90, null, 0x40e00000, 0x40e00000, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v89
	v_div_scale_f32 v91, null, 0x40e00000, 0x40e00000, v86
	v_rcp_f32_e32 v93, v90
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v80, null, s17, 0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v94, v91
	v_div_scale_f32 v97, s1, v87, 0x40e00000, v87
	v_div_scale_f32 v98, s2, v86, 0x40e00000, v86
	v_fma_f32 v81, -v89, v47, 1.0
	v_max_f32_e32 v88, 0x2b8cbccc, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v90, v93, 1.0
	v_fmac_f32_e32 v47, v81, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v92, null, 0x40e00000, 0x40e00000, v88
	v_fma_f32 v99, -v91, v94, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v93, v82, v93
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s0, s16, v66
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v95, v92
	v_mul_f32_e32 v66, v96, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v94, v99, v94 :: v_dual_mul_f32 v99, v97, v93
	v_div_scale_f32 v101, s3, v88, 0x40e00000, v88
	v_fma_f32 v103, -v89, v66, v96
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s17, 0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v104, -v90, v99, v97
	v_fma_f32 v100, -v92, v95, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v66, v103, v47
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[14:15], v[10:11]
	v_cmp_le_i64_e64 s6, s[14:15], v[81:82]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v99, v104, v93
	v_dual_fmac_f32 v95, v100, v95 :: v_dual_mul_f32 v100, v98, v94
	v_fma_f32 v1, -v89, v66, v96
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[12:13], v[81:82]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v90, v99, v97
	v_mul_f32_e32 v102, v101, v95
	v_fma_f32 v105, -v91, v100, v98
	v_div_fmas_f32 v1, v1, v47, v66
	s_mov_b32 vcc_lo, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[12:13], v[10:11]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v106, -v92, v102, v101
	v_fmac_f32_e32 v100, v105, v94
	v_div_fmas_f32 v2, v2, v93, v99
	v_div_fixup_f32 v1, v1, 0x40e00000, v85
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v102, v106, v95
	v_fma_f32 v89, -v91, v100, v98
	v_div_fixup_f32 v2, v2, 0x40e00000, v87
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v83.l, v1.h
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[14:15], v[79:80]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v90, -v92, v102, v101
	v_div_fmas_f32 v47, v89, v94, v100
	s_mov_b32 vcc_lo, s3
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v40.l, v2.h
	v_and_b32_e32 v10, 1, v83
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v66, v90, v95, v102
	v_div_fixup_f32 v11, v47, 0x40e00000, v86
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[12:13], v[79:80]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v10, v1, v10, 0x7fff
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v47, v66, 0x40e00000, v88
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v66, 1, v40
	v_mov_b16_e32 v84.l, v11.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v40.l, v47.h
	v_add3_u32 v1, v2, v66, 0x7fff
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v66, 0xffff0000, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v79, 1, v84
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v94, null, v66, v66, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v11, v11, v79, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v121, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v94, v121, 1.0
	v_fmac_f32_e32 v121, v138, v121
	v_div_scale_f32 v80, null, v66, v66, v49
	v_div_scale_f32 v82, null, v66, v66, v51
	v_div_scale_f32 v84, null, v66, v66, v52
	v_div_scale_f32 v88, null, v66, v66, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v114, v80
	v_div_scale_f32 v86, null, v66, v66, v53
	v_div_scale_f32 v96, null, v66, v66, v58
	v_div_scale_f32 v102, null, v66, v66, v61
	v_div_scale_f32 v106, null, v66, v66, v63
	v_rcp_f32_e32 v115, v82
	v_rcp_f32_e32 v116, v84
	v_div_scale_f32 v90, null, v66, v66, v55
	v_rcp_f32_e32 v118, v88
	v_div_scale_f32 v92, null, v66, v66, v56
	v_div_scale_f32 v104, null, v66, v66, v62
	v_div_scale_f32 v110, null, v66, v66, v69
	v_rcp_f32_e32 v117, v86
	v_rcp_f32_e32 v122, v96
	v_rcp_f32_e32 v125, v102
	v_rcp_f32_e32 v127, v106
	v_div_scale_f32 v98, null, v66, v66, v59
	v_div_scale_f32 v100, null, v66, v66, v60
	v_div_scale_f32 v108, null, v66, v66, v68
	v_rcp_f32_e32 v119, v90
	v_fma_f32 v131, -v80, v114, 1.0
	v_rcp_f32_e32 v120, v92
	v_rcp_f32_e32 v126, v104
	v_rcp_f32_e32 v129, v110
	v_fma_f32 v132, -v82, v115, 1.0
	v_fma_f32 v133, -v84, v116, 1.0
	v_dual_fmac_f32 v114, v131, v114 :: v_dual_and_b32 v79, 0xffff0000, v11
	v_div_scale_f32 v81, vcc_lo, v49, v66, v49
	v_rcp_f32_e32 v123, v98
	v_rcp_f32_e32 v124, v100
	v_rcp_f32_e32 v128, v108
	v_fma_f32 v135, -v88, v118, 1.0
	v_fma_f32 v134, -v86, v117, 1.0
	v_div_scale_f32 v83, s8, v51, v66, v51
	v_fma_f32 v139, -v96, v122, 1.0
	v_fma_f32 v142, -v102, v125, 1.0
	v_fma_f32 v144, -v106, v127, 1.0
	v_fmac_f32_e32 v115, v132, v115
	v_div_scale_f32 v85, s9, v52, v66, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v116, v133, v116 :: v_dual_fmac_f32 v125, v142, v125
	v_div_scale_f32 v89, s11, v54, v66, v54
	v_fma_f32 v136, -v90, v119, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v40, 1, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v118, v135, v118 :: v_dual_fmac_f32 v127, v144, v127
	v_mul_f32_e32 v131, v81, v114
	v_div_scale_f32 v87, s10, v53, v66, v53
	v_fma_f32 v137, -v92, v120, 1.0
	v_fma_f32 v143, -v104, v126, 1.0
	v_fma_f32 v146, -v110, v129, 1.0
	v_fmac_f32_e32 v117, v134, v117
	v_div_scale_f32 v97, s15, v58, v66, v58
	v_dual_fmac_f32 v122, v139, v122 :: v_dual_mul_f32 v133, v85, v116
	v_dual_mul_f32 v132, v83, v115 :: v_dual_mul_f32 v135, v89, v118
	v_div_scale_f32 v91, s12, v55, v66, v55
	v_fma_f32 v140, -v98, v123, 1.0
	v_fma_f32 v141, -v100, v124, 1.0
	v_fma_f32 v145, -v108, v128, 1.0
	v_fmac_f32_e32 v119, v136, v119
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v47, v40, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v147, -v80, v131, v81
	v_div_scale_f32 v93, s13, v56, v66, v56
	v_div_scale_f32 v95, s14, v57, v66, v57
	v_div_scale_f32 v105, s20, v62, v66, v62
	v_dual_fmac_f32 v120, v137, v120 :: v_dual_fmac_f32 v129, v146, v129
	v_fmac_f32_e32 v126, v143, v126
	v_dual_mul_f32 v134, v87, v117 :: v_dual_mul_f32 v139, v97, v122
	v_fma_f32 v148, -v82, v132, v83
	v_div_scale_f32 v103, s18, v61, v66, v61
	v_fma_f32 v149, -v84, v133, v85
	v_div_scale_f32 v99, s16, v59, v66, v59
	v_div_scale_f32 v101, s17, v60, v66, v60
	v_div_scale_f32 v109, s22, v68, v66, v68
	v_dual_fmac_f32 v123, v140, v123 :: v_dual_and_b32 v40, 0xffff0000, v2
	v_dual_fmac_f32 v124, v141, v124 :: v_dual_fmac_f32 v131, v147, v114
	v_mul_f32_e32 v136, v91, v119
	v_fma_f32 v151, -v88, v135, v89
	v_fmac_f32_e32 v128, v145, v128
	v_dual_mul_f32 v137, v93, v120 :: v_dual_mul_f32 v138, v95, v121
	v_mul_f32_e32 v143, v105, v126
	v_fma_f32 v150, -v86, v134, v87
	v_fma_f32 v155, -v96, v139, v97
	v_fmac_f32_e32 v132, v148, v115
	v_dual_mul_f32 v142, v103, v125 :: v_dual_fmac_f32 v133, v149, v116
	v_mul_f32_e32 v141, v101, v124
	v_fma_f32 v152, -v90, v136, v91
	v_fmac_f32_e32 v135, v151, v118
	v_dual_mul_f32 v140, v99, v123 :: v_dual_mul_f32 v145, v109, v128
	v_fma_f32 v80, -v80, v131, v81
	v_fma_f32 v159, -v104, v143, v105
	v_fmac_f32_e32 v134, v150, v117
	v_div_scale_f32 v107, s21, v63, v66, v63
	v_fma_f32 v153, -v92, v137, v93
	v_fmac_f32_e32 v139, v155, v122
	v_fma_f32 v81, -v82, v132, v83
	v_fma_f32 v154, -v94, v138, v95
	v_fma_f32 v82, -v84, v133, v85
	v_fma_f32 v161, -v108, v145, v109
	v_fmac_f32_e32 v136, v152, v119
	v_div_fmas_f32 v80, v80, v114, v131
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v143, v159, v126
	v_fma_f32 v83, -v86, v134, v87
	v_dual_mul_f32 v144, v107, v127 :: v_dual_fmac_f32 v137, v153, v120
	v_div_fmas_f32 v81, v81, v115, v132
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v156, -v98, v140, v99
	v_fma_f32 v84, -v88, v135, v89
	v_fmac_f32_e32 v138, v154, v121
	v_div_fmas_f32 v82, v82, v116, v133
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v111, s19, v69, v66, v69
	v_fma_f32 v157, -v100, v141, v101
	v_fmac_f32_e32 v145, v161, v128
	v_fma_f32 v85, -v90, v136, v91
	v_div_fixup_f32 v49, v80, v66, v49
	v_div_fmas_f32 v80, v83, v117, v134
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v158, -v102, v142, v103
	v_fma_f32 v86, -v92, v137, v93
	v_fmac_f32_e32 v140, v156, v123
	v_div_fixup_f32 v51, v81, v66, v51
	v_div_fmas_f32 v81, v84, v118, v135
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v87, -v94, v138, v95
	v_dual_mul_f32 v146, v111, v129 :: v_dual_fmac_f32 v141, v157, v124
	v_div_fixup_f32 v52, v82, v66, v52
	v_div_fmas_f32 v82, v85, v119, v136
	s_mov_b32 vcc_lo, s13
	v_fma_f32 v88, -v96, v139, v97
	v_fmac_f32_e32 v142, v158, v125
	v_div_fixup_f32 v53, v80, v66, v53
	v_div_fmas_f32 v80, v86, v120, v137
	s_mov_b32 vcc_lo, s14
	v_fma_f32 v89, -v98, v140, v99
	v_div_fixup_f32 v54, v81, v66, v54
	v_div_fmas_f32 v81, v87, v121, v138
	s_mov_b32 vcc_lo, s15
	v_fma_f32 v90, -v100, v141, v101
	v_div_fixup_f32 v55, v82, v66, v55
	v_div_fmas_f32 v82, v88, v122, v139
	s_mov_b32 vcc_lo, s16
	v_div_scale_f32 v112, null, v79, v79, v71
	v_fma_f32 v91, -v102, v142, v103
	v_div_fixup_f32 v56, v80, v66, v56
	v_div_fmas_f32 v80, v89, v123, v140
	s_mov_b32 vcc_lo, s17
	v_div_fixup_f32 v57, v81, v66, v57
	v_div_fmas_f32 v81, v90, v124, v141
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v113, null, v79, v79, v72
	v_rcp_f32_e32 v130, v112
	v_div_fixup_f32 v58, v82, v66, v58
	v_div_fmas_f32 v82, v91, v125, v142
	v_fma_f32 v160, -v106, v144, v107
	v_fma_f32 v92, -v104, v143, v105
	v_fma_f32 v83, -v110, v146, v111
	s_mov_b32 vcc_lo, s20
	v_div_fixup_f32 v61, v82, v66, v61
	v_rcp_f32_e32 v82, v113
	v_fmac_f32_e32 v144, v160, v127
	v_fma_f32 v84, -v112, v130, 1.0
	v_div_fixup_f32 v59, v80, v66, v59
	v_div_fmas_f32 v80, v92, v126, v143
	v_fmac_f32_e32 v146, v83, v129
	v_fma_f32 v93, -v106, v144, v107
	v_fmac_f32_e32 v130, v84, v130
	v_div_scale_f32 v84, null, v79, v79, v75
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v83, -v113, v82, 1.0
	v_div_fixup_f32 v62, v80, v66, v62
	v_fma_f32 v80, -v108, v145, v109
	s_mov_b32 vcc_lo, s21
	v_fma_f32 v85, -v110, v146, v111
	v_fmac_f32_e32 v82, v83, v82
	v_rcp_f32_e32 v83, v84
	v_div_fixup_f32 v60, v81, v66, v60
	v_div_fmas_f32 v81, v93, v127, v144
	s_mov_b32 vcc_lo, s22
	v_div_scale_f32 v87, s9, v72, v79, v72
	v_div_fmas_f32 v80, v80, v128, v145
	s_mov_b32 vcc_lo, s19
	v_div_fixup_f32 v63, v81, v66, v63
	v_div_fmas_f32 v85, v85, v129, v146
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v84, v83, 1.0
	v_div_scale_f32 v81, s8, v71, v79, v71
	v_mul_f32_e32 v90, v87, v82
	v_div_fixup_f32 v69, v85, v66, v69
	v_div_scale_f32 v85, null, v79, v79, v78
	v_fmac_f32_e32 v83, v91, v83
	v_div_fixup_f32 v68, v80, v66, v68
	v_fma_f32 v66, -v113, v90, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v91, v85
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v88, null, v79, v79, v76
	v_fmac_f32_e32 v90, v66, v82
	v_div_scale_f32 v95, null, v79, v79, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v92, v88
	v_div_scale_f32 v80, s10, v75, v79, v75
	v_fma_f32 v94, -v85, v91, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v66, v80, v83 :: v_dual_and_b32 v47, 0xffff0000, v1
	v_dual_fmac_f32 v91, v94, v91 :: v_dual_mul_f32 v86, v81, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v112, v86, v81
	v_fmac_f32_e32 v86, v89, v130
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v89, -v88, v92, 1.0
	v_fma_f32 v81, -v112, v86, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v81, v81, v130, v86
	v_fma_f32 v86, -v113, v90, v87
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v87, -v84, v66, v80
	v_div_fixup_f32 v71, v81, v79, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v82, v86, v82, v90
	v_rcp_f32_e32 v86, v95
	v_fmac_f32_e32 v66, v87, v83
	v_div_scale_f32 v90, s8, v78, v79, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v72, v82, v79, v72
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v80, -v84, v66, v80
	v_div_scale_f32 v84, null, v79, v79, v74
	v_mul_f32_e32 v81, v90, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v95, v86, 1.0
	v_div_fmas_f32 v66, v80, v83, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v83, -v85, v81, v90
	v_fmac_f32_e32 v86, v82, v86
	v_fmac_f32_e32 v92, v89, v92
	v_div_scale_f32 v89, s11, v76, v79, v76
	v_rcp_f32_e32 v82, v84
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v81, v83, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v93, v89, v92
	v_div_fixup_f32 v75, v66, v79, v75
	v_fma_f32 v66, -v85, v81, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v87, -v88, v93, v89
	v_div_scale_f32 v85, s10, v74, v79, v74
	v_fmac_f32_e32 v93, v87, v92
	v_div_scale_f32 v87, s9, v77, v79, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v88, v93, v89
	v_div_scale_f32 v88, null, v79, v79, v73
	v_mul_f32_e32 v89, v87, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v80, v80, v92, v93
	v_rcp_f32_e32 v83, v88
	v_fma_f32 v92, -v84, v82, 1.0
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v76, v80, v79, v76
	v_fma_f32 v80, -v95, v89, v87
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v92, null, v79, v79, v67
	v_div_fmas_f32 v66, v66, v91, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v88, v83, 1.0
	v_div_scale_f32 v91, null, v79, v79, v70
	v_rcp_f32_e32 v81, v92
	v_fmac_f32_e32 v89, v80, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v80, v85, v82 :: v_dual_fmac_f32 v83, v90, v83
	v_div_scale_f32 v90, s8, v73, v79, v73
	v_rcp_f32_e32 v94, v91
	v_div_fixup_f32 v78, v66, v79, v78
	v_fma_f32 v66, -v95, v89, v87
	v_fma_f32 v87, -v84, v80, v85
	v_mul_f32_e32 v93, v90, v83
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v92, v81, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fmas_f32 v66, v66, v86, v89
	v_fmac_f32_e32 v80, v87, v82
	v_fma_f32 v86, -v88, v93, v90
	v_fmac_f32_e32 v81, v95, v81
	v_div_scale_f32 v87, s9, v67, v79, v67
	v_fma_f32 v89, -v91, v94, 1.0
	v_div_fixup_f32 v77, v66, v79, v77
	v_fma_f32 v66, -v84, v80, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v93, v86, v83 :: v_dual_mul_f32 v84, v87, v81
	v_fmac_f32_e32 v94, v89, v94
	v_div_scale_f32 v85, s11, v70, v79, v70
	v_div_scale_f32 v86, null, v79, v79, v65
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v89, v85, v94
	v_div_fmas_f32 v66, v66, v82, v80
	v_fma_f32 v80, -v88, v93, v90
	v_fma_f32 v82, -v92, v84, v87
	v_rcp_f32_e32 v88, v86
	v_div_scale_f32 v90, null, v79, v79, v64
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v74, v66, v79, v74
	v_div_fmas_f32 v80, v80, v83, v93
	v_fma_f32 v83, -v91, v89, v85
	v_fmac_f32_e32 v84, v82, v81
	v_rcp_f32_e32 v82, v90
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v88, 1.0
	v_div_fixup_f32 v73, v80, v79, v73
	v_fmac_f32_e32 v89, v83, v94
	v_fma_f32 v66, -v92, v84, v87
	v_div_scale_f32 v80, s8, v65, v79, v65
	v_fmac_f32_e32 v88, v93, v88
	v_div_scale_f32 v87, null, v79, v79, v50
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v83, -v90, v82, 1.0
	v_div_fmas_f32 v66, v66, v81, v84
	v_fma_f32 v81, -v91, v89, v85
	v_mul_f32_e32 v84, v80, v88
	v_div_scale_f32 v85, s9, v64, v79, v64
	v_fmac_f32_e32 v82, v83, v82
	v_rcp_f32_e32 v83, v87
	v_div_scale_f32 v91, null, v79, v79, v48
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v92, v85, v82
	v_div_fmas_f32 v81, v81, v94, v89
	v_fma_f32 v89, -v86, v84, v80
	v_rcp_f32_e32 v94, v91
	v_div_fixup_f32 v67, v66, v79, v67
	v_fma_f32 v66, -v90, v92, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v87, v83, 1.0
	v_fmac_f32_e32 v84, v89, v88
	v_div_fixup_f32 v70, v81, v79, v70
	v_div_scale_f32 v81, s10, v50, v79, v50
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v89, null, v79, v79, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v80, -v86, v84, v80
	v_fmac_f32_e32 v92, v66, v82
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v66, v81, v83
	v_rcp_f32_e32 v86, v89
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s11, v48, v79, v48
	v_div_fmas_f32 v80, v80, v88, v84
	v_fma_f32 v84, -v90, v92, v85
	v_div_scale_f32 v95, null, v79, v79, v45
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v85, -v87, v66, v81
	v_mul_f32_e32 v88, v93, v94
	v_div_fmas_f32 v82, v84, v82, v92
	v_rcp_f32_e32 v84, v95
	v_fma_f32 v90, -v89, v86, 1.0
	v_fmac_f32_e32 v66, v85, v83
	v_fma_f32 v85, -v91, v88, v93
	v_div_fixup_f32 v64, v82, v79, v64
	v_div_fixup_f32 v65, v80, v79, v65
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s8, v46, v79, v46
	v_fmac_f32_e32 v88, v85, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v95, v84, 1.0
	v_div_scale_f32 v85, null, v47, v47, v44
	v_fma_f32 v80, -v87, v66, v81
	v_mul_f32_e32 v81, v90, v86
	v_fmac_f32_e32 v84, v82, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v82, v85
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, s9, v45, v79, v45
	v_div_fmas_f32 v66, v80, v83, v66
	v_fma_f32 v80, -v91, v88, v93
	v_fma_f32 v83, -v89, v81, v90
	v_div_scale_f32 v91, null, v47, v47, v43
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v85, v82, 1.0
	v_fmac_f32_e32 v81, v83, v86
	v_rcp_f32_e32 v83, v91
	v_div_fmas_f32 v80, v80, v94, v88
	v_mul_f32_e32 v88, v87, v84
	v_div_fixup_f32 v50, v66, v79, v50
	v_fma_f32 v66, -v89, v81, v90
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v92, null, v47, v47, v41
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v48, v80, v79, v48
	v_fma_f32 v80, -v95, v88, v87
	v_div_scale_f32 v89, s10, v44, v47, v44
	v_fma_f32 v90, -v91, v83, 1.0
	v_div_fmas_f32 v66, v66, v86, v81
	v_rcp_f32_e32 v81, v92
	v_fmac_f32_e32 v88, v80, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v80, v89, v82 :: v_dual_fmac_f32 v83, v90, v83
	v_div_scale_f32 v86, s8, v43, v47, v43
	v_div_scale_f32 v90, null, v47, v47, v42
	v_div_fixup_f32 v46, v66, v79, v46
	v_fma_f32 v66, -v95, v88, v87
	v_fma_f32 v87, -v85, v80, v89
	v_mul_f32_e32 v93, v86, v83
	v_rcp_f32_e32 v94, v90
	v_fma_f32 v95, -v92, v81, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v87, v82
	v_div_fmas_f32 v66, v66, v84, v88
	v_fma_f32 v84, -v91, v93, v86
	v_fmac_f32_e32 v81, v95, v81
	v_div_scale_f32 v87, s9, v41, v47, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v45, v66, v79, v45
	v_fma_f32 v88, -v90, v94, 1.0
	v_fma_f32 v66, -v85, v80, v89
	v_fmac_f32_e32 v93, v84, v83
	v_mul_f32_e32 v79, v87, v81
	v_div_scale_f32 v85, null, v47, v47, v39
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v94, v88, v94
	v_div_scale_f32 v84, s11, v42, v47, v42
	v_div_fmas_f32 v66, v66, v82, v80
	v_fma_f32 v80, -v91, v93, v86
	v_fma_f32 v82, -v92, v79, v87
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v89, null, v47, v47, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v88, v84, v94 :: v_dual_fmac_f32 v79, v82, v81
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v82, v89
	v_div_fmas_f32 v80, v80, v83, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v83, -v90, v88, v84
	v_div_fixup_f32 v44, v66, v47, v44
	v_fma_f32 v91, -v85, v86, 1.0
	v_fma_f32 v66, -v92, v79, v87
	v_div_fixup_f32 v43, v80, v47, v43
	v_fmac_f32_e32 v88, v83, v94
	v_div_scale_f32 v80, s8, v39, v47, v39
	v_fmac_f32_e32 v86, v91, v86
	v_fma_f32 v83, -v89, v82, 1.0
	v_div_scale_f32 v87, null, v47, v47, v37
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v66, v66, v81, v79
	v_fma_f32 v79, -v90, v88, v84
	v_mul_f32_e32 v81, v80, v86
	v_fmac_f32_e32 v82, v83, v82
	v_rcp_f32_e32 v83, v87
	v_div_scale_f32 v84, s9, v38, v47, v38
	v_div_scale_f32 v90, null, v47, v47, v36
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v91, v84, v82
	v_div_fmas_f32 v79, v79, v94, v88
	v_fma_f32 v88, -v85, v81, v80
	v_rcp_f32_e32 v93, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v87, v83, 1.0
	v_div_fixup_f32 v41, v66, v47, v41
	v_fma_f32 v66, -v89, v91, v84
	v_fmac_f32_e32 v81, v88, v86
	v_div_scale_f32 v88, null, v47, v47, v34
	v_div_fixup_f32 v42, v79, v47, v42
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v79, s10, v37, v47, v37
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v90, v93, 1.0
	v_fma_f32 v80, -v85, v81, v80
	v_fmac_f32_e32 v91, v66, v82
	v_rcp_f32_e32 v85, v88
	s_mov_b32 vcc_lo, s8
	v_dual_mul_f32 v66, v79, v83 :: v_dual_fmac_f32 v93, v92, v93
	v_div_scale_f32 v92, s11, v36, v47, v36
	v_div_fmas_f32 v80, v80, v86, v81
	v_fma_f32 v81, -v89, v91, v84
	v_div_scale_f32 v94, null, v47, v47, v35
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v84, -v87, v66, v79
	v_mul_f32_e32 v86, v92, v93
	v_fma_f32 v89, -v88, v85, 1.0
	v_div_fmas_f32 v81, v81, v82, v91
	v_rcp_f32_e32 v82, v94
	v_fmac_f32_e32 v66, v84, v83
	v_fma_f32 v84, -v90, v86, v92
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s8, v34, v47, v34
	v_div_fixup_f32 v39, v80, v47, v39
	v_div_fixup_f32 v38, v81, v47, v38
	v_fma_f32 v79, -v87, v66, v79
	v_fmac_f32_e32 v86, v84, v93
	v_mul_f32_e32 v80, v89, v85
	v_fma_f32 v81, -v94, v82, 1.0
	v_div_scale_f32 v84, null, v47, v47, v33
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, s9, v35, v47, v35
	v_div_fmas_f32 v66, v79, v83, v66
	v_fma_f32 v79, -v90, v86, v92
	v_fma_f32 v83, -v88, v80, v89
	v_fmac_f32_e32 v82, v81, v82
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v90, null, v47, v47, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v83, v85
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v37, v66, v47, v37
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v79, v79, v93, v86
	v_mul_f32_e32 v86, v87, v82
	v_fma_f32 v66, -v88, v80, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v84, v81, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v36, v79, v47, v36
	v_fma_f32 v79, -v94, v86, v87
	v_div_scale_f32 v88, s10, v33, v47, v33
	v_fmac_f32_e32 v81, v91, v81
	v_fma_f32 v89, -v90, v83, 1.0
	v_div_scale_f32 v91, null, v47, v47, v31
	v_div_fmas_f32 v66, v66, v85, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v79, v82 :: v_dual_fmac_f32 v83, v89, v83
	v_rcp_f32_e32 v80, v91
	v_div_scale_f32 v89, null, v47, v47, v30
	v_mul_f32_e32 v79, v88, v81
	v_div_scale_f32 v85, s8, v32, v47, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v93, v89
	v_div_fixup_f32 v34, v66, v47, v34
	v_fma_f32 v66, -v94, v86, v87
	v_fma_f32 v87, -v84, v79, v88
	v_mul_f32_e32 v92, v85, v83
	v_fma_f32 v94, -v91, v80, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v66, v66, v82, v86
	v_fmac_f32_e32 v79, v87, v81
	v_fma_f32 v82, -v90, v92, v85
	v_fmac_f32_e32 v80, v94, v80
	v_div_scale_f32 v86, s9, v31, v47, v31
	v_fma_f32 v87, -v89, v93, 1.0
	v_div_fixup_f32 v35, v66, v47, v35
	v_fma_f32 v66, -v84, v79, v88
	v_fmac_f32_e32 v92, v82, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v82, v86, v80 :: v_dual_fmac_f32 v93, v87, v93
	v_div_scale_f32 v87, null, v47, v47, v28
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v84, s11, v30, v47, v30
	v_div_fmas_f32 v66, v66, v81, v79
	v_fma_f32 v79, -v90, v92, v85
	v_fma_f32 v81, -v91, v82, v86
	v_rcp_f32_e32 v85, v87
	v_div_scale_f32 v90, null, v47, v47, v29
	v_mul_f32_e32 v88, v84, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v81, v80
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v81, v90
	v_div_fmas_f32 v79, v79, v83, v92
	v_fma_f32 v83, -v89, v88, v84
	v_div_fixup_f32 v33, v66, v47, v33
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v87, v85, 1.0
	v_fma_f32 v66, -v91, v82, v86
	v_div_fixup_f32 v32, v79, v47, v32
	v_fmac_f32_e32 v88, v83, v93
	v_div_scale_f32 v79, s8, v28, v47, v28
	v_fmac_f32_e32 v85, v92, v85
	v_fma_f32 v83, -v90, v81, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v91, null, v40, v40, v26
	v_div_fmas_f32 v66, v66, v80, v82
	v_fma_f32 v80, -v89, v88, v84
	v_mul_f32_e32 v82, v79, v85
	v_fmac_f32_e32 v81, v83, v81
	v_div_scale_f32 v83, null, v40, v40, v27
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v84, s9, v29, v47, v29
	v_div_fmas_f32 v80, v80, v93, v88
	v_rcp_f32_e32 v86, v83
	v_fma_f32 v88, -v87, v82, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v89, v84, v81
	v_div_fixup_f32 v31, v66, v47, v31
	v_div_fixup_f32 v30, v80, v47, v30
	v_rcp_f32_e32 v80, v91
	v_fmac_f32_e32 v82, v88, v85
	v_fma_f32 v66, -v90, v89, v84
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v93, null, v40, v40, v24
	v_fma_f32 v88, -v83, v86, 1.0
	v_fma_f32 v79, -v87, v82, v79
	v_div_scale_f32 v87, null, v40, v40, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v66, v81 :: v_dual_fmac_f32 v86, v88, v86
	v_div_scale_f32 v66, s10, v27, v40, v27
	v_rcp_f32_e32 v88, v87
	v_fma_f32 v92, -v91, v80, 1.0
	v_div_fmas_f32 v79, v79, v85, v82
	v_fma_f32 v82, -v90, v89, v84
	v_mul_f32_e32 v84, v66, v86
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v92, v80
	v_div_scale_f32 v85, s8, v26, v40, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v92, -v83, v84, v66
	v_fma_f32 v90, -v87, v88, 1.0
	v_rcp_f32_e32 v95, v93
	v_div_fmas_f32 v81, v82, v81, v89
	v_mul_f32_e32 v94, v85, v80
	v_fmac_f32_e32 v84, v92, v86
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s11, v25, v40, v25
	v_div_fixup_f32 v28, v79, v47, v28
	v_div_fixup_f32 v29, v81, v47, v29
	v_fma_f32 v47, -v83, v84, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v89, v90, v88
	v_div_scale_f32 v81, null, v40, v40, v23
	v_fma_f32 v82, -v91, v94, v85
	v_fma_f32 v79, -v93, v95, 1.0
	v_fma_f32 v66, -v87, v89, v90
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v94, v82, v80 :: v_dual_fmac_f32 v95, v79, v95
	v_fmac_f32_e32 v89, v66, v88
	v_rcp_f32_e32 v66, v81
	v_div_scale_f32 v79, s9, v24, v40, v24
	v_div_fmas_f32 v47, v47, v86, v84
	v_fma_f32 v82, -v91, v94, v85
	v_div_scale_f32 v84, null, v40, v40, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v83, v79, v95
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v27, v47, v40, v27
	v_fma_f32 v85, -v81, v66, 1.0
	v_div_fmas_f32 v80, v82, v80, v94
	v_fma_f32 v82, -v87, v89, v90
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v87, -v93, v83, v79
	v_fmac_f32_e32 v66, v85, v66
	v_div_scale_f32 v85, s8, v23, v40, v23
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v83, v87, v95
	v_div_fmas_f32 v82, v82, v88, v89
	v_mul_f32_e32 v47, v85, v66
	v_div_fixup_f32 v26, v80, v40, v26
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v80, -v84, v86, 1.0
	v_fma_f32 v79, -v93, v83, v79
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v87, -v81, v47, v85
	v_div_fixup_f32 v25, v82, v40, v25
	v_div_scale_f32 v82, null, v40, v40, v20
	v_fmac_f32_e32 v86, v80, v86
	v_div_scale_f32 v80, s10, v22, v40, v22
	v_div_fmas_f32 v79, v79, v95, v83
	v_fmac_f32_e32 v47, v87, v66
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v83, v80, v86
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v24, v79, v40, v24
	v_fma_f32 v79, -v81, v47, v85
	v_div_scale_f32 v87, null, v40, v40, v19
	v_fma_f32 v81, -v84, v83, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v47, v79, v66, v47
	v_div_scale_f32 v66, null, v40, v40, v17
	v_fma_f32 v85, -v82, v88, 1.0
	v_rcp_f32_e32 v89, v87
	v_fmac_f32_e32 v83, v81, v86
	v_rcp_f32_e32 v81, v66
	v_div_scale_f32 v79, s8, v20, v40, v20
	v_fmac_f32_e32 v88, v85, v88
	v_div_scale_f32 v85, null, v40, v40, v21
	v_div_fixup_f32 v23, v47, v40, v23
	v_fma_f32 v80, -v84, v83, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v87, v89, 1.0
	v_rcp_f32_e32 v91, v85
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v66, v81, 1.0
	v_mul_f32_e32 v84, v79, v88
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v89, v47, v89
	v_div_scale_f32 v47, s9, v19, v40, v19
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v90, null, v40, v40, v18
	v_div_fmas_f32 v80, v80, v86, v83
	v_fma_f32 v83, -v82, v84, v79
	v_mul_f32_e32 v86, v47, v89
	v_div_scale_f32 v92, s10, v17, v40, v17
	v_fma_f32 v93, -v85, v91, 1.0
	v_rcp_f32_e32 v94, v90
	v_fmac_f32_e32 v84, v83, v88
	v_fma_f32 v83, -v87, v86, v47
	v_mul_f32_e32 v95, v92, v81
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s11, v21, v40, v21
	v_div_fixup_f32 v22, v80, v40, v22
	v_fma_f32 v79, -v82, v84, v79
	v_fmac_f32_e32 v86, v83, v89
	v_fma_f32 v80, -v66, v95, v92
	v_mul_f32_e32 v82, v93, v91
	v_fma_f32 v83, -v90, v94, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v47, -v87, v86, v47
	v_fmac_f32_e32 v95, v80, v81
	v_fma_f32 v80, -v85, v82, v93
	v_fmac_f32_e32 v94, v83, v94
	v_div_scale_f32 v83, s8, v18, v40, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v66, v95, v92
	v_fmac_f32_e32 v82, v80, v91
	v_div_fmas_f32 v79, v79, v88, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v80, v83, v94
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v84, null, v40, v40, v16
	v_div_fmas_f32 v47, v47, v89, v86
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v20, v79, v40, v20
	v_div_fmas_f32 v66, v66, v81, v95
	v_fma_f32 v81, -v85, v82, v93
	v_fma_f32 v85, -v90, v80, v83
	v_rcp_f32_e32 v86, v84
	v_div_fixup_f32 v19, v47, v40, v19
	v_div_fixup_f32 v17, v66, v40, v17
	v_div_scale_f32 v66, null, v40, v40, v15
	v_fmac_f32_e32 v80, v85, v94
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v88, null, v40, v40, v14
	v_div_fmas_f32 v81, v81, v91, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v47, -v90, v80, v83
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v79, -v84, v86, 1.0
	v_rcp_f32_e32 v90, v88
	v_div_fixup_f32 v21, v81, v40, v21
	v_div_fmas_f32 v47, v47, v94, v80
	v_rcp_f32_e32 v80, v66
	v_fmac_f32_e32 v86, v79, v86
	v_div_scale_f32 v82, vcc_lo, v16, v40, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v18, v47, v40, v18
	v_div_scale_f32 v79, null, v40, v40, v12
	v_mul_f32_e32 v87, v82, v86
	v_div_scale_f32 v81, null, v40, v40, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v66, v80, 1.0
	v_rcp_f32_e32 v83, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v84, v87, v82
	v_rcp_f32_e32 v85, v81
	v_fma_f32 v94, -v88, v90, 1.0
	v_fmac_f32_e32 v80, v47, v80
	v_div_scale_f32 v47, s8, v15, v40, v15
	v_fmac_f32_e32 v87, v91, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s11, v14, v40, v14
	v_mul_f32_e32 v93, v47, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v82, -v84, v87, v82
	v_fma_f32 v89, -v79, v83, 1.0
	v_fma_f32 v92, -v81, v85, 1.0
	v_mul_f32_e32 v97, v94, v90
	v_fma_f32 v91, -v66, v93, v47
	v_div_fmas_f32 v82, v82, v86, v87
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v83, v89, v83
	v_div_scale_f32 v89, s9, v12, v40, v12
	v_fmac_f32_e32 v93, v91, v80
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v92, s10, v13, v40, v13
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v47, -v66, v93, v47
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v36, v36, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v89, v83
	v_div_fixup_f32 v16, v82, v40, v16
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v47, v47, v80, v93
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v82, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v92, v85
	v_fma_f32 v84, -v79, v95, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v15, v47, v40, v15
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v51
	v_rndne_f32_e32 v51, v53
	v_rndne_f32_e32 v53, v55
	v_rndne_f32_e32 v55, v57
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v84, v83
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v51, v51, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v66, -v88, v97, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v86, v32
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v103, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v79, v95, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v15, 15, v51
	v_and_b32_e32 v51, 15, v82
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v81, v96, v92
	v_fmac_f32_e32 v97, v66, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v98, v19
	v_and_b32_e32 v19, 15, v55
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v96, v91, v85 :: v_dual_and_b32 v55, 15, v86
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v83, v95
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v66, -v81, v96, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v21, v21
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v66, v66, v85, v96
	v_fma_f32 v80, -v88, v97, v94
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v61
	v_rndne_f32_e32 v61, v63
	v_rndne_f32_e32 v63, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v13, v66, v40, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v71
	v_rndne_f32_e32 v69, v75
	v_rndne_f32_e32 v75, v77
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v28, v28
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v88, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v100, v21
	v_and_b32_e32 v21, 15, v57
	v_and_b32_e32 v57, 15, v88
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v90, v97
	v_div_fixup_f32 v12, v79, v40, v12
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v76
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v14, v80, v40, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v49
	v_rndne_f32_e32 v49, v52
	v_rndne_f32_e32 v52, v54
	v_rndne_f32_e32 v54, v56
	v_rndne_f32_e32 v56, v58
	v_rndne_f32_e32 v58, v60
	v_rndne_f32_e32 v60, v62
	v_rndne_f32_e32 v62, v68
	v_rndne_f32_e32 v68, v72
	v_rndne_f32_e32 v72, v78
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v24, v24
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v79, v39
	v_cvt_i32_f32_e32 v80, v38
	v_cvt_i32_f32_e32 v89, v28
	v_and_b32_e32 v28, 15, v66
	v_and_b32_e32 v38, 15, v65
	v_and_b32_e32 v39, 15, v64
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v64, 10, v0
	v_and_b32_e32 v65, 16, v0
	v_lshlrev_b32_e32 v66, 4, v162
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_cvt_i32_f32_e32 v85, v33
	v_and_b32_e32 v33, 15, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v64, 0x1800, v64
	v_lshlrev_b32_e32 v75, 6, v65
	v_xor_b32_e32 v8, v66, v8
	v_lshlrev_b32_e32 v66, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v20, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v76, v43
	v_cvt_i32_f32_e32 v77, v41
	v_cvt_i32_f32_e32 v78, v42
	v_cvt_i32_f32_e32 v91, v27
	v_cvt_i32_f32_e32 v92, v26
	v_cvt_i32_f32_e32 v93, v25
	v_cvt_i32_f32_e32 v94, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v64, 0, v64, v75
	v_and_or_b32 v7, 0x1b00, v66, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v83, v34
	v_cvt_i32_f32_e32 v84, v35
	v_cvt_i32_f32_e32 v99, v17
	v_cvt_i32_f32_e32 v101, v18
	v_cvt_i32_f32_e32 v102, v16
	v_cvt_i32_f32_e32 v87, v31
	v_cvt_i32_f32_e32 v90, v29
	v_cvt_i32_f32_e32 v104, v12
	v_cvt_i32_f32_e32 v105, v13
	v_cvt_i32_f32_e32 v106, v14
	v_and_b32_e32 v13, 15, v47
	v_and_b32_e32 v14, 15, v49
	v_and_b32_e32 v16, 15, v52
	v_and_b32_e32 v17, 15, v53
	v_and_b32_e32 v18, 15, v54
	v_and_b32_e32 v24, 15, v60
	v_and_b32_e32 v25, 15, v61
	v_and_b32_e32 v26, 15, v62
	v_and_b32_e32 v27, 15, v63
	v_and_b32_e32 v29, 15, v68
	v_and_b32_e32 v30, 15, v69
	v_and_b32_e32 v31, 15, v71
	v_and_b32_e32 v32, 15, v72
	v_and_b32_e32 v34, 15, v74
	v_and_b32_e32 v35, 15, v73
	v_and_b32_e32 v42, 15, v46
	v_and_b32_e32 v43, 15, v45
	v_and_b32_e32 v44, 15, v44
	v_and_b32_e32 v45, 15, v76
	v_and_b32_e32 v46, 15, v77
	v_and_b32_e32 v47, 15, v78
	v_and_b32_e32 v60, 15, v91
	v_and_b32_e32 v61, 15, v92
	v_and_b32_e32 v62, 15, v93
	v_and_b32_e32 v63, 15, v94
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v64, v64, v8, v6
	v_xad_u32 v66, v7, v5, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v12, 15, v40
	v_cvt_i32_f32_e32 v81, v37
	v_cvt_i32_f32_e32 v95, v23
	v_cvt_i32_f32_e32 v96, v22
	v_cvt_i32_f32_e32 v97, v20
	v_and_b32_e32 v20, 15, v56
	v_and_b32_e32 v22, 15, v58
	v_and_b32_e32 v23, 15, v59
	v_and_b32_e32 v36, 15, v67
	v_and_b32_e32 v37, 15, v70
	v_and_b32_e32 v40, 15, v50
	v_and_b32_e32 v41, 15, v48
	v_and_b32_e32 v52, 15, v83
	v_and_b32_e32 v53, 15, v84
	v_and_b32_e32 v54, 15, v85
	v_and_b32_e32 v71, 15, v99
	v_and_b32_e32 v72, 15, v100
	v_and_b32_e32 v73, 15, v101
	v_and_b32_e32 v74, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v64, v[12:15]
	ds_store_b128 v64, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v66
	ds_load_b128 v[12:15], v66 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v64, v[28:31]
	ds_store_b128 v64, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[20:23], v66
	ds_load_b128 v[28:31], v66 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v64, v[44:47]
	ds_store_b128 v64, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v66
	ds_load_b128 v[44:47], v66 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v64, v[60:63]
	ds_store_b128 v64, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[52:55], v66
	ds_load_b128 v[60:63], v66 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v64, v[16:19]
	ds_store_b128 v64, v[24:27] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v66
	ds_load_b128 v[24:27], v66 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v64, v[32:35]
	ds_store_b128 v64, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v66
	ds_load_b128 v[40:43], v66 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v48, 15, v79
	v_and_b32_e32 v49, 15, v80
	v_and_b32_e32 v50, 15, v81
	v_and_b32_e32 v56, 15, v87
	v_and_b32_e32 v58, 15, v89
	v_and_b32_e32 v59, 15, v90
	v_and_b32_e32 v67, 15, v95
	v_and_b32_e32 v68, 15, v96
	v_and_b32_e32 v69, 15, v97
	v_and_b32_e32 v70, 15, v98
	v_and_b32_e32 v75, 15, v103
	v_and_b32_e32 v76, 15, v104
	v_and_b32_e32 v77, 15, v105
	v_and_b32_e32 v78, 15, v106
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v64, v[48:51]
	ds_store_b128 v64, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v66
	ds_load_b128 v[56:59], v66 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v27, 4, v19
	v_lshl_or_b32 v27, v43, 4, v35
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v43, 3, v162
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v64, v[67:70]
	ds_store_b128 v64, v[75:78] offset:512
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v14, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, v9, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[67:70], v66
	ds_load_b128 v[71:74], v66 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s34, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v5, v12, 4, v5
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v4, s23, 7, v43
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_add_i32 s8, s34, s8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 16, v7
	v_add_nc_u32_e32 v14, 32, v7
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v6, v13, 4, v6
	v_lshl_or_b32 v66, v15, 4, v8
	v_lshl_or_b32 v16, v24, 4, v16
	v_lshl_or_b32 v17, v25, 4, v17
	v_lshl_or_b32 v18, v26, 4, v18
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 48, v7
	v_mad_u64_u32 v[7:8], null, v7, s8, v[4:5]
	v_mad_u64_u32 v[12:13], null, v12, s8, v[4:5]
	v_mad_u64_u32 v[13:14], null, v14, s8, v[4:5]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v20, v28, 4, v20
	v_lshl_or_b32 v21, v29, 4, v21
	v_lshl_or_b32 v22, v30, 4, v22
	v_lshl_or_b32 v23, v31, 4, v23
	v_lshl_or_b32 v24, v40, 4, v32
	v_lshl_or_b32 v25, v41, 4, v33
	v_lshl_or_b32 v26, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v15, s8, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v66.l
	v_and_b16 v2.l, 0xff, v64.l
	v_lshlrev_b16 v4.l, 8, v6.l
	v_and_b16 v4.h, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v19.l
	v_and_b16 v5.h, 0xff, v18.l
	v_lshlrev_b16 v6.l, 8, v17.l
	v_and_b16 v6.h, 0xff, v16.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v34, v58, 4, v50
	v_lshl_or_b32 v35, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v2.l, v1.l
	v_or_b16 v15.l, v4.h, v4.l
	v_or_b16 v16.h, v5.h, v5.l
	v_or_b16 v16.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v1.l, 8, v23.l
	v_and_b16 v2.l, 0xff, v22.l
	v_lshlrev_b16 v4.l, 8, v21.l
	v_and_b16 v4.h, 0xff, v20.l
	v_lshlrev_b16 v5.l, 8, v27.l
	v_and_b16 v5.h, 0xff, v26.l
	v_lshlrev_b16 v6.l, 8, v25.l
	v_and_b16 v6.h, 0xff, v24.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v44, 4, v36
	v_lshl_or_b32 v29, v45, 4, v37
	v_lshl_or_b32 v30, v46, 4, v38
	v_lshl_or_b32 v31, v47, 4, v39
	v_lshl_or_b32 v32, v56, 4, v48
	v_lshl_or_b32 v33, v57, 4, v49
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v42, v73, 4, v69
	v_lshl_or_b32 v44, v74, 4, v70
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[15:16], v7, s[28:31], 0 offen
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.h, v4.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	v_lshlrev_b16 v5.l, 8, v35.l
	v_and_b16 v5.h, 0xff, v34.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v60, 4, v52
	v_lshl_or_b32 v37, v61, 4, v53
	v_lshl_or_b32 v38, v62, 4, v54
	v_lshl_or_b32 v39, v63, 4, v55
	v_lshl_or_b32 v40, v71, 4, v67
	v_lshl_or_b32 v41, v72, 4, v68
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v31.l
	v_and_b16 v2.l, 0xff, v30.l
	v_lshlrev_b16 v4.l, 8, v29.l
	v_and_b16 v4.h, 0xff, v28.l
	v_lshlrev_b16 v6.l, 8, v33.l
	v_and_b16 v6.h, 0xff, v32.l
	buffer_store_b64 v[7:8], v12, s[28:31], 0 offen
	v_or_b16 v8.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v44.l
	v_and_b16 v5.h, 0xff, v42.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.h, v4.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v1.l, 8, v39.l
	v_and_b16 v2.l, 0xff, v38.l
	v_lshlrev_b16 v4.l, 8, v37.l
	v_and_b16 v4.h, 0xff, v36.l
	v_lshlrev_b16 v6.l, 8, v41.l
	v_and_b16 v6.h, 0xff, v40.l
	v_cndmask_b32_e32 v15, 0x80000000, v13, vcc_lo
	v_or_b16 v13.h, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 2, v65
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_or_b16 v13.l, v6.h, v6.l
	v_cndmask_b32_e32 v4, 0x80000000, v14, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v9
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s34, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v15, s[28:31], 0 offen
	buffer_store_b64 v[12:13], v4, s[28:31], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v43
	v_mov_b16_e32 v2.l, v11.h
	v_mov_b16_e32 v1.l, v10.h
	v_add3_u32 v5, v5, v6, v43
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s34, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s29, s27, 0xffff
	s_mov_b32 s28, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s23, 1
	s_and_b32 vcc_lo, vcc_lo, s33
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[28:31], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp43:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 60
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17016
; TotalNumSgprs: 38
; NumVgprs: 256
; ScratchSize: 60
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 38
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
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 60
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
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
