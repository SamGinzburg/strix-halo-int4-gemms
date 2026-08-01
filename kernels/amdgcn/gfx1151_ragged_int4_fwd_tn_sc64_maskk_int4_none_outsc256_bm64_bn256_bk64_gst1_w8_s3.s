	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s37, s[0:1], 0x54
	s_load_b64 s[72:73], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v42, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s37, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s73, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 63, v0
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s73, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s73, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[38:39], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[70:71], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[68:69], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s72, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s38, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s39, 0, s2
	v_add_nc_u32_e32 v9, s38, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[68:69], v[2:3]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s38, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow560
	s_load_b128 s[48:51], s[0:1], 0x40
	v_dual_mov_b32 v46, 0 :: v_dual_and_b32 v107, 15, v0
	v_dual_mov_b32 v47, 0 :: v_dual_and_b32 v108, 0xf0, v0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_mov_b32_e32 v93, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s74, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s38, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s39, 0, s6
	s_clause 0x1
	s_load_b32 s75, s[0:1], 0x58
	s_load_b32 s76, s[0:1], 0x50
	v_add_co_u32 v3, vcc_lo, v1, 16
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[70:71], v[1:2]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[70:71], v[3:4]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s7, s[2:3], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[68:69], v[1:2]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v1, s38, v107
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[68:69], v[3:4]
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v11, s73, 8, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v2, 16, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v3, 32, v1
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v4, 48, v1
	v_mul_lo_u32 v1, v1, s72
	v_mov_b32_e32 v10, v11
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[70:71], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[68:69], v[5:6]
	v_or_b32_e32 v5, 0x7f0, v0
	v_or_b32_e32 v6, 0xb00, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[68:69], v[7:8]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v2, s72
	v_or_b32_e32 v7, 0xf00, v0
	v_or_b32_e32 v8, 0x1300, v0
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v110, 0, v107
	v_or_b32_e32 v13, 0x1700, v0
	v_or_b32_e32 v14, 0x1b00, v0
	v_mov_b32_e32 v90, 0
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v3, s72
	v_lshrrev_b32_e32 v3, 1, v0
	v_or_b32_e32 v15, 0x1f00, v0
	v_dual_mov_b32 v75, 0 :: v_dual_lshlrev_b32 v16, 2, v108
	v_dual_mov_b32 v60, 0 :: v_dual_lshlrev_b32 v17, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v3, 0x70, v3
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v4, s72
	v_or_b32_e32 v4, 0x3f0, v0
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v111, v110, v3
	v_mov_b32_e32 v76, 0
	v_dual_mov_b32 v52, 0 :: v_dual_lshlrev_b32 v3, 5, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x300, v0
	v_dual_mov_b32 v50, 0 :: v_dual_and_b32 v3, 32, v3
	v_mov_b32_e32 v58, 0
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s3, s75, s37
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v113, 0, v1
	v_add_nc_u32_e32 v1, 0, v4
	scratch_store_b64 off, v[10:11], off offset:16 ; 8-byte Folded Spill
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v66, 0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[11:12], null, s3, s7, v[11:12]
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v1, 0, v5
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v12, 28, v17
	v_add3_u32 v3, 0, v16, v3
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v1, 0, v6
	v_or_b32_e32 v2, 0x700, v0
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[28:29], null, s37, 22, v[11:12]
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v1, 0, v7
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v114, 0, v2
	v_mov_b32_e32 v98, 0
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v8
	v_mad_u64_u32 v[29:30], null, s37, 23, v[11:12]
	v_mov_b32_e32 v104, 0
	v_mad_u64_u32 v[30:31], null, s37, 24, v[11:12]
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v13
	v_mad_u64_u32 v[31:32], null, s37, 25, v[11:12]
	v_mad_u64_u32 v[32:33], null, s37, 26, v[11:12]
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v14
	v_mad_u64_u32 v[33:34], null, s37, 27, v[11:12]
	v_mad_u64_u32 v[34:35], null, s37, 28, v[11:12]
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v15
	v_dual_mov_b32 v59, 0 :: v_dual_lshlrev_b32 v16, 1, v108
	v_mad_u64_u32 v[35:36], null, s37, 29, v[11:12]
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, v3, v12
	s_mov_b32 s40, 0
	v_mad_u64_u32 v[36:37], null, s37, 30, v[11:12]
	v_mad_u64_u32 v[37:38], null, s37, 31, v[11:12]
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 3, v[11:12]
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	scratch_store_b64 off, v[1:2], off offset:60 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 5, v[11:12]
	s_mov_b32 s47, s40
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v112, 0, v0
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v124, 0, v16
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v102, 0
	scratch_store_b64 off, v[1:2], off offset:68 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 6, v[11:12]
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v88, 0
	scratch_store_b64 off, v[1:2], off offset:76 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 7, v[11:12]
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v78, 0
	scratch_store_b64 off, v[1:2], off offset:84 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 9, v[11:12]
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v64, 0
	scratch_store_b64 off, v[1:2], off offset:92 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 10, v[11:12]
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v54, 0
	scratch_store_b64 off, v[1:2], off offset:100 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 11, v[11:12]
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v42, 0
	scratch_store_b64 off, v[1:2], off offset:108 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 12, v[11:12]
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v61, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v55, 0
	scratch_store_b64 off, v[1:2], off offset:116 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 13, v[11:12]
	v_mov_b32_e32 v47, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	s_and_b32 s1, s1, s5
	.loc	1 1135 19                       ; ragged.py:1135:19
	scratch_store_b64 off, v[1:2], off offset:124 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 14, v[11:12]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s77, s72, s7
	s_and_b32 s65, s11, 0xffff
	s_and_b32 s53, s13, 0xffff
	s_mov_b32 s52, s12
	s_and_b32 s57, s15, 0xffff
	.loc	1 1135 19                       ; ragged.py:1135:19
	scratch_store_b64 off, v[1:2], off offset:132 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 15, v[11:12]
	s_mov_b32 s56, s14
	s_mov_b32 s60, s8
	s_mov_b32 s61, s9
	s_mov_b32 s62, s54
	s_mov_b32 s63, s55
	s_mov_b32 s64, s10
	scratch_store_b64 off, v[1:2], off offset:140 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 17, v[11:12]
	s_mov_b32 s66, s54
	s_mov_b32 s67, s55
	s_mov_b32 s78, s40
	scratch_store_b64 off, v[1:2], off offset:148 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 18, v[11:12]
	scratch_store_b64 off, v[1:2], off offset:156 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 19, v[11:12]
	scratch_store_b64 off, v[1:2], off offset:164 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 20, v[11:12]
	scratch_store_b64 off, v[1:2], off offset:172 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s37, 21, v[11:12]
	scratch_store_b64 off, v[1:2], off offset:180 ; 8-byte Folded Spill
	v_dual_mov_b32 v1, s40 :: v_dual_mov_b32 v2, s41
	v_dual_mov_b32 v3, s42 :: v_dual_mov_b32 v4, s43
	v_dual_mov_b32 v5, s44 :: v_dual_mov_b32 v6, s45
	v_dual_mov_b32 v7, s46 :: v_dual_mov_b32 v8, s47
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b64 v[12:13], off, off offset:60 ; 8-byte Folded Reload
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s5, s78, 5
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v38, s37, v11
	s_mul_i32 s58, s5, s37
	s_or_b32 s4, s5, 1
	s_or_b32 s7, s5, 2
	s_or_b32 s6, s5, 3
	s_or_b32 s11, s5, 4
	s_or_b32 s9, s5, 5
	s_or_b32 s8, s5, 6
	s_or_b32 s10, s5, 7
	s_or_b32 s12, s5, 8
	s_or_b32 s13, s5, 9
	s_or_b32 s14, s5, 10
	s_or_b32 s15, s5, 11
	s_or_b32 s16, s5, 12
	s_or_b32 s17, s5, 13
	s_or_b32 s18, s5, 14
	s_or_b32 s19, s5, 15
	s_or_b32 s20, s5, 16
	s_or_b32 s21, s5, 17
	s_or_b32 s22, s5, 18
	s_or_b32 s23, s5, 19
	s_or_b32 s24, s5, 20
	s_or_b32 s25, s5, 21
	s_or_b32 s26, s5, 22
	s_or_b32 s27, s5, 23
	s_or_b32 s28, s5, 24
	s_or_b32 s29, s5, 25
	s_or_b32 s30, s5, 26
	s_or_b32 s31, s5, 27
	s_or_b32 s33, s5, 28
	s_or_b32 s34, s5, 29
	s_or_b32 s35, s5, 30
	s_or_b32 s36, s5, 31
	s_cmp_lt_i32 s5, s75
	v_add_nc_u32_e32 v41, s58, v38
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v38, 6, v0
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s4, s75
	v_add_nc_u32_e32 v40, s58, v11
	s_cselect_b32 s4, -1, 0
	s_cmp_lt_i32 s7, s75
	v_or_b32_e32 v106, s5, v38
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s6, s75
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v38, s37, 1, v11
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s11, s75
	v_cmp_gt_i32_e64 s7, s75, v106
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s9, s75
	v_add_nc_u32_e32 v107, s58, v38
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s8, s75
	v_lshl_add_u32 v38, s37, 2, v11
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s10, s75
	v_add_nc_u32_e32 v144, s58, v28
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s12, s75
	v_add_nc_u32_e32 v126, s58, v38
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s13, s75
	v_lshl_add_u32 v38, s37, 3, v11
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s14, s75
	v_add_nc_u32_e32 v145, s58, v29
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s15, s75
	v_add_nc_u32_e32 v130, s58, v38
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s16, s75
	v_lshl_add_u32 v38, s37, 4, v11
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s17, s75
	v_add_nc_u32_e32 v147, s58, v31
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s18, s75
	v_add_nc_u32_e32 v138, s58, v38
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s19, s75
	v_mad_u64_u32 v[38:39], null, v106, s76, v[9:10]
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s20, s75
	v_add_nc_u32_e32 v148, s58, v32
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s21, s75
	v_add_nc_u32_e32 v150, s58, v34
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s22, s75
	v_add_nc_u32_e32 v146, s58, v30
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s23, s75
	v_add_nc_u32_e32 v149, s58, v33
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s24, s75
	v_add_nc_u32_e32 v151, s58, v35
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s25, s75
	v_add_nc_u32_e32 v152, s58, v36
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s26, s75
	v_add_nc_u32_e32 v153, s58, v37
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s27, s75
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s59, s55
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s28, s75
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s29, s75
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s30, s75
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s31, s75
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s33, s75
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s34, s75
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s35, s75
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s36, s75
	s_cselect_b32 s36, -1, 0
	s_and_b32 s7, s74, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v154, 0x80000000, v38, s7
	v_or_b32_e32 v38, 4, v106
	v_cmp_gt_i32_e64 s7, s75, v38
	v_mad_u64_u32 v[38:39], null, v38, s76, v[9:10]
	s_and_b32 s7, s74, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v155, 0x80000000, v38, s7
	v_or_b32_e32 v38, 8, v106
	v_cmp_gt_i32_e64 s7, s75, v38
	v_mad_u64_u32 v[38:39], null, v38, s76, v[9:10]
	s_and_b32 s7, s74, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v156, 0x80000000, v38, s7
	v_or_b32_e32 v38, 12, v106
	v_cmp_gt_i32_e64 s7, s75, v38
	v_mad_u64_u32 v[38:39], null, v38, s76, v[9:10]
	s_and_b32 s7, s74, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v157, 0x80000000, v38, s7
	v_or_b32_e32 v38, 16, v106
	v_cmp_gt_i32_e64 s7, s75, v38
	v_mad_u64_u32 v[38:39], null, v38, s76, v[9:10]
	s_and_b32 s7, s74, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v158, 0x80000000, v38, s7
	v_or_b32_e32 v38, 20, v106
	v_cmp_gt_i32_e64 s7, s75, v38
	v_mad_u64_u32 v[38:39], null, v38, s76, v[9:10]
	s_and_b32 s7, s74, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v159, 0x80000000, v38, s7
	v_or_b32_e32 v38, 24, v106
	v_cmp_gt_i32_e64 s7, s75, v38
	v_mad_u64_u32 v[38:39], null, v38, s76, v[9:10]
	s_and_b32 s7, s74, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v160, 0x80000000, v38, s7
	v_or_b32_e32 v38, 28, v106
	v_cmp_gt_i32_e64 s7, s75, v38
	v_mad_u64_u32 v[38:39], null, v38, s76, v[9:10]
	v_cndmask_b32_e64 v39, 0x80000000, v40, s3
	v_cndmask_b32_e64 v40, 0x80000000, v41, s4
	v_cndmask_b32_e64 v41, 0x80000000, v107, s5
	v_cndmask_b32_e64 v107, 0x80000000, v126, s11
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x2
	buffer_load_u8 v224, v39, s[64:67], 0 offen
	buffer_load_u8 v40, v40, s[64:67], 0 offen
	buffer_load_u8 v41, v41, s[64:67], 0 offen
	s_and_b32 s7, s74, s7
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s78, s77
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v107, v107, s[64:67], 0 offen
	v_cndmask_b32_e64 v38, 0x80000000, v38, s7
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s3, s3, s37
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v125, s58, v12
	scratch_load_b64 v[12:13], off, off offset:68 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v106, 0x80000000, v125, s6
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v106, v106, s[64:67], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v127, s58, v12
	scratch_load_b64 v[12:13], off, off offset:76 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v39, 0x80000000, v127, s9
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v128, s58, v12
	scratch_load_b64 v[12:13], off, off offset:84 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v125, 0x80000000, v128, s8
	buffer_load_u8 v227, v125, s[64:67], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v129, s58, v12
	scratch_load_b64 v[12:13], off, off offset:92 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v126, 0x80000000, v129, s10
	s_clause 0x1
	buffer_load_u8 v229, v126, s[64:67], 0 offen
	buffer_load_u8 v225, v39, s[64:67], 0 offen
	v_cndmask_b32_e64 v39, 0x80000000, v130, s12
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v131, s58, v12
	scratch_load_b64 v[12:13], off, off offset:100 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v132, s58, v12
	scratch_load_b64 v[12:13], off, off offset:108 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v126, 0x80000000, v132, s14
	s_clause 0x1
	buffer_load_u8 v251, v126, s[64:67], 0 offen
	buffer_load_u8 v249, v39, s[64:67], 0 offen
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v133, s58, v12
	scratch_load_b64 v[12:13], off, off offset:116 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v39, 0x80000000, v133, s15
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v134, s58, v12
	scratch_load_b64 v[12:13], off, off offset:124 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v135, s58, v12
	scratch_load_b64 v[12:13], off, off offset:132 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v126, 0x80000000, v135, s17
	s_clause 0x1
	buffer_load_u8 v254, v126, s[64:67], 0 offen
	buffer_load_u8 v252, v39, s[64:67], 0 offen
	v_cndmask_b32_e64 v125, 0x80000000, v131, s13
	v_cndmask_b32_e64 v126, 0x80000000, v138, s20
	s_clause 0x1
	buffer_load_u8 v250, v125, s[64:67], 0 offen
	buffer_load_u8 v109, v126, s[64:67], 0 offen
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v136, s58, v12
	scratch_load_b64 v[12:13], off, off offset:140 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v39, 0x80000000, v136, s18
	buffer_load_u8 v255, v39, s[64:67], 0 offen
	v_cndmask_b32_e64 v125, 0x80000000, v134, s16
	buffer_load_u8 v253, v125, s[64:67], 0 offen
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v137, s58, v12
	scratch_load_b64 v[12:13], off, off offset:148 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s58, v12
	scratch_load_b64 v[12:13], off, off offset:156 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v39, 0x80000000, v139, s21
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v140, s58, v12
	scratch_load_b64 v[12:13], off, off offset:164 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v141, s58, v12
	scratch_load_b64 v[12:13], off, off offset:172 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v126, 0x80000000, v141, s23
	s_clause 0x1
	buffer_load_u8 v116, v126, s[64:67], 0 offen
	buffer_load_u8 v10, v39, s[64:67], 0 offen
	v_cndmask_b32_e64 v125, 0x80000000, v137, s19
	v_cndmask_b32_e64 v126, 0x80000000, v144, s26
	s_clause 0x1
	buffer_load_u8 v108, v125, s[64:67], 0 offen
	buffer_load_u8 v119, v126, s[64:67], 0 offen
	v_cndmask_b32_e64 v126, 0x80000000, v147, s29
	buffer_load_u8 v122, v126, s[64:67], 0 offen
	v_cndmask_b32_e64 v126, 0x80000000, v150, s33
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v142, s58, v12
	scratch_load_b64 v[12:13], off, off offset:180 ; 8-byte Folded Reload
	buffer_load_u8 v13, v126, s[64:67], 0 offen
	v_cndmask_b32_e64 v126, 0x80000000, v153, s36
	v_cndmask_b32_e64 v39, 0x80000000, v142, s24
	buffer_load_u8 v117, v39, s[64:67], 0 offen
	v_cndmask_b32_e64 v125, 0x80000000, v140, s22
	v_cndmask_b32_e64 v39, 0x80000000, v145, s27
	s_clause 0x1
	buffer_load_u8 v115, v125, s[64:67], 0 offen
	buffer_load_u8 v120, v39, s[64:67], 0 offen
	v_cndmask_b32_e64 v39, 0x80000000, v148, s30
	buffer_load_u8 v123, v39, s[64:67], 0 offen
	v_cndmask_b32_e64 v39, 0x80000000, v151, s34
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v143, s58, v12
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s58, s54
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v125, 0x80000000, v143, s25
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v118, v125, s[64:67], 0 offen
	v_cndmask_b32_e64 v125, 0x80000000, v146, s28
	buffer_load_u8 v121, v125, s[64:67], 0 offen
	v_cndmask_b32_e64 v125, 0x80000000, v149, s31
	buffer_load_u8 v12, v125, s[64:67], 0 offen
	v_cndmask_b32_e64 v125, 0x80000000, v152, s35
	s_clause 0x1
	buffer_load_u8 v14, v39, s[64:67], 0 offen
	buffer_load_u8 v15, v125, s[64:67], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v39, v154, s[60:63], 0 offen
	buffer_load_u8 v125, v155, s[60:63], 0 offen
	buffer_load_u8 v127, v156, s[60:63], 0 offen
	buffer_load_u8 v128, v158, s[60:63], 0 offen
	buffer_load_u8 v129, v159, s[60:63], 0 offen
	buffer_load_u8 v130, v160, s[60:63], 0 offen
	buffer_load_u8 v38, v38, s[60:63], 0 offen
	buffer_load_u8 v131, v157, s[60:63], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v16, v126, s[64:67], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(8)
	ds_store_b8 v112, v39
	s_waitcnt vmcnt(7)
	ds_store_b8 v112, v125 offset:256
	s_waitcnt vmcnt(6)
	ds_store_b8 v112, v127 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v112, v128 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v112, v129 offset:1280
	s_waitcnt vmcnt(1)
	ds_store_b8 v113, v131
	ds_store_b8 v112, v130 offset:1536
	ds_store_b8 v114, v38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_load_b32 v17, off, off offset:24 ; 4-byte Folded Reload
	ds_load_u8 v38, v110 offset:320
	ds_load_u8 v39, v110 offset:256
	ds_load_u8 v175, v110 offset:336
	ds_load_u8 v176, v110 offset:272
	ds_load_u8 v142, v110 offset:352
	ds_load_u8 v143, v110 offset:288
	ds_load_u8 v125, v110 offset:368
	ds_load_u8 v126, v110 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v39, v110 offset:448
	ds_load_u8 v129, v110 offset:384
	ds_load_u8 v179, v110 offset:464
	ds_load_u8 v180, v110 offset:400
	ds_load_u8 v146, v110 offset:480
	ds_load_u8 v147, v110 offset:416
	ds_load_u8 v127, v110 offset:496
	ds_load_u8 v128, v110 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v39, v129, v39, 0xc0c0004
	ds_load_u8 v131, v110 offset:64
	ds_load_u8 v132, v110
	ds_load_u8 v182, v110 offset:80
	ds_load_u8 v148, v110 offset:96
	ds_load_u8 v129, v110 offset:112
	ds_load_u8 v184, v110 offset:16
	ds_load_u8 v151, v110 offset:32
	ds_load_u8 v130, v110 offset:48
	v_lshl_or_b32 v39, v39, 16, v38
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v133, v132, v131, 0xc0c0004
	ds_load_u8 v134, v110 offset:192
	ds_load_u8 v135, v110 offset:128
	ds_load_u8 v185, v110 offset:208
	ds_load_u8 v188, v110 offset:144
	ds_load_u8 v153, v110 offset:224
	ds_load_u8 v156, v110 offset:160
	ds_load_u8 v131, v110 offset:240
	ds_load_u8 v132, v110 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v134, 16, v133
	ds_load_u8 v239, v110 offset:960
	ds_load_u8 v240, v110 offset:896
	ds_load_u8 v222, v110 offset:1024
	ds_load_u8 v191, v110 offset:976
	ds_load_u8 v192, v110 offset:912
	ds_load_u8 v158, v110 offset:992
	ds_load_u8 v160, v110 offset:928
	ds_load_u8 v133, v110 offset:944
	ds_load_u8 v243, v110 offset:832
	ds_load_u8 v244, v110 offset:768
	ds_load_u8 v196, v110 offset:848
	ds_load_u8 v198, v110 offset:784
	ds_load_u8 v163, v110 offset:864
	ds_load_u8 v164, v110 offset:800
	ds_load_u8 v134, v110 offset:880
	ds_load_u8 v135, v110 offset:816
	ds_load_u8 v245, v110 offset:704
	ds_load_u8 v246, v110 offset:640
	ds_load_u8 v199, v110 offset:720
	ds_load_u8 v200, v110 offset:656
	ds_load_u8 v167, v110 offset:736
	ds_load_u8 v168, v110 offset:672
	ds_load_u8 v136, v110 offset:752
	ds_load_u8 v137, v110 offset:688
	ds_load_u8 v247, v110 offset:576
	ds_load_u8 v248, v110 offset:512
	ds_load_u8 v203, v110 offset:592
	ds_load_u8 v204, v110 offset:528
	ds_load_u8 v171, v110 offset:608
	ds_load_u8 v172, v110 offset:544
	ds_load_u8 v139, v110 offset:624
	ds_load_u8 v141, v110 offset:560
	ds_load_u8 v232, v110 offset:1216
	ds_load_u8 v234, v110 offset:1280
	ds_load_u8 v205, v110 offset:1232
	ds_load_u8 v206, v110 offset:1168
	ds_load_u8 v173, v110 offset:1248
	ds_load_u8 v174, v110 offset:1184
	ds_load_u8 v138, v110 offset:1264
	ds_load_u8 v140, v110 offset:1200
	ds_load_u8 v236, v110 offset:1152
	ds_load_u8 v237, v110 offset:1088
	ds_load_u8 v207, v110 offset:1104
	ds_load_u8 v208, v110 offset:1040
	ds_load_u8 v177, v110 offset:1120
	ds_load_u8 v178, v110 offset:1056
	ds_load_u8 v144, v110 offset:1136
	ds_load_u8 v145, v110 offset:1072
	ds_load_u8 v238, v110 offset:1472
	ds_load_u8 v221, v110 offset:1536
	ds_load_u8 v209, v110 offset:1488
	ds_load_u8 v210, v110 offset:1424
	ds_load_u8 v181, v110 offset:1504
	ds_load_u8 v183, v110 offset:1440
	ds_load_u8 v149, v110 offset:1520
	ds_load_u8 v150, v110 offset:1456
	ds_load_u8 v241, v110 offset:1408
	ds_load_u8 v242, v110 offset:1344
	ds_load_u8 v211, v110 offset:1360
	ds_load_u8 v213, v110 offset:1296
	ds_load_u8 v186, v110 offset:1376
	ds_load_u8 v189, v110 offset:1312
	ds_load_u8 v154, v110 offset:1392
	ds_load_u8 v157, v110 offset:1328
	ds_load_u8 v223, v110 offset:1984
	ds_load_u8 v212, v110 offset:2000
	ds_load_u8 v214, v110 offset:1936
	ds_load_u8 v187, v110 offset:2016
	ds_load_u8 v190, v110 offset:1952
	s_waitcnt vmcnt(0)
	ds_load_u8 v162, v17
	scratch_load_b32 v17, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v152, v17
	ds_load_u8 v155, v110 offset:1968
	ds_load_u8 v226, v110 offset:1920
	ds_load_u8 v228, v110 offset:1856
	ds_load_u8 v215, v110 offset:1872
	ds_load_u8 v216, v110 offset:1808
	ds_load_u8 v193, v110 offset:1888
	ds_load_u8 v194, v110 offset:1824
	ds_load_u8 v159, v110 offset:1904
	ds_load_u8 v161, v110 offset:1840
	ds_load_u8 v230, v110 offset:1728
	ds_load_u8 v231, v110 offset:1792
	ds_load_u8 v217, v110 offset:1744
	ds_load_u8 v218, v110 offset:1680
	ds_load_u8 v195, v110 offset:1760
	ds_load_u8 v197, v110 offset:1696
	ds_load_u8 v165, v110 offset:1776
	ds_load_u8 v166, v110 offset:1712
	ds_load_u8 v233, v110 offset:1664
	ds_load_u8 v235, v110 offset:1600
	ds_load_u8 v219, v110 offset:1616
	ds_load_u8 v220, v110 offset:1552
	ds_load_u8 v201, v110 offset:1632
	ds_load_u8 v202, v110 offset:1568
	ds_load_u8 v169, v110 offset:1648
	ds_load_u8 v170, v110 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v112, v224
	ds_store_b8 v112, v40 offset:256
	ds_store_b8 v112, v41 offset:512
	ds_store_b8 v112, v107 offset:1024
	ds_store_b8 v112, v225 offset:1280
	ds_store_b8 v112, v227 offset:1536
	ds_store_b8 v112, v249 offset:2048
	ds_store_b8 v112, v250 offset:2304
	ds_store_b8 v112, v251 offset:2560
	ds_store_b8 v112, v253 offset:3072
	ds_store_b8 v112, v254 offset:3328
	ds_store_b8 v112, v255 offset:3584
	ds_store_b8 v112, v109 offset:4096
	ds_store_b8 v112, v10 offset:4352
	ds_store_b8 v112, v115 offset:4608
	ds_store_b8 v112, v117 offset:5120
	ds_store_b8 v112, v118 offset:5376
	ds_store_b8 v112, v119 offset:5632
	ds_store_b8 v112, v121 offset:6144
	ds_store_b8 v112, v122 offset:6400
	ds_store_b8 v112, v123 offset:6656
	ds_store_b8 v112, v13 offset:7168
	ds_store_b8 v112, v14 offset:7424
	ds_store_b8 v112, v15 offset:7680
	ds_store_b8 v113, v106
	ds_store_b8 v114, v229
	scratch_load_b32 v10, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v10, v252
	scratch_load_b32 v10, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v10, v108
	scratch_load_b32 v10, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v10, v116
	scratch_load_b32 v10, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v10, v120
	scratch_load_b32 v10, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v10, v12
	scratch_load_b32 v10, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v10, v16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v10, v111 offset:1280
	ds_load_u8 v12, v111 offset:1024
	ds_load_u8 v224, v111 offset:1920
	ds_load_u8 v225, v111 offset:1664
	ds_load_u8 v227, v111 offset:1408
	ds_load_u8 v229, v111 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v249, v12, v10, 0xc0c0004
	ds_load_u8 v10, v111 offset:1792
	ds_load_u8 v12, v111 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v224, v225, v224, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v111 offset:256
	ds_load_u8 v13, v111
	ds_load_u8 v14, v111 offset:896
	ds_load_u8 v15, v111 offset:640
	ds_load_u8 v16, v111 offset:384
	ds_load_u8 v40, v111 offset:128
	v_lshl_or_b32 v250, v10, 16, v249
	v_perm_b32 v10, v244, v243, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v111 offset:768
	ds_load_u8 v41, v111 offset:512
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v40, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v41, v13, 0xc0c0004
	v_perm_b32 v41, v246, v245, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v249, v13, 16, v12
	v_perm_b32 v12, v240, v239, 0xc0c0004
	v_perm_b32 v13, v248, v247, 0xc0c0004
	v_lshl_or_b32 v240, v12, 16, v10
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v239, v41, 16, v13
	ds_load_u8 v10, v111 offset:3328
	ds_load_u8 v12, v111 offset:3072
	ds_load_u8 v13, v111 offset:3968
	ds_load_u8 v41, v111 offset:3712
	ds_load_u8 v106, v111 offset:3456
	ds_load_u8 v107, v111 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v111 offset:3840
	ds_load_u8 v108, v111 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v13, v41, v13, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v108, v12, 0xc0c0004
	ds_load_u8 v108, v111 offset:2304
	ds_load_u8 v109, v111 offset:2048
	ds_load_u8 v115, v111 offset:2944
	ds_load_u8 v116, v111 offset:2688
	ds_load_u8 v117, v111 offset:2432
	ds_load_u8 v118, v111 offset:2176
	v_lshl_or_b32 v244, v12, 16, v10
	v_perm_b32 v10, v234, v242, 0xc0c0004
	v_perm_b32 v12, v241, v238, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v242, v12, 16, v10
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v111 offset:2816
	ds_load_u8 v119, v111 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v119, v109, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v243, v109, 16, v108
	v_perm_b32 v108, v222, v237, 0xc0c0004
	v_perm_b32 v109, v236, v232, 0xc0c0004
	v_lshl_or_b32 v241, v109, 16, v108
	ds_load_u8 v10, v111 offset:5376
	ds_load_u8 v12, v111 offset:5120
	ds_load_u8 v108, v111 offset:6016
	ds_load_u8 v109, v111 offset:5760
	ds_load_u8 v119, v111 offset:5504
	ds_load_u8 v120, v111 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v111 offset:5888
	ds_load_u8 v121, v111 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v121, v12, 0xc0c0004
	ds_load_u8 v121, v111 offset:4352
	ds_load_u8 v122, v111 offset:4096
	ds_load_u8 v123, v111 offset:4992
	ds_load_u8 v222, v111 offset:4736
	ds_load_u8 v255, v111 offset:4480
	ds_load_u8 v17, v111 offset:4224
	v_lshl_or_b32 v246, v12, 16, v10
	v_perm_b32 v10, v231, v228, 0xc0c0004
	v_perm_b32 v12, v226, v223, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v248, v12, 16, v10
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v111 offset:4864
	ds_load_u8 v232, v111 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v232, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v245, v122, 16, v121
	v_perm_b32 v121, v221, v235, 0xc0c0004
	v_perm_b32 v122, v233, v230, 0xc0c0004
	v_lshl_or_b32 v247, v122, 16, v121
	ds_load_u8 v10, v111 offset:7424
	ds_load_u8 v12, v111 offset:7168
	ds_load_u8 v121, v111 offset:8064
	ds_load_u8 v122, v111 offset:7808
	ds_load_u8 v221, v111 offset:7552
	ds_load_u8 v223, v111 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v111 offset:7936
	ds_load_u8 v226, v111 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v226, v12, 0xc0c0004
	ds_load_u8 v226, v111 offset:6400
	ds_load_u8 v228, v111 offset:6144
	ds_load_u8 v18, v111 offset:7040
	ds_load_u8 v19, v111 offset:6784
	ds_load_u8 v20, v111 offset:6528
	ds_load_u8 v21, v111 offset:6272
	v_lshl_or_b32 v252, v12, 16, v10
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v226, v228, v226, 0xc0c0004
	ds_load_u8 v228, v111 offset:6912
	ds_load_u8 v230, v111 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v228, v230, v228, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[230:237], v[249:250], v[38:39], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v251, v228, 16, v226
	v_wmma_i32_16x16x16_iu4 v[230:237], v[243:244], v[239:240], v[230:237] neg_lo:[1,1,0]
	v_perm_b32 v226, v229, v227, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[230:237], v[245:246], v[241:242], v[230:237] neg_lo:[1,1,0]
	v_lshl_or_b32 v238, v224, 16, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[230:237], v[251:252], v[247:248], v[230:237] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v27, v237
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v237, v14, 16, v16
	v_perm_b32 v14, v107, v106, 0xc0c0004
	v_perm_b32 v16, v116, v115, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v10, v230
	v_cvt_f32_i32_e32 v12, v231
	v_cvt_f32_i32_e32 v22, v232
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v254, v13, 16, v14
	v_perm_b32 v13, v120, v119, 0xc0c0004
	v_perm_b32 v14, v109, v108, 0xc0c0004
	v_lshl_or_b32 v253, v16, 16, v15
	v_perm_b32 v16, v222, v123, 0xc0c0004
	v_perm_b32 v15, v17, v255, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v23, v233
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v41, v14, 16, v13
	v_perm_b32 v13, v223, v221, 0xc0c0004
	v_dual_mov_b32 v228, s47 :: v_dual_mov_b32 v227, s46
	v_dual_mov_b32 v226, s45 :: v_dual_mov_b32 v225, s44
	v_dual_mov_b32 v224, s43 :: v_dual_mov_b32 v223, s42
	v_dual_mov_b32 v222, s41 :: v_dual_mov_b32 v221, s40
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v24, v234
	v_cvt_f32_i32_e32 v25, v235
	v_cvt_f32_i32_e32 v26, v236
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v40, v16, 16, v15
	v_perm_b32 v15, v21, v20, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[229:236], v[237:238], v[38:39], v[221:228] neg_lo:[1,1,0]
	v_perm_b32 v21, v176, v175, 0xc0c0004
	v_perm_b32 v38, v180, v179, 0xc0c0004
	v_perm_b32 v108, v184, v182, 0xc0c0004
	v_perm_b32 v109, v188, v185, 0xc0c0004
	v_perm_b32 v115, v200, v199, 0xc0c0004
	v_perm_b32 v14, v122, v121, 0xc0c0004
	v_lshl_or_b32 v39, v38, 16, v21
	v_perm_b32 v21, v198, v196, 0xc0c0004
	v_lshl_or_b32 v38, v109, 16, v108
	v_perm_b32 v108, v192, v191, 0xc0c0004
	v_perm_b32 v109, v204, v203, 0xc0c0004
	v_perm_b32 v16, v19, v18, 0xc0c0004
	v_lshl_or_b32 v107, v14, 16, v13
	v_wmma_i32_16x16x16_iu4 v[229:236], v[253:254], v[239:240], v[229:236] neg_lo:[1,1,0]
	v_lshl_or_b32 v176, v108, 16, v21
	v_lshl_or_b32 v175, v115, 16, v109
	v_perm_b32 v21, v213, v211, 0xc0c0004
	v_perm_b32 v108, v210, v209, 0xc0c0004
	v_perm_b32 v109, v208, v207, 0xc0c0004
	v_perm_b32 v115, v206, v205, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[203:210], v[249:250], v[38:39], v[221:228] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v180, v108, 16, v21
	v_perm_b32 v21, v216, v215, 0xc0c0004
	v_lshl_or_b32 v179, v115, 16, v109
	v_perm_b32 v108, v214, v212, 0xc0c0004
	v_perm_b32 v109, v220, v219, 0xc0c0004
	v_perm_b32 v115, v218, v217, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[203:210], v[243:244], v[175:176], v[203:210] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v16, 16, v15
	v_lshl_or_b32 v185, v108, 16, v21
	v_wmma_i32_16x16x16_iu4 v[229:236], v[40:41], v[241:242], v[229:236] neg_lo:[1,1,0]
	v_lshl_or_b32 v184, v115, 16, v109
	v_wmma_i32_16x16x16_iu4 v[203:210], v[245:246], v[179:180], v[203:210] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[229:236], v[106:107], v[247:248], v[229:236] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[203:210], v[251:252], v[184:185], v[203:210] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v17, v230
	v_cvt_f32_i32_e32 v18, v231
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v21, v203
	v_cvt_f32_i32_e32 v108, v204
	v_cvt_f32_i32_e32 v109, v205
	v_cvt_f32_i32_e32 v115, v206
	v_cvt_f32_i32_e32 v116, v207
	v_cvt_f32_i32_e32 v117, v208
	v_cvt_f32_i32_e32 v118, v209
	v_cvt_f32_i32_e32 v119, v210
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[203:210], v[237:238], v[38:39], v[221:228] neg_lo:[1,1,0]
	v_perm_b32 v38, v143, v142, 0xc0c0004
	v_perm_b32 v39, v147, v146, 0xc0c0004
	v_perm_b32 v142, v151, v148, 0xc0c0004
	v_perm_b32 v143, v156, v153, 0xc0c0004
	v_perm_b32 v146, v172, v171, 0xc0c0004
	v_perm_b32 v147, v168, v167, 0xc0c0004
	v_lshl_or_b32 v39, v39, 16, v38
	v_wmma_i32_16x16x16_iu4 v[203:210], v[253:254], v[175:176], v[203:210] neg_lo:[1,1,0]
	v_lshl_or_b32 v38, v143, 16, v142
	v_perm_b32 v142, v164, v163, 0xc0c0004
	v_perm_b32 v143, v160, v158, 0xc0c0004
	v_perm_b32 v148, v178, v177, 0xc0c0004
	v_perm_b32 v151, v174, v173, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[171:178], v[249:250], v[38:39], v[221:228] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v143, v143, 16, v142
	v_lshl_or_b32 v142, v147, 16, v146
	v_perm_b32 v146, v189, v186, 0xc0c0004
	v_perm_b32 v147, v183, v181, 0xc0c0004
	v_perm_b32 v153, v202, v201, 0xc0c0004
	v_perm_b32 v156, v197, v195, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[171:178], v[243:244], v[142:143], v[171:178] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[203:210], v[40:41], v[179:180], v[203:210] neg_lo:[1,1,0]
	v_lshl_or_b32 v147, v147, 16, v146
	v_lshl_or_b32 v146, v151, 16, v148
	v_perm_b32 v148, v194, v193, 0xc0c0004
	v_perm_b32 v151, v190, v187, 0xc0c0004
	v_lshl_or_b32 v163, v156, 16, v153
	v_wmma_i32_16x16x16_iu4 v[203:210], v[106:107], v[184:185], v[203:210] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[171:178], v[245:246], v[146:147], v[171:178] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v19, v232
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v164, v151, 16, v148
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v13, v229
	v_cvt_f32_i32_e32 v120, v203
	v_cvt_f32_i32_e32 v180, v205
	v_cvt_f32_i32_e32 v16, v236
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[171:178], v[251:252], v[163:164], v[171:178] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v179, v204
	v_cvt_f32_i32_e32 v182, v206
	v_cvt_f32_i32_e32 v121, v208
	v_cvt_f32_i32_e32 v14, v234
	v_cvt_f32_i32_e32 v148, v171
	v_cvt_f32_i32_e32 v151, v172
	v_cvt_f32_i32_e32 v153, v173
	v_cvt_f32_i32_e32 v156, v174
	v_cvt_f32_i32_e32 v158, v175
	v_cvt_f32_i32_e32 v160, v176
	v_cvt_f32_i32_e32 v167, v177
	v_cvt_f32_i32_e32 v168, v178
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[171:178], v[237:238], v[38:39], v[221:228] neg_lo:[1,1,0]
	v_perm_b32 v38, v126, v125, 0xc0c0004
	v_perm_b32 v39, v128, v127, 0xc0c0004
	v_perm_b32 v125, v130, v129, 0xc0c0004
	v_perm_b32 v126, v132, v131, 0xc0c0004
	v_perm_b32 v127, v135, v134, 0xc0c0004
	v_perm_b32 v128, v133, v162, 0xc0c0004
	v_lshl_or_b32 v39, v39, 16, v38
	v_wmma_i32_16x16x16_iu4 v[171:178], v[253:254], v[142:143], v[171:178] neg_lo:[1,1,0]
	v_lshl_or_b32 v38, v126, 16, v125
	v_perm_b32 v125, v141, v139, 0xc0c0004
	v_perm_b32 v126, v137, v136, 0xc0c0004
	v_lshl_or_b32 v134, v128, 16, v127
	v_perm_b32 v127, v145, v144, 0xc0c0004
	v_perm_b32 v128, v140, v138, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[171:178], v[40:41], v[146:147], v[171:178] neg_lo:[1,1,0]
	v_lshl_or_b32 v133, v126, 16, v125
	v_perm_b32 v125, v157, v154, 0xc0c0004
	v_perm_b32 v126, v150, v149, 0xc0c0004
	v_lshl_or_b32 v135, v128, 16, v127
	v_perm_b32 v127, v161, v159, 0xc0c0004
	v_perm_b32 v128, v155, v152, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[171:178], v[106:107], v[163:164], v[171:178] neg_lo:[1,1,0]
	v_lshl_or_b32 v136, v126, 16, v125
	v_perm_b32 v125, v170, v169, 0xc0c0004
	v_perm_b32 v126, v166, v165, 0xc0c0004
	v_lshl_or_b32 v138, v128, 16, v127
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v164, v173
	v_cvt_f32_i32_e32 v163, v172
	v_cvt_f32_i32_e32 v142, v171
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v137, v126, 16, v125
	v_wmma_i32_16x16x16_iu4 v[125:132], v[249:250], v[38:39], v[221:228] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v171, v174
	v_cvt_f32_i32_e32 v147, v178
	v_cvt_f32_i32_e32 v123, v210
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[125:132], v[243:244], v[133:134], v[125:132] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v122, v209
	v_cvt_f32_i32_e32 v184, v207
	v_cvt_f32_i32_e32 v15, v235
	v_cvt_f32_i32_e32 v20, v233
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[125:132], v[245:246], v[135:136], v[125:132] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v143, v176
	v_cvt_f32_i32_e32 v146, v177
	v_cvt_f32_i32_e32 v172, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[125:132], v[251:252], v[137:138], v[125:132] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v139, v125
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v140, v126
	v_cvt_f32_i32_e32 v141, v127
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v144, v128
	v_cvt_f32_i32_e32 v145, v129
	v_cvt_f32_i32_e32 v149, v130
	v_cvt_f32_i32_e32 v150, v131
	v_cvt_f32_i32_e32 v152, v132
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[125:132], v[237:238], v[38:39], v[221:228] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[125:132], v[253:254], v[133:134], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[125:132], v[40:41], v[135:136], v[125:132] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[125:132], v[106:107], v[137:138], v[125:132] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v38, v125
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v125, off, off         ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v106, v126
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v126, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v107, v127
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v127, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v133, v128
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v128, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v39, v130
	v_cvt_f32_i32_e32 v134, v129
	.loc	1 1213 40                       ; ragged.py:1213:40
	scratch_load_b64 v[129:130], off, off offset:16 ; 8-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v40, v131
	v_cvt_f32_i32_e32 v41, v132
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v125, s78, v125, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v126, s78, v126, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v127, s78, v127, 1
	v_cndmask_b32_e32 v125, 0x80000000, v125, vcc_lo
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v128, s78, v128, 1
	v_cndmask_b32_e64 v126, 0x80000000, v126, s0
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s78, s78, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v129, v129, s3, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v127, 0x80000000, v127, s1
	v_cndmask_b32_e64 v128, 0x80000000, v128, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v129, v129, s[56:59], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v125, v125, s[52:55], 0 offen
	buffer_load_u16 v135, v126, s[52:55], 0 offen
	buffer_load_u16 v136, v127, s[52:55], 0 offen
	buffer_load_u16 v137, v128, s[52:55], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v127, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s78, s72
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v126, 16, v129
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v138, 16, v125
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v10, v138, v10
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v127, v126
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[125:128], v124
	ds_load_b128 v[129:132], v124 offset:16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v105, v10, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v10, v138, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v104, v10, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v10, v138, v22
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v103, v10, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v10, v138, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v102, v10, v128
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v10, 16, v135
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v12, v10, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v89, v12, v125 :: v_dual_mul_f32 v12, v10, v108
	v_fmac_f32_e32 v88, v12, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v12, v10, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v87, v12, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v12, v10, v115
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v86, v12, v128
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v12, 16, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v12, v148
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v73, v21, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v12, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v72, v21, v126 :: v_dual_mul_f32 v21, v12, v153
	v_fmac_f32_e32 v71, v21, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v12, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v70, v21, v128 :: v_dual_lshlrev_b32 v21, 16, v137
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v21, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v57, v22, v125 :: v_dual_mul_f32 v22, v21, v140
	v_fmac_f32_e32 v56, v22, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v21, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v55, v22, v127 :: v_dual_mul_f32 v22, v21, v144
	v_fmac_f32_e32 v54, v22, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v138, v24
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v101, v22, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v22, v138, v25 :: v_dual_mul_f32 v23, v147, v12
	v_dual_mul_f32 v25, v40, v21 :: v_dual_fmac_f32 v100, v22, v130
	v_mul_f32_e32 v22, v138, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v26, v41, v21 :: v_dual_fmac_f32 v99, v22, v131
	v_mul_f32_e32 v22, v138, v27
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v98, v22, v132
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v10, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v85, v22, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v10, v117
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v84, v22, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v10, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v83, v22, v131
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v22, v10, v119 :: v_dual_mul_f32 v13, v13, v138
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v82, v22, v132
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v12, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v69, v22, v129 :: v_dual_mul_f32 v22, v12, v160
	v_fmac_f32_e32 v68, v22, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v12, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v67, v22, v131 :: v_dual_mul_f32 v22, v12, v168
	v_fmac_f32_e32 v66, v22, v132
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v21, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v53, v22, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v21, v149
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v52, v22, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v22, v21, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v51, v22, v131 :: v_dual_mul_f32 v22, v21, v152
	v_fmac_f32_e32 v50, v22, v132
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[125:128], v124 offset:512
	ds_load_b128 v[129:132], v124 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v24, v39, v21
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v92, v13, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v138, v17
	v_mul_f32_e32 v17, v121, v10
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v43, v26, v132
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v22, v146, v12 :: v_dual_fmac_f32 v45, v24, v130
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v97, v13, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v138, v18
	v_mul_f32_e32 v18, v122, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v76, v17, v130 :: v_dual_fmac_f32 v59, v22, v131
	v_fmac_f32_e32 v58, v23, v132
	v_fmac_f32_e32 v96, v13, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v138, v19
	v_mul_f32_e32 v19, v123, v10
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v75, v18, v131
	v_fmac_f32_e32 v44, v25, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v95, v13, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v13, v120, v10 :: v_dual_fmac_f32 v74, v19, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v81, v13, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v10, v179
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v80, v13, v126 :: v_dual_mul_f32 v13, v10, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v79, v13, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v10, v182
	v_mul_f32_e32 v10, v10, v184
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v78, v13, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v142, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v65, v13, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v12, v163
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v64, v13, v126 :: v_dual_mul_f32 v13, v12, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v13, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v12, v171
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v62, v13, v128 :: v_dual_mul_f32 v13, v38, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v13, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v21, v106
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v48, v13, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v21, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v47, v13, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v21, v133
	v_mul_f32_e32 v21, v21, v134
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v46, v13, v128 :: v_dual_mul_f32 v13, v14, v138
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v14, v15, v138
	v_dual_mul_f32 v15, v16, v138 :: v_dual_mul_f32 v16, v138, v20
	v_mul_f32_e32 v20, v143, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v12, v12, v172 :: v_dual_fmac_f32 v93, v13, v130
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v90, v15, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v94, v16, v129
	v_fmac_f32_e32 v77, v10, v129
	v_fmac_f32_e32 v61, v12, v129
	v_dual_fmac_f32 v91, v14, v131 :: v_dual_fmac_f32 v60, v20, v130
	v_fmac_f32_e32 v42, v21, v129
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v3, v9 :: v_dual_and_b32 v108, 0xf0, v0
	v_and_b32_e32 v107, 15, v0
.LBB0_7:                                ; %._crit_edge
.Ltmp3:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v1, |v104|, |v104|
	v_max_f32_e64 v2, |v105|, |v105|
	v_max3_f32 v4, |v102|, |v101|, |v100|
	v_max3_f32 v5, |v97|, |v96|, |v95|
	v_max3_f32 v6, |v94|, |v93|, |v91|
	v_max_f32_e64 v7, |v89|, |v89|
	v_max_f32_e32 v1, v2, v1
	v_max_f32_e64 v2, |v88|, |v88|
	v_max3_f32 v10, |v80|, |v79|, |v78|
	v_max3_f32 v5, v5, v6, |v90|
	v_max_f32_e64 v6, |v73|, |v73|
	v_max3_f32 v11, |v77|, |v76|, |v75|
	v_max_f32_e32 v2, v7, v2
	v_max3_f32 v1, v1, |v103|, v4
	v_max_f32_e64 v4, |v72|, |v72|
	v_max3_f32 v7, |v86|, |v85|, |v84|
	v_max3_f32 v12, |v64|, |v63|, |v62|
	v_max3_f32 v13, |v61|, |v60|, |v59|
	v_max3_f32 v8, |v99|, |v98|, |v92|
	v_max3_f32 v9, |v83|, |v82|, |v81|
	v_max3_f32 v2, v2, |v87|, v7
	v_max3_f32 v7, v10, v11, |v74|
	v_max_f32_e64 v11, |v56|, |v56|
	v_max_f32_e32 v4, v6, v4
	v_max3_f32 v6, |v70|, |v69|, |v68|
	v_max3_f32 v10, |v67|, |v66|, |v65|
	v_max3_f32 v1, v1, v8, v5
	v_max3_f32 v2, v2, v9, v7
	v_max3_f32 v8, |v48|, |v47|, |v46|
	v_max3_f32 v4, v4, |v71|, v6
	v_max3_f32 v6, v12, v13, |v58|
	v_max_f32_e64 v12, |v57|, |v57|
	v_max3_f32 v9, |v42|, |v45|, |v44|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v7, |v51|, |v50|, |v49|
	v_max3_f32 v4, v4, v10, v6
	v_max_f32_e32 v5, v12, v11
	v_max3_f32 v6, |v54|, |v53|, |v52|
	v_max3_f32 v8, v8, v9, |v43|
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v10, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v13, 3, v0
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, |v55|, v6
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v6, v1, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v11, v11, v11
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v14, 0x80, v0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, v7, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v6, v6, v6
	v_dual_max_f32 v10, v2, v10 :: v_dual_max_f32 v11, v4, v11
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v4, v13, 9, 0
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v9, v1, v6 :: v_dual_and_b32 v8, 0x60, v0
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v6, 5, v13
	v_permlanex16_b32 v1, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 4, v0
	v_and_b32_e32 v15, 8, v0
	v_lshrrev_b32_e32 v17, 3, v14
	v_xor_b32_e32 v16, v6, v8
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v7, 4, v0
	v_lshl_add_u32 v4, v2, 2, v4
	v_lshl_add_u32 v19, v2, 6, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_or_b32 v12, 0x680, v7, v6
	v_lshlrev_b32_e32 v7, 1, v14
	v_lshl_add_u32 v4, v15, 4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v18, v12, v8
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v5, v1
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v4, v7, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v4, v19, v17, v18
	ds_store_b128 v1, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v1, v9 :: v_dual_mov_b32 v4, v10
	v_mov_b32_e32 v5, v11
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_max_f32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v16, v12, v12
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v1, v9, v1 :: v_dual_add_nc_u32 v14, 0, v14
	v_dual_max_f32 v4, v10, v4 :: v_dual_max_f32 v9, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v10, v12, v12 :: v_dual_max_f32 v5, v5, v5
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v12, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v11, v1 :: v_dual_max_f32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v9, v5
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v12
	v_dual_max_f32 v9, v16, v10 :: v_dual_mov_b32 v10, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v11, v11, v11 :: v_dual_mov_b32 v16, v9
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v11
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v10, v10
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v12, v1 :: v_dual_max_f32 v11, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v16, v4 :: v_dual_max_f32 v5, v5, v10
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v17, v9, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v9, v12, v12
	v_dual_max_f32 v10, v16, v16 :: v_dual_mov_b32 v11, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v18, v17
	v_lshrrev_b32_e32 v16, 1, v8
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v4, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v1, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v1, v11, v11 :: v_dual_max_f32 v4, v18, v18
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v15, 3, v15
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v5, v1
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 5, v2
	v_lshl_add_u32 v2, v13, 4, 0
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v17, v4
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v4, v14, v16, v15
.Ltmp41:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v5, 4, v108
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v2, v1, v15
	ds_store_b128 v4, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v1
.Ltmp43:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v17, 16, v5
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v9, v9
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v20, v10, v10
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 32, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v4, 0x2b8cbccc, v1 :: v_dual_max_f32 v11, 0x2b8cbccc, v11
	v_max_f32_e32 v20, 0x2b8cbccc, v20
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v15, null, 0x40e00000, 0x40e00000, v4
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v11
	v_div_scale_f32 v18, vcc_lo, v4, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v16, v15
	v_rcp_f32_e32 v21, v19
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s38, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s39, 0, s0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[68:69], v[1:2]
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v13, -v15, v16, 1.0
	v_fmac_f32_e32 v16, v13, v16
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v13, s0, s38, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v14, null, s39, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v22, v18, v16
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v9, s0, s38, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v10, null, s39, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[70:71], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v17, -v15, v22, v18
	v_fma_f32 v2, -v19, v21, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[13:14]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[68:69], v[13:14]
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_mov_b16_e32 v14.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[70:71], v[9:10]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v21, v2, v21
	v_div_scale_f32 v2, s6, v11, 0x40e00000, v11
	v_max_f32_e32 v1, v12, v12
	v_fmac_f32_e32 v22, v17, v16
	v_div_scale_f32 v12, null, 0x40e00000, 0x40e00000, v20
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[68:69], v[9:10]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v17, 0x2b8cbccc, v1
	v_fma_f32 v1, -v15, v22, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v15, v12
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v1, v1, v16, v22
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v22, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v13, -v12, v15, 1.0
	v_div_fixup_f32 v1, v1, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v15, v13, v15
	v_div_scale_f32 v13, s7, v20, 0x40e00000, v20
	v_fma_f32 v23, -v18, v22, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v24, v13, v15
	v_mul_f32_e32 v16, v2, v21
	v_fma_f32 v9, -v12, v24, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v4, -v19, v16, v2
	v_fmac_f32_e32 v16, v4, v21
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v4.l, v1.h
	v_mov_b16_e32 v4.h, v14.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v24, v9, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v2, -v19, v16, v2
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v12, -v12, v24, v13
	v_div_fmas_f32 v16, v2, v21, v16
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v1, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, s8, v17, 0x40e00000, v17
	v_div_fixup_f32 v11, v16, 0x40e00000, v11
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v27, 0xffff0000, v4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s38, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v10, v23, v22
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v14.l, v11.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v28, null, v27, v27, v100
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s39, 0, s6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v9, -v18, v10, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v29, v28
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v16, 1, v14
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[68:69], v[1:2]
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v13, null, v27, v27, v105
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v11, v16, 0x7fff
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fmac_f32_e32 v10, v9, v22
	v_div_fmas_f32 v9, v12, v15, v24
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v12, v13
	v_div_scale_f32 v21, null, v27, v27, v102
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v15, -v18, v10, v23
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v23, 0xffff0000, v1
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v9, v9, 0x40e00000, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v26, null, v27, v27, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v10, v15, v22, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v15, null, v27, v27, v104
	v_fma_f32 v18, -v13, v12, 1.0
	v_div_scale_f32 v22, s8, v104, v27, v104
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v19, v15
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v10, v10, 0x40e00000, v17
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v17.l, v9.h
	v_mov_b16_e32 v17.h, v14.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v12, v18, v12
	v_div_scale_f32 v18, vcc_lo, v105, v27, v105
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v14.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v2, 1, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v17, null, v27, v27, v103
	v_fma_f32 v16, -v15, v19, 1.0
	v_mul_f32_e32 v11, v18, v12
	v_div_scale_f32 v33, null, v27, v27, v96
	v_div_scale_f32 v31, null, v27, v27, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v19, v16, v19
	v_rcp_f32_e32 v16, v17
	v_fma_f32 v20, -v13, v11, v18
	v_rcp_f32_e32 v35, v33
	v_rcp_f32_e32 v32, v31
	v_div_scale_f32 v37, null, v27, v27, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_dual_fmac_f32 v11, v20, v12 :: v_dual_mul_f32 v20, v22, v19
	v_fma_f32 v24, -v17, v16, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v13, -v13, v11, v18
	v_fma_f32 v18, -v15, v20, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v31, v32, 1.0
	v_fmac_f32_e32 v16, v24, v16
	v_div_scale_f32 v24, s9, v103, v27, v103
	v_div_fmas_f32 v11, v13, v12, v11
	v_fmac_f32_e32 v20, v18, v19
	v_rcp_f32_e32 v18, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v13, v24, v16
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v9, v9, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v12, -v15, v20, v22
	v_div_fixup_f32 v11, v11, v27, v105
	v_fma_f32 v15, -v17, v13, v24
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v12, v12, v19, v20
	v_fma_f32 v30, -v26, v18, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v13, v15, v16
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v10, v14, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v14, v21
	v_div_scale_f32 v19, s8, v101, v27, v101
	v_fmac_f32_e32 v18, v30, v18
	v_fma_f32 v20, -v28, v29, 1.0
	v_fma_f32 v17, -v17, v13, v24
	v_div_scale_f32 v24, null, v27, v27, v99
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v29, v20, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v25, -v21, v14, 1.0
	v_div_scale_f32 v20, s11, v100, v27, v100
	v_div_fmas_f32 v13, v17, v16, v13
	v_div_scale_f32 v30, null, v27, v27, v98
	v_fmac_f32_e32 v14, v25, v14
	v_div_scale_f32 v25, s10, v102, v27, v102
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v10, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v12, v12, v27, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v22, v25, v14
	v_div_fixup_f32 v13, v13, v27, v103
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v15, -v21, v22, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v22, v15, v14
	v_mul_f32_e32 v15, v19, v18
	v_fma_f32 v16, -v21, v22, v25
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v17, -v26, v15, v19
	v_rcp_f32_e32 v21, v24
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v106, 0xffff0000, v9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v25, v20, v29
	v_div_fmas_f32 v14, v16, v14, v22
	v_fmac_f32_e32 v15, v17, v18
	v_rcp_f32_e32 v17, v30
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v16, -v28, v25, v20
	v_div_fixup_f32 v14, v14, v27, v102
	v_fma_f32 v19, -v26, v15, v19
	v_fma_f32 v22, -v24, v21, 1.0
	v_div_scale_f32 v26, null, v27, v27, v92
	v_fmac_f32_e32 v25, v16, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v15, v19, v18, v15
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, s9, v99, v27, v99
	v_fma_f32 v16, -v30, v17, 1.0
	v_fma_f32 v18, -v28, v25, v20
	v_rcp_f32_e32 v20, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v19, v22, v21
	v_div_scale_f32 v28, s8, v98, v27, v98
	v_fmac_f32_e32 v17, v16, v17
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v15, v15, v27, v101
	v_div_fmas_f32 v16, v18, v29, v25
	v_fma_f32 v18, -v24, v19, v22
	v_mul_f32_e32 v25, v28, v17
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v29, -v26, v20, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v16, v16, v27, v100
	v_fmac_f32_e32 v19, v18, v21
	v_fma_f32 v18, -v30, v25, v28
	v_fmac_f32_e32 v20, v29, v20
	v_div_scale_f32 v29, s10, v92, v27, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v22, -v24, v19, v22
	v_fmac_f32_e32 v25, v18, v17
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v18, v22, v21, v19
	v_fma_f32 v19, -v30, v25, v28
	v_fma_f32 v28, -v33, v35, 1.0
	v_div_scale_f32 v30, null, v27, v27, v95
	s_mov_b32 vcc_lo, s8
	v_dual_fmac_f32 v35, v28, v35 :: v_dual_fmac_f32 v32, v34, v32
	v_div_scale_f32 v34, s11, v97, v27, v97
	v_div_scale_f32 v28, s8, v96, v27, v96
	v_mul_f32_e32 v24, v29, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v22, v34, v32
	v_div_fmas_f32 v19, v19, v17, v25
	v_rcp_f32_e32 v25, v30
	v_div_fixup_f32 v17, v18, v27, v99
	v_fma_f32 v21, -v26, v24, v29
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v18, v19, v27, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v24, v21, v20
	v_fma_f32 v21, -v31, v22, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v19, -v26, v24, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v22, v21, v32 :: v_dual_mul_f32 v21, v28, v35
	v_fma_f32 v26, -v30, v25, 1.0
	v_div_scale_f32 v29, null, v27, v27, v94
	v_fmac_f32_e32 v25, v26, v25
	v_div_fmas_f32 v19, v19, v20, v24
	v_fma_f32 v20, -v31, v22, v34
	v_fma_f32 v24, -v33, v21, v28
	v_rcp_f32_e32 v26, v29
	v_div_scale_f32 v31, s9, v95, v27, v95
	v_div_scale_f32 v34, null, v27, v27, v93
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v21, v24, v35
	v_div_fmas_f32 v20, v20, v32, v22
	v_rcp_f32_e32 v24, v34
	v_mul_f32_e32 v22, v31, v25
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v32, -v29, v26, 1.0
	v_fma_f32 v28, -v33, v21, v28
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v19, v19, v27, v92
	v_fma_f32 v33, -v30, v22, v31
	v_fmac_f32_e32 v26, v32, v26
	v_div_scale_f32 v32, s10, v94, v27, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v34, v24, 1.0
	v_fmac_f32_e32 v22, v33, v25
	v_rcp_f32_e32 v33, v37
	v_div_fmas_f32 v21, v28, v35, v21
	v_mul_f32_e32 v28, v32, v26
	v_fmac_f32_e32 v24, v36, v24
	v_div_scale_f32 v35, s8, v93, v27, v93
	v_div_scale_f32 v36, null, v27, v27, v90
	v_fma_f32 v30, -v30, v22, v31
	v_fma_f32 v31, -v29, v28, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v38, v35, v24
	v_rcp_f32_e32 v39, v36
	v_fma_f32 v40, -v37, v33, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v28, v31, v26
	v_div_fmas_f32 v22, v30, v25, v22
	v_fma_f32 v25, -v34, v38, v35
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v30, s9, v91, v27, v91
	v_fma_f32 v29, -v29, v28, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v36, v39, 1.0
	v_fmac_f32_e32 v38, v25, v24
	v_mul_f32_e32 v32, v30, v33
	v_div_scale_f32 v40, null, v106, v106, v89
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v39, v31, v39
	v_div_scale_f32 v31, s11, v90, v27, v90
	v_div_fmas_f32 v25, v29, v26, v28
	v_fma_f32 v26, -v34, v38, v35
	v_fma_f32 v28, -v37, v32, v30
	v_rcp_f32_e32 v29, v40
	v_div_scale_f32 v35, null, v106, v106, v88
	v_mul_f32_e32 v34, v31, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v32, v28, v33
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v28, v35
	v_div_fmas_f32 v26, v26, v24, v38
	v_fma_f32 v38, -v36, v34, v31
	v_div_fixup_f32 v24, v25, v27, v94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v40, v29, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v25, v26, v27, v93
	v_fma_f32 v26, -v37, v32, v30
	v_dual_fmac_f32 v34, v38, v39 :: v_dual_fmac_f32 v29, v41, v29
	v_div_scale_f32 v30, s8, v89, v106, v89
	v_fma_f32 v37, -v35, v28, 1.0
	v_div_scale_f32 v38, null, v106, v106, v87
	v_div_fmas_f32 v26, v26, v33, v32
	v_fma_f32 v31, -v36, v34, v31
	v_mul_f32_e32 v32, v30, v29
	v_fmac_f32_e32 v28, v37, v28
	v_rcp_f32_e32 v33, v38
	v_div_scale_f32 v36, s9, v88, v106, v88
	v_div_scale_f32 v37, null, v106, v106, v86
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v20, v20, v27, v97
	v_div_fmas_f32 v31, v31, v39, v34
	v_fma_f32 v34, -v40, v32, v30
	v_mul_f32_e32 v39, v36, v28
	v_rcp_f32_e32 v92, v37
	v_div_fixup_f32 v21, v21, v27, v96
	v_div_fixup_f32 v22, v22, v27, v95
	v_fma_f32 v41, -v38, v33, 1.0
	v_div_fixup_f32 v26, v26, v27, v91
	v_div_fixup_f32 v27, v31, v27, v90
	v_fmac_f32_e32 v32, v34, v29
	v_fma_f32 v31, -v35, v39, v36
	v_fmac_f32_e32 v33, v41, v33
	v_div_scale_f32 v34, s10, v87, v106, v87
	v_div_scale_f32 v41, null, v106, v106, v85
	v_fma_f32 v90, -v37, v92, 1.0
	v_fma_f32 v30, -v40, v32, v30
	v_fmac_f32_e32 v39, v31, v28
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v31, v34, v33
	v_rcp_f32_e32 v40, v41
	v_fmac_f32_e32 v92, v90, v92
	v_div_scale_f32 v90, s11, v86, v106, v86
	v_div_fmas_f32 v29, v30, v29, v32
	v_fma_f32 v30, -v35, v39, v36
	v_div_scale_f32 v91, null, v106, v106, v84
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v32, -v38, v31, v34
	v_mul_f32_e32 v35, v90, v92
	v_div_fmas_f32 v30, v30, v28, v39
	v_rcp_f32_e32 v39, v91
	v_fma_f32 v36, -v41, v40, 1.0
	v_fmac_f32_e32 v31, v32, v33
	v_fma_f32 v32, -v37, v35, v90
	v_div_fixup_f32 v28, v29, v106, v89
	v_div_fixup_f32 v29, v30, v106, v88
	v_fmac_f32_e32 v40, v36, v40
	v_div_scale_f32 v36, s8, v85, v106, v85
	v_fma_f32 v30, -v38, v31, v34
	v_fmac_f32_e32 v35, v32, v92
	v_fma_f32 v34, -v91, v39, 1.0
	v_div_scale_f32 v38, null, v106, v106, v83
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v32, v36, v40
	v_div_fmas_f32 v30, v30, v33, v31
	v_fma_f32 v31, -v37, v35, v90
	v_fmac_f32_e32 v39, v34, v39
	v_rcp_f32_e32 v34, v38
	v_div_scale_f32 v88, null, v106, v106, v82
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v33, -v41, v32, v36
	v_div_scale_f32 v37, s9, v84, v106, v84
	v_div_fmas_f32 v31, v31, v92, v35
	v_rcp_f32_e32 v35, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v32, v33, v40
	v_mul_f32_e32 v33, v37, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v38, v34, 1.0
	v_div_fixup_f32 v30, v30, v106, v87
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v36, -v41, v32, v36
	v_fma_f32 v41, -v91, v33, v37
	v_fmac_f32_e32 v34, v89, v34
	v_div_scale_f32 v89, null, v106, v106, v81
	v_fma_f32 v87, -v88, v35, 1.0
	v_div_fixup_f32 v31, v31, v106, v86
	v_div_scale_f32 v86, s10, v83, v106, v83
	v_div_fmas_f32 v32, v36, v40, v32
	v_fmac_f32_e32 v33, v41, v39
	v_fmac_f32_e32 v35, v87, v35
	v_rcp_f32_e32 v40, v89
	v_div_scale_f32 v87, null, v106, v106, v80
	v_mul_f32_e32 v36, v86, v34
	v_div_scale_f32 v41, s8, v82, v106, v82
	v_fma_f32 v37, -v91, v33, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v91, v87
	v_div_fixup_f32 v32, v32, v106, v85
	v_fma_f32 v85, -v38, v36, v86
	v_mul_f32_e32 v90, v41, v35
	v_fma_f32 v92, -v89, v40, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v33, v37, v39, v33
	v_fmac_f32_e32 v36, v85, v34
	v_fma_f32 v37, -v88, v90, v41
	v_fmac_f32_e32 v40, v92, v40
	v_div_scale_f32 v39, s9, v81, v106, v81
	v_fma_f32 v85, -v87, v91, 1.0
	v_div_fixup_f32 v33, v33, v106, v84
	v_fma_f32 v38, -v38, v36, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v90, v37, v35 :: v_dual_mul_f32 v37, v39, v40
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v84, s11, v80, v106, v80
	v_div_scale_f32 v85, null, v106, v106, v79
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v86, v84, v91
	v_div_fmas_f32 v34, v38, v34, v36
	v_fma_f32 v36, -v88, v90, v41
	v_fma_f32 v38, -v89, v37, v39
	v_rcp_f32_e32 v41, v85
	v_div_scale_f32 v88, null, v106, v106, v78
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v37, v38, v40
	v_div_fmas_f32 v35, v36, v35, v90
	v_rcp_f32_e32 v38, v88
	v_fma_f32 v36, -v87, v86, v84
	v_div_fixup_f32 v34, v34, v106, v83
	v_fma_f32 v39, -v89, v37, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v85, v41, 1.0
	v_div_scale_f32 v83, null, v106, v106, v77
	v_fmac_f32_e32 v86, v36, v91
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v35, v35, v106, v82
	v_fmac_f32_e32 v41, v90, v41
	v_div_scale_f32 v82, s8, v79, v106, v79
	v_fma_f32 v36, -v88, v38, 1.0
	v_div_fmas_f32 v37, v39, v40, v37
	v_fma_f32 v39, -v87, v86, v84
	v_rcp_f32_e32 v84, v83
	v_mul_f32_e32 v40, v82, v41
	v_fmac_f32_e32 v38, v36, v38
	v_div_scale_f32 v87, s9, v78, v106, v78
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, null, v106, v106, v76
	v_div_fmas_f32 v39, v39, v91, v86
	v_fma_f32 v86, -v85, v40, v82
	v_mul_f32_e32 v90, v87, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v83, v84, 1.0
	v_rcp_f32_e32 v92, v89
	v_div_fixup_f32 v36, v37, v106, v81
	v_div_fixup_f32 v37, v39, v106, v80
	v_fmac_f32_e32 v40, v86, v41
	v_fma_f32 v39, -v88, v90, v87
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v80, s10, v77, v106, v77
	v_div_scale_f32 v81, null, v106, v106, v75
	v_fma_f32 v82, -v85, v40, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v90, v39, v38 :: v_dual_mul_f32 v85, v80, v84
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v86, -v89, v92, 1.0
	v_rcp_f32_e32 v91, v81
	v_div_fmas_f32 v39, v82, v41, v40
	v_fma_f32 v40, -v88, v90, v87
	v_fma_f32 v41, -v83, v85, v80
	v_div_scale_f32 v88, null, v106, v106, v74
	v_fmac_f32_e32 v92, v86, v92
	v_div_scale_f32 v86, s11, v76, v106, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v41, v84
	v_rcp_f32_e32 v41, v88
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v82, v86, v92
	v_fma_f32 v87, -v81, v91, 1.0
	v_div_fmas_f32 v40, v40, v38, v90
	v_div_fixup_f32 v38, v39, v106, v79
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v90, -v89, v82, v86
	v_fmac_f32_e32 v91, v87, v91
	v_div_scale_f32 v87, s8, v75, v106, v75
	v_div_fixup_f32 v39, v40, v106, v78
	v_fma_f32 v40, -v83, v85, v80
	v_fma_f32 v79, -v88, v41, 1.0
	v_div_scale_f32 v80, null, v23, v23, v73
	v_fmac_f32_e32 v82, v90, v92
	v_mul_f32_e32 v78, v87, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v79, v41
	v_rcp_f32_e32 v79, v80
	v_div_fmas_f32 v40, v40, v84, v85
	v_fma_f32 v83, -v89, v82, v86
	v_fma_f32 v84, -v81, v78, v87
	v_div_scale_f32 v85, s9, v74, v106, v74
	v_div_scale_f32 v86, null, v23, v23, v72
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v78, v84, v91
	v_div_fmas_f32 v82, v83, v92, v82
	v_rcp_f32_e32 v83, v86
	v_mul_f32_e32 v84, v85, v41
	v_fma_f32 v89, -v80, v79, 1.0
	v_div_fixup_f32 v77, v40, v106, v77
	v_fma_f32 v40, -v81, v78, v87
	v_div_fixup_f32 v76, v82, v106, v76
	v_fma_f32 v81, -v88, v84, v85
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v23, v23, v71
	v_div_scale_f32 v82, s10, v73, v23, v73
	v_fma_f32 v87, -v86, v83, 1.0
	v_fmac_f32_e32 v84, v81, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v89
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v90, null, v23, v23, v70
	v_div_fmas_f32 v40, v40, v91, v78
	v_mul_f32_e32 v78, v82, v79
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, s8, v72, v23, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v75, v40, v106, v75
	v_fma_f32 v40, -v88, v84, v85
	v_fma_f32 v85, -v80, v78, v82
	v_mul_f32_e32 v88, v87, v83
	v_rcp_f32_e32 v91, v90
	v_fma_f32 v92, -v89, v81, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v78, v85, v79
	v_div_fmas_f32 v40, v40, v41, v84
	v_fma_f32 v41, -v86, v88, v87
	v_fmac_f32_e32 v81, v92, v81
	v_div_scale_f32 v84, s9, v71, v23, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v74, v40, v106, v74
	v_fma_f32 v85, -v90, v91, 1.0
	v_fma_f32 v40, -v80, v78, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v88, v41, v83 :: v_dual_mul_f32 v41, v84, v81
	v_div_scale_f32 v82, null, v23, v23, v69
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v80, s11, v70, v23, v70
	v_div_fmas_f32 v40, v40, v79, v78
	v_fma_f32 v78, -v86, v88, v87
	v_fma_f32 v79, -v89, v41, v84
	v_rcp_f32_e32 v85, v82
	v_div_scale_f32 v87, null, v23, v23, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v86, v80, v91 :: v_dual_fmac_f32 v41, v79, v81
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v79, v87
	v_div_fmas_f32 v78, v78, v83, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v83, -v90, v86, v80
	v_div_fixup_f32 v73, v40, v23, v73
	v_fma_f32 v88, -v82, v85, 1.0
	v_fma_f32 v40, -v89, v41, v84
	v_div_fixup_f32 v72, v78, v23, v72
	v_fmac_f32_e32 v86, v83, v91
	v_div_scale_f32 v78, s8, v69, v23, v69
	v_fmac_f32_e32 v85, v88, v85
	v_fma_f32 v83, -v87, v79, 1.0
	v_div_scale_f32 v84, null, v23, v23, v67
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v88, null, v23, v23, v66
	v_div_fmas_f32 v40, v40, v81, v41
	v_fma_f32 v41, -v90, v86, v80
	v_dual_mul_f32 v80, v78, v85 :: v_dual_fmac_f32 v79, v83, v79
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v83, s9, v68, v23, v68
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v71, v40, v23, v71
	v_div_fmas_f32 v41, v41, v91, v86
	v_fma_f32 v86, -v82, v80, v78
	v_mul_f32_e32 v89, v83, v79
	v_rcp_f32_e32 v91, v88
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v84, v81, 1.0
	v_fmac_f32_e32 v80, v86, v85
	v_fma_f32 v40, -v87, v89, v83
	v_div_scale_f32 v86, null, v23, v23, v65
	v_div_fixup_f32 v70, v41, v23, v70
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v41, s10, v67, v23, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v88, v91, 1.0
	v_fma_f32 v78, -v82, v80, v78
	v_fmac_f32_e32 v89, v40, v79
	v_rcp_f32_e32 v82, v86
	v_dual_mul_f32 v40, v41, v81 :: v_dual_fmac_f32 v91, v90, v91
	v_div_scale_f32 v90, s11, v66, v23, v66
	v_div_fmas_f32 v78, v78, v85, v80
	v_fma_f32 v80, -v87, v89, v83
	v_div_scale_f32 v92, null, v23, v23, v64
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v83, -v84, v40, v41
	v_mul_f32_e32 v85, v90, v91
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v86, v82, 1.0
	v_div_fmas_f32 v79, v80, v79, v89
	v_rcp_f32_e32 v80, v92
	v_fmac_f32_e32 v40, v83, v81
	v_fma_f32 v83, -v88, v85, v90
	v_fmac_f32_e32 v82, v87, v82
	v_div_scale_f32 v87, s8, v65, v23, v65
	v_div_fixup_f32 v69, v78, v23, v69
	v_div_fixup_f32 v68, v79, v23, v68
	v_fma_f32 v41, -v84, v40, v41
	v_fmac_f32_e32 v85, v83, v91
	v_mul_f32_e32 v78, v87, v82
	v_fma_f32 v79, -v92, v80, 1.0
	v_div_scale_f32 v83, null, v23, v23, v63
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v84, s9, v64, v23, v64
	v_div_fmas_f32 v40, v41, v81, v40
	v_fma_f32 v41, -v88, v85, v90
	v_fma_f32 v81, -v86, v78, v87
	v_fmac_f32_e32 v80, v79, v80
	v_rcp_f32_e32 v79, v83
	v_div_scale_f32 v88, null, v23, v23, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v81, v82
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v67, v40, v23, v67
	v_rcp_f32_e32 v81, v88
	v_div_fmas_f32 v41, v41, v91, v85
	v_mul_f32_e32 v85, v84, v80
	v_fma_f32 v40, -v86, v78, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v83, v79, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v66, v41, v23, v66
	v_fma_f32 v41, -v92, v85, v84
	v_div_scale_f32 v86, s10, v63, v23, v63
	v_fmac_f32_e32 v79, v89, v79
	v_fma_f32 v87, -v88, v81, 1.0
	v_div_scale_f32 v89, null, v23, v23, v61
	v_div_fmas_f32 v40, v40, v82, v78
	v_fmac_f32_e32 v85, v41, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v87, v81
	v_rcp_f32_e32 v78, v89
	v_div_scale_f32 v87, null, v23, v23, v60
	v_mul_f32_e32 v41, v86, v79
	v_div_scale_f32 v82, s8, v62, v23, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v91, v87
	v_div_fixup_f32 v40, v40, v23, v65
	v_fma_f32 v65, -v92, v85, v84
	v_fma_f32 v84, -v83, v41, v86
	v_mul_f32_e32 v90, v82, v81
	v_fma_f32 v92, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v65, v65, v80, v85
	v_fmac_f32_e32 v41, v84, v79
	v_fma_f32 v80, -v88, v90, v82
	v_fmac_f32_e32 v78, v92, v78
	v_div_scale_f32 v84, s9, v61, v23, v61
	v_fma_f32 v85, -v87, v91, 1.0
	v_div_fixup_f32 v64, v65, v23, v64
	v_fma_f32 v65, -v83, v41, v86
	v_fmac_f32_e32 v90, v80, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v80, v84, v78 :: v_dual_fmac_f32 v91, v85, v91
	v_div_scale_f32 v85, null, v23, v23, v59
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v83, s11, v60, v23, v60
	v_div_fmas_f32 v41, v65, v79, v41
	v_fma_f32 v65, -v88, v90, v82
	v_fma_f32 v79, -v89, v80, v84
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v88, null, v23, v23, v58
	v_mul_f32_e32 v86, v83, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v79, v78
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v79, v88
	v_div_fmas_f32 v65, v65, v81, v90
	v_fma_f32 v81, -v87, v86, v83
	v_div_fixup_f32 v41, v41, v23, v63
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v85, v82, 1.0
	v_fma_f32 v63, -v89, v80, v84
	v_div_fixup_f32 v62, v65, v23, v62
	v_fmac_f32_e32 v86, v81, v91
	v_div_scale_f32 v65, s8, v59, v23, v59
	v_fmac_f32_e32 v82, v90, v82
	v_fma_f32 v81, -v88, v79, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v89, null, v10, v10, v56
	v_div_fmas_f32 v63, v63, v78, v80
	v_fma_f32 v78, -v87, v86, v83
	v_mul_f32_e32 v80, v65, v82
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, null, v10, v10, v57
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v83, s9, v58, v23, v58
	v_div_fmas_f32 v78, v78, v91, v86
	v_rcp_f32_e32 v84, v81
	v_fma_f32 v86, -v85, v80, v65
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v87, v83, v79
	v_div_fixup_f32 v61, v63, v23, v61
	v_div_fixup_f32 v60, v78, v23, v60
	v_rcp_f32_e32 v78, v89
	v_fmac_f32_e32 v80, v86, v82
	v_fma_f32 v63, -v88, v87, v83
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v91, null, v10, v10, v54
	v_fma_f32 v86, -v81, v84, 1.0
	v_fma_f32 v65, -v85, v80, v65
	v_div_scale_f32 v85, null, v10, v10, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v63, v79 :: v_dual_fmac_f32 v84, v86, v84
	v_div_scale_f32 v63, s10, v57, v10, v57
	v_rcp_f32_e32 v86, v85
	v_fma_f32 v90, -v89, v78, 1.0
	v_div_fmas_f32 v65, v65, v82, v80
	v_fma_f32 v80, -v88, v87, v83
	v_mul_f32_e32 v82, v63, v84
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v78, v90, v78
	v_div_scale_f32 v83, s8, v56, v10, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v90, -v81, v82, v63
	v_fma_f32 v88, -v85, v86, 1.0
	v_rcp_f32_e32 v93, v91
	v_div_fmas_f32 v79, v80, v79, v87
	v_mul_f32_e32 v92, v83, v78
	v_fmac_f32_e32 v82, v90, v84
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v88, s11, v55, v10, v55
	v_div_fixup_f32 v59, v65, v23, v59
	v_div_fixup_f32 v23, v79, v23, v58
	v_fma_f32 v58, -v81, v82, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v87, v88, v86
	v_div_scale_f32 v79, null, v10, v10, v53
	v_fma_f32 v80, -v89, v92, v83
	v_fma_f32 v65, -v91, v93, 1.0
	v_fma_f32 v63, -v85, v87, v88
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v92, v80, v78 :: v_dual_fmac_f32 v93, v65, v93
	v_fmac_f32_e32 v87, v63, v86
	v_rcp_f32_e32 v63, v79
	v_div_scale_f32 v65, s9, v54, v10, v54
	v_div_fmas_f32 v58, v58, v84, v82
	v_fma_f32 v80, -v89, v92, v83
	v_div_scale_f32 v82, null, v10, v10, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v81, v65, v93
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v57, v58, v10, v57
	v_fma_f32 v83, -v79, v63, 1.0
	v_div_fmas_f32 v78, v80, v78, v92
	v_fma_f32 v80, -v85, v87, v88
	v_rcp_f32_e32 v84, v82
	v_fma_f32 v85, -v91, v81, v65
	v_fmac_f32_e32 v63, v83, v63
	v_div_scale_f32 v83, s8, v53, v10, v53
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v81, v85, v93
	v_div_fmas_f32 v80, v80, v86, v87
	v_mul_f32_e32 v58, v83, v63
	v_div_fixup_f32 v56, v78, v10, v56
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v78, -v82, v84, 1.0
	v_fma_f32 v65, -v91, v81, v65
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v85, -v79, v58, v83
	v_div_fixup_f32 v55, v80, v10, v55
	v_div_scale_f32 v80, null, v10, v10, v51
	v_fmac_f32_e32 v84, v78, v84
	v_div_scale_f32 v78, s10, v52, v10, v52
	v_div_fmas_f32 v65, v65, v93, v81
	v_fmac_f32_e32 v58, v85, v63
	v_rcp_f32_e32 v86, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v81, v78, v84
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v54, v65, v10, v54
	v_fma_f32 v65, -v79, v58, v83
	v_div_scale_f32 v85, null, v10, v10, v50
	v_fma_f32 v79, -v82, v81, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v58, v65, v63, v58
	v_div_scale_f32 v63, null, v10, v10, v49
	v_fma_f32 v83, -v80, v86, 1.0
	v_rcp_f32_e32 v87, v85
	v_fmac_f32_e32 v81, v79, v84
	v_rcp_f32_e32 v79, v63
	v_div_scale_f32 v65, s8, v51, v10, v51
	v_fmac_f32_e32 v86, v83, v86
	v_div_scale_f32 v83, null, v10, v10, v48
	v_div_fixup_f32 v53, v58, v10, v53
	v_fma_f32 v78, -v82, v81, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v85, v87, 1.0
	v_rcp_f32_e32 v89, v83
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v63, v79, 1.0
	v_mul_f32_e32 v82, v65, v86
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v87, v58, v87
	v_div_scale_f32 v58, s9, v50, v10, v50
	v_fmac_f32_e32 v79, v88, v79
	v_div_scale_f32 v88, null, v10, v10, v47
	v_div_fmas_f32 v78, v78, v84, v81
	v_fma_f32 v81, -v80, v82, v65
	v_mul_f32_e32 v84, v58, v87
	v_div_scale_f32 v90, s10, v49, v10, v49
	v_fma_f32 v91, -v83, v89, 1.0
	v_rcp_f32_e32 v92, v88
	v_fmac_f32_e32 v82, v81, v86
	v_fma_f32 v81, -v85, v84, v58
	v_mul_f32_e32 v93, v90, v79
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s11, v48, v10, v48
	v_div_fixup_f32 v52, v78, v10, v52
	v_fma_f32 v65, -v80, v82, v65
	v_fmac_f32_e32 v84, v81, v87
	v_fma_f32 v78, -v63, v93, v90
	v_mul_f32_e32 v80, v91, v89
	v_fma_f32 v81, -v88, v92, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v58, -v85, v84, v58
	v_fmac_f32_e32 v93, v78, v79
	v_fma_f32 v78, -v83, v80, v91
	v_fmac_f32_e32 v92, v81, v92
	v_div_scale_f32 v81, s8, v47, v10, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v63, v93, v90
	v_fmac_f32_e32 v80, v78, v89
	v_div_fmas_f32 v65, v65, v86, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v78, v81, v92
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v82, null, v10, v10, v46
	v_div_fmas_f32 v58, v58, v87, v84
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v51, v65, v10, v51
	v_div_fmas_f32 v63, v63, v79, v93
	v_fma_f32 v79, -v83, v80, v91
	v_fma_f32 v83, -v88, v78, v81
	v_rcp_f32_e32 v84, v82
	v_div_fixup_f32 v50, v58, v10, v50
	v_div_fixup_f32 v49, v63, v10, v49
	v_div_scale_f32 v63, null, v10, v10, v42
	v_fmac_f32_e32 v78, v83, v92
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v86, null, v10, v10, v43
	v_div_fmas_f32 v79, v79, v89, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v58, -v88, v78, v81
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v65, -v82, v84, 1.0
	v_rcp_f32_e32 v88, v86
	v_div_fixup_f32 v48, v79, v10, v48
	v_div_fmas_f32 v58, v58, v92, v78
	v_rcp_f32_e32 v78, v63
	v_fmac_f32_e32 v84, v65, v84
	v_div_scale_f32 v80, vcc_lo, v46, v10, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v47, v58, v10, v47
	v_div_scale_f32 v65, null, v10, v10, v45
	v_mul_f32_e32 v85, v80, v84
	v_div_scale_f32 v79, null, v10, v10, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v63, v78, 1.0
	v_rcp_f32_e32 v81, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v82, v85, v80
	v_rcp_f32_e32 v83, v79
	v_fma_f32 v92, -v86, v88, 1.0
	v_fmac_f32_e32 v78, v58, v78
	v_div_scale_f32 v58, s8, v42, v10, v42
	v_fmac_f32_e32 v85, v89, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v91, v58, v78
	v_fma_f32 v87, -v65, v81, 1.0
	v_fma_f32 v80, -v82, v85, v80
	v_fma_f32 v90, -v79, v83, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v63, v91, v58
	v_fmac_f32_e32 v81, v87, v81
	v_div_scale_f32 v87, s9, v45, v10, v45
	v_div_fmas_f32 v80, v80, v84, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v91, v89, v78
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v83, v90, v83
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v62, v62, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v58, -v63, v91, v58
	v_div_scale_f32 v90, s10, v44, v10, v44
	v_mul_f32_e32 v93, v87, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v68, v68, s8, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v58, v58, v78, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_cvt_i32_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s11, v43, v10, v43
	v_fma_f32 v82, -v65, v93, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_cvt_i32_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v90, v83
	v_div_fixup_f32 v42, v58, v10, v42
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v76
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v76, v57
	v_and_b32_e32 v57, 15, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v92, v88
	v_fmac_f32_e32 v93, v82, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_cvt_i32_f32_e32 v82, v51
	v_and_b32_e32 v51, 15, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v79, v94, v90
	v_fma_f32 v63, -v86, v95, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v65, -v65, v93, v87
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v94, v89, v83 :: v_dual_fmac_f32 v95, v63, v88
	v_div_fixup_f32 v46, v80, v10, v46
	v_div_fmas_f32 v65, v65, v81, v93
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v63, -v79, v94, v90
	v_fma_f32 v78, -v86, v95, v92
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v45, v65, v10, v45
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v63, v63, v83, v94
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v88, v95
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v44, v63, v10, v44
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v10, v78, v10, v43
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v40, v40
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v75
	v_rndne_f32_e32 v65, v74
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v55, v55
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v75, v23
	v_cvt_i32_f32_e32 v79, v54
	v_cvt_i32_f32_e32 v91, v10
	v_and_b32_e32 v10, 15, v11
	v_and_b32_e32 v11, 15, v12
	v_and_b32_e32 v12, 15, v13
	v_and_b32_e32 v13, 15, v14
	v_and_b32_e32 v14, 15, v15
	v_and_b32_e32 v15, 15, v16
	v_and_b32_e32 v16, 15, v17
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v20
	v_and_b32_e32 v20, 15, v21
	v_and_b32_e32 v21, 15, v22
	v_and_b32_e32 v22, 15, v24
	v_and_b32_e32 v23, 15, v25
	v_and_b32_e32 v24, 15, v26
	v_and_b32_e32 v25, 15, v27
	v_and_b32_e32 v26, 15, v28
	v_and_b32_e32 v27, 15, v29
	v_and_b32_e32 v28, 15, v30
	v_and_b32_e32 v29, 15, v31
	v_and_b32_e32 v30, 15, v32
	v_and_b32_e32 v31, 15, v33
	v_and_b32_e32 v32, 15, v34
	v_and_b32_e32 v33, 15, v35
	v_and_b32_e32 v34, 15, v36
	v_and_b32_e32 v35, 15, v37
	v_and_b32_e32 v36, 15, v38
	v_and_b32_e32 v37, 15, v39
	v_and_b32_e32 v54, 15, v40
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v38, 10, v0
	v_and_b32_e32 v39, 16, v0
	v_lshlrev_b32_e32 v40, 4, v107
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v77
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v44, v44
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_cvt_i32_f32_e32 v77, v56
	v_and_b32_e32 v56, 15, v41
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v38, 0x1800, v38
	v_lshlrev_b32_e32 v41, 6, v39
	v_xor_b32_e32 v8, v40, v8
	v_lshlrev_b32_e32 v40, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v78, v55
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v38, 0, v38, v41
	v_and_or_b32 v6, 0x1b00, v40, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v84, v49
	v_cvt_i32_f32_e32 v85, v48
	v_cvt_i32_f32_e32 v86, v47
	v_cvt_i32_f32_e32 v87, v46
	v_cvt_i32_f32_e32 v89, v45
	v_cvt_i32_f32_e32 v90, v44
	v_and_b32_e32 v44, 15, v63
	v_and_b32_e32 v45, 15, v65
	v_and_b32_e32 v46, 15, v73
	v_and_b32_e32 v47, 15, v72
	v_and_b32_e32 v48, 15, v71
	v_and_b32_e32 v49, 15, v70
	v_and_b32_e32 v55, 15, v64
	v_and_b32_e32 v62, 15, v76
	v_and_b32_e32 v63, 15, v77
	v_and_b32_e32 v64, 15, v78
	v_and_b32_e32 v65, 15, v79
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v7, v38, v8, v7
	v_xad_u32 v6, v6, v108, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v88, v42
	v_and_b32_e32 v42, 15, v43
	v_and_b32_e32 v43, 15, v58
	v_and_b32_e32 v70, 15, v84
	v_and_b32_e32 v71, 15, v85
	v_and_b32_e32 v72, 15, v86
	v_and_b32_e32 v73, 15, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v50, v50
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v7, v[10:13]
	ds_store_b128 v7, v[18:21] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v6
	ds_load_b128 v[18:21], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[26:29]
	ds_store_b128 v7, v[34:37] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v6
	ds_load_b128 v[34:37], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[46:49]
	ds_store_b128 v7, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v6
	ds_load_b128 v[54:57], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[62:65]
	ds_store_b128 v7, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v6
	ds_load_b128 v[70:73], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[14:17]
	ds_store_b128 v7, v[22:25] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v6
	ds_load_b128 v[22:25], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[30:33]
	ds_store_b128 v7, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v6
	ds_load_b128 v[41:44], v6 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v74, v59
	v_cvt_i32_f32_e32 v80, v53
	v_cvt_i32_f32_e32 v81, v52
	v_cvt_i32_f32_e32 v83, v50
	v_and_b32_e32 v50, 15, v69
	v_and_b32_e32 v52, 15, v67
	v_and_b32_e32 v53, 15, v66
	v_and_b32_e32 v58, 15, v61
	v_and_b32_e32 v61, 15, v75
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v59, 15, v60
	v_and_b32_e32 v60, 15, v74
	v_and_b32_e32 v66, 15, v80
	v_and_b32_e32 v67, 15, v81
	v_and_b32_e32 v68, 15, v82
	v_and_b32_e32 v69, 15, v83
	v_and_b32_e32 v74, 15, v88
	v_and_b32_e32 v75, 15, v89
	v_and_b32_e32 v76, 15, v90
	v_and_b32_e32 v77, 15, v91
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[50:53]
	ds_store_b128 v7, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v6
	ds_load_b128 v[58:61], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[66:69]
	ds_store_b128 v7, v[74:77] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v6
	ds_load_b128 v[74:77], v6 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v18, 4, v10
	v_lshl_or_b32 v18, v21, 4, v13
	v_lshl_or_b32 v21, v35, 4, v27
	v_lshl_or_b32 v27, v44, 4, v33
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v107
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, s38, v5
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s8, s37, 31
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v8, v20, 4, v12
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s37, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v5, s73, 7, v44
	v_add_nc_u32_e32 v12, 16, v10
	v_add_nc_u32_e32 v13, 32, v10
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v7, v19, 4, v11
	v_lshl_or_b32 v19, v22, 4, v14
	v_lshl_or_b32 v15, v23, 4, v15
	v_lshl_or_b32 v16, v24, 4, v16
	v_lshl_or_b32 v17, v25, 4, v17
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 48, v10
	v_mad_u64_u32 v[10:11], null, v10, s8, v[5:6]
	v_mad_u64_u32 v[11:12], null, v12, s8, v[5:6]
	v_mad_u64_u32 v[12:13], null, v13, s8, v[5:6]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v20, v34, 4, v26
	v_lshl_or_b32 v24, v41, 4, v30
	v_lshl_or_b32 v25, v42, 4, v31
	v_lshl_or_b32 v26, v43, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v14, s8, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v2.l, 0xff, v8.l
	v_lshlrev_b16 v4.l, 8, v7.l
	v_and_b16 v5.l, 0xff, v6.l
	v_lshlrev_b16 v5.h, 8, v17.l
	v_and_b16 v6.l, 0xff, v16.l
	v_lshlrev_b16 v6.h, 8, v15.l
	v_and_b16 v7.l, 0xff, v19.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v22, v36, 4, v28
	v_lshl_or_b32 v23, v37, 4, v29
	v_lshl_or_b32 v32, v58, 4, v50
	v_lshl_or_b32 v33, v59, 4, v51
	v_lshl_or_b32 v34, v60, 4, v52
	v_lshl_or_b32 v35, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_or_b16 v14.l, v5.l, v4.l
	v_or_b16 v15.h, v6.l, v5.h
	v_or_b16 v15.l, v7.l, v6.h
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	v_lshlrev_b16 v5.h, 8, v27.l
	v_and_b16 v6.l, 0xff, v26.l
	v_lshlrev_b16 v6.h, 8, v25.l
	v_and_b16 v7.l, 0xff, v24.l
	s_and_b32 s9, s49, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s48
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v54, 4, v46
	v_lshl_or_b32 v29, v55, 4, v47
	v_lshl_or_b32 v30, v56, 4, v48
	v_lshl_or_b32 v31, v57, 4, v49
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v74, 4, v66
	v_lshl_or_b32 v42, v75, 4, v67
	v_lshl_or_b32 v43, v76, 4, v68
	v_lshl_or_b32 v45, v77, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v23.l
	v_and_b16 v2.l, 0xff, v22.l
	v_lshlrev_b16 v4.l, 8, v21.l
	v_and_b16 v5.l, 0xff, v20.l
	buffer_store_b64 v[14:15], v8, s[8:11], 0 offen
	v_or_b16 v15.h, v6.l, v5.h
	v_or_b16 v15.l, v7.l, v6.h
	v_lshlrev_b16 v5.h, 8, v35.l
	v_and_b16 v6.l, 0xff, v34.l
	v_lshlrev_b16 v6.h, 8, v33.l
	v_and_b16 v7.l, 0xff, v32.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v70, 4, v62
	v_lshl_or_b32 v37, v71, 4, v63
	v_lshl_or_b32 v38, v72, 4, v64
	v_lshl_or_b32 v40, v73, 4, v65
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_or_b16 v14.l, v5.l, v4.l
	v_cndmask_b32_e32 v8, 0x80000000, v11, vcc_lo
	v_lshlrev_b16 v1.l, 8, v31.l
	v_and_b16 v2.l, 0xff, v30.l
	v_lshlrev_b16 v4.l, 8, v29.l
	v_and_b16 v5.l, 0xff, v28.l
	v_or_b16 v11.h, v6.l, v5.h
	v_or_b16 v11.l, v7.l, v6.h
	v_lshlrev_b16 v5.h, 8, v45.l
	v_and_b16 v6.l, 0xff, v43.l
	v_lshlrev_b16 v6.h, 8, v42.l
	v_and_b16 v7.l, 0xff, v41.l
	buffer_store_b64 v[14:15], v8, s[8:11], 0 offen
	v_or_b16 v10.h, v2.l, v1.l
	v_or_b16 v10.l, v5.l, v4.l
	v_lshlrev_b16 v1.l, 8, v40.l
	v_and_b16 v2.l, 0xff, v38.l
	v_lshlrev_b16 v4.l, 8, v37.l
	v_and_b16 v5.l, 0xff, v36.l
	v_or_b16 v15.h, v6.l, v5.h
	v_or_b16 v15.l, v7.l, v6.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v7, 2, v39
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_cndmask_b32_e32 v8, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.l, v5.l, v4.l
	v_dual_cndmask_b32 v5, 0x80000000, v13 :: v_dual_and_b32 v6, 2, v6
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s37, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[10:11], v8, s[8:11], 0 offen
	buffer_store_b64 v[14:15], v5, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v44
	v_mov_b16_e32 v2.l, v9.h
	v_mov_b16_e32 v1.l, v4.h
	v_add3_u32 v4, v7, v6, v44
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s37, s37, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s37, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v5, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s9, s51, 0xffff
	s_mov_b32 s8, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s73, 1
	s_and_b32 vcc_lo, vcc_lo, s74
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp44:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 192
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
		.amdhsa_next_free_sgpr 79
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 79
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 192
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19088
; TotalNumSgprs: 81
; NumVgprs: 256
; ScratchSize: 192
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 81
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
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 192
    .sgpr_count:     81
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 47
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
