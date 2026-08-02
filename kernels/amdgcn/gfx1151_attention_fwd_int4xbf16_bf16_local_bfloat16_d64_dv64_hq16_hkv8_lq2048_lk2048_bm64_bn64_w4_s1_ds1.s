	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	v_mov_b32_e32 v48, v0
	s_clause 0x3
	s_load_b32 s20, s[0:1], 0x84
	s_load_b32 s70, s[0:1], 0x60
	s_load_b64 s[12:13], s[0:1], 0x0
	s_load_b64 s[6:7], s[0:1], 0x7c
.Ltmp0:
	.loc	1 753 19 prologue_end           ; attention.py:753:19
	s_lshl_b32 s5, s2, 6
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v35, 15, v48
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	s_mov_b32 s15, 0x31027000
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s8, s5, s2
	s_mov_b32 s14, 0x7ffffffe
	v_lshlrev_b32_e32 v49, 3, v35
	.loc	1 773 86 is_stmt 0              ; attention.py:773:86
	v_and_b32_e32 v44, 1, v48
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v48
	v_and_b32_e32 v34, 0x60, v48
	v_bfe_u32 v33, v48, 4, 1
	v_and_b32_e32 v89, 16, v48
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v0, 4, v44
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s5, v1
	v_lshlrev_b32_e32 v50, 2, v48
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v39, 1, v48
	v_cmp_eq_u32_e64 s61, 0, v89
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[156:157], null, s70, v1, v[0:1]
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v3
	.loc	1 776 61 is_stmt 0              ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s70, v0
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	s_and_b32 s13, s13, 0xffff
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s5, s7
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s10, s5, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s20
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[1:2], null, s70, s8, v[156:157]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s9, s2, 64
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s10, s10, s20
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s9, s9, 0x800
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s10, s10, 0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s9, s9, 63
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v0, 0x80000000, v1, vcc_lo
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s11, s9, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s71, s10, 0x7fffffc0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s11, s11, 26
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v6, v39, 30, v33
	buffer_load_b128 v[2:5], v0, s[12:15], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 1, v34
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s82, s9, s11
	s_mov_b32 s9, 0
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s82, s82, 63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_or_b32_e32 v1, v0, v35
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v0, 2, v6
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s71, s82
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s5, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v7, 4, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v6
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v40, v0, v2
	ds_bpermute_b32 v41, v0, v3
	ds_bpermute_b32 v45, v0, v4
	ds_bpermute_b32 v36, v0, v5
	ds_bpermute_b32 v42, v7, v2
	ds_bpermute_b32 v43, v7, v3
	ds_bpermute_b32 v46, v7, v4
	ds_bpermute_b32 v47, v7, v5
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_dual_mov_b32 v0, 0x5410 :: v_dual_lshlrev_b32 v37, 3, v35
	v_mov_b32_e32 v2, 0x7632
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v38, 2, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v0, 0x1054, v0, s61
	v_cndmask_b32_e64 v2, 0x3276, v2, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v2, v2, 8, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v2, 0x760076, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v2, v2, 4, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v112, 0x5040504, v0
	v_and_b32_e32 v118, 0x7060706, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr112
                                        ; implicit-def: $vgpr118
.LBB0_3:                                ; %Flow180
	s_clause 0x1
	s_load_b64 s[80:81], s[0:1], 0x38
	s_load_b32 s69, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v67, 0x78, v48
	v_or_b32_e32 v63, s8, v1
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
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
	v_mov_b32_e32 v109, v8
	v_mov_b32_e32 v107, v8
	v_mov_b32_e32 v108, v8
	v_mov_b32_e32 v106, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	v_dual_mov_b32 v9, 0 :: v_dual_lshlrev_b32 v0, 1, v63
	s_mov_b32 s91, 0x31027000
	s_mov_b32 s90, 0x7ffffffe
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v99, v36, v47, s61
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v103, v47, v36, s61
	v_dual_mov_b32 v19, 0x7632 :: v_dual_and_b32 v38, 7, v48
	v_cndmask_b32_e64 v100, v40, v42, s61
	v_cndmask_b32_e64 v104, v42, v40, s61
	v_and_b32_e32 v4, 0x70, v48
	v_and_b32_e32 v7, 0x7c, v50
	v_dual_mov_b32 v197, 0xff800000 :: v_dual_and_b32 v42, 28, v48
	v_dual_mov_b32 v25, v9 :: v_dual_lshlrev_b32 v10, 2, v34
	v_bfe_i32 v16, v48, 5, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v37, 3, v67
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s89, s13, 0xffff
	s_mov_b32 s88, s12
	v_dual_mov_b32 v18, 0x5410 :: v_dual_lshlrev_b32 v1, 4, v48
	buffer_load_u16 v36, v0, s[88:91], 0 offen
	v_dual_mov_b32 v119, 0xff800000 :: v_dual_and_b32 v2, 24, v48
	v_dual_mov_b32 v120, 0xff800000 :: v_dual_lshlrev_b32 v5, 9, v48
	v_dual_mov_b32 v121, 0xff800000 :: v_dual_lshlrev_b32 v6, 6, v44
	v_cmp_eq_u32_e32 vcc_lo, 0, v44
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v63, off offset:124
	scratch_store_b32 off, v48, off offset:128
	scratch_store_b32 off, v49, off offset:136
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v98, v45, v46, s61
	v_cndmask_b32_e64 v101, v41, v43, s61
	v_cndmask_b32_e64 v102, v46, v45, s61
	v_cndmask_b32_e64 v105, v43, v41, s61
	v_lshrrev_b32_e32 v43, 3, v34
	v_bfe_i32 v44, v48, 3, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 1, v67
	v_dual_mov_b32 v29, v9 :: v_dual_lshlrev_b32 v110, 3, v38
	v_lshl_or_b32 v46, v4, 6, v49
	v_lshl_or_b32 v49, v42, 7, v10
	v_and_b32_e32 v53, 0x2040, v16
	v_mov_b32_e32 v16, v9
	v_mov_b32_e32 v10, v9
	v_lshl_or_b32 v34, v34, 4, v7
	v_dual_mov_b32 v236, 0xff800000 :: v_dual_and_b32 v3, 24, v39
	v_and_b32_e32 v40, 0x1b8, v50
	v_dual_mov_b32 v122, 0xff800000 :: v_dual_lshlrev_b32 v41, 5, v89
	v_lshlrev_b32_e32 v8, 5, v48
	v_cndmask_b32_e64 v12, 0x1020, 0, vcc_lo
	v_bfe_i32 v13, v48, 2, 1
	v_dual_mov_b32 v27, v9 :: v_dual_and_b32 v14, 8, v48
	v_dual_mov_b32 v204, 0xff800000 :: v_dual_lshlrev_b32 v15, 6, v89
	v_or_b32_e32 v45, s5, v37
	v_xor_b32_e32 v64, v1, v2
	v_and_or_b32 v47, 0x1c00, v5, v6
	v_and_b32_e32 v58, 0x410, v44
	v_xor_b32_e32 v133, v34, v43
	v_and_or_b32 v34, 0x1020, v44, v53
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[43:44], null, s69, v0, v[110:111]
	v_dual_mov_b32 v224, 0xff800000 :: v_dual_lshlrev_b32 v11, 3, v48
	v_and_b32_e32 v17, 4, v48
	v_lshl_or_b32 v124, v35, 5, v3
	v_lshrrev_b32_e32 v35, 1, v4
	v_and_or_b32 v51, 0x2040, v13, v12
	v_lshl_or_b32 v52, v14, 4, v15
	v_dual_mov_b32 v26, v9 :: v_dual_lshlrev_b32 v57, 4, v38
	v_mul_u32_u24_e32 v59, 0x90, v38
	v_mov_b32_e32 v13, v9
	v_dual_mov_b32 v15, v9 :: v_dual_and_b32 v48, 0x60, v8
	v_mov_b32_e32 v31, v9
	v_dual_mov_b32 v28, v9 :: v_dual_add_nc_u32 v63, s20, v45
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v60, 16, v45
	v_or_b32_e32 v61, 32, v45
	v_or_b32_e32 v62, 48, v45
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v45
	v_xor_b32_e32 v45, 8, v64
	v_or3_b32 v132, v47, v41, v40
	v_cndmask_b32_e64 v54, 0x1054, v18, s61
	v_cndmask_b32_e64 v56, 0x3276, v19, s61
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v18, v9 :: v_dual_add_nc_u32 v45, 0, v45
	v_mov_b32_e32 v19, v9
	v_mov_b32_e32 v23, v9
	.loc	1 758 19                        ; attention.py:758:19
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v64, off
	scratch_store_b64 off, v[43:44], off offset:4
	v_xor_b32_e32 v35, v46, v35
	v_or3_b32 v134, v49, v48, v42
	v_xor_b32_e32 v42, v57, v67
	v_xor_b32_e32 v136, v59, v58
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v44, s20, v62
	v_xor_b32_e32 v46, 8, v132
	v_mov_b32_e32 v109, v9
	v_xor_b32_e32 v47, 16, v132
	v_lshl_or_b32 v139, v38, 10, v42
	v_xor_b32_e32 v38, 16, v136
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v147, s6, v44
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v150, s7, v44
	v_dual_mov_b32 v235, 0xff800000 :: v_dual_add_nc_u32 v44, 0, v46
	v_xor_b32_e32 v49, 24, v132
	v_xor_b32_e32 v42, 32, v136
	scratch_store_b32 off, v45, off offset:12 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v38, 0, v38
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v44, off offset:16
	scratch_store_b32 off, v50, off offset:140
	v_and_b32_e32 v50, 0x310, v11
	v_add_nc_u32_e32 v44, 0, v47
	v_mov_b32_e32 v12, v9
	v_lshl_add_u32 v55, v17, 9, 0
	v_mov_b32_e32 v17, v9
	v_or3_b32 v135, v51, v52, v50
	v_xor_b32_e32 v50, 32, v132
	v_xor_b32_e32 v68, 48, v136
	scratch_store_b32 off, v38, off offset:72 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v38, 0, v42
	scratch_store_b32 off, v44, off offset:20 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v44, 0, v49
	v_xor_b32_e32 v51, 40, v132
	v_xor_b32_e32 v69, 64, v136
	scratch_store_b32 off, v38, off offset:76 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v38, 0, v68
	scratch_store_b32 off, v44, off offset:24 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v44, 0, v50
	v_xor_b32_e32 v52, 48, v132
	v_xor_b32_e32 v70, 0x50, v136
	scratch_store_b32 off, v38, off offset:80 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v38, 0, v69
	scratch_store_b32 off, v44, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v44, 0, v51
	v_xor_b32_e32 v53, 56, v132
	v_xor_b32_e32 v71, 0x60, v136
	scratch_store_b32 off, v38, off offset:84 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v38, 0, v70
	scratch_store_b32 off, v44, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v44, 0, v52
	v_lshl_or_b32 v41, v56, 8, v56
	v_xor_b32_e32 v56, 4, v134
	v_xor_b32_e32 v72, 0x70, v136
	scratch_store_b32 off, v38, off offset:88 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v38, 0, v71
	scratch_store_b32 off, v44, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v44, 0, v53
	v_xor_b32_e32 v57, 8, v134
	v_xor_b32_e32 v73, 0x820, v136
	scratch_store_b32 off, v38, off offset:92 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v38, 0, v72
	scratch_store_b32 off, v44, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v44, 0, v56
	s_clause 0x1
	s_load_b64 s[84:85], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x68
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s21, s3, 31
	v_xor_b32_e32 v58, 12, v134
	v_xor_b32_e32 v74, 0x830, v136
	scratch_store_b32 off, v38, off offset:96 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v38, 0, v73
	scratch_store_b32 off, v44, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v44, 0, v57
	s_lshr_b32 s0, s21, 28
	v_xor_b32_e32 v59, 16, v134
	s_add_i32 s0, s3, s0
	v_xor_b32_e32 v75, 0x810, v136
	scratch_store_b32 off, v38, off offset:100 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v38, 0, v74
	scratch_store_b32 off, v44, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v44, 0, v58
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	v_dual_mov_b32 v21, v9 :: v_dual_add_nc_u32 v0, s20, v60
	s_sub_i32 s1, s3, s1
	v_dual_mov_b32 v7, v9 :: v_dual_add_nc_u32 v144, 0, v35
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s13, s1, 0x10007
	v_xor_b32_e32 v60, 20, v134
	v_xor_b32_e32 v76, 0x860, v136
	v_xor_b32_e32 v35, 0x870, v136
	scratch_store_b32 off, v38, off offset:104 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v38, 0, v75
	scratch_store_b32 off, v44, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v44, 0, v59
	s_add_i32 s13, s1, s13
	v_dual_mov_b32 v14, v9 :: v_dual_and_b32 v39, 0x80, v39
	s_bfe_i32 s13, s13, 0x80000
	v_xor_b32_e32 v34, v34, v48
	v_dual_mov_b32 v30, v9 :: v_dual_add_nc_u32 v43, s20, v61
	v_dual_mov_b32 v4, v9 :: v_dual_add_nc_u32 v35, 0, v35
	v_xor_b32_e32 v61, 24, v134
	v_xor_b32_e32 v45, 0x840, v136
	scratch_store_b32 off, v38, off offset:108 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v38, 0, v76
	scratch_store_b32 off, v44, off offset:56 ; 4-byte Folded Spill
	v_dual_mov_b32 v107, v9 :: v_dual_add_nc_u32 v44, 0, v60
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v148, s7, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s13, s13
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v145, s6, v0
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v0, s19, v37
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s12, s0, 4
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s13, s13, 10
	v_dual_mov_b32 v1, v9 :: v_dual_add_nc_u32 v138, s7, v63
	v_add3_u32 v34, v55, v39, v34
	v_mov_b32_e32 v6, v9
	s_lshl_b32 s3, s12, 14
	v_lshl_or_b32 v40, v54, 8, v54
	v_xor_b32_e32 v62, 28, v134
	s_and_b32 s101, s13, 0xfffff800
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v44, off offset:60
	scratch_store_b32 off, v35, off offset:116
	v_add_nc_u32_e32 v44, 0, v61
	v_add_nc_u32_e32 v35, 0, v45
	s_add_i32 s101, s101, s3
	v_add_nc_u32_e32 v199, v34, v89
	v_or_b32_e32 v198, s101, v33
	v_mad_u64_u32 v[33:34], null, s19, 48, v[0:1]
	v_dual_mov_b32 v32, v9 :: v_dual_and_b32 v41, 0x760076, v41
	v_dual_mov_b32 v3, v9 :: v_dual_and_b32 v40, 0x540054, v40
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v90, 1, v110
	v_or_b32_e32 v91, 2, v110
	v_or_b32_e32 v92, 3, v110
	v_or_b32_e32 v93, 4, v110
	v_or_b32_e32 v94, 5, v110
	v_or_b32_e32 v95, 6, v110
	v_or_b32_e32 v96, 7, v110
	v_xor_b32_e32 v64, 8, v124
	v_xor_b32_e32 v65, 16, v124
	v_xor_b32_e32 v66, 24, v124
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v44, off offset:64
	scratch_store_b32 off, v35, off offset:120
	v_add_nc_u32_e32 v44, 0, v62
	v_xor_b32_e32 v35, 0x240, v139
	v_lshl_add_u32 v34, s19, 5, v0
	v_dual_mov_b32 v20, v9 :: v_dual_add_nc_u32 v141, 0, v64
	v_dual_mov_b32 v22, v9 :: v_dual_add_nc_u32 v143, 0, v66
	v_dual_mov_b32 v24, v9 :: v_dual_add_nc_u32 v149, s7, v43
	v_dual_mov_b32 v5, v9 :: v_dual_add_nc_u32 v142, 0, v65
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v67, off offset:132
	scratch_store_b32 off, v44, off offset:68
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v137, s6, v63
	v_xor_b32_e32 v54, 0x810, v133
	v_xor_b32_e32 v63, 32, v135
	v_xor_b32_e32 v48, 64, v135
	v_xor_b32_e32 v67, 0x60, v135
	v_xor_b32_e32 v64, 0x850, v136
	v_xor_b32_e32 v65, 0x1040, v136
	v_xor_b32_e32 v66, 0x1050, v136
	v_xor_b32_e32 v77, 0x1060, v136
	v_xor_b32_e32 v78, 0x1070, v136
	v_xor_b32_e32 v79, 0x1010, v136
	v_xor_b32_e32 v80, 0x1020, v136
	v_xor_b32_e32 v81, 0x1030, v136
	v_xor_b32_e32 v82, 0x1860, v136
	v_xor_b32_e32 v83, 0x1870, v136
	v_xor_b32_e32 v84, 0x1840, v136
	v_xor_b32_e32 v85, 0x1850, v136
	v_xor_b32_e32 v86, 0x1820, v136
	v_xor_b32_e32 v87, 0x1830, v136
	v_xor_b32_e32 v88, 0x1810, v136
	v_subrev_nc_u32_e32 v146, s6, v43
	v_lshl_or_b32 v37, v40, 4, v40
	v_lshl_or_b32 v39, v41, 4, v41
	v_xor_b32_e32 v40, 0x90, v139
	v_xor_b32_e32 v41, 0x120, v139
	v_xor_b32_e32 v43, 0x1b0, v139
	scratch_store_b32 off, v38, off offset:112 ; 4-byte Folded Spill
	v_xor_b32_e32 v38, 0x2d0, v139
	v_xor_b32_e32 v42, 0x360, v139
	v_xor_b32_e32 v44, 0x3f0, v139
	v_add_nc_u32_e32 v203, 0, v35
	v_lshl_add_u32 v35, s19, 4, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v217, v34, v110
	v_add_nc_u32_e32 v218, v34, v90
	v_add_nc_u32_e32 v219, v34, v91
	v_add_nc_u32_e32 v220, v34, v92
	v_add_nc_u32_e32 v221, v34, v93
	v_add_nc_u32_e32 v222, v34, v94
	v_add_nc_u32_e32 v223, v34, v95
	v_add_nc_u32_e32 v225, v34, v96
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s13, s16, 0x3fb8aa3b
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s1, s18, s1
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s6, s17, s12
	v_mov_b32_e32 v11, v9
	v_dual_mov_b32 v2, v9 :: v_dual_add_nc_u32 v167, 0, v48
	v_dual_mov_b32 v8, v9 :: v_dual_add_nc_u32 v159, 0, v64
	v_dual_mov_b32 v106, v9 :: v_dual_add_nc_u32 v161, 0, v66
	v_dual_mov_b32 v108, v9 :: v_dual_add_nc_u32 v163, 0, v78
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s69, v110
	v_add_nc_u32_e32 v158, 0, v54
	v_add_nc_u32_e32 v166, 0, v63
	v_add_nc_u32_e32 v168, 0, v67
	v_add_nc_u32_e32 v160, 0, v65
	v_add_nc_u32_e32 v162, 0, v77
	v_add_nc_u32_e32 v164, 0, v79
	v_add_nc_u32_e32 v130, 0, v81
	v_add_nc_u32_e32 v131, 0, v82
	v_add_nc_u32_e32 v97, 0, v83
	v_add_nc_u32_e32 v123, 0, v84
	v_add_nc_u32_e32 v193, 0, v85
	v_add_nc_u32_e32 v194, 0, v86
	v_add_nc_u32_e32 v195, 0, v87
	v_add_nc_u32_e32 v196, 0, v88
	v_and_b32_e32 v112, 0x5040504, v37
	v_and_b32_e32 v118, 0x7060706, v39
	v_add_nc_u32_e32 v200, 0, v40
	v_add_nc_u32_e32 v201, 0, v41
	v_add_nc_u32_e32 v202, 0, v43
	v_add_nc_u32_e32 v205, 0, v38
	v_add_nc_u32_e32 v206, 0, v42
	v_add_nc_u32_e32 v207, 0, v44
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v208, v0, v110
	v_add_nc_u32_e32 v111, v35, v110
	v_add_nc_u32_e32 v140, v35, v90
	v_add_nc_u32_e32 v151, v35, v91
	v_add_nc_u32_e32 v152, v35, v92
	v_add_nc_u32_e32 v153, v35, v93
	v_add_nc_u32_e32 v0, v35, v94
	v_add_nc_u32_e32 v154, v35, v95
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v36
	v_add_nc_u32_e32 v165, 0, v80
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v155, v35, v96
	v_add_nc_u32_e32 v226, v33, v110
	v_add_nc_u32_e32 v227, v33, v90
	v_add_nc_u32_e32 v228, v33, v91
	v_add_nc_u32_e32 v229, v33, v92
	v_add_nc_u32_e32 v230, v33, v93
	v_add_nc_u32_e32 v231, v33, v94
	v_add_nc_u32_e32 v232, v33, v95
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v234, s13, v34 :: v_dual_add_nc_u32 v233, v33, v96
	v_mov_b16_e64 v237.l, 0
	s_mov_b32 s72, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s5, s19, s5
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_add_i32 s102, s1, s6
	s_lshl_b32 s83, s69, 1
	s_mov_b32 s100, 0x76543210
	s_mov_b32 s73, s72
	s_mov_b32 s74, s72
	s_mov_b32 s75, s72
	s_mov_b32 s76, s72
	s_mov_b32 s77, s72
	s_mov_b32 s78, s72
	s_mov_b32 s79, s72
	s_mov_b32 s94, s90
	s_mov_b32 s95, s91
	s_mov_b32 s86, s90
	s_mov_b32 s87, s91
	s_and_b32 s85, s85, 0xffff
	s_and_b32 s97, s11, 0xffff
	s_mov_b32 s92, s14
	s_mov_b32 s96, s10
	s_mov_b32 s88, s8
	s_mov_b32 s89, s9
	s_mov_b32 s93, s15
	s_add_i32 s102, s102, s5
	s_mov_b32 s98, s90
	s_mov_b32 s99, s91
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s103, s71, s101
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s104, s102, s71
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[33:34], null, s103, s70, v[156:157]
	v_or_b32_e32 v126, 40, v198
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v169.l, v237.l
	v_mov_b16_e64 v171.l, v237.l
	v_mov_b16_e64 v170.l, v237.l
	v_mov_b16_e64 v173.l, v237.l
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v126, v126, s71, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v172.l, v237.l
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[33:36], v33, s[88:91], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v37, off, off          ; 4-byte Folded Reload
	.loc	1 881 25                        ; attention.py:881:25
                                        ; kill: def $vgpr156 killed $vgpr156 def $vgpr157
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, 0, v37
	ds_store_b64 v37, v[33:34]
	scratch_load_b32 v33, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v33, v[35:36]
	v_add_nc_u32_e32 v33, 0, v124
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[49:52], v33 offset1:1
	ds_load_2addr_stride64_b64 v[77:80], v33 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[53:56], v141 offset1:1
	ds_load_2addr_stride64_b64 v[81:84], v141 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[67:70], v142 offset1:1
	ds_load_2addr_stride64_b64 v[85:88], v142 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s72 :: v_dual_mov_b32 v38, s77
	v_dual_mov_b32 v34, s73 :: v_dual_mov_b32 v35, s74
	v_mov_b32_e32 v40, s79
	v_dual_mov_b32 v36, s75 :: v_dual_mov_b32 v37, s76
	v_mov_b32_e32 v39, s78
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[71:74], v143 offset1:1
	ds_load_2addr_stride64_b64 v[89:92], v143 offset0:2 offset1:3
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v238, v126, s[92:95], 0 offen
	v_or_b32_e32 v126, 42, v198
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[104:105], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v126, v126, s71, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[53:54], v[102:103], v[41:48] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v239, v126, s[92:95], 0 offen
	v_or_b32_e32 v126, 44, v198
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[100:101], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v126, v126, s71, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[71:72], v[98:99], v[41:48] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v240, v126, s[92:95], 0 offen
	v_or_b32_e32 v126, 46, v198
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v68, v41
	v_cvt_f32_i32_e32 v67, v42
	v_cvt_f32_i32_e32 v66, v43
	v_cvt_f32_i32_e32 v65, v44
	v_cvt_f32_i32_e32 v64, v45
	v_cvt_f32_i32_e32 v63, v46
	v_cvt_f32_i32_e32 v62, v47
	v_cvt_f32_i32_e32 v60, v48
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[51:52], v[104:105], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v126, v126, s71, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[55:56], v[102:103], v[41:48] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v241, v126, s[92:95], 0 offen
	v_or_b32_e32 v126, 48, v198
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[69:70], v[100:101], v[41:48] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v126, v126, s71, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[98:99], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[69:76], v[77:78], v[104:105], v[33:40] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v78, s104, v218, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v57, v44
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[69:76], v[81:82], v[102:103], v[69:76] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v55, v46
	v_cvt_f32_i32_e32 v54, v47
	v_cvt_f32_i32_e32 v52, v48
	v_cvt_f32_i32_e32 v56, v45
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[69:76], v[85:86], v[100:101], v[69:76] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v58, v43
	v_cvt_f32_i32_e32 v61, v41
	v_cvt_f32_i32_e32 v59, v42
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v81, s104, v225, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[69:76], v[89:90], v[98:99], v[69:76] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v82, s104, v227, 1
	v_add_lshl_u32 v85, s104, v233, 1
	v_or_b32_e32 v89, 24, v198
	v_or_b32_e32 v90, 26, v198
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v53, v69
	v_cvt_f32_i32_e32 v51, v70
	v_cvt_f32_i32_e32 v50, v71
	v_cvt_f32_i32_e32 v49, v72
	v_cvt_f32_i32_e32 v48, v73
	v_cvt_f32_i32_e32 v47, v74
	v_cvt_f32_i32_e32 v46, v75
	v_cvt_f32_i32_e32 v44, v76
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[69:76], v[79:80], v[104:105], v[33:40] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s71, v110
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v34, 2, v208
	v_add_nc_u32_e32 v36, 3, v208
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[69:76], v[83:84], v[102:103], v[69:76] neg_lo:[1,1,0]
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v35, 1, v208
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v33, v137
	v_cmp_ge_i32_e64 s3, v33, v145
	v_cmp_ge_i32_e64 s13, v33, v146
	v_cmp_ge_i32_e64 s7, v33, v147
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v33, v138
	v_cmp_le_i32_e64 s6, v33, v148
	v_cmp_le_i32_e64 s14, v33, v149
	v_cmp_le_i32_e64 s12, v33, v150
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 1, v110
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[69:76], v[87:88], v[100:101], v[69:76] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s5
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v34, s104, v34, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, vcc_lo, s1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s71, v33
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[69:76], v[91:92], v[98:99], v[69:76] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v36, s104, v36, 1
	v_add_lshl_u32 v35, s104, v35, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s6
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v33, v137
	v_cmp_ge_i32_e64 s8, v33, v145
	v_cmp_ge_i32_e64 s21, v33, v146
	v_cmp_ge_i32_e64 s15, v33, v147
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s17, v33, v138
	v_cmp_le_i32_e64 s10, v33, v148
	v_cmp_le_i32_e64 s25, v33, v149
	v_cmp_le_i32_e64 s20, v33, v150
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 2, v110
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v45, v69
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v69, 5, v208
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v43, v70
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s16, s16, s17
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s71, v33
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s16, vcc_lo, s16
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v69, s104, v69, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v42, v71
	v_cvt_f32_i32_e32 v41, v72
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s18, v33, v137
	v_cmp_ge_i32_e64 s22, v33, v145
	v_cmp_ge_i32_e64 s29, v33, v146
	v_cmp_ge_i32_e64 s27, v33, v147
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s19, v33, v138
	v_cmp_le_i32_e64 s23, v33, v148
	v_cmp_le_i32_e64 s30, v33, v149
	v_cmp_le_i32_e64 s28, v33, v150
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 3, v110
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s18, s19
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v35, 0x80000000, v35, s16
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, vcc_lo, s5
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v39, v74
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s71, v33
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s5
	v_add_lshl_u32 v74, s104, v152, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s8, s10
	s_and_b32 s6, s22, s23
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s63, v33, v137
	v_cmp_ge_i32_e64 s24, v33, v145
	v_cmp_ge_i32_e64 s34, v33, v146
	v_cmp_ge_i32_e64 s31, v33, v147
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s64, v33, v138
	v_cmp_le_i32_e64 s26, v33, v148
	v_cmp_le_i32_e64 s35, v33, v149
	v_cmp_le_i32_e64 s33, v33, v150
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 4, v110
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s63, s64
	s_and_b32 s10, s24, s26
	s_and_b32 s17, vcc_lo, s17
	s_and_b32 s23, vcc_lo, s10
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s71, v33
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v36, 0x80000000, v36, s17
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v37, v76
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v76, 0x80000000, v74, s23
	v_add_lshl_u32 v74, s104, v0, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v33, v137
	v_cmp_ge_i32_e64 s42, v33, v145
	v_cmp_ge_i32_e64 s38, v33, v146
	v_cmp_ge_i32_e64 s36, v33, v147
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s62, v33, v138
	v_cmp_le_i32_e64 s44, v33, v148
	v_cmp_le_i32_e64 s39, v33, v149
	v_cmp_le_i32_e64 s37, v33, v150
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 5, v110
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s9, s62
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v38, v75
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s3, vcc_lo, s3
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s71, v33
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, vcc_lo, s6
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v40, v73
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v73, s104, v140, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, vcc_lo, s8
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s65, v33, v137
	v_cmp_ge_i32_e64 s56, v33, v145
	v_cmp_ge_i32_e64 s43, v33, v146
	v_cmp_ge_i32_e64 s40, v33, v147
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s66, v33, v138
	v_cmp_le_i32_e64 s57, v33, v148
	v_cmp_le_i32_e64 s45, v33, v149
	v_cmp_le_i32_e64 s41, v33, v150
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 6, v110
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s65, s66
	s_and_b32 s24, s56, s57
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s24, vcc_lo, s24
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s71, v33
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v70, 0x80000000, v69, s18
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v69, 7, v208
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v75, 0x80000000, v74, s24
	v_add_lshl_u32 v74, s104, v155, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v33, v137
	v_cmp_ge_i32_e64 s51, v33, v145
	v_cmp_ge_i32_e64 s48, v33, v146
	v_cmp_ge_i32_e64 s46, v33, v147
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s59, v33, v138
	v_cmp_le_i32_e64 s53, v33, v148
	v_cmp_le_i32_e64 s49, v33, v149
	v_cmp_le_i32_e64 s47, v33, v150
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 7, v110
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v69, s104, v69, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, s11, s59
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v73, 0x80000000, v73, s22
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, vcc_lo, s11
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s71, v33
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s42, s44
	s_and_b32 s10, s51, s53
	s_and_b32 s8, vcc_lo, s8
	s_and_b32 s10, vcc_lo, s10
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s67, v33, v137
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s68, v33, v138
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s58, v33, v145
	v_cmp_ge_i32_e64 s54, v33, v146
	v_cmp_ge_i32_e64 s50, v33, v147
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s60, v33, v148
	v_cmp_le_i32_e64 s55, v33, v149
	v_cmp_le_i32_e64 s52, v33, v150
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v33, s104, v208, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s67, s68
	s_and_b32 s26, s58, s60
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s26, vcc_lo, s26
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	v_cndmask_b32_e64 v69, 0x80000000, v69, s19
	s_clause 0x5
	buffer_load_u16 v33, v33, s[84:87], 0 offen
	buffer_load_u16 v34, v34, s[84:87], 0 offen
	buffer_load_u16 v69, v69, s[84:87], 0 offen
	buffer_load_u16 v70, v70, s[84:87], 0 offen
	buffer_load_u16 v71, v36, s[84:87], 0 offen
	buffer_load_u16 v72, v35, s[84:87], 0 offen
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v35, 6, v208
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v36, s104, v151, 1
	v_cndmask_b32_e64 v74, 0x80000000, v74, s26
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, s13, s14
	s_and_b32 s14, s21, s25
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v35, s104, v35, 1
	v_cndmask_b32_e64 v36, 0x80000000, v36, s6
	v_add_lshl_u32 v79, s104, v220, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s34, s35
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v80, s104, v222, 1
	v_cndmask_b32_e64 v35, 0x80000000, v35, s11
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s29, s30
	s_and_b32 s30, s43, s45
	s_and_b32 s15, s15, s20
	s_and_b32 s20, s27, s28
	s_and_b32 s28, vcc_lo, s14
	s_and_b32 s29, s38, s39
	s_and_b32 s35, s54, s55
	s_and_b32 s39, vcc_lo, s25
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v83, s104, v229, 1
	v_add_lshl_u32 v84, s104, v231, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s31, s31, s33
	s_and_b32 s33, s36, s37
	s_and_b32 s36, s40, s41
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v115, 0x80000000, v78, s28
	v_add_lshl_u32 v78, s104, v219, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s41, vcc_lo, s30
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v116, 0x80000000, v79, s39
	v_add_lshl_u32 v79, s104, v221, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s43, vcc_lo, s35
	s_and_b32 s7, s7, s12
	s_and_b32 s12, vcc_lo, s13
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v113, 0x80000000, v80, s41
	v_add_lshl_u32 v80, s104, v223, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s37, vcc_lo, s15
	s_and_b32 s38, vcc_lo, s31
	s_and_b32 s40, vcc_lo, s36
	s_and_b32 s34, s48, s49
	s_and_b32 s27, vcc_lo, s21
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v114, 0x80000000, v81, s43
	v_add_lshl_u32 v81, s104, v226, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, vcc_lo, s29
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v117, 0x80000000, v82, s37
	v_add_lshl_u32 v82, s104, v228, 1
	v_cndmask_b32_e64 v127, 0x80000000, v83, s38
	v_add_lshl_u32 v83, s104, v230, 1
	v_cndmask_b32_e64 v125, 0x80000000, v84, s40
	v_add_lshl_u32 v84, s104, v232, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s42, s46, s47
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v78, 0x80000000, v78, s27
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s34, vcc_lo, s34
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v79, 0x80000000, v79, s14
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, vcc_lo, s7
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v80, 0x80000000, v80, s34
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, vcc_lo, s20
	s_and_b32 s29, vcc_lo, s33
	s_and_b32 s33, vcc_lo, s42
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v81, 0x80000000, v81, s7
	v_cndmask_b32_e64 v82, 0x80000000, v82, s25
	v_cndmask_b32_e64 v83, 0x80000000, v83, s29
	v_cndmask_b32_e64 v84, 0x80000000, v84, s33
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s44, s50, s52
	v_or_b32_e32 v91, 32, v198
	s_and_b32 s42, vcc_lo, s44
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v89, v89, s71, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v129, 0x80000000, v85, s42
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v250, v126, s[92:95], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x7
	buffer_load_u16 v114, v114, s[84:87], 0 offen
	buffer_load_u16 v113, v113, s[84:87], 0 offen
	buffer_load_u16 v126, v116, s[84:87], 0 offen
	buffer_load_u16 v128, v115, s[84:87], 0 offen
	buffer_load_u16 v115, v129, s[84:87], 0 offen
	buffer_load_u16 v125, v125, s[84:87], 0 offen
	buffer_load_u16 v127, v127, s[84:87], 0 offen
	buffer_load_u16 v129, v117, s[84:87], 0 offen
	v_or_b32_e32 v116, 50, v198
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v91, v91, s71, 1
	v_add_lshl_u32 v90, v90, s71, 1
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_u16 v35, v35, s[84:87], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v89, v89, s[92:95], 0 offen
	v_add_lshl_u32 v116, v116, s71, 1
	s_clause 0x1
	buffer_load_u16 v94, v91, s[92:95], 0 offen
	buffer_load_u16 v92, v90, s[92:95], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v57, v234, v57
	v_mul_f32_e32 v49, v234, v49
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v117, v116, s[92:95], 0 offen
	v_or_b32_e32 v91, 34, v198
	v_or_b32_e32 v116, 52, v198
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v41, v234, v41
	v_mul_f32_e32 v37, v234, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v91, v91, s71, 1
	v_add_lshl_u32 v116, v116, s71, 1
	s_clause 0x1
	buffer_load_u16 v95, v91, s[92:95], 0 offen
	buffer_load_u16 v255, v116, s[92:95], 0 offen
	v_or_b32_e32 v90, 28, v198
	v_or_b32_e32 v91, 36, v198
	v_or_b32_e32 v116, 54, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v90, v90, s71, 1
	v_add_lshl_u32 v91, v91, s71, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_add_lshl_u32 v116, v116, s71, 1
	s_clause 0x2
	buffer_load_u16 v93, v90, s[92:95], 0 offen
	buffer_load_u16 v96, v91, s[92:95], 0 offen
	buffer_load_u16 v253, v116, s[92:95], 0 offen
	v_or_b32_e32 v90, 30, v198
	v_or_b32_e32 v91, 38, v198
	v_or_b32_e32 v116, 56, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v90, v90, s71, 1
	v_add_lshl_u32 v91, v91, s71, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_add_lshl_u32 v116, v116, s71, 1
	s_clause 0x2
	buffer_load_u16 v90, v90, s[92:95], 0 offen
	buffer_load_u16 v91, v91, s[92:95], 0 offen
	buffer_load_u16 v254, v116, s[92:95], 0 offen
	v_or_b32_e32 v116, 58, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v116, v116, s71, 1
	buffer_load_u16 v252, v116, s[92:95], 0 offen
	v_or_b32_e32 v116, 60, v198
	v_add_lshl_u32 v116, v116, s71, 1
	buffer_load_u16 v251, v116, s[92:95], 0 offen
	v_or_b32_e32 v116, 62, v198
	s_delay_alu instid0(VALU_DEP_1)
	v_add_lshl_u32 v116, v116, s71, 1
	buffer_load_u16 v116, v116, s[92:95], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(30)
	v_cndmask_b16 v33.l, 0xff80, v33.l, s1
	s_waitcnt vmcnt(29)
	v_cndmask_b16 v33.h, 0xff80, v34.l, s5
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v34, 4, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v237.h, v33.l
	v_add_lshl_u32 v34, s104, v34, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v34, 0x80000000, v34, s9
	buffer_load_u16 v34, v34, s[84:87], 0 offen
	s_waitcnt vmcnt(24)
	v_cndmask_b16 v70.h, 0xff80, v114.l, s43
	s_waitcnt vmcnt(22)
	v_cndmask_b16 v69.h, 0xff80, v126.l, s39
	s_waitcnt vmcnt(20)
	v_cndmask_b16 v72.h, 0xff80, v115.l, s42
	s_waitcnt vmcnt(18)
	v_cndmask_b16 v71.h, 0xff80, v127.l, s38
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v34.h, 0xff80, v35.l, s11
	v_add_lshl_u32 v35, s104, v111, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v35, 0x80000000, v35, s3
	s_clause 0x5
	buffer_load_u16 v35, v35, s[84:87], 0 offen
	buffer_load_u16 v36, v36, s[84:87], 0 offen
	buffer_load_u16 v74, v74, s[84:87], 0 offen
	buffer_load_u16 v75, v75, s[84:87], 0 offen
	buffer_load_u16 v76, v76, s[84:87], 0 offen
	buffer_load_u16 v77, v73, s[84:87], 0 offen
	v_add_lshl_u32 v73, s104, v154, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v73, 0x80000000, v73, s10
	buffer_load_u16 v73, v73, s[84:87], 0 offen
	v_cndmask_b16 v34.l, 0xff80, v34.l, s9
	v_mov_b16_e64 v169.h, v34.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s20, 0xff800000, v169
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s21, s9, s20
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v237
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s31, s1, s9
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v35.l, 0xff80, v35.l, s3
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v35.h, 0xff80, v36.l, s6
	v_add_lshl_u32 v36, s104, v153, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v170.h, v35.l
	v_cndmask_b32_e64 v36, 0x80000000, v36, s8
	buffer_load_u16 v36, v36, s[84:87], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v36.h, 0xff80, v73.l, s10
	v_add_lshl_u32 v73, s104, v217, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v73, 0x80000000, v73, s12
	s_clause 0x7
	buffer_load_u16 v242, v73, s[84:87], 0 offen
	buffer_load_u16 v243, v78, s[84:87], 0 offen
	buffer_load_u16 v244, v79, s[84:87], 0 offen
	buffer_load_u16 v245, v80, s[84:87], 0 offen
	buffer_load_u16 v246, v81, s[84:87], 0 offen
	buffer_load_u16 v247, v82, s[84:87], 0 offen
	buffer_load_u16 v248, v83, s[84:87], 0 offen
	buffer_load_u16 v249, v84, s[84:87], 0 offen
	v_or_b32_e32 v78, 2, v198
	v_or_b32_e32 v79, 8, v198
	v_or_b32_e32 v80, 16, v198
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v73, s71, v198, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_lshl_u32 v78, v78, s71, 1
	v_add_lshl_u32 v79, v79, s71, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_lshl_u32 v80, v80, s71, 1
	s_clause 0x3
	buffer_load_u16 v73, v73, s[92:95], 0 offen
	buffer_load_u16 v81, v78, s[92:95], 0 offen
	buffer_load_u16 v83, v79, s[92:95], 0 offen
	buffer_load_u16 v86, v80, s[92:95], 0 offen
	v_or_b32_e32 v78, 4, v198
	v_or_b32_e32 v79, 10, v198
	v_or_b32_e32 v80, 18, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v78, v78, s71, 1
	v_add_lshl_u32 v79, v79, s71, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_add_lshl_u32 v80, v80, s71, 1
	s_clause 0x2
	buffer_load_u16 v82, v78, s[92:95], 0 offen
	buffer_load_u16 v84, v79, s[92:95], 0 offen
	buffer_load_u16 v87, v80, s[92:95], 0 offen
	v_or_b32_e32 v78, 6, v198
	v_or_b32_e32 v79, 12, v198
	v_or_b32_e32 v80, 20, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v78, v78, s71, 1
	v_add_lshl_u32 v79, v79, s71, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_add_lshl_u32 v80, v80, s71, 1
	s_clause 0x2
	buffer_load_u16 v78, v78, s[92:95], 0 offen
	buffer_load_u16 v85, v79, s[92:95], 0 offen
	buffer_load_u16 v88, v80, s[92:95], 0 offen
	v_or_b32_e32 v79, 14, v198
	v_or_b32_e32 v80, 22, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v79, v79, s71, 1
	v_add_lshl_u32 v80, v80, s71, 1
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s71, s71, 64
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1
	buffer_load_u16 v79, v79, s[92:95], 0 offen
	buffer_load_u16 v80, v80, s[92:95], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v36.l, 0xff80, v36.l, s8
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v144, v[33:34], v[35:36] offset1:16
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v33.l, v237.l
	v_mov_b16_e64 v34.l, v237.l
	v_mov_b16_e64 v35.l, v237.l
	v_mov_b16_e64 v171.h, v36.l
	v_mov_b16_e64 v36.l, v237.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v33
	v_cmp_neq_f32_e64 s15, 0xff800000, v34
	v_cmp_neq_f32_e64 s35, 0xff800000, v35
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(19)
	v_cndmask_b16 v33.l, 0xff80, v242.l, s12
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s36, 0xff800000, v36
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(18)
	v_cndmask_b16 v33.h, 0xff80, v243.l, s27
	s_waitcnt vmcnt(17)
	v_cndmask_b16 v34.l, 0xff80, v244.l, s14
	s_waitcnt vmcnt(16)
	v_cndmask_b16 v34.h, 0xff80, v245.l, s34
	s_waitcnt vmcnt(15)
	v_cndmask_b16 v35.l, 0xff80, v246.l, s7
	s_waitcnt vmcnt(14)
	v_cndmask_b16 v35.h, 0xff80, v247.l, s25
	s_waitcnt vmcnt(13)
	v_cndmask_b16 v36.l, 0xff80, v248.l, s29
	s_waitcnt vmcnt(12)
	v_cndmask_b16 v36.h, 0xff80, v249.l, s33
	v_mov_b16_e64 v172.h, v33.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s20, s11, s15
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v173.h, v34.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s30, s5, s13
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v144, v[33:34], v[35:36] offset0:32 offset1:48
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v33.l, v237.l
	v_mov_b16_e64 v34.l, v237.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v171
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s9, s10, s36
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v170
	v_cmp_neq_f32_e64 s44, 0xff800000, v33
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v33.h, v35.l
	v_mov_b16_e64 v35.l, v237.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s45, 0xff800000, v34
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s11, s8, s1
	s_and_b32 s13, s6, s35
	s_and_b32 s15, s3, s5
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s46, 0xff800000, v35
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v35, 0, 1, s20
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v173
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, s34, s45
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v172
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v34.h, v36.l
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s21
	s_and_b32 s10, s14, s1
	s_and_b32 s14, s12, s3
	s_and_b32 s12, s27, s44
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s30
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v36.l, v237.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s6, s25, s46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v175.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s31
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s47, 0xff800000, v36
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b16 v36.l, 0xff80, v75.l, s24
	v_cndmask_b16 v36.h, 0xff80, v74.l, s26
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s9
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v74, 0, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v175.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v176.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v176.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v177.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s14
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v35.h, 0xff80, v76.l, s23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v35.l, 0xff80, v77.l, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v177.l, v34.l, v33.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v34.l, v237.l
	v_mov_b16_e64 v33.l, v237.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v34
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s5, s29, s1
	s_and_b32 s1, s33, s47
	v_cndmask_b32_e64 v34, 0, 1, s5
	v_cndmask_b32_e64 v33, 0, 1, s1
	s_and_b32 s7, s7, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v178.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s6
	v_cndmask_b32_e64 v34, 0, 1, s7
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b16 v33.h, 0xff80, v71.l, s17
	v_cndmask_b16 v34.h, 0xff80, v69.l, s19
	v_cndmask_b16 v69.l, 0xff80, v128.l, s28
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v71.l, 0xff80, v129.l, s37
	v_mov_b16_e64 v129.l, v237.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v178.l, v34.l, v33.l
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v33.l, 0xff80, v72.l, s16
	v_cndmask_b16 v34.l, 0xff80, v70.l, s18
	v_cndmask_b16 v70.l, 0xff80, v113.l, s41
	v_cndmask_b16 v72.l, 0xff80, v125.l, s40
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v144, v[33:34], v[35:36] offset0:64 offset1:80
	ds_store_2addr_b64 v144, v[69:70], v[71:72] offset0:96 offset1:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v76, off, off offset:20
	scratch_load_b32 v113, off, off offset:24
	scratch_load_b32 v115, off, off offset:16
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_b64 v[74:75], v74
	v_mov_b16_e64 v129.h, v34.l
	v_mov_b16_e64 v34.l, v237.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s33, 0xff800000, v129
	v_cmp_neq_f32_e64 s25, 0xff800000, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v34.h, v36.l
	v_mov_b16_e64 v36.l, v237.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s34, s18, s33
	s_and_b32 s33, s19, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s29, 0xff800000, v36
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v36.h, v70.l
	v_mov_b16_e64 v70.l, v237.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s45, 0xff800000, v70
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v70.h, v72.l
	v_mov_b16_e64 v72.l, v237.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s47, 0xff800000, v72
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(2)
	ds_load_b64 v[76:77], v76
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(1)
	ds_load_b64 v[113:114], v113
	s_waitcnt vmcnt(0)
	ds_load_b64 v[125:126], v115
	scratch_load_b32 v115, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v60, v234, v60
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	ds_load_b64 v[127:128], v115
	scratch_load_b32 v115, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[169:170], v115
	scratch_load_b32 v115, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[171:172], v115
	scratch_load_b32 v115, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[173:174], v115
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v115, 0, v133
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v115, v175, v176 offset1:32
	ds_store_2addr_b32 v115, v177, v178 offset0:64 offset1:96
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v115.h, v33.l
	v_mov_b16_e64 v33.l, v237.l
	v_mov_b16_e64 v115.l, v237.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v33.h, v35.l
	v_mov_b16_e64 v35.l, v237.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s35, 0xff800000, v115
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_neq_f32_e64 s27, 0xff800000, v35
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v35.h, v69.l
	v_mov_b16_e64 v69.l, v237.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s36, s16, s35
	s_and_b32 s35, s17, s3
	s_and_b32 s27, s23, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s44, 0xff800000, v69
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v69.h, v71.l
	v_mov_b16_e64 v71.l, v237.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_neq_f32_e64 s46, 0xff800000, v71
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v71, 0, 1, s33
	s_and_b32 s19, s37, s18
	s_and_b32 s18, s38, s46
	v_mov_b16_e32 v33.l, v71.l
	v_cndmask_b32_e64 v71, 0, 1, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v71.l
	v_cndmask_b32_e64 v71, 0, 1, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v115.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v71.l
	v_cndmask_b32_e64 v71, 0, 1, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v71.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v115.l, v34.l, v33.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v34.l, v237.l
	v_mov_b16_e64 v33.l, v237.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v34
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_neq_f32_e64 s16, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s25, s24, s3
	s_and_b32 s24, s26, s29
	v_cndmask_b32_e64 v34, 0, 1, s25
	v_cndmask_b32_e64 v33, 0, 1, s24
	s_and_b32 s29, s22, s16
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v36
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s22, s43, s45
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v35
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s26, s39, s44
	s_and_b32 s23, s41, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v70
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s28, s28, s16
	v_or_b16 v129.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s27
	v_cndmask_b32_e64 v34, 0, 1, s29
	s_and_b32 s16, s42, s47
	s_and_b32 s17, s40, s3
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v35, 16, v74
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v36, 16, v73
	s_mul_i32 s3, s69, 3
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s71, s82
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v35, 0x3fb8aa3b, v35
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v129.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s22
	v_cndmask_b32_e64 v34, 0, 1, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v175.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s26
	v_cndmask_b32_e64 v34, 0, 1, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v175.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s16
	v_cndmask_b32_e64 v34, 0, 1, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v33.h, v34.l, v33.l
	v_cndmask_b32_e64 v34, 0, 1, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v33.l, v34.l
	v_cndmask_b32_e64 v34, 0, 1, s19
	v_lshlrev_b16 v33.l, 8, v33.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v33.l, v34.l, v33.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v234, v68
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v68, 16, v78
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_2addr_b32 v158, v115, v129 offset1:32
	ds_store_2addr_b32 v158, v175, v33 offset0:64 offset1:96
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v35, v34, v36 :: v_dual_lshlrev_b32 v36, 16, v81
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v234, v67 :: v_dual_and_b32 v67, 0xffff0000, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v67, 0x3fb8aa3b, v67
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v67, v34, v36 :: v_dual_lshlrev_b32 v36, 16, v75
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v34, v234, v66
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v66, 16, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v36, 0x3fb8aa3b, v36
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v36, v34, v66
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v34, 0xffff0000, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v66, v234, v65 :: v_dual_mul_f32 v65, 0x3fb8aa3b, v34
	v_mul_f32_e32 v34, v234, v64
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v65, v66, v68 :: v_dual_lshlrev_b32 v64, 16, v125
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v66, 16, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v64, 0x3fb8aa3b, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v68, 16, v79
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v64, v34, v66
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v234, v63 :: v_dual_and_b32 v63, 0xffff0000, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v63, 0x3fb8aa3b, v63 :: v_dual_lshlrev_b32 v66, 16, v84
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v63, v34, v66
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v34, v234, v62
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v62, 16, v126
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v66, 16, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v62, 0x3fb8aa3b, v62
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v62, v34, v66
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v34, 0xffff0000, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v66, 0x3fb8aa3b, v34
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v234, v61 :: v_dual_lshlrev_b32 v61, 16, v76
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v66, v60, v68
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v60, 16, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v68, 0x3fb8aa3b, v61
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v68, v34, v60
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v60, 0xffff0000, v76
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v234, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v60, 0x3fb8aa3b, v60 :: v_dual_lshlrev_b32 v59, 16, v87
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v60, v34, v59 :: v_dual_lshlrev_b32 v59, 16, v77
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v34, v234, v58
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v58, 16, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v70, 0x3fb8aa3b, v59
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v70, v34, v58
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_and_b32_e32 v34, 0xffff0000, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v71, 0x3fb8aa3b, v34 :: v_dual_lshlrev_b32 v58, 16, v80
	v_mul_f32_e32 v34, v234, v56
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v71, v57, v58 :: v_dual_lshlrev_b32 v56, 16, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v56, 0x3fb8aa3b, v56 :: v_dual_lshlrev_b32 v57, 16, v89
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v56, v34, v57
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v34, v234, v55 :: v_dual_and_b32 v57, 0xffff0000, v113
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v55, 16, v92
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v113, 0, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v61, 0x3fb8aa3b, v57
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v57, 16, v90
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v61, v34, v55
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v55, 16, v114
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v234, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v55, 0x3fb8aa3b, v55 :: v_dual_lshlrev_b32 v54, 16, v93
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v55, v34, v54
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v34, 0xffff0000, v114
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v54, v234, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v52, 0x3fb8aa3b, v34
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v234, v53 :: v_dual_lshlrev_b32 v53, 16, v127
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v52, v54, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v53, 0x3fb8aa3b, v53 :: v_dual_lshlrev_b32 v54, 16, v94
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v53, v34, v54 :: v_dual_and_b32 v54, 0xffff0000, v127
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v34, v234, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v54, 0x3fb8aa3b, v54 :: v_dual_lshlrev_b32 v51, 16, v95
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v54, v34, v51
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v34, v234, v50
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v50, 16, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v50, 0x3fb8aa3b, v50 :: v_dual_lshlrev_b32 v51, 16, v96
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v50, v34, v51
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v34, 0xffff0000, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v74, 0x3fb8aa3b, v34 :: v_dual_lshlrev_b32 v51, 16, v91
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v234, v48
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v48, 16, v169
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v74, v49, v51 :: v_dual_lshlrev_b32 v49, 16, v238
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v48, 0x3fb8aa3b, v48
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v48, v34, v49
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v34, v234, v47 :: v_dual_and_b32 v49, 0xffff0000, v169
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v47, 16, v239
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v69, 0x3fb8aa3b, v49
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v49, 16, v241
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v69, v34, v47
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v47, 16, v170
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v234, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v47, 0x3fb8aa3b, v47 :: v_dual_lshlrev_b32 v46, 16, v240
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v47, v34, v46
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v34, 0xffff0000, v170
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v46, v234, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v44, 0x3fb8aa3b, v34
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v234, v45 :: v_dual_lshlrev_b32 v45, 16, v171
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v44, v46, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v45, 0x3fb8aa3b, v45 :: v_dual_lshlrev_b32 v46, 16, v250
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v45, v34, v46 :: v_dual_and_b32 v46, 0xffff0000, v171
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v34, v234, v43 :: v_dual_lshlrev_b32 v43, 16, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v46, 0x3fb8aa3b, v46
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v46, v34, v43
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v34, v234, v42
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v42, 16, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v42, 0x3fb8aa3b, v42 :: v_dual_lshlrev_b32 v43, 16, v255
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v42, v34, v43
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v34, 0xffff0000, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v78, 0x3fb8aa3b, v34 :: v_dual_lshlrev_b32 v43, 16, v253
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v234, v40
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v40, 16, v254
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v78, v41, v43 :: v_dual_lshlrev_b32 v41, 16, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v81, 0x3fb8aa3b, v41
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v81, v34, v40 :: v_dual_and_b32 v40, 0xffff0000, v173
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v34, v234, v39 :: v_dual_lshlrev_b32 v39, 16, v252
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v72, 0x3fb8aa3b, v40
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v72, v34, v39
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v34, v234, v38
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v38, 16, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v38, 0x3fb8aa3b, v38 :: v_dual_lshlrev_b32 v39, 16, v251
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v38, v34, v39
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v34, 0xffff0000, v174
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v82, 0x3fb8aa3b, v34 :: v_dual_lshlrev_b32 v39, 16, v116
	scratch_load_b64 v[33:34], off, off offset:4 ; 8-byte Folded Reload
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v82, v37, v39
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[33:34], null, s103, s69, v[33:34]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v57, 1, v33
	v_add_lshl_u32 v58, v33, s69, 1
	v_add_lshl_u32 v59, v33, s83, 1
	v_add_lshl_u32 v83, v33, s3, 1
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v33, 0, v134
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v57, 0x80000000, v57, s0
	v_cndmask_b32_e64 v58, 0x80000000, v58, s0
	v_cndmask_b32_e64 v59, 0x80000000, v59, s0
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v34, v33
	scratch_load_b32 v33, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v84, v33
	scratch_load_b32 v33, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v37, 1, v84
	v_and_b32_e32 v40, 0x1000000, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s64, 1, v37
	v_cmp_ne_u32_e64 s62, 0, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v64, s64
	v_cndmask_b32_e64 v40, 0xff800000, v66, s62
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v85, v33
	scratch_load_b32 v33, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v41, 1, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s58, 1, v41
	v_and_b32_e32 v41, 0x1000000, v85
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v73, 0xff800000, v68, s58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s57, 0, v41
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v76, 0xff800000, v71, s57
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v86, v33
	scratch_load_b32 v33, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v41, 1, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s55, 1, v41
	v_and_b32_e32 v41, 0x1000000, v86
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, 0xff800000, v56, s55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s54, 0, v41
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v80, 0xff800000, v52, s54
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v87, v33
	scratch_load_b32 v33, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v41, 1, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s51, 1, v41
	v_and_b32_e32 v41, 0x1000000, v87
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v49, 0xff800000, v53, s51
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s49, 0, v41
	s_waitcnt vmcnt(0)
	ds_load_b32 v88, v33
	scratch_load_b32 v33, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v41, 1, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e64 s48, 1, v41
	v_and_b32_e32 v41, 0x1000000, v88
	v_cmp_ne_u32_e64 s47, 0, v41
	s_waitcnt vmcnt(0)
	ds_load_b32 v89, v33
	scratch_load_b32 v33, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v41, 1, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e64 s42, 1, v41
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, 0xff800000, v45, s42
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_b32 v90, v33
	v_and_b32_e32 v33, 0x10000, v34
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v52, 0xff800000, v74, s49
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s63, 0, v33
	v_and_b32_e32 v33, 0x10000, v84
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v53, 0xff800000, v48, s48
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s3, 0, v33
	v_and_b32_e32 v33, 0x10000, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v39, 0xff800000, v62, s3
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s53, 0, v33
	v_and_b32_e32 v33, 0x10000, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v75, 0xff800000, v70, s53
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s50, 0, v33
	v_and_b32_e32 v33, 0x10000, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v79, 0xff800000, v55, s50
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s46, 0, v33
	v_and_b32_e32 v33, 0x10000, v88
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v56, 0xff800000, v44, s47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v51, 0xff800000, v50, s46
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s45, 0, v33
	v_and_b32_e32 v33, 0x10000, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v55, 0xff800000, v47, s45
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s38, 0, v33
	v_and_b32_e32 v33, 0x10000, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v43, 0xff800000, v42, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v42, 0x1000000, v89
	v_cmp_ne_u32_e64 s37, 0, v33
	v_and_b32_e32 v33, 1, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_ne_u32_e64 s41, 0, v42
	v_and_b32_e32 v42, 1, v90
	v_cmp_eq_u32_e64 s66, 1, v33
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v47, 0xff800000, v38, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v38, 0x1000000, v90
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, 0xff800000, v78, s41
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s40, 1, v42
	v_lshrrev_b16 v42.l, 8, v85.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, 0xff800000, v35, s66
	v_cndmask_b32_e64 v35, 0xff800000, v36, s63
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v36, 0x1000000, v34
	v_lshrrev_b16 v34.l, 8, v34.l
	v_cmp_ne_u32_e64 s39, 0, v38
	v_lshrrev_b16 v38.l, 8, v84.l
	v_and_b16 v42.l, 1, v42.l
	v_cmp_ne_u32_e64 s65, 0, v36
	v_and_b16 v34.l, 1, v34.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v45, 0xff800000, v81, s40
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v38.l, 1, v38.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v48, 0xff800000, v82, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s60, 1, v42.l
	v_lshrrev_b16 v42.l, 8, v86.l
	v_cmp_eq_u16_e64 s68, 1, v34.l
	v_cmp_eq_u16_e64 s67, 1, v38.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v65, s65
	v_cndmask_b32_e64 v74, 0xff800000, v60, s60
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v42.l, 1, v42.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v34, 0xff800000, v67, s68
	v_add_nc_u32_e32 v60, 0, v135
	v_cndmask_b32_e64 v38, 0xff800000, v63, s67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s59, 1, v42.l
	v_lshrrev_b16 v42.l, 8, v87.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v78, 0xff800000, v61, s59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v42.l, 1, v42.l
	v_cmp_eq_u16_e64 s56, 1, v42.l
	v_lshrrev_b16 v42.l, 8, v88.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v50, 0xff800000, v54, s56
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v42.l, 1, v42.l
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b128 v60, v[33:36]
	ds_store_b128 v60, v[49:52] offset:2048
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v60, 0x80000000, v83, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s52, 1, v42.l
	v_lshrrev_b16 v42.l, 8, v89.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v54, 0xff800000, v69, s52
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v42.l, 1, v42.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s44, 1, v42.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v42, 0xff800000, v46, s44
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v46.l, 8, v90.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b16 v46.l, 1, v46.l
	v_cmp_eq_u16_e64 s43, 1, v46.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v46, 0xff800000, v72, s43
	ds_store_b128 v166, v[37:40]
	ds_store_b128 v166, v[53:56] offset:2048
	ds_store_b128 v167, v[73:76]
	ds_store_b128 v167, v[41:44] offset:2048
	ds_store_b128 v168, v[77:80]
	ds_store_b128 v168, v[45:48] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[169:172], v57, s[96:99], 0 offen
	buffer_load_b128 v[173:176], v59, s[96:99], 0 offen
	buffer_load_b128 v[114:117], v60, s[96:99], 0 offen
	buffer_load_b128 v[125:128], v58, s[96:99], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[93:96], v199
	ds_load_b128 v[85:88], v199 offset:256
	ds_load_b128 v[89:92], v199 offset:1024
	ds_load_b128 v[81:84], v199 offset:1280
	ds_load_b128 v[69:72], v199 offset:512
	ds_load_b128 v[61:64], v199 offset:768
	ds_load_b128 v[65:68], v199 offset:1536
	ds_load_b128 v[57:60], v199 offset:1792
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v177.l, v169.l
	v_mov_b16_e64 v169.l, v171.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v178.l, v173.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v178.h, v114.l
	v_mov_b16_e64 v114.l, v173.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v177.h, v125.l
	v_mov_b16_e64 v125.l, v169.h
	v_mov_b16_e64 v169.h, v127.l
	v_mov_b16_e64 v127.l, v171.h
	ds_store_b64 v113, v[177:178]
	v_mov_b16_e64 v177.h, v126.l
	v_mov_b32_e32 v113, v125
	v_mov_b16_e64 v126.l, v170.h
	v_mov_b16_e64 v178.l, v174.l
	v_mov_b16_e64 v178.h, v115.l
	v_mov_b16_e64 v177.l, v170.l
	v_mov_b16_e64 v115.l, v174.h
	v_mov_b16_e64 v170.l, v175.l
	v_mov_b16_e64 v170.h, v116.l
	v_mov_b16_e64 v116.l, v175.h
	ds_store_b64 v200, v[113:114]
	ds_store_b64 v201, v[177:178]
	v_mov_b32_e32 v114, v126
	v_mov_b16_e64 v113.l, v172.l
	v_mov_b16_e64 v113.h, v128.l
	v_mov_b16_e64 v128.l, v172.h
	ds_store_b64 v202, v[114:115]
	ds_store_b64 v203, v[169:170]
	v_mov_b16_e32 v114.h, v117.l
	v_mov_b16_e64 v117.l, v176.h
	v_mov_b32_e32 v115, v127
	v_mov_b16_e64 v114.l, v176.l
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v129, v117
	ds_store_b64 v205, v[115:116]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v115, v80, v49, v50
	v_max3_f32 v116, v41, v42, v43
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v117, 0, v136
	ds_store_b64 v206, v[113:114]
	ds_store_b64 v207, v[128:129]
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v113, v74, v75, v76
	v_max3_f32 v114, v77, v78, v79
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[239:242], v117
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v113, v113, v114, v115
	v_max3_f32 v114, v51, v52, v53
	v_max3_f32 v115, v54, v55, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v114, v114, v115, v116
	v_max_f32_e32 v115, v33, v34
	v_max3_f32 v116, v36, v37, v38
	v_max3_f32 v115, v115, v35, v116
	v_max3_f32 v116, v39, v40, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v113, v115, v116, v113
	v_dual_max_f32 v115, v44, v45 :: v_dual_max_f32 v116, v47, v48
	v_max3_f32 v115, v115, v46, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v113, v113, v114, v115
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v114, v113, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp7:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v238, v236, v113, v114
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v114, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v113.h, v237.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v238
	v_sub_f32_e32 v33, v33, v238
	v_sub_f32_e32 v36, v36, v238
	v_sub_f32_e32 v35, v35, v238
	v_sub_f32_e32 v38, v38, v238
	v_sub_f32_e32 v37, v37, v238
	v_sub_f32_e32 v40, v40, v238
	v_sub_f32_e32 v39, v39, v238
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s68
	v_cndmask_b32_e64 v33, 0, v33, s66
	v_cndmask_b32_e64 v36, 0, v36, s65
	v_cndmask_b32_e64 v35, 0, v35, s63
	v_cndmask_b32_e64 v38, 0, v38, s67
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v37, 0, v37, s64
	v_cndmask_b32_e64 v40, 0, v40, s62
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v39, 0, v39, s3
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v113.l, v34.h
	v_cmp_o_f32_e64 s68, v34, v34
	v_cmp_o_f32_e64 s66, v33, v33
	v_cmp_o_f32_e64 s65, v36, v36
	v_cmp_o_f32_e64 s63, v35, v35
	v_cmp_o_f32_e64 s64, v37, v37
	v_cmp_o_f32_e64 s62, v40, v40
	v_cmp_o_f32_e64 s3, v39, v39
	v_and_b32_e32 v113, 1, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v34, v34, v113, 0x7fff
	v_mov_b16_e64 v113.h, v237.l
	v_mov_b16_e32 v113.l, v33.h
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v113, 1, v113
	v_add3_u32 v33, v33, v113, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s66
	v_permlanex16_b32 v113, v34, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v113, v34, v112
	v_perm_b32 v34, v113, v34, v118
	v_mov_b16_e64 v113.h, v237.l
	v_mov_b16_e32 v113.l, v36.h
	v_and_b32_e32 v113, 1, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v36, v36, v113, 0x7fff
	v_mov_b16_e64 v113.h, v237.l
	v_mov_b16_e32 v113.l, v35.h
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v113, 1, v113
	v_add3_u32 v35, v35, v113, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s63
	v_cmp_o_f32_e64 s63, v38, v38
	v_permlanex16_b32 v113, v36, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v113, v36, v112
	v_perm_b32 v36, v113, v36, v118
	v_mov_b16_e64 v113.h, v237.l
	v_mov_b16_e32 v113.l, v38.h
	v_and_b32_e32 v113, 1, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v113, 0x7fff
	v_mov_b16_e64 v113.h, v237.l
	v_mov_b16_e32 v113.l, v37.h
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v113, 1, v113
	v_add3_u32 v37, v37, v113, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s64
	v_permlanex16_b32 v113, v38, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v113, v38, v112
	v_perm_b32 v38, v113, v38, v118
	v_mov_b16_e64 v113.h, v237.l
	v_mov_b16_e32 v113.l, v40.h
	v_and_b32_e32 v113, 1, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v113, 0x7fff
	v_mov_b16_e64 v113.h, v237.l
	v_mov_b16_e32 v113.l, v39.h
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v113, 1, v113
	v_add3_u32 v39, v39, v113, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v236
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v113, v40, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v39, v113, v40, v112
	v_perm_b32 v40, v113, v40, v118
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v113, v236, v238 :: v_dual_mov_b32 v236, v238
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v113, v113
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v113, 0, v113, s3
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v113
	v_mul_f32_e32 v10, v10, v113
	v_mul_f32_e32 v11, v11, v113
	v_mul_f32_e32 v12, v12, v113
	v_mul_f32_e32 v13, v13, v113
	v_mul_f32_e32 v14, v14, v113
	v_mul_f32_e32 v15, v15, v113
	v_mul_f32_e32 v16, v16, v113
	v_mul_f32_e32 v25, v25, v113
	v_mul_f32_e32 v26, v26, v113
	v_mul_f32_e32 v27, v27, v113
	v_mul_f32_e32 v28, v28, v113
	v_mul_f32_e32 v29, v29, v113
	v_mul_f32_e32 v30, v30, v113
	v_mul_f32_e32 v31, v31, v113
	v_mul_f32_e32 v32, v32, v113
	v_mul_f32_e32 v17, v17, v113
	v_mul_f32_e32 v18, v18, v113
	v_mul_f32_e32 v19, v19, v113
	v_mul_f32_e32 v20, v20, v113
	v_mul_f32_e32 v21, v21, v113
	v_mul_f32_e32 v22, v22, v113
	v_mul_f32_e32 v23, v23, v113
	v_mul_f32_e32 v24, v24, v113
	v_mul_f32_e32 v1, v1, v113
	v_mul_f32_e32 v2, v2, v113
	v_mul_f32_e32 v3, v3, v113
	v_mul_f32_e32 v4, v4, v113
	v_mul_f32_e32 v5, v5, v113
	v_mul_f32_e32 v6, v6, v113
	v_mul_f32_e32 v7, v7, v113
	v_mul_f32_e32 v8, v8, v113
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[243:246], v114
	scratch_load_b32 v114, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[247:250], v114
	ds_load_b128 v[169:172], v117 offset:2048
	scratch_load_b32 v114, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[239:246], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[239:242], v114
	scratch_load_b32 v114, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[243:246], v114
	scratch_load_b32 v114, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[239:246], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[239:242], v160
	ds_load_b128 v[243:246], v161
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[239:246], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[239:242], v131
	ds_load_b128 v[243:246], v97
	ds_load_b128 v[185:188], v123
	ds_load_b128 v[213:216], v130
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[239:246], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v74, v238
	v_sub_f32_e32 v33, v73, v238
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v73.h, v237.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v75, v238
	v_sub_f32_e32 v37, v77, v238
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v79, v238
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s60
	v_cndmask_b32_e64 v33, 0, v33, s58
	v_cndmask_b32_e64 v35, 0, v35, s53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v37, 0, v37, s55
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v73.l, v34.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v76, v238
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s58, v33, v33
	v_cmp_o_f32_e64 s53, v35, v35
	v_and_b32_e32 v73, 1, v73
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s50
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v34, v34, v73, 0x7fff
	v_mov_b16_e64 v73.h, v237.l
	v_mov_b16_e32 v73.l, v33.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v78, v238
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s50, v39, v39
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s57
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v73, 1, v73
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v33, v33, v73, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s59
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v73, v34, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v73, v34, v112
	v_perm_b32 v34, v73, v34, v118
	v_mov_b16_e64 v73.h, v237.l
	v_mov_b16_e32 v73.l, v36.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v40, v80, v238 :: v_dual_and_b32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v36, v36, v73, 0x7fff
	v_mov_b16_e64 v73.h, v237.l
	v_mov_b16_e32 v73.l, v35.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s54
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v35, v35, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s53
	v_cmp_o_f32_e64 s53, v37, v37
	v_permlanex16_b32 v73, v36, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v73, v36, v112
	v_perm_b32 v36, v73, v36, v118
	v_mov_b16_e64 v73.h, v237.l
	v_mov_b16_e32 v73.l, v38.h
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v73, 0x7fff
	v_mov_b16_e64 v73.h, v237.l
	v_mov_b16_e32 v73.l, v37.h
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	v_cmp_o_f32_e64 s3, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v37, v37, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s53
	v_permlanex16_b32 v73, v38, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v73, v38, v112
	v_perm_b32 v38, v73, v38, v118
	v_mov_b16_e64 v73.h, v237.l
	v_mov_b16_e32 v73.l, v40.h
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v73, 0x7fff
	v_mov_b16_e64 v73.h, v237.l
	v_mov_b16_e32 v73.l, v39.h
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v39, v39, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s50
	v_permlanex16_b32 v73, v40, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v73, v40, v112
	v_perm_b32 v40, v73, v40, v118
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v73, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[173:176], v114
	scratch_load_b32 v114, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[169:176], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[169:172], v162
	ds_load_b128 v[173:176], v163
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[169:176], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[189:192], v193
	ds_load_b128 v[169:172], v194
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[185:192], v[33:40], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_load_b128 v[251:254], v73
	scratch_load_b32 v73, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[247:254], v[33:40], v[9:16]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v50, v238
	v_sub_f32_e32 v33, v49, v238
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v49.h, v237.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v52, v238
	v_sub_f32_e32 v35, v51, v238
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v54, v238
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v53, v238
	v_sub_f32_e32 v40, v56, v238
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v55, v238
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	scratch_load_b32 v53, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s56
	v_cndmask_b32_e64 v33, 0, v33, s51
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s49
	v_cndmask_b32_e64 v35, 0, v35, s46
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v49.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s50, v33, v33
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s52
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s46, v35, v35
	v_and_b32_e32 v49, 1, v49
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s48
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v34, v34, v49, 0x7fff
	v_mov_b16_e64 v49.h, v237.l
	v_mov_b16_e32 v49.l, v33.h
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_cmp_o_f32_e64 s3, v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_and_b32_e32 v49, 1, v49
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v39, 0, v39, s45
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v33, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s45, v39, v39
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v49, v34, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v49, v34, v112
	v_perm_b32 v34, v49, v34, v118
	v_mov_b16_e64 v49.h, v237.l
	v_mov_b16_e32 v49.l, v36.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(2)
	ds_load_b128 v[181:184], v114
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v36, v36, v49, 0x7fff
	v_mov_b16_e64 v49.h, v237.l
	v_mov_b16_e32 v49.l, v35.h
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v35, v35, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s46
	v_cmp_o_f32_e64 s46, v37, v37
	v_permlanex16_b32 v49, v36, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v49, v36, v112
	v_perm_b32 v36, v49, v36, v118
	v_mov_b16_e64 v49.h, v237.l
	v_mov_b16_e32 v49.l, v38.h
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v49, 0x7fff
	v_mov_b16_e64 v49.h, v237.l
	v_mov_b16_e32 v49.l, v37.h
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	v_cmp_o_f32_e64 s3, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v37, v37, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s46
	v_permlanex16_b32 v49, v38, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v49, v38, v112
	v_perm_b32 v38, v49, v38, v118
	v_mov_b16_e64 v49.h, v237.l
	v_mov_b16_e32 v49.l, v40.h
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v49, 0x7fff
	v_mov_b16_e64 v49.h, v237.l
	v_mov_b16_e32 v49.l, v39.h
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v39, v39, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s45
	v_permlanex16_b32 v49, v40, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v49, v40, v112
	v_perm_b32 v40, v49, v40, v118
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v49, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	ds_load_b128 v[73:76], v73
	s_waitcnt vmcnt(1)
	ds_load_b128 v[53:56], v53
	s_waitcnt vmcnt(0)
	ds_load_b128 v[77:80], v49
	scratch_load_b32 v49, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[177:180], v49
	scratch_load_b32 v49, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[173:176], v195
	ds_load_b128 v[77:80], v196
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[169:176], v[33:40], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[49:52], v49
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[49:56], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[49:52], v117 offset:4096
	ds_load_b128 v[53:56], v164
	ds_load_b128 v[209:212], v165
	ds_load_b128 v[73:76], v117 offset:6144
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[49:56], v[33:40], v[17:24]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v42, v238
	v_sub_f32_e32 v33, v41, v238
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v41.h, v237.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v44, v238
	v_sub_f32_e32 v35, v43, v238
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v46, v238
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v45, v238
	v_sub_f32_e32 v40, v48, v238
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v39, v47, v238 :: v_dual_max_f32 v52, v72, v72
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s44
	v_cndmask_b32_e64 v33, 0, v33, s42
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s41
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v35, 0, v35, s38
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s42, v33, v33
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s43
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s38, v35, v35
	v_and_b32_e32 v41, 1, v41
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s40
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
.Ltmp8:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v53, v66, v71, v67
.Ltmp9:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v34, v41, 0x7fff
	v_mov_b16_e64 v41.h, v237.l
	v_mov_b16_e32 v41.l, v33.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_cmp_o_f32_e64 s3, v36, v36
	v_and_b32_e32 v41, 1, v41
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v39, 0, v39, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v33, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v39, v39
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v34, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v41, v34, v112
	v_perm_b32 v34, v41, v34, v118
	v_mov_b16_e64 v41.h, v237.l
	v_mov_b16_e32 v41.l, v36.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v36, v36, v41, 0x7fff
	v_mov_b16_e64 v41.h, v237.l
	v_mov_b16_e32 v41.l, v35.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v35, v41, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s38
	v_cmp_o_f32_e64 s38, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v36, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v41, v36, v112
	v_perm_b32 v36, v41, v36, v118
	v_mov_b16_e64 v41.h, v237.l
	v_mov_b16_e32 v41.l, v38.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v38, v38, v41, 0x7fff
	v_mov_b16_e64 v41.h, v237.l
	v_mov_b16_e32 v41.l, v37.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	v_cmp_o_f32_e64 s3, v40, v40
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v37, v41, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v38, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v41, v38, v112
	v_perm_b32 v38, v41, v38, v118
	v_mov_b16_e64 v41.h, v237.l
	v_mov_b16_e32 v41.l, v40.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v40, v40, v41, 0x7fff
	v_mov_b16_e64 v41.h, v237.l
	v_mov_b16_e32 v41.l, v39.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v39, v41, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v40, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v41, v40, v112
	v_perm_b32 v40, v41, v40, v118
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v41, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[41:44], v41
	ds_load_b128 v[45:48], v159
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[177:184], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[209:216], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[33:40], v[1:8]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[41:48], v[33:40], v[25:32]
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v92, v92
	v_max_f32_e32 v34, v96, v96
	v_max3_f32 v35, v90, v95, v91
	v_max_f32_e32 v43, v88, v88
	v_max3_f32 v44, v82, v87, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v34, v33
	v_max3_f32 v34, v93, v89, v94
	v_max3_f32 v33, v34, v35, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_dual_max_f32 v34, v33, v34 :: v_dual_max_f32 v33, v119, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v119, v33, v34
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v84, v84 :: v_dual_sub_f32 v36, v94, v119
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v33, v43, v33
	v_max3_f32 v43, v85, v81, v86
.Ltmp19:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v90, v119
	v_sub_f32_e32 v41, v91, v119
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v96, v119
.Ltmp20:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v43, v44, v33
.Ltmp21:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v92, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v38
.Ltmp22:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v43, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp23:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s30
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp25:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s20
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v43
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v43, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v43
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v43, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v43, v33, v43
.Ltmp31:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v120, v120
	v_max_f32_e32 v120, v33, v43
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v93, v119
	v_sub_f32_e32 v39, v89, v119
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_sub_f32 v37, v95, v119 :: v_dual_sub_f32 v48, v81, v120
	v_sub_f32_e32 v46, v87, v120
	v_sub_f32_e32 v50, v83, v120
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v85, v120
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s31
	v_cndmask_b32_e64 v39, 0, v39, s36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v37, 0, v37, s21
.Ltmp32:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v39
.Ltmp33:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s35
.Ltmp34:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v39
.Ltmp35:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp37:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v39
.Ltmp39:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v42
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v47, v88, v120 :: v_dual_add_f32 v38, v38, v39
	v_sub_f32_e32 v51, v84, v120
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v50
.Ltmp40:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v36, v37, v38 :: v_dual_mov_b32 v37, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v51
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v68, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp44:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s25
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp46:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s24
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v52, v33
	v_max3_f32 v52, v69, v65, v70
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v52, v53, v33
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v52, v33 :: v_dual_add_f32 v35, v35, v36
	v_mov_b32_dpp v52, v52 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v36, v35
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v106, v35, v36
.Ltmp59:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v44
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v52, v33
.Ltmp61:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
.Ltmp65:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v52
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v35, v35, v36 :: v_dual_mov_b32 v52, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v52, v33, v52
.Ltmp70:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v121, v121
	v_max_f32_e32 v121, v33, v52
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp72:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v53, v69, v121
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v69, v64, v64 :: v_dual_sub_f32 v54, v70, v121
	v_max3_f32 v70, v58, v63, v59
	v_max_f32_e32 v33, v69, v33
	v_max3_f32 v69, v61, v57, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v33, v69, v70, v33
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v69, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v69, v69 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v69
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v69, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v69
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v69, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v69
.Ltmp80:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v69, v122, v122
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v45, v86, v120 :: v_dual_max_f32 v122, v69, v33
	v_sub_f32_e32 v49, v82, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v36, v45
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v64, v122
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v49
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v61, v61, v122
	v_sub_f32_e32 v57, v57, v122
	v_sub_f32_e32 v62, v62, v122
	v_sub_f32_e32 v58, v58, v122
	v_sub_f32_e32 v63, v63, v122
	v_sub_f32_e32 v59, v59, v122
	v_sub_f32_e32 v60, v60, v122
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v38, 0, v38, s27
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v60
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp81:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v38
.Ltmp82:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v46
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v67, v67, v121
	v_sub_f32_e32 v66, v66, v121
	v_sub_f32_e32 v56, v72, v121
	v_dual_sub_f32 v68, v68, v121 :: v_dual_add_f32 v35, v35, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s16
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s11
.Ltmp83:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp84:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v47
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s22
	v_cndmask_b32_e64 v39, 0, v39, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp85:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v40
.Ltmp86:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v55, v71, v121 :: v_dual_add_f32 v36, v38, v39
	v_mov_b32_e32 v38, v108
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v66
	v_exp_f32_e32 v40, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp87:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp88:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v65, v65, v121 :: v_dual_mov_b32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s26
	v_cndmask_b32_e64 v40, 0, v40, s23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp89:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v36, v35
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v108, v35, v36
.Ltmp95:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v53
	v_exp_f32_e32 v36, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s14
	v_cndmask_b32_e64 v36, 0, v36, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp96:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp97:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v54
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp98:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v39
.Ltmp99:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v55
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp101:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s10
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v40
.Ltmp103:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s8
.Ltmp104:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp105:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v39, v40
	v_mov_b32_e32 v39, v107
.Ltmp107:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v58
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp109:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s17
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp111:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s18
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v36, v35
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v107, v35, v36
.Ltmp118:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v61
	v_exp_f32_e32 v36, v57
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v36, 0, v36, s19
.Ltmp119:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp120:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s6
.Ltmp121:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v40
.Ltmp122:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp124:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp126:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v64
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s1
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v224
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v42
	v_add_f32_e32 v36, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v40, v109 :: v_dual_add_f32 v35, v35, v36
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v36, v35
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v35, v36
.Ltmp134:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v35, v224, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v35, v34
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v35, v224, v34 :: v_dual_mov_b32 v224, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v35, v35
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v35, 0, v35, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v106, v37, v35 :: v_dual_max_f32 v35, v204, v204
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v35, v35, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v36, v204, v35
	v_mov_b32_e32 v204, v35
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v36, 0, v36, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v197
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v108, v38, v36
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v36, v197, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v52
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v37, v197, v36
	v_mov_b32_e32 v197, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v37, v37
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v37, 0, v37, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v235
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v107, v39, v37
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v37, v235, v235
	v_max_f32_e32 v33, v37, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v37, v235, v33
	v_mov_b32_e32 v235, v33
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v37, 0, v37, s1
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v109, v40, v37
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v37, off, off offset:136
	scratch_load_b32 v38, off, off offset:140
	scratch_load_b32 v48, off, off offset:128
	scratch_load_b32 v63, off, off offset:124
	scratch_load_b32 v67, off, off offset:132
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v89, 16, v48
.LBB0_7:                                ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_lshrrev_b32_e32 v0, 4, v48
	v_and_b32_e32 v33, 0x80, v38
	v_add_nc_u32_e32 v34, 0, v37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, 0, v67
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s81, s81, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	ds_store_2addr_b64 v35, v[106:107], v[108:109] offset1:16
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v9
	v_div_scale_f32 v35, null, v0, v0, v10
	v_div_scale_f32 v37, null, v0, v0, v11
	v_div_scale_f32 v39, null, v0, v0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v13
	v_rcp_f32_e32 v48, v39
	v_div_scale_f32 v43, null, v0, v0, v14
	v_rcp_f32_e32 v49, v41
	v_div_scale_f32 v34, vcc_lo, v9, v0, v9
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s0, v10, v0, v10
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v38, s1, v11, v0, v11
	v_fmac_f32_e32 v47, v56, v47
	v_div_scale_f32 v40, s3, v12, v0, v12
	v_fma_f32 v58, -v41, v49, 1.0
	v_fmac_f32_e32 v48, v57, v48
	v_dual_mul_f32 v54, v34, v45 :: v_dual_mul_f32 v55, v36, v46
	v_fma_f32 v59, -v43, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v56, v38, v47 :: v_dual_mul_f32 v57, v40, v48
	v_fmac_f32_e32 v49, v58, v49
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s4, v13, v0, v13
	v_fmac_f32_e32 v50, v59, v50
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	v_fma_f32 v61, -v39, v57, v40
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v15
	v_dual_mul_f32 v62, v42, v49 :: v_dual_fmac_f32 v55, v59, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v56, v60, v47 :: v_dual_fmac_f32 v57, v61, v48
	v_fma_f32 v33, -v33, v54, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v53, v44
	v_fma_f32 v34, -v35, v55, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, -v37, v56, v38
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v51, s5, v14, v0, v14
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v9, v33, v0, v9
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v52, null, v0, v0, v16
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_div_fixup_f32 v10, v34, v0, v10
	v_mul_f32_e32 v34, v51, v50
	v_rcp_f32_e32 v37, v52
	v_fma_f32 v58, -v41, v62, v42
	v_fmac_f32_e32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v25
	v_div_fixup_f32 v12, v33, v0, v12
	v_fma_f32 v33, -v43, v34, v51
	v_div_fixup_f32 v11, v35, v0, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v35, s1, v15, v0, v15
	v_fma_f32 v38, -v52, v37, 1.0
	v_fmac_f32_e32 v34, v33, v50
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v33, v35, v53
	v_div_scale_f32 v46, null, v0, v0, v26
	v_fmac_f32_e32 v37, v38, v37
	v_fma_f32 v45, -v36, v40, 1.0
	v_div_scale_f32 v38, s3, v16, v0, v16
	v_div_scale_f32 v47, null, v0, v0, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s4, v25, v0, v25
	v_fmac_f32_e32 v62, v58, v49
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	v_mul_f32_e32 v43, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v13, v39, v0, v13
	v_div_fixup_f32 v14, v34, v0, v14
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_mul_f32_e32 v35, v45, v40
	v_div_scale_f32 v42, null, v0, v0, v27
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	v_fma_f32 v38, -v36, v35, v45
	v_div_scale_f32 v44, s1, v26, v0, v26
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v35, v38, v40
	v_div_fixup_f32 v15, v33, v0, v15
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v38, v44, v41
	v_div_fmas_f32 v34, v34, v37, v43
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v45, null, v0, v0, v29
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v40, v35
	v_rcp_f32_e32 v35, v45
	v_fma_f32 v43, -v42, v39, 1.0
	v_div_fixup_f32 v16, v34, v0, v16
	v_fma_f32 v34, -v46, v38, v44
	v_div_scale_f32 v36, s3, v27, v0, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v39, v43, v39
	v_div_fixup_f32 v25, v33, v0, v25
	v_fma_f32 v43, -v47, v37, 1.0
	v_fmac_f32_e32 v38, v34, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v34, v36, v39
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, s4, v28, v0, v28
	v_fmac_f32_e32 v35, v49, v35
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v30
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v43
	v_fmac_f32_e32 v34, v44, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v43, v48, 1.0
	v_fmac_f32_e32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_div_scale_f32 v41, s1, v29, v0, v29
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v33, v0, v26
	v_fma_f32 v33, -v42, v34, v36
	v_mul_f32_e32 v36, v41, v35
	v_mul_f32_e32 v46, v40, v37
	v_div_scale_f32 v42, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v39, v34
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v47, v46, v40
	v_fma_f32 v39, -v45, v36, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v27, v33, v0, v27
	v_fmac_f32_e32 v46, v38, v37
	v_div_scale_f32 v38, s5, v30, v0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v39, v35
	v_fma_f32 v34, -v47, v46, v40
	v_div_scale_f32 v47, null, v0, v0, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v45, v36, v41
	v_rcp_f32_e32 v40, v42
	v_div_fmas_f32 v34, v34, v37, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v47
	v_mul_f32_e32 v44, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v0, v0, v18
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v39, -v43, v44, v38
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_fixup_f32 v28, v34, v0, v28
	v_div_scale_f32 v34, s3, v31, v0, v31
	v_fmac_f32_e32 v44, v39, v48
	v_fma_f32 v39, -v47, v37, 1.0
	v_div_fixup_f32 v29, v33, v0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v43, v44, v38
	v_div_scale_f32 v38, null, v0, v0, v17
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s1, v32, v0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v48, v44
	v_rcp_f32_e32 v41, v38
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v48, null, v0, v0, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v30, v35, v0, v30
	v_rcp_f32_e32 v35, v45
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v45, v35, 1.0
	v_fmac_f32_e32 v35, v46, v35
	v_mul_f32_e32 v36, v34, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v42, v36, v34
	v_fmac_f32_e32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v19
	v_fmac_f32_e32 v41, v43, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v34, v40, v36
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s3, v18, v0, v18
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v31, v34, v0, v31
	v_mul_f32_e32 v49, v40, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v43, 1.0
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v19, v0, v19
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v17, v0, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v47, v44, v39
	v_mul_f32_e32 v39, v33, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v37, v44
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
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v36, s1, v23, v0, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v34, null, v0, v0, v1
	v_div_fixup_f32 v21, v33, v0, v21
	v_fma_f32 v33, -v43, v45, 1.0
	v_fma_f32 v37, -v40, v39, v35
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v48, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v24, v0, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v49, v47
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v49, s5, v2, v0, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v0, v8
	v_dual_mul_f32 v52, v48, v41 :: v_dual_fmac_f32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v40, v43, v38
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v9, s0
	v_cndmask_b32_e64 v9, 0, v10, s0
	v_cndmask_b32_e64 v10, 0, v11, s0
	v_cndmask_b32_e64 v11, 0, v12, s0
	v_cndmask_b32_e64 v12, 0, v13, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v37, v8, 16, 1
	v_bfe_u32 v38, v9, 16, 1
	v_bfe_u32 v39, v10, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v14, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s4, v8, v8
	v_add3_u32 v37, v8, v37, 0x7fff
	v_add3_u32 v8, v9, v38, 0x7fff
	v_cmp_o_f32_e64 s5, v9, v9
	v_add3_u32 v9, v10, v39, 0x7fff
	v_cmp_o_f32_e64 s6, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v15, s0
	v_cndmask_b32_e64 v15, 0, v16, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v37.h, s4
	v_bfe_u32 v37, v12, 16, 1
	v_bfe_u32 v38, v13, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v11, v11
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s5
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s6
	v_add3_u32 v11, v12, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v12, v12
	v_add3_u32 v12, v13, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v13, v13
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s4
	v_bfe_u32 v10, v14, 16, 1
	v_bfe_u32 v13, v15, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v27, s0
	v_cndmask_b32_e64 v27, 0, v28, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s5
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s6
	v_bfe_u32 v12, v16, 16, 1
	v_add3_u32 v10, v14, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v14, v14
	v_add3_u32 v13, v15, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v15, v15
	v_bfe_u32 v14, v25, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v29, s0
	v_cndmask_b32_e64 v29, 0, v30, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v12, v16, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s4
	v_cndmask_b16 v10.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v26, 16, 1
	v_bfe_u32 v15, v27, 16, 1
	v_add3_u32 v14, v25, v14, 0x7fff
	v_cmp_o_f32_e64 s4, v25, v25
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s6
	v_add3_u32 v13, v26, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v26, v26
	v_add3_u32 v15, v27, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v27, v27
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s4
	v_bfe_u32 v14, v28, 16, 1
	v_bfe_u32 v16, v29, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s5
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s6
	v_bfe_u32 v15, v30, 16, 1
	v_add3_u32 v14, v28, v14, 0x7fff
	v_cmp_o_f32_e64 s4, v28, v28
	v_add3_u32 v16, v29, v16, 0x7fff
	v_cmp_o_f32_e64 s5, v29, v29
	v_bfe_u32 v25, v31, 16, 1
	v_add3_u32 v15, v30, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v30, v30
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s4
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s5
	v_bfe_u32 v16, v17, 16, 1
	v_bfe_u32 v26, v18, 16, 1
	v_add3_u32 v25, v31, v25, 0x7fff
	v_cmp_o_f32_e64 s4, v31, v31
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s6
	v_add3_u32 v16, v17, v16, 0x7fff
	v_cmp_o_f32_e64 s5, v17, v17
	v_add3_u32 v17, v18, v26, 0x7fff
	v_cmp_o_f32_e64 s6, v18, v18
	v_cndmask_b16 v15.h, 0x7fff, v25.h, s4
	v_bfe_u32 v18, v19, 16, 1
	v_bfe_u32 v25, v20, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s5
	v_cndmask_b16 v16.h, 0x7fff, v17.h, s6
	v_bfe_u32 v17, v21, 16, 1
	v_add3_u32 v18, v19, v18, 0x7fff
	v_cmp_o_f32_e64 s4, v19, v19
	v_add3_u32 v19, v20, v25, 0x7fff
	v_cmp_o_f32_e64 s5, v20, v20
	v_bfe_u32 v20, v22, 16, 1
	v_add3_u32 v17, v21, v17, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s4
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s5
	v_bfe_u32 v19, v23, 16, 1
	v_bfe_u32 v21, v24, 16, 1
	v_add3_u32 v20, v22, v20, 0x7fff
	v_cmp_o_f32_e64 s4, v22, v22
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s6
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s5, v23, v23
	v_add3_u32 v21, v24, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v24, v24
	v_cndmask_b16 v17.h, 0x7fff, v20.h, s4
	v_bfe_u32 v20, v1, 16, 1
	v_bfe_u32 v22, v2, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s5
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v3, 16, 1
	v_add3_u32 v20, v1, v20, 0x7fff
	v_cmp_o_f32_e64 s4, v1, v1
	v_add3_u32 v1, v2, v22, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v2, v3, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v20.h, s4
	v_bfe_u32 v20, v5, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s5
	v_cmp_o_f32_e64 s4, v4, v4
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v6, 16, 1
	v_add3_u32 v20, v5, v20, 0x7fff
	v_bfe_u32 v21, v7, 16, 1
	v_cmp_o_f32_e64 s5, v5, v5
	v_bfe_u32 v5, v0, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s6
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s6, v6, v6
	v_add3_u32 v6, v7, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v7, v7
	v_add3_u32 v5, v0, v5, 0x7fff
	v_cmp_o_f32_e64 s8, v0, v0
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s4
	v_cndmask_b16 v0.l, 0x7fff, v20.h, s5
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s6
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s7
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s8
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v32, 1, v89
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v4, v11, v8, s61
	v_cndmask_b32_e64 v5, v8, v11, s61
	v_cndmask_b32_e64 v6, v10, v9, s61
	v_cndmask_b32_e64 v7, v9, v10, s61
	v_cndmask_b32_e64 v8, v14, v12, s61
	v_cndmask_b32_e64 v9, v12, v14, s61
	v_cndmask_b32_e64 v10, v15, v13, s61
	v_cndmask_b32_e64 v11, v13, v15, s61
	v_cndmask_b32_e64 v12, v17, v16, s61
	v_cndmask_b32_e64 v13, v16, v17, s61
	v_cndmask_b32_e64 v15, v18, v19, s61
	v_cndmask_b32_e64 v16, v0, v1, s61
	v_cndmask_b32_e64 v0, v1, v0, s61
	v_cndmask_b32_e64 v1, v2, v3, s61
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s69, v63
	.loc	1 1046 74 is_stmt 0             ; attention.py:1046:74
	v_or_b32_e32 v33, 16, v32
	s_mov_b32 s4, 0x76543210
	v_or_b32_e32 v34, 32, v32
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b32_e64 v14, v19, v18, s61
	v_cndmask_b32_e64 v17, v3, v2, s61
	v_permlanex16_b32 v2, v5, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v7, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v11, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v15, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v9, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v13, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 48, v32
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s69, v33
	v_cmp_gt_i32_e64 s3, s69, v32
	v_cmp_gt_i32_e64 s0, s69, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v2, v4, v112
	v_perm_b32 v1, v2, v4, v118
	v_perm_b32 v2, v3, v6, v112
	v_perm_b32 v3, v3, v6, v118
	v_perm_b32 v6, v7, v10, v112
	v_perm_b32 v7, v7, v10, v118
	v_perm_b32 v10, v11, v14, v112
	v_perm_b32 v11, v11, v14, v118
	v_perm_b32 v14, v15, v17, v112
	v_perm_b32 v15, v15, v17, v118
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v36, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v4, v5, v8, v112
	v_perm_b32 v5, v5, v8, v118
	v_perm_b32 v8, v9, v12, v112
	v_perm_b32 v9, v9, v12, v118
	v_perm_b32 v12, v13, v16, v112
	v_perm_b32 v13, v13, v16, v118
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v36, v32, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s69, v35
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s3, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v36, v35, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[80:83], 0 offen
	buffer_store_b128 v[4:7], v17, s[80:83], 0 offen
	buffer_store_b128 v[8:11], v18, s[80:83], 0 offen
	buffer_store_b128 v[12:15], v19, s[80:83], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp135:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 148
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
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 148
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21292
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 148
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
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
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
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
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
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
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
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
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
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
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
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
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
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
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
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
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 148
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 36
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
