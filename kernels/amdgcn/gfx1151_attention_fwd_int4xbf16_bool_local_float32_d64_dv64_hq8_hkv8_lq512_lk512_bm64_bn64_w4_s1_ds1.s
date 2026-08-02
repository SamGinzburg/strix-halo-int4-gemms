	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s11, s[0:1], 0x84
	s_load_b32 s90, s[0:1], 0x60
.Ltmp0:
	.loc	1 773 86 prologue_end           ; attention.py:773:86
	v_and_b32_e32 v48, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x0
	s_load_b64 s[8:9], s[0:1], 0x7c
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s10, s2, 6
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v1, 4, v48
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s91, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s10, v2
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s4, s10, s91
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v148, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v53, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v45, 0x60, v0
	v_and_b32_e32 v65, 15, v0
	v_lshlrev_b32_e32 v50, 2, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v6, v53, 30, v148
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[121:122], null, s90, v2, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s68, s90, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s13, s13, 0xffff
	v_lshlrev_b32_e32 v6, 2, v6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s10, s9
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s10, s8
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s68
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s90, s4, v[121:122]
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v8, 4, v6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s11
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s11
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s6, s6, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s2, 0x200
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 63
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s100, s6, 0x7fffffc0
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	s_lshr_b32 s7, s7, 26
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[2:5], v1, s[12:15], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v45
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s101, s5, s7
	s_mov_b32 s5, 0
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s101, s101, 63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_or_b32_e32 v1, v1, v65
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s100, s101
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s10, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v7
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v37, v6, v2
	ds_bpermute_b32 v38, v6, v3
	ds_bpermute_b32 v39, v6, v4
	ds_bpermute_b32 v41, v6, v5
	ds_bpermute_b32 v40, v8, v2
	ds_bpermute_b32 v42, v8, v3
	ds_bpermute_b32 v43, v8, v4
	ds_bpermute_b32 v44, v8, v5
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v46, 2, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr46
.LBB0_3:                                ; %Flow157
	v_or_b32_e32 v2, 46, v148
	s_clause 0x1
	s_load_b64 s[88:89], s[0:1], 0x38
	s_load_b32 s69, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v69, 0x78, v0
	v_or_b32_e32 v164, 2, v148
	scratch_store_b32 off, v2, off offset:156 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 50, v148
	v_or_b32_e32 v163, 4, v148
	v_or_b32_e32 v162, 6, v148
	v_or_b32_e32 v161, 8, v148
	v_or_b32_e32 v160, 10, v148
	scratch_store_b32 off, v2, off offset:152 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 52, v148
	v_or_b32_e32 v159, 12, v148
	v_or_b32_e32 v158, 14, v148
	v_or_b32_e32 v157, 16, v148
	v_or_b32_e32 v141, 18, v148
	scratch_store_b32 off, v2, off offset:148 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 54, v148
	v_or_b32_e32 v182, 20, v148
	v_or_b32_e32 v181, 22, v148
	v_or_b32_e32 v180, 24, v148
	v_or_b32_e32 v179, 26, v148
	scratch_store_b32 off, v2, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 56, v148
	v_or_b32_e32 v178, 28, v148
	v_or_b32_e32 v177, 30, v148
	v_or_b32_e32 v167, 32, v148
	v_or_b32_e32 v147, 34, v148
	scratch_store_b32 off, v2, off offset:132 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 58, v148
	v_or_b32_e32 v146, 36, v148
	v_or_b32_e32 v145, 38, v148
	v_or_b32_e32 v144, 40, v148
	v_or_b32_e32 v143, 42, v148
	scratch_store_b32 off, v2, off offset:128 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 60, v148
	v_or_b32_e32 v142, 44, v148
	v_or_b32_e32 v183, 48, v148
	v_or_b32_e32 v63, s4, v1
	v_mov_b32_e32 v7, v8
	scratch_store_b32 off, v2, off offset:144 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 62, v148
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	scratch_store_b32 off, v2, off offset:136 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v34, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v33, v8
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_cbranch_vccnz .LBB0_71
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[72:79], s[0:1], 0x8
	v_dual_mov_b32 v52, 0x7632 :: v_dual_lshlrev_b32 v1, 1, v63
	s_mov_b32 s95, 0x31027000
	s_mov_b32 s94, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[70:71], s[0:1], 0x30
	s_load_b128 s[4:7], s[0:1], 0x68
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v51, 0x5410 :: v_dual_and_b32 v46, 7, v0
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v34, 16, v0
	v_bfe_i32 v6, v0, 5, 1
	v_cmp_eq_u32_e32 vcc_lo, 0, v48
	v_dual_mov_b32 v172, 0xff800000 :: v_dual_lshlrev_b32 v3, 5, v0
	v_bfe_i32 v7, v0, 2, 1
	v_bfe_i32 v48, v0, 3, 1
	v_cndmask_b32_e64 v5, 0x1020, 0, vcc_lo
	v_dual_mov_b32 v173, 0xff800000 :: v_dual_lshlrev_b32 v8, 3, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s93, s77, 0xffff
	s_mov_b32 s92, s76
	v_dual_mov_b32 v174, 0xff800000 :: v_dual_and_b32 v49, 8, v0
	buffer_load_u16 v33, v1, s[92:95], 0 offen
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v34
	v_dual_mov_b32 v14, v9 :: v_dual_and_b32 v57, 0x2040, v6
	v_dual_mov_b32 v29, v9 :: v_dual_lshlrev_b32 v58, 6, v34
	v_dual_mov_b32 v17, v9 :: v_dual_lshlrev_b32 v62, 4, v46
	v_and_b32_e32 v10, 4, v0
	v_and_b32_e32 v11, 0x7c, v50
	v_dual_mov_b32 v15, v9 :: v_dual_and_b32 v12, 24, v53
	v_cndmask_b32_e64 v124, v41, v44, s1
	v_and_b32_e32 v55, 0x60, v3
	v_and_or_b32 v59, 0x2040, v7, v5
	v_dual_mov_b32 v31, v9 :: v_dual_and_b32 v60, 0x310, v8
	v_cndmask_b32_e64 v123, v39, v43, s1
	v_cndmask_b32_e64 v126, v38, v42, s1
	v_cndmask_b32_e64 v125, v37, v40, s1
	v_cndmask_b32_e64 v128, v44, v41, s1
	v_cndmask_b32_e64 v127, v43, v39, s1
	v_cndmask_b32_e64 v130, v42, v38, s1
	v_cndmask_b32_e64 v129, v40, v37, s1
	v_and_or_b32 v37, 0x1020, v48, v57
	v_lshl_or_b32 v38, v49, 4, v58
	v_xor_b32_e32 v39, v62, v69
	v_cndmask_b32_e64 v40, 0x1054, v51, s1
	v_cndmask_b32_e64 v41, 0x3276, v52, s1
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v35, 3, v69
	v_dual_mov_b32 v171, 0xff800000 :: v_dual_lshlrev_b32 v4, 2, v45
	v_dual_mov_b32 v13, v9 :: v_dual_and_b32 v36, 0x80, v53
	v_lshrrev_b32_e32 v50, 3, v45
	v_lshl_or_b32 v45, v45, 4, v11
	v_lshl_or_b32 v176, v65, 5, v12
	v_mov_b32_e32 v11, v9
	v_lshl_add_u32 v61, v10, 9, 0
	v_mov_b32_e32 v12, v9
	v_xor_b32_e32 v37, v37, v55
	v_or3_b32 v189, v59, v38, v60
	v_lshl_or_b32 v190, v46, 10, v39
	v_lshl_or_b32 v38, v40, 8, v40
	v_lshl_or_b32 v39, v41, 8, v41
	v_or_b32_e32 v54, s10, v35
	v_mul_lo_u32 v35, s7, v35
	v_dual_mov_b32 v27, v9 :: v_dual_lshlrev_b32 v122, 3, v46
	v_mov_b32_e32 v22, v9
	v_mov_b32_e32 v7, v9
	v_add3_u32 v36, v61, v36, v37
	v_and_b32_e32 v37, 0x540054, v38
	v_and_b32_e32 v38, 0x760076, v39
	v_xor_b32_e32 v39, 32, v189
	v_or_b32_e32 v80, 1, v122
	v_add_nc_u32_e32 v241, v36, v34
	v_lshl_or_b32 v34, v37, 4, v37
	v_mad_u64_u32 v[36:37], null, s7, 48, v[35:36]
	v_add_nc_u32_e32 v242, 0, v39
	v_lshl_add_u32 v39, s7, 4, v35
	v_or_b32_e32 v81, 2, v122
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v37, v35, v80
	v_and_b32_e32 v252, 0x5040504, v34
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v82, 3, v122
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v34, v39, v122
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v83, 4, v122
	.loc	1 818 13                        ; attention.py:818:13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v37, off
	scratch_store_b32 off, v63, off offset:160
	v_add_nc_u32_e32 v37, v35, v81
	scratch_store_b32 off, v34, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, v39, v80
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v84, 5, v122
	v_xor_b32_e32 v185, v45, v50
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v37, off offset:4 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, v35, v82
	scratch_store_b32 off, v34, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, v39, v81
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v85, 6, v122
	v_xor_b32_e32 v40, 0x810, v185
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v37, off offset:8 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, v35, v83
	scratch_store_b32 off, v34, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, v39, v82
	v_dual_mov_b32 v24, v9 :: v_dual_add_nc_u32 v203, 0, v40
	scratch_store_b32 off, v37, off offset:12 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, v35, v84
	scratch_store_b32 off, v34, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, v39, v83
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v86, 7, v122
	v_xor_b32_e32 v40, 64, v189
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v37, off offset:16 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, v35, v85
	scratch_store_b32 off, v34, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, v39, v84
	v_add_nc_u32_e32 v243, 0, v40
	v_lshl_add_u32 v40, s7, 5, v35
	scratch_store_b32 off, v37, off offset:20 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, v35, v86
	v_add_nc_u32_e32 v35, v35, v122
	scratch_store_b32 off, v34, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, v39, v85
	v_dual_mov_b32 v166, 0xff800000 :: v_dual_lshlrev_b32 v1, 4, v0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v37, off offset:24
	scratch_store_b32 off, v35, off offset:28
	scratch_store_b32 off, v34, off offset:56
	v_add_nc_u32_e32 v34, v39, v86
	v_dual_mov_b32 v169, 0xff800000 :: v_dual_and_b32 v2, 24, v0
	v_dual_mov_b32 v170, 0xff800000 :: v_dual_and_b32 v47, 28, v0
	scratch_store_b32 off, v34, off offset:60 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, v40, v122
	v_xor_b32_e32 v175, v1, v2
	v_lshl_or_b32 v56, v47, 7, v4
	v_dual_mov_b32 v16, v9 :: v_dual_and_b32 v63, 0x410, v48
	scratch_store_b32 off, v34, off offset:64 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, v40, v80
	v_mul_u32_u24_e32 v64, 0x90, v46
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v65, 16, v54
	v_or_b32_e32 v66, 32, v54
	v_or3_b32 v184, v56, v55, v47
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v34, off offset:68 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, v40, v81
	v_xor_b32_e32 v42, 8, v175
	v_xor_b32_e32 v43, 8, v176
	v_xor_b32_e32 v44, 16, v176
	v_xor_b32_e32 v45, 24, v176
	scratch_store_b32 off, v34, off offset:72 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, v40, v82
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v53, 1, v69
	v_dual_mov_b32 v26, v9 :: v_dual_add_nc_u32 v47, s11, v65
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v34, off offset:76 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, v40, v83
	v_dual_mov_b32 v30, v9 :: v_dual_add_nc_u32 v191, 0, v42
	v_dual_mov_b32 v32, v9 :: v_dual_add_nc_u32 v193, 0, v44
	scratch_store_b32 off, v34, off offset:80 ; 4-byte Folded Spill
	v_dual_mov_b32 v19, v9 :: v_dual_add_nc_u32 v34, v40, v84
	v_dual_mov_b32 v21, v9 :: v_dual_add_nc_u32 v68, s11, v54
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v48, s11, v66
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v34, off offset:84 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, v9 :: v_dual_add_nc_u32 v34, v40, v85
	v_dual_mov_b32 v3, v9 :: v_dual_add_nc_u32 v192, 0, v43
	v_add_nc_u32_e32 v194, 0, v45
	scratch_store_b32 off, v34, off offset:88 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, v40, v86
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v67, 48, v54
	v_xor_b32_e32 v187, v64, v63
	v_xor_b32_e32 v41, 4, v184
	v_xor_b32_e32 v42, 8, v184
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v34, off offset:92 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, v36, v122
	v_xor_b32_e32 v43, 12, v184
	v_xor_b32_e32 v44, 16, v184
	v_xor_b32_e32 v45, 20, v184
	v_xor_b32_e32 v46, 24, v184
	scratch_store_b32 off, v34, off offset:96 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, v36, v80
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[131:132], null, s69, v53, v[122:123]
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v34, off offset:100 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, v36, v81
	v_dual_mov_b32 v28, v9 :: v_dual_add_nc_u32 v49, s11, v67
	v_dual_mov_b32 v18, v9 :: v_dual_add_nc_u32 v199, s9, v47
	scratch_store_b32 off, v34, off offset:104 ; 4-byte Folded Spill
	v_dual_mov_b32 v23, v9 :: v_dual_add_nc_u32 v34, v36, v82
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v188, s9, v68
	v_dual_mov_b32 v2, v9 :: v_dual_add_nc_u32 v205, 0, v42
	.loc	1 779 31                        ; attention.py:779:31
	scratch_store_b32 off, v34, off offset:108 ; 4-byte Folded Spill
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v34, v36, v83
	v_dual_mov_b32 v4, v9 :: v_dual_add_nc_u32 v209, 0, v45
	v_dual_mov_b32 v5, v9 :: v_dual_add_nc_u32 v200, s9, v48
	scratch_store_b32 off, v34, off offset:112 ; 4-byte Folded Spill
	v_dual_mov_b32 v207, v9 :: v_dual_add_nc_u32 v34, v36, v84
	v_dual_mov_b32 v195, v9 :: v_dual_add_nc_u32 v204, 0, v41
	v_add_nc_u32_e32 v206, 0, v43
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s12, s0, -8
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v54
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v132, s8, v68
	v_xor_b32_e32 v50, 28, v184
	v_xor_b32_e32 v51, 16, v187
	v_xor_b32_e32 v52, 32, v187
	v_xor_b32_e32 v53, 48, v187
	v_xor_b32_e32 v54, 64, v187
	v_xor_b32_e32 v55, 0x50, v187
	v_xor_b32_e32 v56, 0x60, v187
	v_xor_b32_e32 v57, 0x70, v187
	v_xor_b32_e32 v58, 0x820, v187
	v_xor_b32_e32 v59, 0x830, v187
	v_xor_b32_e32 v60, 0x810, v187
	v_xor_b32_e32 v62, 0x860, v187
	v_xor_b32_e32 v63, 0x870, v187
	v_xor_b32_e32 v64, 0x840, v187
	v_xor_b32_e32 v65, 0x850, v187
	v_xor_b32_e32 v66, 0x1040, v187
	v_xor_b32_e32 v67, 0x1050, v187
	v_xor_b32_e32 v68, 0x1060, v187
	v_xor_b32_e32 v69, 0x1070, v187
	v_xor_b32_e32 v70, 0x1010, v187
	v_xor_b32_e32 v71, 0x1020, v187
	v_xor_b32_e32 v72, 0x1030, v187
	v_xor_b32_e32 v73, 0x1860, v187
	v_xor_b32_e32 v74, 0x1870, v187
	v_xor_b32_e32 v75, 0x1840, v187
	v_xor_b32_e32 v76, 0x1850, v187
	v_xor_b32_e32 v77, 0x1820, v187
	v_xor_b32_e32 v78, 0x1830, v187
	v_xor_b32_e32 v79, 0x1810, v187
	v_subrev_nc_u32_e32 v196, s8, v47
	v_subrev_nc_u32_e32 v197, s8, v48
	v_dual_mov_b32 v255, 0xff800000 :: v_dual_add_nc_u32 v208, 0, v44
	v_add_nc_u32_e32 v210, 0, v46
	v_xor_b32_e32 v41, 0x60, v189
	v_xor_b32_e32 v42, 0x90, v190
	v_xor_b32_e32 v43, 0x120, v190
	v_xor_b32_e32 v44, 0x1b0, v190
	v_xor_b32_e32 v45, 0x240, v190
	v_xor_b32_e32 v46, 0x2d0, v190
	v_xor_b32_e32 v47, 0x360, v190
	v_xor_b32_e32 v48, 0x3f0, v190
	v_lshl_or_b32 v38, v38, 4, v38
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v34, off offset:116 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, v36, v85
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s1, s4, 0x3fb8aa3b
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s13, s0, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s12
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s5, s5, s13
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s6, s3
	v_dual_mov_b32 v186, 0xff800000 :: v_dual_mov_b32 v25, v9
	v_mov_b32_e32 v10, v9
	v_dual_mov_b32 v20, v9 :: v_dual_add_nc_u32 v201, s9, v49
	v_dual_mov_b32 v6, v9 :: v_dual_add_nc_u32 v211, 0, v50
	v_dual_mov_b32 v8, v9 :: v_dual_add_nc_u32 v213, 0, v52
	v_dual_mov_b32 v230, v9 :: v_dual_add_nc_u32 v215, 0, v54
	v_dual_mov_b32 v202, v9 :: v_dual_add_nc_u32 v217, 0, v56
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s69, v122
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v198, s8, v49
	v_add_nc_u32_e32 v212, 0, v51
	v_add_nc_u32_e32 v214, 0, v53
	v_add_nc_u32_e32 v216, 0, v55
	v_add_nc_u32_e32 v218, 0, v57
	v_add_nc_u32_e32 v220, 0, v59
	v_add_nc_u32_e32 v221, 0, v60
	v_add_nc_u32_e32 v222, 0, v62
	v_add_nc_u32_e32 v223, 0, v63
	v_add_nc_u32_e32 v224, 0, v64
	v_add_nc_u32_e32 v225, 0, v65
	v_add_nc_u32_e32 v226, 0, v66
	v_add_nc_u32_e32 v227, 0, v67
	v_add_nc_u32_e32 v228, 0, v68
	v_add_nc_u32_e32 v229, 0, v69
	v_add_nc_u32_e32 v231, 0, v70
	v_add_nc_u32_e32 v232, 0, v71
	v_add_nc_u32_e32 v233, 0, v72
	v_add_nc_u32_e32 v234, 0, v73
	v_add_nc_u32_e32 v235, 0, v74
	v_add_nc_u32_e32 v236, 0, v75
	v_add_nc_u32_e32 v237, 0, v76
	v_add_nc_u32_e32 v238, 0, v77
	v_add_nc_u32_e32 v239, 0, v78
	v_add_nc_u32_e32 v240, 0, v79
	v_add_nc_u32_e32 v244, 0, v41
	v_add_nc_u32_e32 v245, 0, v42
	v_add_nc_u32_e32 v246, 0, v43
	v_add_nc_u32_e32 v247, 0, v44
	v_add_nc_u32_e32 v248, 0, v45
	v_add_nc_u32_e32 v249, 0, v46
	v_add_nc_u32_e32 v250, 0, v47
	v_add_nc_u32_e32 v251, 0, v48
	v_and_b32_e32 v253, 0x7060706, v38
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v34, off offset:120 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, v36, v86
	s_mov_b32 s80, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s4, s7, s10
	s_and_b32 s79, s79, 0xffff
	s_mov_b32 s96, s78
	s_add_i32 s78, s3, s5
	s_lshl_b32 s76, s69, 1
	s_mul_i32 s77, s69, 3
	s_mov_b32 s102, 0x76543210
	s_mov_b32 s81, s80
	s_mov_b32 s82, s80
	s_mov_b32 s83, s80
	s_mov_b32 s84, s80
	s_mov_b32 s85, s80
	s_mov_b32 s86, s80
	s_mov_b32 s87, s80
	s_mov_b32 s98, s94
	s_mov_b32 s99, s95
	s_and_b32 s73, s73, 0xffff
	s_and_b32 s93, s75, 0xffff
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	v_add_nc_u32_e32 v219, 0, v58
	s_mov_b32 s92, s74
	s_mov_b32 s74, s94
	s_mov_b32 s75, s95
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v254, s1, v33
	s_mov_b32 s97, s79
	s_add_i32 s78, s78, s4
	scratch_store_b32 off, v34, off offset:124 ; 4-byte Folded Spill
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 41 is_stmt 0                ; attention.py:0:41
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v118, v59
	v_cvt_f32_i32_e32 v59, v54
	v_cvt_f32_i32_e32 v54, v41
	v_cvt_f32_i32_e32 v41, v36
	v_cvt_f32_i32_e32 v36, v37
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v73.h
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v117, v60
	v_cvt_f32_i32_e32 v60, v53
	v_cvt_f32_i32_e32 v53, v42
	v_cvt_f32_i32_e32 v42, v35
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s1, 0, v37.l
	s_waitcnt vmcnt(0)
	v_and_b16 v37.l, 0xff, v75.h
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v35, v38
	v_cvt_f32_i32_e32 v116, v61
	v_cvt_f32_i32_e32 v61, v52
	v_cvt_f32_i32_e32 v52, v43
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v37.l
	v_and_b16 v37.l, 0xff, v76.h
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v43, v34
	v_cvt_f32_i32_e32 v34, v39
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s12, s6, s1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v115, v62
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s4, 0, v37.l
	v_and_b16 v37.l, 0xff, v74.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v62, v51
	v_cvt_f32_i32_e32 v51, v44
	v_cvt_f32_i32_e32 v44, v33
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s4, s10, s4
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s5, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s4
	s_and_b32 s10, s7, s3
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v33, v40
	v_cvt_f32_i32_e32 v113, v64
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s8, s8, s5
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v38, 0, 1, s8
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v64, v49
	v_cvt_f32_i32_e32 v49, v46
	v_cvt_f32_i32_e32 v46, v47
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_or_b16 v39.h, v38.l, v37.l
	v_cndmask_b32_e64 v37, 0, 1, s10
	v_cndmask_b32_e64 v38, 0, 1, s12
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v119, v58
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v165.l, 0
	.loc	1 877 25                        ; attention.py:877:25
	v_lshlrev_b16 v37.l, 8, v37.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v33, v254, v33
	v_cvt_f32_i32_e32 v114, v63
	v_cvt_f32_i32_e32 v63, v50
	v_cvt_f32_i32_e32 v50, v45
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v39.l, v38.l, v37.l
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v72.l
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v45, v48
	v_cvt_f32_i32_e32 v58, v55
	v_cvt_f32_i32_e32 v55, v56
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v165.h, v111.l
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v37.l
	v_and_b16 v37.l, 0xff, v73.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v254, v34
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s100, s100, 64
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s7, s9, s3
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s6, 0, v37.l
	v_and_b16 v37.l, 0xff, v77.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s6, s11, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s1, 0, v37.l
	v_and_b16 v37.l, 0xff, v74.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s1, s14, s1
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s5, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s1
	s_and_b32 s5, s13, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v38, 0, 1, s5
	v_or_b16 v40.h, v38.l, v37.l
	v_cndmask_b32_e64 v37, 0, 1, s6
	v_cndmask_b32_e64 v38, 0, 1, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v37.l, 8, v37.l
	v_or_b16 v40.l, v38.l, v37.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v76.l
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v37.l
	v_and_b16 v37.l, 0xff, v77.h
	.loc	1 877 25                        ; attention.py:877:25
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s9, 0, v37.l
	v_and_b16 v37.l, 0xff, v79.l
	.loc	1 877 25                        ; attention.py:877:25
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v35, v254, v35
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s17, s17, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s11, 0, v37.l
	v_and_b16 v37.l, 0xff, v78.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s14, s18, s11
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s13, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s14
	s_and_b32 s18, s15, s3
	s_and_b32 s16, s16, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v38, 0, 1, s16
	v_or_b16 v47.h, v38.l, v37.l
	v_cndmask_b32_e64 v37, 0, 1, s17
	v_cndmask_b32_e64 v38, 0, 1, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v37.l, 8, v37.l
	v_or_b16 v47.l, v38.l, v37.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v78.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e64 s3, 0, v37.l
	v_and_b16 v37.l, 0xff, v79.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s15, s19, s3
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s13, 0, v37.l
	v_and_b16 v37.l, 0xff, v80.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s13, s20, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s9, 0, v37.l
	v_and_b16 v37.l, 0xff, v80.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s9, s26, s9
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s11, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s9
	s_and_b32 s11, s21, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v38, 0, 1, s11
	v_or_b16 v37.h, v38.l, v37.l
	v_cndmask_b32_e64 v38, 0, 1, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v37.l, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s15
	v_lshlrev_b16 v37.l, 8, v37.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v37.l, v38.l, v37.l
	v_add_nc_u32_e32 v38, 0, v185
	ds_store_2addr_b32 v38, v39, v40 offset1:32
	ds_store_2addr_b32 v38, v47, v37 offset0:64 offset1:96
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v65.l
	v_cmp_ne_u16_e64 s3, 0, v37.l
	v_and_b16 v37.l, 0xff, v66.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s30, s22, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s19, 0, v37.l
	v_and_b16 v37.l, 0xff, v66.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s28, s23, s19
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s20, 0, v37.l
	v_and_b16 v37.l, 0xff, v65.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s24, s24, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s21, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s24
	s_and_b32 s26, s25, s21
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v38, 0, 1, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v39.h, v38.l, v37.l
	v_cndmask_b32_e64 v37, 0, 1, s28
	v_cndmask_b32_e64 v38, 0, 1, s30
	v_lshlrev_b16 v37.l, 8, v37.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v39.l, v38.l, v37.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v67.l
	v_cmp_ne_u16_e64 s3, 0, v37.l
	v_and_b16 v37.l, 0xff, v67.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s22, s27, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s21, 0, v37.l
	v_and_b16 v37.l, 0xff, v68.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s21, s29, s21
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s19, 0, v37.l
	v_and_b16 v37.l, 0xff, v68.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s19, s33, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s20, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s19
	s_and_b32 s20, s31, s20
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v38, 0, 1, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v40.h, v38.l, v37.l
	v_cndmask_b32_e64 v37, 0, 1, s21
	v_cndmask_b32_e64 v38, 0, 1, s22
	v_lshlrev_b16 v37.l, 8, v37.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v40.l, v38.l, v37.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v69.l
	v_cmp_ne_u16_e64 s3, 0, v37.l
	v_and_b16 v37.l, 0xff, v69.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s35, s35, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s23, 0, v37.l
	v_and_b16 v37.l, 0xff, v70.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s34, s34, s23
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s25, 0, v37.l
	v_and_b16 v37.l, 0xff, v70.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s31, s38, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s27, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s31
	s_and_b32 s33, s36, s27
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v38, 0, 1, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v47.h, v38.l, v37.l
	v_cndmask_b32_e64 v37, 0, 1, s34
	v_cndmask_b32_e64 v38, 0, 1, s35
	v_lshlrev_b16 v37.l, 8, v37.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v47.l, v38.l, v37.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v71.l
	v_cmp_ne_u16_e64 s3, 0, v37.l
	v_and_b16 v37.l, 0xff, v71.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s29, s37, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s27, 0, v37.l
	v_and_b16 v37.l, 0xff, v75.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s27, s39, s27
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s23, 0, v37.l
	v_and_b16 v37.l, 0xff, v72.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s23, s41, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s25, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s23
	s_and_b32 s25, s40, s25
	v_lshlrev_b16 v37.l, 8, v37.l
	v_cndmask_b32_e64 v38, 0, 1, s25
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s100, s101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v37.h, v38.l, v37.l
	v_cndmask_b32_e64 v38, 0, 1, s27
	v_mov_b16_e32 v37.l, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v37.l, 8, v37.l
	v_or_b16 v37.l, v38.l, v37.l
	ds_store_2addr_b32 v203, v39, v40 offset1:32
	ds_store_2addr_b32 v203, v47, v37 offset0:64 offset1:96
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v106.l
	v_mov_b16_e64 v37.l, v165.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v38, v254, v119
	v_mul_f32_e32 v39, v254, v118
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v37, v38, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v107.l
	v_mov_b16_e64 v38.l, v165.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v254, v36
	v_mul_f32_e32 v40, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v108.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v254, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v109.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v254, v116
	v_dual_mul_f32 v48, v39, v38 :: v_dual_mul_f32 v39, v254, v115
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v110.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v56, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v101.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v254, v114
	v_mul_f32_e32 v65, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v102.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v254, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v66, v39, v38 :: v_dual_mul_f32 v39, v254, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v103.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v64, v39, v38 :: v_dual_mul_f32 v39, v254, v63
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v104.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v63, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v105.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v254, v62
	v_dual_mul_f32 v62, v39, v38 :: v_dual_mul_f32 v39, v254, v61
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v96.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v61, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v97.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v254, v60
	v_mul_f32_e32 v67, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v98.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v254, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v99.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v254, v58
	v_mul_f32_e32 v69, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v100.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v254, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v55, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v92.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v254, v54
	v_dual_mul_f32 v54, v39, v38 :: v_dual_mul_f32 v39, v254, v53
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v93.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v53, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v94.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v254, v52
	v_dual_mul_f32 v52, v39, v38 :: v_dual_mul_f32 v39, v254, v51
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v95.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v51, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v91.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v254, v50
	v_dual_mul_f32 v50, v39, v38 :: v_dual_mul_f32 v39, v254, v49
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v89.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v49, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v90.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v254, v46
	v_dual_mul_f32 v46, v39, v38 :: v_dual_mul_f32 v39, v254, v45
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v86.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v70, v39, v38 :: v_dual_mul_f32 v39, v254, v44
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v87.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v71, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v88.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v254, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v84.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v254, v42
	v_mul_f32_e32 v73, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v85.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v254, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v81.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v36, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v82.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v35, v35, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v83.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v34, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v112.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v76, v33, v38 :: v_dual_add_nc_u32 v33, 0, v184
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_b32 v41, v33
	ds_load_b32 v45, v204
	ds_load_b32 v60, v205
	ds_load_b32 v75, v206
	ds_load_b32 v80, v208
	ds_load_b32 v84, v209
	ds_load_b32 v89, v210
	ds_load_b32 v90, v211
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 877 25                        ; attention.py:877:25
	v_lshrrev_b16 v33.l, 8, v41.l
	v_and_b32_e32 v38, 1, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u32_e64 s67, 1, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s61, 1, v33.l
	v_lshrrev_b16 v33.l, 8, v45.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v39, 0xff800000, v37, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s60, 1, v33.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v33, v254, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v43, 0xff800000, v56, s60
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v33, v33, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v33, s67
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v33, 0x10000, v41
	v_cmp_ne_u32_e64 s65, 0, v33
	v_and_b32_e32 v33, 0x1000000, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v40, s65
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s66, 0, v33
	v_and_b32_e32 v33, 1, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, 0xff800000, v47, s66
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s64, 1, v33
	v_lshrrev_b16 v33.l, 8, v60.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v42, 0xff800000, v48, s64
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s59, 1, v33.l
	v_and_b32_e32 v33, 0x10000, v45
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v58, 0xff800000, v63, s59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s62, 0, v33
	v_and_b32_e32 v33, 0x1000000, v45
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, 0xff800000, v65, s62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s63, 0, v33
	v_and_b32_e32 v33, 1, v60
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v45, 0xff800000, v66, s63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s58, 1, v33
	v_and_b32_e32 v33, 0x10000, v60
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v57, 0xff800000, v64, s58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s56, 0, v33
	v_lshrrev_b16 v33.l, 8, v75.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v59, 0xff800000, v62, s56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s55, 1, v33.l
	v_and_b32_e32 v33, 0x1000000, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v86, 0xff800000, v68, s55
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s57, 0, v33
	v_and_b32_e32 v33, 1, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v60, 0xff800000, v61, s57
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s54, 1, v33
	v_and_b32_e32 v33, 0x10000, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v85, 0xff800000, v67, s54
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s52, 0, v33
	v_and_b32_e32 v33, 0x1000000, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v87, 0xff800000, v69, s52
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s53, 0, v33
	v_lshrrev_b16 v33.l, 8, v80.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v88, 0xff800000, v55, s53
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s51, 1, v33.l
	v_lshrrev_b16 v33.l, 8, v84.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v78, 0xff800000, v53, s51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s45, 1, v33.l
	v_and_b32_e32 v33, 1, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v82, 0xff800000, v49, s45
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s50, 1, v33
	v_and_b32_e32 v33, 0x10000, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, 0xff800000, v54, s50
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s48, 0, v33
	v_and_b32_e32 v33, 0x1000000, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v79, 0xff800000, v52, s48
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s49, 0, v33
	v_and_b32_e32 v33, 1, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v80, 0xff800000, v51, s49
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s47, 1, v33
	v_lshrrev_b16 v33.l, 8, v89.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v81, 0xff800000, v50, s47
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s43, 1, v33.l
	v_and_b32_e32 v33, 0x10000, v84
	v_cmp_ne_u32_e64 s44, 0, v33
	v_and_b32_e32 v33, 0x1000000, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v83, 0xff800000, v46, s44
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s46, 0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v84, 0xff800000, v70, s46
	v_cndmask_b32_e64 v70, 0xff800000, v72, s43
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v33, 1, v89
	v_cmp_eq_u32_e64 s42, 1, v33
	v_and_b32_e32 v33, 0x10000, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, 0xff800000, v71, s42
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s40, 0, v33
	v_lshrrev_b16 v33.l, 8, v90.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v71, 0xff800000, v73, s40
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s37, 1, v33.l
	v_and_b32_e32 v33, 0x1000000, v89
	v_cmp_ne_u32_e64 s41, 0, v33
	v_and_b32_e32 v33, 1, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v72, 0xff800000, v74, s41
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s38, 1, v33
	v_and_b32_e32 v33, 0x10000, v90
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v74, 0xff800000, v35, s37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v73, 0xff800000, v36, s38
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s36, 0, v33
	v_and_b32_e32 v33, 0x1000000, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v75, 0xff800000, v34, s36
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s39, 0, v33
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v33, 0, v189
	ds_store_b128 v33, v[38:41]
	ds_store_b128 v33, v[77:80] offset:2048
	v_mad_u64_u32 v[33:34], null, s79, s69, v[131:132]
	v_cndmask_b32_e64 v76, 0xff800000, v76, s39
	ds_store_b128 v242, v[42:45]
	ds_store_b128 v242, v[81:84] offset:2048
	ds_store_b128 v243, v[57:60]
	ds_store_b128 v243, v[69:72] offset:2048
	ds_store_b128 v244, v[85:88]
	ds_store_b128 v244, v[73:76] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[113:116], v241 offset:1024
	ds_load_b128 v[105:108], v241 offset:1280
	ds_load_b128 v[117:120], v241
	ds_load_b128 v[109:112], v241 offset:256
	ds_load_b128 v[97:100], v241 offset:1536
	ds_load_b128 v[89:92], v241 offset:1792
	ds_load_b128 v[101:104], v241 offset:512
	ds_load_b128 v[93:96], v241 offset:768
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v34, v33, s76, 1
	v_lshlrev_b32_e32 v35, 1, v33
	v_add_lshl_u32 v36, v33, s69, 1
	v_add_lshl_u32 v37, v33, s77, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v34, 0x80000000, v34, s0
	v_cndmask_b32_e64 v46, 0x80000000, v35, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v33, 0x80000000, v36, s0
	v_cndmask_b32_e64 v35, 0x80000000, v37, s0
	s_clause 0x3
	buffer_load_b128 v[50:53], v34, s[92:95], 0 offen
	buffer_load_b128 v[34:37], v35, s[92:95], 0 offen
	buffer_load_b128 v[46:49], v46, s[92:95], 0 offen
	buffer_load_b128 v[61:64], v33, s[92:95], 0 offen
	v_add_nc_u32_e32 v33, 0, v190
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v55.l, v50.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v55.h, v34.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v54.h, v61.l
	v_mov_b16_e32 v54.l, v46.l
	v_mov_b16_e32 v61.l, v46.h
	v_mov_b16_e32 v34.l, v50.h
	v_mov_b16_e32 v46.h, v63.l
	v_mov_b16_e32 v46.l, v48.l
	ds_store_b64 v33, v[54:55]
	v_mov_b32_e32 v33, v61
	v_mov_b16_e32 v54.h, v62.l
	v_mov_b16_e32 v62.l, v47.h
	v_mov_b16_e32 v55.l, v51.l
	v_mov_b16_e32 v55.h, v35.l
	v_mov_b16_e32 v54.l, v47.l
	ds_store_b64 v245, v[33:34]
	ds_store_b64 v246, v[54:55]
	v_mov_b16_e32 v35.l, v51.h
	v_mov_b32_e32 v34, v62
	v_mov_b16_e32 v47.l, v52.l
	v_mov_b16_e32 v47.h, v36.l
	v_mov_b16_e32 v63.l, v48.h
	ds_store_b64 v247, v[34:35]
	ds_store_b64 v248, v[46:47]
	v_mov_b16_e32 v34.h, v37.l
	v_mov_b16_e32 v37.l, v53.h
	v_mov_b16_e32 v36.l, v52.h
	v_mov_b32_e32 v35, v63
	v_mov_b16_e32 v34.l, v53.l
	v_mov_b16_e32 v33.l, v49.l
	v_mov_b16_e32 v33.h, v64.l
	v_mov_b32_e32 v65, v37
	v_mov_b16_e32 v64.l, v49.h
	ds_store_b64 v249, v[35:36]
	ds_store_b64 v250, v[33:34]
	ds_store_b64 v251, v[64:65]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v58, v59, v60
	v_max3_f32 v34, v85, v86, v87
	v_max3_f32 v35, v88, v77, v78
	v_max3_f32 v36, v69, v70, v71
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v33, v34, v35
	v_max3_f32 v34, v79, v80, v81
	v_max3_f32 v35, v82, v83, v84
	v_max3_f32 v34, v34, v35, v36
	v_max_f32_e32 v35, v38, v39
	v_max3_f32 v36, v41, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v35, v35, v40, v36
	v_max3_f32 v36, v44, v45, v57
	v_max3_f32 v33, v35, v36, v33
	v_dual_max_f32 v35, v72, v73 :: v_dual_max_f32 v36, v75, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v35, v35, v74, v36
	v_max3_f32 v33, v33, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v33, s102, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v168, v166, v33, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v39, v168
	v_sub_f32_e32 v33, v38, v168
	v_sub_f32_e32 v36, v41, v168
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v41.h, v165.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v42, v168
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v40, v168
	v_sub_f32_e32 v38, v43, v168
	v_sub_f32_e32 v39, v44, v168
	v_sub_f32_e32 v40, v45, v168
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s61
	v_cndmask_b32_e64 v33, 0, v33, s67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s61, v33, v33
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v34, v41, 0x7fff
	v_mov_b16_e32 v34.l, v33.h
	v_mov_b16_e64 v34.h, v165.l
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v33, v34, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v41.h, s3
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v33, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v41, v34, v33, v252
	v_perm_b32 v42, v34, v33, v253
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v165.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v60, v168
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s66
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v165.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	v_cmp_o_f32_e64 s61, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v33, v35, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v33.l, 0x7fff, v35.h, s61
	v_mov_b16_e64 v35.h, v165.l
	v_permlanex16_b32 v34, v33, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v43, v34, v33, v252
	v_perm_b32 v44, v34, v33, v253
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v165.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s64
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s60, v33, v33
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v33, v35, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s3
	v_cndmask_b16 v33.l, 0x7fff, v35.h, s60
	v_mov_b16_e64 v35.h, v165.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v33, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v45, v34, v33, v252
	v_perm_b32 v46, v34, v33, v253
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v165.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s63
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v39
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[65:68], v221
	ds_load_b128 v[37:40], v218
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s62
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s60, v33, v33
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v35, v33, v35, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v166
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v33.l, 0x7fff, v35.h, s60
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v59, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v34, v33, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v47, v34, v33, v252
	v_perm_b32 v48, v34, v33, v253
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v33, v166, v168 :: v_dual_add_nc_u32 v166, 0, v187
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[133:136], v166
	ds_load_b128 v[137:140], v212
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v58, v168
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[53:56], v213
	ds_load_b128 v[61:64], v166 offset:2048
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v33, 0, v33, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v33
	v_mul_f32_e32 v10, v10, v33
	v_mul_f32_e32 v11, v11, v33
	v_mul_f32_e32 v12, v12, v33
	v_mul_f32_e32 v13, v13, v33
	v_mul_f32_e32 v14, v14, v33
	v_mul_f32_e32 v15, v15, v33
	v_mul_f32_e32 v16, v16, v33
	v_mul_f32_e32 v25, v25, v33
	v_mul_f32_e32 v26, v26, v33
	v_mul_f32_e32 v27, v27, v33
	v_mul_f32_e32 v28, v28, v33
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[133:140], v[41:48], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[133:136], v219
	ds_load_b128 v[137:140], v220
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v33
	v_mul_f32_e32 v30, v30, v33
	v_mul_f32_e32 v31, v31, v33
	v_mul_f32_e32 v32, v32, v33
	v_mul_f32_e32 v17, v17, v33
	v_mul_f32_e32 v18, v18, v33
	v_mul_f32_e32 v19, v19, v33
	v_mul_f32_e32 v20, v20, v33
	v_mul_f32_e32 v21, v21, v33
	v_mul_f32_e32 v22, v22, v33
	v_mul_f32_e32 v23, v23, v33
	v_mul_f32_e32 v24, v24, v33
	v_mul_f32_e32 v1, v1, v33
	v_mul_f32_e32 v2, v2, v33
	v_mul_f32_e32 v3, v3, v33
	v_mul_f32_e32 v4, v4, v33
	v_mul_f32_e32 v5, v5, v33
	v_mul_f32_e32 v6, v6, v33
	v_mul_f32_e32 v7, v7, v33
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[133:140], v[41:48], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[133:136], v226
	ds_load_b128 v[137:140], v227
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v8, v8, v33 :: v_dual_sub_f32 v33, v57, v168
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v34, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s58
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[133:140], v[41:48], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[133:136], v234
	ds_load_b128 v[137:140], v235
	ds_load_b128 v[149:152], v236
	ds_load_b128 v[49:52], v233
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s58, v33, v33
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[133:140], v[41:48], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.l, v34.h
	v_mov_b16_e64 v41.h, v165.l
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v46, v86, v168
	v_sub_f32_e32 v45, v85, v168
	v_sub_f32_e32 v48, v88, v168
	v_sub_f32_e32 v47, v87, v168
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v41
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[57:60], v214
	ds_load_b128 v[133:136], v215
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v41, v34, v41, 0x7fff
	v_mov_b16_e32 v34.l, v33.h
	v_mov_b16_e64 v34.h, v165.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v33, v34, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v41.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s58
	v_permlanex16_b32 v34, v33, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_perm_b32 v41, v34, v33, v252
	v_perm_b32 v42, v34, v33, v253
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v165.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v80, v168
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v165.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s56
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s56, v33, v33
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v33, v35, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s3
	v_cndmask_b16 v33.l, 0x7fff, v35.h, s56
	v_mov_b16_e64 v35.h, v165.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v33, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v43, v34, v33, v252
	v_perm_b32 v44, v34, v33, v253
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v46
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v165.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s55
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v45
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	v_cmp_o_f32_e64 s54, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v33, v35, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v33.l, 0x7fff, v35.h, s54
	v_mov_b16_e64 v35.h, v165.l
	v_permlanex16_b32 v34, v33, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v45, v34, v33, v252
	v_perm_b32 v46, v34, v33, v253
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v48
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v165.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s52
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s52, v33, v33
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v33, v35, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s3
	v_cndmask_b16 v33.l, 0x7fff, v35.h, s52
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v79, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v34, v33, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v47, v34, v33, v252
	v_perm_b32 v48, v34, v33, v253
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v78, v168
	v_sub_f32_e32 v33, v77, v168
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[53:60], v[41:48], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[53:56], v228
	ds_load_b128 v[57:60], v229
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[61:68], v[41:48], v[25:32]
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s51
	v_cndmask_b32_e64 v33, 0, v33, s50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s50, v33, v33
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[53:60], v[41:48], v[17:24]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[153:156], v237
	ds_load_b128 v[53:56], v238
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[149:156], v[41:48], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e32 v45.l, v34.h
	v_mov_b16_e64 v45.h, v165.l
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v42, v82, v168
	v_sub_f32_e32 v41, v81, v168
	v_sub_f32_e32 v44, v84, v168
	v_sub_f32_e32 v43, v83, v168
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v34, v45, 0x7fff
	v_mov_b16_e32 v34.l, v33.h
	v_mov_b16_e64 v34.h, v165.l
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v33, v34, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v45.h, s3
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v33, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v61, v34, v33, v252
	v_perm_b32 v62, v34, v33, v253
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v165.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s49
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v165.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	v_cmp_o_f32_e64 s48, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v33, v35, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v33.l, 0x7fff, v35.h, s48
	v_mov_b16_e64 v35.h, v165.l
	v_permlanex16_b32 v34, v33, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v63, v34, v33, v252
	v_perm_b32 v64, v34, v33, v253
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v165.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s47
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s45, v33, v33
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v33, v35, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s3
	v_cndmask_b16 v33.l, 0x7fff, v35.h, s45
	v_mov_b16_e64 v35.h, v165.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v33, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v34, v33, v252
	v_perm_b32 v66, v34, v33, v253
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v44
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v165.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s46
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v43
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[41:44], v222
	ds_load_b128 v[45:48], v223
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s44
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s44, v33, v33
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v33, v35, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s3
	v_cndmask_b16 v33.l, 0x7fff, v35.h, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v33, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v34, v33, v252
	v_perm_b32 v68, v34, v33, v253
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[137:140], v216
	ds_load_b128 v[33:36], v217
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[41:48], v[61:68], v[25:32]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v70, v168
	v_sub_f32_e32 v41, v69, v168
	v_sub_f32_e32 v44, v72, v168
	v_sub_f32_e32 v43, v71, v168
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v41, v41
	.loc	1 896 23 is_stmt 1              ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[133:140], v[61:68], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[57:60], v239
	ds_load_b128 v[137:140], v240
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s43
	v_cndmask_b32_e64 v41, 0, v41, s42
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[77:80], v166 offset:4096
	ds_load_b128 v[81:84], v231
	ds_load_b128 v[45:48], v232
	ds_load_b128 v[133:136], v166 offset:6144
	v_mov_b32_e32 v166, v168
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v42, v42
	v_cmp_o_f32_e64 s42, v41, v41
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[53:60], v[61:68], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v53.l, v42.h
	v_mov_b16_e64 v53.h, v165.l
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v58, v74, v168
	v_sub_f32_e32 v57, v73, v168
	v_sub_f32_e32 v60, v76, v168
	v_sub_f32_e32 v59, v75, v168
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v53, 1, v53
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[77:84], v[61:68], v[17:24]
.Ltmp6:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v96, v96
	v_max3_f32 v62, v90, v95, v91
.Ltmp7:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v53, v42, v53, 0x7fff
	v_mov_b16_e32 v42.l, v41.h
	v_mov_b16_e64 v42.h, v165.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v42, v41, v42, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v53.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s42
	v_permlanex16_b32 v42, v41, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_perm_b32 v53, v42, v41, v252
	v_perm_b32 v54, v42, v41, v253
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v44
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v42.h, v165.l
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v44, v106, v111, v107
.Ltmp9:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v41.h
	v_cmp_o_f32_e64 s3, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v42, v41, v42, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v43.h, v165.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s40
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v43.l, v41.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s40, v41, v41
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v43, v41, v43, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v42.h, s3
	v_cndmask_b16 v41.l, 0x7fff, v43.h, s40
	v_mov_b16_e64 v43.h, v165.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v41, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v42, v41, v252
	v_perm_b32 v56, v42, v41, v253
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v58
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v42.h, v165.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v41.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v41, v41
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v42, v41, v42, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v57
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v43.l, v41.h
	v_cmp_o_f32_e64 s37, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v41, v43, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v42.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v41.l, 0x7fff, v43.h, s37
	v_mov_b16_e64 v43.h, v165.l
	v_permlanex16_b32 v42, v41, s102, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v57, v42, v41, v252
	v_perm_b32 v58, v42, v41, v253
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v60
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v42.h, v165.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v41.h
	v_cmp_o_f32_e64 s3, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v42, v41, v42, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v43.l, v41.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s36, v41, v41
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v43, v41, v43, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v42.h, s3
	v_cndmask_b16 v41.l, 0x7fff, v43.h, s36
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v112, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v42, v41, s102, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v59, v42, v41, v252
	v_perm_b32 v60, v42, v41, v253
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v108, v108
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp13:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[53:60], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[33:36], v224
	ds_load_b128 v[37:40], v225
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[45:52], v[53:60], v[17:24]
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v100, v100
	v_max_f32_e32 v52, v104, v104
.Ltmp15:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[133:140], v[53:60], v[1:8]
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v43, v42
	v_max3_f32 v43, v109, v105, v110
	v_max_f32_e32 v51, v52, v51
	v_max3_f32 v52, v101, v97, v102
	s_delay_alu instid0(VALU_DEP_3)
	v_max3_f32 v42, v43, v44, v42
.Ltmp17:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[53:60], v[25:32]
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v116, v116
	v_max_f32_e32 v34, v120, v120
	v_max3_f32 v35, v114, v119, v115
	v_max3_f32 v53, v98, v103, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v60, v92, v92 :: v_dual_max_f32 v33, v34, v33
	v_max3_f32 v34, v117, v113, v118
	v_max3_f32 v51, v52, v53, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v60, v61, v60
	v_max3_f32 v61, v93, v89, v94
	v_max3_f32 v33, v34, v35, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v52, v51
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v60, v61, v62, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v52, v52 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v61, v60
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v61 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v51, v51, v52
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v33, v33, v34 :: v_dual_mov_b32 v52, v51
	v_max_f32_e32 v60, v60, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v61, v60
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v61 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v51, v51, v52
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v33, v33, v34 :: v_dual_mov_b32 v52, v51
	v_max_f32_e32 v60, v60, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v61, v60
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v51, v51, v52
.Ltmp33:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v52, v171, v171 :: v_dual_max_f32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v33, v34
.Ltmp35:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v169, v169
	v_max_f32_e32 v171, v52, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v61
.Ltmp37:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v61, v172, v172
	v_max_f32_e32 v169, v33, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v101, v171
	v_sub_f32_e32 v56, v97, v171
	v_sub_f32_e32 v53, v102, v171
	v_sub_f32_e32 v57, v98, v171
	v_sub_f32_e32 v33, v117, v169
	v_sub_f32_e32 v38, v113, v169
	v_sub_f32_e32 v34, v118, v169
	v_sub_f32_e32 v39, v114, v169
	v_sub_f32_e32 v35, v119, v169
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v34, v34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v115, v169
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v120, v169
	v_dual_sub_f32 v41, v116, v169 :: v_dual_sub_f32 v54, v103, v171
	v_sub_f32_e32 v58, v99, v171
	v_sub_f32_e32 v55, v104, v171
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s12
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v38, 0, v38, s30
	v_cndmask_b32_e64 v34, 0, v34, s10
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s8
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v59, v100, v171
.Ltmp38:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v38
.Ltmp39:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v39
	v_exp_f32_e32 v39, v57
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v172, v61, v60
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s4
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v66, v90, v172
	v_sub_f32_e32 v61, v93, v172
	v_sub_f32_e32 v65, v89, v172
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s28
	v_cndmask_b32_e64 v39, 0, v39, s34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v94, v172
	v_sub_f32_e32 v63, v95, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_sub_f32 v67, v91, v172 :: v_dual_add_f32 v34, v34, v38
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v40
	v_exp_f32_e32 v40, v58
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v96, v172
	v_dual_sub_f32 v68, v92, v172 :: v_dual_add_f32 v33, v33, v34
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v52
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s26
	v_cndmask_b32_e64 v40, 0, v40, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp40:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v38
.Ltmp41:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v41
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s18
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v59
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s24
	v_cndmask_b32_e64 v41, 0, v41, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v38
.Ltmp43:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v56
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_e32 v33, v33, v35
.Ltmp45:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v35, v33 :: v_dual_add_f32 v34, v34, v38
.Ltmp47:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v53
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v35
.Ltmp50:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp52:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v54
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s16
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v40
.Ltmp56:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s14
.Ltmp57:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp58:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v39, v40
	v_add_f32_e32 v34, v34, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp60:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s27
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v43, v42
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v34, v34, v35 :: v_dual_mov_b32 v35, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v43
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v43, v42
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v34, v34, v35 :: v_dual_mov_b32 v35, v33
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v36, v34
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v35
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v43, v43, v43 :: v_dual_add_f32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v42, v42, v43
.Ltmp83:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v43, v170, v170
	v_max_f32_e32 v170, v43, v42
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v109, v170
	v_sub_f32_e32 v47, v105, v170
	v_sub_f32_e32 v44, v110, v170
	v_sub_f32_e32 v48, v106, v170
	v_sub_f32_e32 v45, v111, v170
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v43
	v_exp_f32_e32 v36, v47
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v107, v170
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v48
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v112, v170
	v_sub_f32_e32 v50, v108, v170
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v67
	v_exp_f32_e32 v39, v49
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s7
	v_cndmask_b32_e64 v36, 0, v36, s22
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v50
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
.Ltmp84:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp85:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v44
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s20
	v_cndmask_b32_e64 v43, 0, v43, s25
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v68
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s19
	v_cndmask_b32_e64 v36, 0, v36, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v44, 0, v44, s23
.Ltmp86:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v38
.Ltmp87:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp89:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v61
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp90:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp91:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v46
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v39, 0, v39, s1
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v174
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v40
.Ltmp93:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
	v_add_f32_e32 v35, v35, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp95:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s29
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v38, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v40
.Ltmp98:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v62
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v38, v38 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v38
.Ltmp101:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp103:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v63
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp105:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s11
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v43
.Ltmp107:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s9
.Ltmp108:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v43, v43, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v39, v41, v43
	v_add_f32_e32 v36, v36, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v38, v36
	v_mov_b32_dpp v38, v38 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v38
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v38, v35
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v35, v35, v38 :: v_dual_mov_b32 v38, v36
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v38
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v38, v35 :: v_dual_mov_b32 v39, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v39, v39 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v38
.Ltmp117:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v38, v174, v174
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v36, v36, v39 :: v_dual_max_f32 v37, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp119:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v38, v174, v37
	v_mov_b32_e32 v174, v37
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v38, 0, v38, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v173
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v33, v230, v38 :: v_dual_max_f32 v38, v173, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v230, v33
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v38, v38, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v39, v173, v38
	v_mov_b32_e32 v173, v38
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v39, 0, v39, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v186
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v35, v207, v39
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v39, v186, v186
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v207, v35
	v_max_f32_e32 v39, v39, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v40, v186, v39
	v_mov_b32_e32 v186, v39
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v40, 0, v40, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v255
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v34, v202, v40
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v40, v255, v255
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v202, v34
	v_max_f32_e32 v40, v40, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v255, v40
	v_mov_b32_e32 v255, v40
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v41, 0, v41, s1
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v36, v195, v41
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v195, v36
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_70
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s79, s100, s91
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v37, 0, v175
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[33:34], null, s79, s90, v[121:122]
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v65, s80 :: v_dual_mov_b32 v70, s85
	v_dual_mov_b32 v66, s81 :: v_dual_mov_b32 v67, s82
	v_dual_mov_b32 v72, s87 :: v_dual_mov_b32 v69, s84
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v33, 0x80000000, v33, s68
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v71, s86
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v80, s100, v122
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s4, s78, s100
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v68, s83
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[33:36], v33, s[72:75], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[33:34]
	ds_store_b64 v191, v[35:36]
	v_add_nc_u32_e32 v37, 0, v176
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v80, v132
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v37 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v37 offset0:2 offset1:3
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v80, v188
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s6, vcc_lo, s1
	.loc	1 828 33 is_stmt 1              ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[33:34], v[129:130], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[35:36], v[129:130], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[129:130], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[75:76], v[129:130], v[65:72] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[65:68], v192 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v192 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[127:128], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[67:68], v[127:128], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[69:70], v[127:128], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[71:72], v[127:128], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[65:68], v193 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v193 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[125:126], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[67:68], v[125:126], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[69:70], v[125:126], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[71:72], v[125:126], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[65:68], v194 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v194 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[123:124], v[57:64] neg_lo:[1,1,0]
	v_or_b32_e32 v65, s91, v148
	v_wmma_i32_16x16x16_iu4 v[49:56], v[67:68], v[123:124], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[69:70], v[123:124], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[71:72], v[123:124], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v111, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v106, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v163
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v107, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v108, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v161
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v109, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v110, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v159
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v101, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v102, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v157
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v103, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v104, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v182
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v105, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v96, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v180
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v97, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v98, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v178
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v99, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v100, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v167
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v92, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v93, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v146
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v94, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v95, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v144
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v91, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v89, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v142
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v90, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 46, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v65, s91, v65
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v86, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, s91, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v87, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 50, v148
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v88, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 52, v148
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v84, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 54, v148
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v85, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 56, v148
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v81, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 58, v148
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v82, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 60, v148
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v83, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 62, v148
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v65, s100, 1
	buffer_load_u16 v112, v65, s[96:99], 0 offen
	v_mov_b16_e32 v65.l, 0
	v_mov_b16_e32 v73.h, v65.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s6
	s_cbranch_execz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v66, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s4, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v67, 31, v66
	v_add_co_u32 v66, s1, s70, v66
	v_add_co_ci_u32_e64 v67, null, s71, v67, s1
	.loc	1 877 34                        ; attention.py:877:34
	global_load_d16_hi_u8 v73, v[66:67], off
.LBB0_8:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v66, 1, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v114, s100, v66
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v114, v132
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v114, v188
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, vcc_lo, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s22
	s_cbranch_execz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v65, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v65, s4, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v66, 31, v65
	v_add_co_u32 v65, s1, s70, v65
	v_add_co_ci_u32_e64 v66, null, s71, v66, s1
	global_load_d16_u8 v65, v[65:66], off
.LBB0_10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v66, 2, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v113, s100, v66
	v_mov_b16_e32 v66.l, 0
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v113, v132
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v113, v188
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v75.h, v66.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s7, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s7
	s_cbranch_execz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v67, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s4, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v68, 31, v67
	v_add_co_u32 v67, s1, s70, v67
	v_add_co_ci_u32_e64 v68, null, s71, v68, s1
	global_load_d16_hi_u8 v75, v[67:68], off
.LBB0_12:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v67, 3, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v116, s100, v67
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v116, v132
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v116, v188
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s23, vcc_lo, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s23
	s_cbranch_execz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v66, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s4, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v67, 31, v66
	v_add_co_u32 v66, s1, s70, v66
	v_add_co_ci_u32_e64 v67, null, s71, v67, s1
	global_load_d16_u8 v66, v[66:67], off
.LBB0_14:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v67, 4, v122
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v65.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v115, s100, v67
	v_mov_b16_e32 v74.l, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v115, v132
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v115, v188
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s8, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s8
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v67, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s4, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v68, 31, v67
	v_add_co_u32 v67, s1, s70, v67
	v_add_co_ci_u32_e64 v68, null, s71, v68, s1
	global_load_d16_u8 v74, v[67:68], off
.LBB0_16:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v67, 5, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v118, s100, v67
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v118, v132
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v118, v188
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s25, vcc_lo, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s25
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v67, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s4, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v68, 31, v67
	v_add_co_u32 v67, s1, s70, v67
	v_add_co_ci_u32_e64 v68, null, s71, v68, s1
	global_load_d16_hi_u8 v65, v[67:68], off
.LBB0_18:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v67, 6, v122
	v_mov_b16_e32 v66.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v117, s100, v67
	v_mov_b16_e32 v76.h, v66.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v117, v132
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v117, v188
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s10, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s10
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v67, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s4, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v68, 31, v67
	v_add_co_u32 v67, s1, s70, v67
	v_add_co_ci_u32_e64 v68, null, s71, v68, s1
	global_load_d16_hi_u8 v76, v[67:68], off
.LBB0_20:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v67, 7, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v119, s100, v67
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v119, v132
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v119, v188
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s24, vcc_lo, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s24
	s_cbranch_execz .LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v67, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s4, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v68, 31, v67
	v_add_co_u32 v67, s1, s70, v67
	v_add_co_ci_u32_e64 v68, null, s71, v68, s1
	global_load_d16_hi_u8 v66, v[67:68], off
.LBB0_22:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v67.l, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v80, v196
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v80, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v72.l, v67.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s9, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s9
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v68, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s4, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v69, 31, v68
	v_add_co_u32 v68, s1, s70, v68
	v_add_co_ci_u32_e64 v69, null, s71, v69, s1
	global_load_d16_u8 v72, v[68:69], off
.LBB0_24:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v114, v196
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v114, v199
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s27, vcc_lo, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s27
	s_cbranch_execz .LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v67, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s4, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v68, 31, v67
	v_add_co_u32 v67, s1, s70, v67
	v_add_co_ci_u32_e64 v68, null, s71, v68, s1
	global_load_d16_u8 v67, v[67:68], off
.LBB0_26:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v67.h, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v113, v196
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v113, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v73.l, v67.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s11, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s11
	s_cbranch_execz .LBB0_28
; %bb.27:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v68, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s4, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v69, 31, v68
	v_add_co_u32 v68, s1, s70, v68
	v_add_co_ci_u32_e64 v69, null, s71, v69, s1
	global_load_d16_u8 v73, v[68:69], off
.LBB0_28:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v116, v196
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v116, v199
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s29, vcc_lo, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s29
	s_cbranch_execz .LBB0_30
; %bb.29:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v68, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s4, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v69, 31, v68
	v_add_co_u32 v68, s1, s70, v68
	v_add_co_ci_u32_e64 v69, null, s71, v69, s1
	global_load_d16_hi_u8 v67, v[68:69], off
.LBB0_30:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v68.l, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v115, v196
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v115, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v74.h, v68.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s13, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s13
	s_cbranch_execz .LBB0_32
; %bb.31:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v69, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s4, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v70, 31, v69
	v_add_co_u32 v69, s1, s70, v69
	v_add_co_ci_u32_e64 v70, null, s71, v70, s1
	global_load_d16_hi_u8 v74, v[69:70], off
.LBB0_32:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v118, v196
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v118, v199
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s31, vcc_lo, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s31
	s_cbranch_execz .LBB0_34
; %bb.33:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v68, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s4, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v69, 31, v68
	v_add_co_u32 v68, s1, s70, v68
	v_add_co_ci_u32_e64 v69, null, s71, v69, s1
	global_load_d16_u8 v68, v[68:69], off
.LBB0_34:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v68.h, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v117, v196
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v117, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v77.l, v68.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s14, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s14
	s_cbranch_execz .LBB0_36
; %bb.35:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v69, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s4, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v70, 31, v69
	v_add_co_u32 v69, s1, s70, v69
	v_add_co_ci_u32_e64 v70, null, s71, v70, s1
	global_load_d16_u8 v77, v[69:70], off
.LBB0_36:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v119, v196
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v119, v199
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s33, vcc_lo, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s33
	s_cbranch_execz .LBB0_38
; %bb.37:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v69, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s4, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v70, 31, v69
	v_add_co_u32 v69, s1, s70, v69
	v_add_co_ci_u32_e64 v70, null, s71, v70, s1
	global_load_d16_hi_u8 v68, v[69:70], off
.LBB0_38:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v69.l, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v80, v197
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v80, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v76.l, v69.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s15, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s15
	s_cbranch_execz .LBB0_40
; %bb.39:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v70, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s4, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v71, 31, v70
	v_add_co_u32 v70, s1, s70, v70
	v_add_co_ci_u32_e64 v71, null, s71, v71, s1
	global_load_d16_u8 v76, v[70:71], off
.LBB0_40:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v114, v197
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v114, v200
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s35, vcc_lo, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s35
	s_cbranch_execz .LBB0_42
; %bb.41:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v69, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s4, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v70, 31, v69
	v_add_co_u32 v69, s1, s70, v69
	v_add_co_ci_u32_e64 v70, null, s71, v70, s1
	global_load_d16_u8 v69, v[69:70], off
.LBB0_42:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v69.h, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v113, v197
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v113, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v77.h, v69.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s17, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s17
	s_cbranch_execz .LBB0_44
; %bb.43:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v70, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s4, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v71, 31, v70
	v_add_co_u32 v70, s1, s70, v70
	v_add_co_ci_u32_e64 v71, null, s71, v71, s1
	global_load_d16_hi_u8 v77, v[70:71], off
.LBB0_44:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v116, v197
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v116, v200
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s34, vcc_lo, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s34
	s_cbranch_execz .LBB0_46
; %bb.45:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v70, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s4, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v71, 31, v70
	v_add_co_u32 v70, s1, s70, v70
	v_add_co_ci_u32_e64 v71, null, s71, v71, s1
	global_load_d16_hi_u8 v69, v[70:71], off
.LBB0_46:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v70.l, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v115, v197
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v115, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v78.l, v70.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s16, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s16
	s_cbranch_execz .LBB0_48
; %bb.47:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v71, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s4, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v79, 31, v71
	v_add_co_u32 v78, s1, s70, v71
	v_add_co_ci_u32_e64 v79, null, s71, v79, s1
	global_load_d16_u8 v78, v[78:79], off
.LBB0_48:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v118, v197
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v118, v200
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s36, vcc_lo, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s36
	s_cbranch_execz .LBB0_50
; %bb.49:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v70, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s4, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v71, 31, v70
	v_add_co_u32 v70, s1, s70, v70
	v_add_co_ci_u32_e64 v71, null, s71, v71, s1
	global_load_d16_u8 v70, v[70:71], off
.LBB0_50:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v70.h, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v117, v197
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v117, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v79.l, v70.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s18, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s18
	s_cbranch_execz .LBB0_52
; %bb.51:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v71, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s4, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v79, 31, v71
	v_add_co_u32 v133, s1, s70, v71
	v_add_co_ci_u32_e64 v134, null, s71, v79, s1
	global_load_d16_u8 v79, v[133:134], off
.LBB0_52:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v119, v197
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v119, v200
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s38, vcc_lo, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s38
	s_cbranch_execz .LBB0_54
; %bb.53:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v71, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s4, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v120, 31, v71
	v_add_co_u32 v133, s1, s70, v71
	v_add_co_ci_u32_e64 v134, null, s71, v120, s1
	global_load_d16_hi_u8 v70, v[133:134], off
.LBB0_54:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v71.l, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v80, v198
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v80, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v78.h, v71.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s19, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s19
	s_cbranch_execz .LBB0_56
; %bb.55:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v80, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v80, s4, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v120, 31, v80
	v_add_co_u32 v133, s1, s70, v80
	v_add_co_ci_u32_e64 v134, null, s71, v120, s1
	global_load_d16_hi_u8 v78, v[133:134], off
.LBB0_56:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v114, v198
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v114, v201
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s37, vcc_lo, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s37
	s_cbranch_execz .LBB0_58
; %bb.57:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v71, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s4, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v80, 31, v71
	v_add_co_u32 v133, s1, s70, v71
	v_add_co_ci_u32_e64 v134, null, s71, v80, s1
	global_load_d16_u8 v71, v[133:134], off
.LBB0_58:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v71.h, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v113, v198
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v113, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v79.h, v71.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s20, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s20
	s_cbranch_execz .LBB0_60
; %bb.59:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v80, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v80, s4, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v114, 31, v80
	v_add_co_u32 v113, s1, s70, v80
	v_add_co_ci_u32_e64 v114, null, s71, v114, s1
	global_load_d16_hi_u8 v79, v[113:114], off
.LBB0_60:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v116, v198
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v116, v201
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s39, vcc_lo, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s39
	s_cbranch_execz .LBB0_62
; %bb.61:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v80, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v80, s4, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v114, 31, v80
	v_add_co_u32 v113, s1, s70, v80
	v_add_co_ci_u32_e64 v114, null, s71, v114, s1
	global_load_d16_hi_u8 v71, v[113:114], off
.LBB0_62:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v72.h, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v115, v198
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v115, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v80.l, v72.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s21, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s21
	s_cbranch_execz .LBB0_64
; %bb.63:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v80, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v80, s4, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v114, 31, v80
	v_add_co_u32 v113, s1, s70, v80
	v_add_co_ci_u32_e64 v114, null, s71, v114, s1
	global_load_d16_u8 v80, v[113:114], off
.LBB0_64:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v118, v198
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v118, v201
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s40, vcc_lo, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s40
	s_cbranch_execz .LBB0_66
; %bb.65:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v113, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v113, s4, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v114, 31, v113
	v_add_co_u32 v113, s1, s70, v113
	v_add_co_ci_u32_e64 v114, null, s71, v114, s1
	global_load_d16_hi_u8 v72, v[113:114], off
.LBB0_66:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v75.l, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v117, v198
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v117, v201
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v80.h, v75.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s26, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s26
	s_cbranch_execz .LBB0_68
; %bb.67:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v113, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v113, s4, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v114, 31, v113
	v_add_co_u32 v113, s1, s70, v113
	v_add_co_ci_u32_e64 v114, null, s71, v114, s1
	global_load_d16_hi_u8 v80, v[113:114], off
.LBB0_68:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v119, v198
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v119, v201
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s41, vcc_lo, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s41
	s_cbranch_execz .LBB0_5
; %bb.69:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v113, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v113, s4, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v114, 31, v113
	v_add_co_u32 v113, s1, s70, v113
	v_add_co_ci_u32_e64 v114, null, s71, v114, s1
	global_load_d16_u8 v75, v[113:114], off
	s_branch .LBB0_5
.LBB0_70:                               ; %Flow
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b32 v63, off, off offset:160 ; 4-byte Folded Reload
	v_lshlrev_b32_e32 v46, 2, v0
	v_and_b32_e32 v65, 15, v0
	v_and_b32_e32 v69, 0x78, v0
.LBB0_71:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_lshrrev_b32_e32 v0, 4, v0
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v37, 0x80, v46
	v_lshl_add_u32 v38, v65, 3, 0
	v_add_nc_u32_e32 v39, 0, v69
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s89, s89, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	ds_store_2addr_b64 v39, v[33:34], v[35:36] offset1:16
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v38, v37, v0
	s_barrier
	s_mov_b32 s91, 0x31027000
	s_mov_b32 s90, 0x7ffffffe
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v9
	v_div_scale_f32 v35, null, v0, v0, v10
	v_div_scale_f32 v37, null, v0, v0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_div_scale_f32 v39, null, v0, v0, v12
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v13
	v_div_scale_f32 v43, null, v0, v0, v14
	v_rcp_f32_e32 v48, v39
	v_rcp_f32_e32 v49, v41
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_div_scale_f32 v34, vcc_lo, v9, v0, v9
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s0, v10, v0, v10
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v38, s1, v11, v0, v11
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_mul_f32 v54, v34, v45
	v_fma_f32 v58, -v41, v49, 1.0
	v_div_scale_f32 v40, s3, v12, v0, v12
	v_fma_f32 v59, -v43, v50, 1.0
	v_dual_fmac_f32 v48, v57, v48 :: v_dual_mul_f32 v55, v36, v46
	v_mul_f32_e32 v56, v38, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v49, v58, v49 :: v_dual_fmac_f32 v50, v59, v50
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s4, v13, v0, v13
	v_mul_f32_e32 v57, v40, v48
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v15
	v_mul_f32_e32 v62, v42, v49
	v_fma_f32 v61, -v39, v57, v40
	v_dual_fmac_f32 v55, v59, v46 :: v_dual_fmac_f32 v56, v60, v47
	v_fma_f32 v33, -v33, v54, v34
	v_rcp_f32_e32 v53, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v57, v61, v48
	v_fma_f32 v34, -v35, v55, v36
	v_fma_f32 v35, -v37, v56, v38
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v51, s5, v14, v0, v14
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v9, v33, v0, v9
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_div_scale_f32 v52, null, v0, v0, v16
	v_div_fixup_f32 v10, v34, v0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v51, v50 :: v_dual_fmac_f32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v25
	v_rcp_f32_e32 v37, v52
	v_fma_f32 v58, -v41, v62, v42
	v_div_fixup_f32 v12, v33, v0, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_fma_f32 v33, -v43, v34, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v11, v35, v0, v11
	v_div_scale_f32 v35, s1, v15, v0, v15
	v_fmac_f32_e32 v34, v33, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v52, v37, 1.0
	v_div_scale_f32 v46, null, v0, v0, v26
	v_fma_f32 v45, -v36, v40, 1.0
	v_mul_f32_e32 v33, v35, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s3, v16, v0, v16
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s4, v25, v0, v25
	v_fmac_f32_e32 v62, v58, v49
	v_div_scale_f32 v47, null, v0, v0, v28
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	v_mul_f32_e32 v43, v38, v37
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	v_div_fixup_f32 v13, v39, v0, v13
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v34, v0, v14
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_div_scale_f32 v42, null, v0, v0, v27
	v_mul_f32_e32 v35, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v36, v35, v45
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	v_div_scale_f32 v44, s1, v26, v0, v26
	v_div_fmas_f32 v34, v34, v37, v43
	v_rcp_f32_e32 v37, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v35, v38, v40 :: v_dual_mul_f32 v38, v44, v41
	v_div_fixup_f32 v15, v33, v0, v15
	v_div_fixup_f32 v16, v34, v0, v16
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v42, v39, 1.0
	v_fma_f32 v34, -v46, v38, v44
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v36, s3, v27, v0, v27
	v_dual_fmac_f32 v39, v43, v39 :: v_dual_fmac_f32 v38, v34, v41
	v_fma_f32 v43, -v47, v37, 1.0
	v_div_scale_f32 v45, null, v0, v0, v29
	v_div_fmas_f32 v33, v33, v40, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v36, v39 :: v_dual_fmac_f32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v40, s4, v28, v0, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v43
	v_div_fixup_f32 v25, v33, v0, v25
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v46, v40, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v34, v44, v39
	v_fma_f32 v44, -v43, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v35, v49, v35 :: v_dual_fmac_f32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_fma_f32 v38, -v47, v46, v40
	v_div_scale_f32 v41, s1, v29, v0, v29
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v33, v0, v26
	v_fma_f32 v33, -v42, v34, v36
	v_fmac_f32_e32 v46, v38, v37
	v_mul_f32_e32 v36, v41, v35
	v_div_scale_f32 v38, s5, v30, v0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v39, v34
	v_div_scale_f32 v42, null, v0, v0, v31
	v_fma_f32 v39, -v45, v36, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v38, v48
	v_fma_f32 v34, -v47, v46, v40
	v_rcp_f32_e32 v40, v42
	v_div_scale_f32 v47, null, v0, v0, v32
	v_fmac_f32_e32 v36, v39, v35
	v_fma_f32 v39, -v43, v44, v38
	v_div_fixup_f32 v27, v33, v0, v27
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v45, v36, v41
	v_fmac_f32_e32 v44, v39, v48
	v_div_fmas_f32 v34, v34, v37, v46
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v35, -v43, v44, v38
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_scale_f32 v45, null, v0, v0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v35, v35, v48, v44
	v_div_fixup_f32 v28, v34, v0, v28
	v_div_scale_f32 v34, s3, v31, v0, v31
	v_fma_f32 v39, -v47, v37, 1.0
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v38, null, v0, v0, v17
	v_div_fixup_f32 v30, v35, v0, v30
	v_rcp_f32_e32 v35, v45
	v_fmac_f32_e32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v41, v38
	v_mul_f32_e32 v36, v34, v40
	v_div_scale_f32 v39, s1, v32, v0, v32
	v_div_fixup_f32 v29, v33, v0, v29
	v_div_scale_f32 v48, null, v0, v0, v20
	v_fma_f32 v43, -v42, v36, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v45, v35, 1.0
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v35, v46, v35 :: v_dual_fmac_f32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v43, v41
	v_div_fmas_f32 v34, v34, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s3, v18, v0, v18
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v31, v34, v0, v31
	v_mul_f32_e32 v49, v40, v35
	v_fma_f32 v46, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v19, v0, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v17, v0, v17
	v_fma_f32 v36, -v47, v44, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v39, v33, v41
	v_div_fmas_f32 v36, v36, v37, v44
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v37, -v45, v49, v40
	v_mul_f32_e32 v44, v46, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v32, v36, v0, v32
	v_fmac_f32_e32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v42, v44, v46
	v_div_scale_f32 v37, null, v0, v0, v21
	v_fma_f32 v33, -v38, v39, v33
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v20, v0, v20
	v_fma_f32 v38, -v45, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v39, v36, v50 :: v_dual_fmac_f32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	v_div_fmas_f32 v35, v38, v35, v49
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v17, v33, v0, v17
	v_fma_f32 v38, -v42, v44, v46
	v_div_scale_f32 v40, null, v0, v0, v22
	v_div_fixup_f32 v18, v35, v0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v43, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_fma_f32 v43, -v48, v39, v36
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v19, v38, v0, v19
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v21, v0, v21
	v_fmac_f32_e32 v39, v43, v50
	v_div_scale_f32 v38, null, v0, v0, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v43, -v37, v33, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v24
	v_div_fixup_f32 v20, v36, v0, v20
	v_div_scale_f32 v35, s4, v22, v0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v41, v44
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_scale_f32 v34, null, v0, v0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v21, v33, v0, v21
	v_fma_f32 v33, -v43, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v36, s1, v23, v0, v23
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v24, v0, v24
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v48, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v40, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v0, v2
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v39, v35
	v_mul_f32_e32 v40, v36, v44
	v_fma_f32 v46, -v34, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_mul_f32_e32 v51, v48, v37
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v33, v45
	v_rcp_f32_e32 v50, v46
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v35, v0, v22
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v38, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	v_fma_f32 v33, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v51, v36, v37
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v0, v0, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v0, v3
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v23, v35, v0, v23
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fixup_f32 v24, v33, v0, v24
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	v_div_fixup_f32 v1, v34, v0, v1
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v46, v36, v39
	v_div_scale_f32 v34, null, v0, v0, v5
	v_rcp_f32_e32 v39, v35
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v37, v0, v2
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v0, v0, v7
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v45, -v35, v39, 1.0
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v33, -v34, v36, 1.0
	v_rcp_f32_e32 v46, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	v_fma_f32 v48, -v37, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v45, v39
	v_mul_f32_e32 v43, v38, v42
	v_mul_f32_e32 v49, v33, v36
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v0, v7
	v_fma_f32 v47, -v40, v43, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v52, v48, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v40, v43, v38
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v40, -v35, v51, v45
	v_div_fmas_f32 v38, v38, v42, v43
	v_fma_f32 v33, -v34, v49, v33
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v34, -v44, v53, v50
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v33, v0, v5
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s69, v148
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v9, s0
	v_cndmask_b32_e64 v9, 0, v10, s0
	v_cndmask_b32_e64 v10, 0, v11, s0
	v_cndmask_b32_e64 v11, 0, v12, s0
	v_cndmask_b32_e64 v12, 0, v13, s0
	v_cndmask_b32_e64 v13, 0, v14, s0
	v_cndmask_b32_e64 v14, 0, v15, s0
	v_cndmask_b32_e64 v15, 0, v16, s0
	v_cndmask_b32_e64 v16, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	v_cndmask_b32_e64 v29, 0, v30, s0
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v32, s69, v63
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s69, v157
	v_cmp_gt_i32_e64 s1, s69, v167
	v_cmp_gt_i32_e64 s3, s69, v183
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v148, 2
	v_add_lshl_u32 v34, v32, v164, 2
	v_add_lshl_u32 v35, v32, v163, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x2
	buffer_store_b32 v8, v33, s[88:91], 0 offen
	buffer_store_b32 v9, v34, s[88:91], 0 offen
	buffer_store_b32 v10, v35, s[88:91], 0 offen
	v_add_lshl_u32 v8, v32, v162, 2
	v_add_lshl_u32 v9, v32, v161, 2
	v_add_lshl_u32 v10, v32, v160, 2
	v_add_lshl_u32 v33, v32, v159, 2
	v_add_lshl_u32 v34, v32, v158, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x4
	buffer_store_b32 v11, v8, s[88:91], 0 offen
	buffer_store_b32 v12, v9, s[88:91], 0 offen
	buffer_store_b32 v13, v10, s[88:91], 0 offen
	buffer_store_b32 v14, v33, s[88:91], 0 offen
	buffer_store_b32 v15, v34, s[88:91], 0 offen
	v_add_lshl_u32 v8, v32, v157, 2
	v_add_lshl_u32 v9, v32, v141, 2
	v_add_lshl_u32 v10, v32, v182, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v32, v181, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_add_lshl_u32 v12, v32, v180, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v8, s[88:91], 0 offen
	buffer_store_b32 v25, v9, s[88:91], 0 offen
	buffer_store_b32 v26, v10, s[88:91], 0 offen
	v_add_lshl_u32 v9, v32, v179, 2
	v_add_lshl_u32 v10, v32, v178, 2
	v_cndmask_b32_e32 v8, 0x80000000, v12, vcc_lo
	buffer_store_b32 v27, v11, s[88:91], 0 offen
	v_add_lshl_u32 v11, v32, v177, 2
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	buffer_store_b32 v28, v8, s[88:91], 0 offen
	v_add_lshl_u32 v8, v32, v167, 2
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v29, v9, s[88:91], 0 offen
	v_add_lshl_u32 v9, v32, v147, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x2
	buffer_store_b32 v30, v10, s[88:91], 0 offen
	buffer_store_b32 v31, v11, s[88:91], 0 offen
	buffer_store_b32 v17, v8, s[88:91], 0 offen
	v_add_lshl_u32 v8, v32, v146, 2
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	v_add_lshl_u32 v10, v32, v145, 2
	v_add_lshl_u32 v11, v32, v144, 2
	v_add_lshl_u32 v12, v32, v143, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v18, v9, s[88:91], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v10 :: v_dual_cndmask_b32 v10, 0x80000000, v11
	v_cndmask_b32_e32 v11, 0x80000000, v12, vcc_lo
	s_clause 0x3
	buffer_store_b32 v19, v8, s[88:91], 0 offen
	buffer_store_b32 v20, v9, s[88:91], 0 offen
	buffer_store_b32 v21, v10, s[88:91], 0 offen
	buffer_store_b32 v22, v11, s[88:91], 0 offen
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v9, off, off offset:156
	scratch_load_b32 v11, off, off offset:152
	scratch_load_b32 v12, off, off offset:148
	v_add_lshl_u32 v8, v32, v142, 2
	v_add_lshl_u32 v10, v32, v183, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v9, v32, v9, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v11, v32, v11, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v12, v32, v12, 2
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v23, v8, s[88:91], 0 offen
	buffer_store_b32 v24, v9, s[88:91], 0 offen
	buffer_store_b32 v1, v10, s[88:91], 0 offen
	buffer_store_b32 v2, v11, s[88:91], 0 offen
	buffer_store_b32 v3, v12, s[88:91], 0 offen
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v1, off, off offset:140
	scratch_load_b32 v2, off, off offset:132
	scratch_load_b32 v8, off, off offset:144
	scratch_load_b32 v9, off, off offset:136
	scratch_load_b32 v3, off, off offset:128
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v1, v32, v1, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v2, v32, v2, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v8, v32, v8, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v9, v32, v9, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, v32, v3, 2
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[88:91], 0 offen
	buffer_store_b32 v5, v2, s[88:91], 0 offen
	buffer_store_b32 v6, v3, s[88:91], 0 offen
	buffer_store_b32 v7, v8, s[88:91], 0 offen
	buffer_store_b32 v0, v9, s[88:91], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp120:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 168
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_sgpr 103
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 103
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 168
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20060
; TotalNumSgprs: 105
; NumVgprs: 256
; ScratchSize: 168
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 105
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
	.byte	5                               ; Abbreviation Code
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
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
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 168
    .sgpr_count:     105
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 41
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
