	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x74
.Ltmp0:
	.loc	1 536 23 prologue_end           ; attention_backward.py:536:23
	v_and_b32_e32 v35, 7, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v9, 3, v0
	s_clause 0x2
	s_load_b128 s[44:47], s[0:1], 0x0
	s_load_b32 s31, s[0:1], 0x7c
	s_load_b64 s[28:29], s[0:1], 0x58
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s34, s2, 4
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_lshl_b32 s2, s3, 11
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_lshlrev_b32_e32 v25, 3, v35
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s34, v9
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s5, s2, s34
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v10, 4, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v1
	s_load_b64 s[8:9], s[0:1], 0x10
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s10, s50
	s_mov_b32 s11, s51
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v40, v0, 4, 1
	s_load_b256 s[36:43], s[0:1], 0x38
	s_mov_b32 s20, 0
	s_lshl_b32 s35, s3, 12
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[121:122], null, s18, v9, v[25:26]
	s_mul_i32 s30, s18, s5
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s2, s18, v25
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s49, s47, 0xffff
	s_mov_b32 s48, s46
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_mul_lo_u32 v34, s19, v9
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v9, 56, v0
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_lshl_add_u32 v98, s18, 3, v121
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v1, v121, s30, 1
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, vcc_lo, s2
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s33, s19, s5
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v36, 1, v9
	v_add_lshl_u32 v2, v98, s30, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_lshl_add_u32 v37, s19, 3, v34
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v9, v10, v36
	v_cndmask_b32_e64 v5, 0x80000000, v2, s4
	v_mad_u64_u32 v[122:123], null, s18, 24, v[121:122]
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s56, s31, 0x3fb8aa3b
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[48:51], 0 offen
	buffer_load_b128 v[5:8], v5, s[48:51], 0 offen
	v_add_nc_u32_e32 v191, 0, v9
	s_and_b32 s39, s39, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s5, -1
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s46, s50
	s_mov_b32 s47, s51
	s_mov_b32 s52, s40
	s_mov_b32 s53, s41
	s_mov_b32 s48, s38
	s_mov_b32 s49, s39
	s_mov_b32 s38, s50
	s_mov_b32 s39, s51
	s_mov_b32 s1, s20
	s_waitcnt vmcnt(1)
	ds_store_b128 v191, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v191, v[5:8] offset:1024
	v_mov_b32_e32 v1, 0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v45, 15, v0
	v_and_b32_e32 v38, 16, v0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v39, 32, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v5, v1 :: v_dual_lshlrev_b32 v46, 5, v0
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v189, v34, v25
	v_mov_b32_e32 v6, v1
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v11, v37, v25
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s19, v25
	.loc	1 579 17                        ; attention_backward.py:579:17
	scratch_store_b32 off, v10, off         ; 4-byte Folded Spill
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v10, v189, s33, 1
	v_dual_mov_b32 v7, v1 :: v_dual_lshlrev_b32 v0, 3, v0
	.loc	1 534 24                        ; attention_backward.py:534:24
	scratch_store_b32 off, v11, off offset:4 ; 4-byte Folded Spill
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v11, v11, s33, 1
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_barrier
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v10, 0x80000000, v11, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[26:29], v9, s[8:11], 0 offen
	buffer_load_b128 v[30:33], v10, s[8:11], 0 offen
	v_mov_b32_e32 v10, v1
	v_mul_u32_u24_e32 v41, 0x110, v45
	v_mov_b32_e32 v3, v1
	v_dual_mov_b32 v9, v1 :: v_dual_lshlrev_b32 v38, 2, v38
	v_dual_mov_b32 v11, v1 :: v_dual_and_b32 v0, 48, v0
	v_mov_b32_e32 v12, v1
	v_dual_mov_b32 v13, v1 :: v_dual_lshlrev_b32 v42, 1, v45
	v_dual_mov_b32 v14, v1 :: v_dual_lshlrev_b32 v35, 4, v35
	v_lshl_or_b32 v54, v39, 7, v41
	v_xor_b32_e32 v187, v46, v36
	v_lshl_add_u32 v43, v39, 1, 0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v44, 1, v39
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v35, v45, 7, v35
	v_or3_b32 v57, v42, v38, v39
	v_lshl_or_b32 v190, v45, 6, v0
	v_xor_b32_e32 v0, 16, v187
	v_xor_b32_e32 v53, 0xe0, v54
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v46, off offset:8
	scratch_store_b32 off, v54, off offset:12
	v_dual_mov_b32 v17, v1 :: v_dual_add_nc_u32 v202, 0, v0
	v_add3_u32 v197, 0, v39, v42
	v_lshl_add_u32 v198, v45, 2, v43
	v_lshl_or_b32 v99, v39, 6, v35
	v_xor_b32_e32 v39, 16, v54
	v_xor_b32_e32 v41, 32, v54
	v_xor_b32_e32 v42, 48, v54
	v_xor_b32_e32 v43, 64, v54
	v_xor_b32_e32 v46, 0x70, v54
	v_xor_b32_e32 v47, 0x80, v54
	v_xor_b32_e32 v48, 0x90, v54
	v_xor_b32_e32 v49, 0xa0, v54
	v_xor_b32_e32 v50, 0xb0, v54
	v_xor_b32_e32 v51, 0xc0, v54
	v_xor_b32_e32 v52, 0xd0, v54
	v_add_nc_u32_e32 v0, 0, v53
	.loc	1 514 33                        ; attention_backward.py:514:33
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v57, off offset:16
	scratch_store_b32 off, v45, off offset:192
	scratch_store_b32 off, v44, off offset:188
	v_xor_b32_e32 v44, 0x50, v54
	v_xor_b32_e32 v45, 0x60, v54
	v_xor_b32_e32 v54, 0xf0, v54
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v38, 0, v35
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xad_u32 v69, v35, 16, 0
	v_add_nc_u32_e32 v0, 0, v54
	v_xad_u32 v73, v35, 32, 0
	v_xad_u32 v77, v35, 48, 0
	v_xad_u32 v81, v35, 64, 0
	v_mov_b32_e32 v8, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v40, off offset:196
	scratch_store_b32 off, v0, off offset:24
	v_xad_u32 v85, 0x50, v35, 0
	v_xad_u32 v89, 0x60, v35, 0
	v_xad_u32 v93, 0x70, v35, 0
	ds_load_b128 v[147:150], v38
	ds_load_b128 v[151:154], v69
	ds_load_b128 v[155:158], v73
	ds_load_b128 v[159:162], v77
	ds_load_b128 v[163:166], v81
	ds_load_b128 v[167:170], v85
	ds_load_b128 v[171:174], v89
	ds_load_b128 v[175:178], v93
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xor_b32_e32 v35, 0x880, v187
	v_xor_b32_e32 v36, 0x890, v187
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v40, s34, v40
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v19, v1
	v_add_nc_u32_e32 v203, 0, v35
	v_add_nc_u32_e32 v204, 0, v36
	v_mad_u64_u32 v[35:36], null, s19, 24, v[34:35]
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v193, 0, v41
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v195, 0, v43
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v192, 0, v39
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v194, 0, v42
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v40
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v40, 4, v25
	v_xor_b32_e32 v55, 0x90, v57
	v_xor_b32_e32 v56, 0x120, v57
	v_xor_b32_e32 v57, 0x1b0, v57
	v_xor_b32_e32 v58, 16, v190
	v_xor_b32_e32 v59, 32, v190
	v_xor_b32_e32 v60, 48, v190
	v_add_nc_u32_e32 v196, 0, v44
	v_xor_b32_e32 v0, 16, v99
	v_xor_b32_e32 v39, 32, v99
	v_xor_b32_e32 v41, 48, v99
	v_xor_b32_e32 v42, 64, v99
	v_xor_b32_e32 v43, 0x50, v99
	v_xor_b32_e32 v44, 0x60, v99
	v_xor_b32_e32 v97, 0x70, v99
	v_lshl_add_u32 v34, s19, 4, v34
	v_mov_b32_e32 v4, v1
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v45, 0, v45
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v47, 0, v47
	v_add_nc_u32_e32 v46, 0, v46
	v_add_nc_u32_e32 v48, 0, v48
	v_add_nc_u32_e32 v199, 0, v49
	v_add_nc_u32_e32 v63, 0, v50
	v_add_nc_u32_e32 v64, 0, v51
	v_add_nc_u32_e32 v62, 0, v52
	v_add_nc_u32_e32 v220, 0, v55
	v_add_nc_u32_e32 v221, 0, v56
	v_add_nc_u32_e32 v222, 0, v57
	v_add_nc_u32_e32 v223, 0, v58
	v_add_nc_u32_e32 v224, 0, v59
	v_add_nc_u32_e32 v225, 0, v60
	v_add_nc_u32_e32 v58, 0, v0
	v_add_nc_u32_e32 v61, 0, v39
	v_add_nc_u32_e32 v59, 0, v41
	v_add_nc_u32_e32 v235, 0, v42
	v_add_nc_u32_e32 v65, 0, v43
	v_add_nc_u32_e32 v90, 0, v44
	v_add_nc_u32_e32 v91, v37, v40
	v_add_nc_u32_e32 v92, v25, v34
	v_add_nc_u32_e32 v94, v40, v34
	v_add_nc_u32_e32 v236, v40, v35
	v_add_nc_u32_e32 v237, 0, v97
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt vmcnt(1)
	ds_store_b128 v191, v[26:29]
	s_waitcnt vmcnt(0)
	ds_store_b128 v191, v[30:33] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v38
	ds_load_b128 v[30:33], v69
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[155:158], off offset:28
	scratch_store_b128 off, v[159:162], off offset:44
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[26:29], off offset:60 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[30:33], off offset:76 ; 16-byte Folded Spill
	ds_load_b128 v[26:29], v73
	ds_load_b128 v[30:33], v77
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[26:29], off offset:92 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[30:33], off offset:108 ; 16-byte Folded Spill
	ds_load_b128 v[26:29], v81
	ds_load_b128 v[30:33], v85
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[26:29], off offset:124 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[30:33], off offset:140 ; 16-byte Folded Spill
	ds_load_b128 v[26:29], v89
	ds_load_b128 v[30:33], v93
	v_add_nc_u32_e32 v93, v25, v35
	v_mov_b32_e32 v25, v1
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[26:29], off offset:156 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[30:33], off offset:172 ; 16-byte Folded Spill
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
.LBB0_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_2 Depth 2
	.loc	1 608 39                        ; attention_backward.py:608:39
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:188
	scratch_load_b32 v33, off, off offset:192
	.loc	1 662 34                        ; attention_backward.py:662:34
	s_or_b32 s41, s35, s1
	s_xor_b32 s40, s5, -1
	s_mov_b32 s57, 0
	.loc	1 608 39                        ; attention_backward.py:608:39
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, v0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v238, s41, v33
.LBB0_2:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_or_b32 s1, s57, s41
	v_lshl_add_u32 v35, s18, 4, v121
	s_mul_i32 s3, s1, s18
	v_mov_b32_e32 v49, v98
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v33, s3, v121, 1
	v_add_lshl_u32 v34, s3, v98, 1
	v_add_lshl_u32 v35, s3, v35, 1
	v_add_lshl_u32 v36, s3, v122, 1
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s1, s19
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	s_clause 0x3
	buffer_load_b128 v[105:108], v33, s[44:47], 0 offen
	buffer_load_b128 v[109:112], v34, s[44:47], 0 offen
	buffer_load_b128 v[113:116], v35, s[44:47], 0 offen
	buffer_load_b128 v[117:120], v36, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v52, v99 :: v_dual_add_nc_u32 v33, 0, v99
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v104, s27 :: v_dual_mov_b32 v103, s26
	v_dual_mov_b32 v102, s25 :: v_dual_mov_b32 v101, s24
	v_dual_mov_b32 v100, s23 :: v_dual_mov_b32 v99, s22
	v_dual_mov_b32 v98, s21 :: v_dual_mov_b32 v97, s20
	v_add_nc_u32_e32 v35, 4, v189
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(3)
	ds_store_b128 v191, v[105:108]
	s_waitcnt vmcnt(2)
	ds_store_b128 v191, v[109:112] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v191, v[113:116] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v191, v[117:120] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[123:126], v33
	ds_load_b128 v[127:130], v58
	ds_load_b128 v[131:134], v61
	ds_load_b128 v[135:138], v59
	.loc	1 699 33                        ; attention_backward.py:699:33
	v_or_b32_e32 v33, s57, v238
	v_mov_b32_e32 v66, v147
	v_mov_b32_e32 v68, v149
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v35, v35, s1, 2
	v_mov_b32_e32 v69, v150
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v33, 2, v33
	v_mov_b32_e32 v71, v152
	v_mov_b32_e32 v73, v154
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v37, 0x80000000, v35, s4
	v_mov_b32_e32 v82, v163
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v34, v33, s[48:51], 0 offen
	v_mov_b32_e32 v67, v148
	v_dual_mov_b32 v89, v170 :: v_dual_add_nc_u32 v188, 0, v187
	v_dual_mov_b32 v83, v164 :: v_dual_mov_b32 v84, v165
	v_mov_b32_e32 v85, v166
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[139:146], v[147:154], v[123:130], v[97:104]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[123:126], v235
	ds_load_b128 v[127:130], v65
	v_dual_mov_b32 v86, v167 :: v_dual_mov_b32 v87, v168
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[139:146], v[155:162], v[131:138], v[139:146]
	v_mov_b32_e32 v88, v169
	v_mov_b32_e32 v70, v151
	v_dual_mov_b32 v72, v153 :: v_dual_add_nc_u32 v151, 0x1800, v198
	v_mov_b32_e32 v74, v171
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v152, 0x1c00, v198
	v_mov_b32_e32 v76, v173
	v_mov_b32_e32 v78, v175
	v_mov_b32_e32 v80, v177
	v_mov_b32_e32 v56, v47
	v_mov_b32_e32 v60, v62
	v_mov_b32_e32 v50, v192
	v_mov_b32_e32 v54, v187
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[139:146], v[163:170], v[123:130], v[139:146]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[123:126], v90
	ds_load_b128 v[127:130], v237
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[139:146], v[171:178], v[123:130], v[139:146]
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v35, s1, v0, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v123, 0x80000000, v35, s4
	v_add_lshl_u32 v35, v91, s1, 2
	v_cndmask_b32_e64 v124, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v92, 2
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v246, s56, v139, -v34
	v_fma_f32 v245, s56, v140, -v34
	v_fma_f32 v240, s56, v141, -v34
	v_fma_f32 v241, s56, v142, -v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v125, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v94, 2
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v244, s56, v143, -v34
	v_fma_f32 v242, s56, v144, -v34
	v_fma_f32 v243, s56, v145, -v34
	v_fma_f32 v239, s56, v146, -v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v126, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v93, 2
	v_add_lshl_u32 v34, s1, v189, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v127, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v236, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v128, 0x80000000, v35, s4
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v247, v33, s[52:55], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[33:36], v34, s[36:39], 0 offen
	buffer_load_b128 v[37:40], v37, s[36:39], 0 offen
	buffer_load_b128 v[205:208], v123, s[36:39], 0 offen
	buffer_load_b128 v[209:212], v124, s[36:39], 0 offen
	buffer_load_b128 v[226:229], v125, s[36:39], 0 offen
	buffer_load_b128 v[230:233], v126, s[36:39], 0 offen
	buffer_load_b128 v[248:251], v127, s[36:39], 0 offen
	buffer_load_b128 v[252:255], v128, s[36:39], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
	v_add_nc_u32_e32 v125, 0xc00, v198
	v_add_nc_u32_e32 v127, 0x1400, v198
	v_add_nc_u32_e32 v126, 0x1000, v198
	v_dual_mov_b32 v75, v172 :: v_dual_add_nc_u32 v124, 0x800, v198
	v_mov_b32_e32 v77, v174
	v_mov_b32_e32 v79, v176
	v_mov_b32_e32 v81, v178
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, 0, v0
	ds_store_b128 v123, v[33:36]
	ds_store_b128 v123, v[37:40] offset:16
	ds_store_b128 v123, v[205:208] offset:2048
	ds_store_b128 v123, v[209:212] offset:2064
	ds_store_b128 v123, v[226:229] offset:4096
	ds_store_b128 v123, v[230:233] offset:4112
	ds_store_b128 v123, v[248:251] offset:6144
	ds_store_b128 v123, v[252:255] offset:6160
	v_add_nc_u32_e32 v123, 0x400, v198
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[149:150], v123 offset1:32
	ds_load_2addr_b32 v[155:156], v123 offset0:64 offset1:96
	ds_load_2addr_b32 v[147:148], v123 offset0:128 offset1:160
	ds_load_2addr_b32 v[157:158], v123 offset0:192 offset1:224
	ds_load_2addr_b32 v[145:146], v124 offset1:32
	ds_load_2addr_b32 v[159:160], v124 offset0:64 offset1:96
	ds_load_2addr_b32 v[143:144], v124 offset0:128 offset1:160
	ds_load_2addr_b32 v[161:162], v124 offset0:192 offset1:224
	ds_load_2addr_b32 v[141:142], v125 offset1:32
	ds_load_2addr_b32 v[163:164], v125 offset0:64 offset1:96
	ds_load_2addr_b32 v[139:140], v125 offset0:128 offset1:160
	ds_load_2addr_b32 v[165:166], v125 offset0:192 offset1:224
	ds_load_2addr_b32 v[137:138], v126 offset1:32
	ds_load_2addr_b32 v[167:168], v126 offset0:64 offset1:96
	ds_load_2addr_b32 v[135:136], v126 offset0:128 offset1:160
	ds_load_2addr_b32 v[169:170], v126 offset0:192 offset1:224
	ds_load_2addr_b32 v[133:134], v127 offset1:32
	ds_load_2addr_b32 v[171:172], v127 offset0:64 offset1:96
	ds_load_2addr_b32 v[131:132], v127 offset0:128 offset1:160
	ds_load_2addr_b32 v[173:174], v127 offset0:192 offset1:224
	ds_load_2addr_b32 v[129:130], v151 offset1:32
	ds_load_2addr_b32 v[175:176], v151 offset0:64 offset1:96
	ds_load_2addr_b32 v[127:128], v151 offset0:128 offset1:160
	ds_load_2addr_b32 v[177:178], v151 offset0:192 offset1:224
	ds_load_2addr_b32 v[125:126], v152 offset1:32
	ds_load_2addr_b32 v[179:180], v152 offset0:64 offset1:96
	ds_load_2addr_b32 v[123:124], v152 offset0:128 offset1:160
	ds_load_2addr_b32 v[181:182], v152 offset0:192 offset1:224
	ds_load_2addr_b32 v[153:154], v198 offset1:32
	ds_load_2addr_b32 v[183:184], v198 offset0:64 offset1:96
	ds_load_2addr_b32 v[151:152], v198 offset0:128 offset1:160
	ds_load_2addr_b32 v[185:186], v198 offset0:192 offset1:224
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v188, v[33:36]
	ds_store_b128 v188, v[226:229] offset:4096
	ds_store_b128 v202, v[37:40]
	ds_store_b128 v202, v[230:233] offset:4096
	ds_store_b128 v203, v[205:208]
	ds_store_b128 v203, v[248:251] offset:4096
	ds_store_b128 v204, v[209:212]
	ds_store_b128 v204, v[252:255] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, 0, v0
	ds_load_b128 v[33:36], v33
	ds_load_b128 v[37:40], v192
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v188, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s3, v35, v35
	v_cmp_o_f32_e64 s5, v36, v36
	v_add3_u32 v188, v33, v188, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v205, v34, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cndmask_b16 v248.l, 0x7fff, v188.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v248.h, 0x7fff, v205.h, s1
	v_add3_u32 v206, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v249.l, 0x7fff, v206.h, s3
	v_add3_u32 v207, v36, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v249.h, 0x7fff, v207.h, s5
	v_add3_u32 v208, v37, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v250.l, 0x7fff, v208.h, s6
	v_add3_u32 v209, v38, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v250.h, 0x7fff, v209.h, s7
	v_add3_u32 v210, v39, v33, 0x7fff
	v_bfe_u32 v33, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v251.l, 0x7fff, v210.h, s8
	v_add3_u32 v211, v40, v33, 0x7fff
	ds_load_b128 v[33:36], v193
	ds_load_b128 v[37:40], v194
	v_cndmask_b16 v251.h, 0x7fff, v211.h, s9
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v212, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v212, 0x7fff
	v_bfe_u32 v212, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v34, v34, v212, 0x7fff
	v_bfe_u32 v212, v35, 16, 1
	v_cndmask_b16 v252.l, 0x7fff, v33.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v252.h, 0x7fff, v34.h, s11
	v_add3_u32 v35, v35, v212, 0x7fff
	v_bfe_u32 v212, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v253.l, 0x7fff, v35.h, s12
	v_add3_u32 v36, v36, v212, 0x7fff
	v_bfe_u32 v212, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v253.h, 0x7fff, v36.h, s13
	v_add3_u32 v37, v37, v212, 0x7fff
	v_bfe_u32 v212, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v254.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v212, 0x7fff
	v_bfe_u32 v212, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v254.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v212, 0x7fff
	v_bfe_u32 v212, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v255.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v212, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v255.h, 0x7fff, v40.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:60
	scratch_load_b128 v[37:40], off, off offset:76
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[205:212], v[33:40], v[248:255], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[33:36], v195
	ds_load_b128 v[37:40], v196
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v97, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s3, v35, v35
	v_cmp_o_f32_e64 s5, v36, v36
	v_add3_u32 v97, v33, v97, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v98, v34, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cndmask_b16 v97.l, 0x7fff, v97.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v97.h, 0x7fff, v98.h, s1
	v_add3_u32 v99, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s3
	v_add3_u32 v100, v36, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v98.h, 0x7fff, v100.h, s5
	v_add3_u32 v101, v37, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v99.l, 0x7fff, v101.h, s6
	v_add3_u32 v102, v38, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v99.h, 0x7fff, v102.h, s7
	v_add3_u32 v103, v39, v33, 0x7fff
	v_bfe_u32 v33, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v100.l, 0x7fff, v103.h, s8
	v_add3_u32 v104, v40, v33, 0x7fff
	ds_load_b128 v[33:36], v45
	ds_load_b128 v[37:40], v46
	v_cndmask_b16 v100.h, 0x7fff, v104.h, s9
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v188, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v188, 0x7fff
	v_bfe_u32 v188, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v34, v34, v188, 0x7fff
	v_bfe_u32 v188, v35, 16, 1
	v_cndmask_b16 v101.l, 0x7fff, v33.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v101.h, 0x7fff, v34.h, s11
	v_add3_u32 v35, v35, v188, 0x7fff
	v_bfe_u32 v188, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v102.l, 0x7fff, v35.h, s12
	v_add3_u32 v36, v36, v188, 0x7fff
	v_bfe_u32 v188, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v102.h, 0x7fff, v36.h, s13
	v_add3_u32 v37, v37, v188, 0x7fff
	v_bfe_u32 v188, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v103.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v188, 0x7fff
	v_bfe_u32 v188, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v103.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v188, 0x7fff
	v_bfe_u32 v188, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v104.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v188, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v104.h, 0x7fff, v40.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:92
	scratch_load_b128 v[37:40], off, off offset:108
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[205:212], v[33:40], v[97:104], v[205:212]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[33:36], v47
	ds_load_b128 v[37:40], v48
	v_mov_b32_e32 v47, v194
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v97, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s3, v35, v35
	v_cmp_o_f32_e64 s5, v36, v36
	v_add3_u32 v97, v33, v97, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v98, v34, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cndmask_b16 v97.l, 0x7fff, v97.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v97.h, 0x7fff, v98.h, s1
	v_add3_u32 v99, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s3
	v_add3_u32 v100, v36, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v98.h, 0x7fff, v100.h, s5
	v_add3_u32 v101, v37, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v99.l, 0x7fff, v101.h, s6
	v_add3_u32 v102, v38, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v99.h, 0x7fff, v102.h, s7
	v_add3_u32 v103, v39, v33, 0x7fff
	v_bfe_u32 v33, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v100.l, 0x7fff, v103.h, s8
	v_add3_u32 v104, v40, v33, 0x7fff
	ds_load_b128 v[33:36], v199
	ds_load_b128 v[37:40], v63
	v_cndmask_b16 v100.h, 0x7fff, v104.h, s9
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v188, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v188, 0x7fff
	v_bfe_u32 v188, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v34, v34, v188, 0x7fff
	v_bfe_u32 v188, v35, 16, 1
	v_cndmask_b16 v101.l, 0x7fff, v33.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v101.h, 0x7fff, v34.h, s11
	v_add3_u32 v35, v35, v188, 0x7fff
	v_bfe_u32 v188, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v102.l, 0x7fff, v35.h, s12
	v_add3_u32 v36, v36, v188, 0x7fff
	v_bfe_u32 v188, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v102.h, 0x7fff, v36.h, s13
	v_add3_u32 v37, v37, v188, 0x7fff
	v_bfe_u32 v188, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v103.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v188, 0x7fff
	v_bfe_u32 v188, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v103.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v188, 0x7fff
	v_bfe_u32 v188, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v104.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v188, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v104.h, 0x7fff, v40.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:124
	scratch_load_b128 v[37:40], off, off offset:140
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[205:212], v[33:40], v[97:104], v[205:212]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[33:36], v64
	ds_load_b128 v[37:40], v62
	v_mov_b32_e32 v62, v199
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v97, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s3, v35, v35
	v_cmp_o_f32_e64 s5, v36, v36
	v_add3_u32 v97, v33, v97, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v98, v34, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cndmask_b16 v97.l, 0x7fff, v97.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v97.h, 0x7fff, v98.h, s1
	v_add3_u32 v99, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s3
	v_add3_u32 v100, v36, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v98.h, 0x7fff, v100.h, s5
	v_add3_u32 v101, v37, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v99.l, 0x7fff, v101.h, s6
	v_add3_u32 v102, v38, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v99.h, 0x7fff, v102.h, s7
	v_add3_u32 v103, v39, v33, 0x7fff
	v_bfe_u32 v33, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v100.l, 0x7fff, v103.h, s8
	v_add3_u32 v104, v40, v33, 0x7fff
	ds_load_b128 v[33:36], v0
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	v_cndmask_b16 v100.h, 0x7fff, v104.h, s9
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v188, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v188, 0x7fff
	v_bfe_u32 v188, v34, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v101.l, 0x7fff, v33.h, s10
	v_add3_u32 v34, v34, v188, 0x7fff
	v_bfe_u32 v188, v35, 16, 1
	v_cmp_o_f32_e64 s10, v137, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v101.h, 0x7fff, v34.h, s11
	v_add3_u32 v35, v35, v188, 0x7fff
	v_bfe_u32 v188, v36, 16, 1
	v_cmp_o_f32_e64 s11, v135, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v102.l, 0x7fff, v35.h, s12
	v_add3_u32 v36, v36, v188, 0x7fff
	v_cmp_o_f32_e64 s12, v133, v133
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v102.h, 0x7fff, v36.h, s13
	v_cmp_o_f32_e64 s13, v131, v131
	s_waitcnt vmcnt(0)
	ds_load_b128 v[37:40], v0
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v188, v37, 16, 1
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v37, v37, v188, 0x7fff
	v_bfe_u32 v188, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v103.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v188, 0x7fff
	v_bfe_u32 v188, v39, 16, 1
	v_cmp_o_f32_e64 s14, v129, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v103.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v188, 0x7fff
	v_bfe_u32 v188, v40, 16, 1
	v_cmp_o_f32_e64 s15, v127, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v104.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v188, 0x7fff
	v_bfe_u32 v188, v139, 16, 1
	v_cmp_o_f32_e64 s16, v125, v125
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v104.h, 0x7fff, v40.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:156
	scratch_load_b128 v[37:40], off, off offset:172
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v123, v123
	v_add3_u32 v188, v139, v188, 0x7fff
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[205:212], v[33:40], v[97:104], v[205:212]
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v97, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v33, v205, v247
	v_sub_f32_e32 v40, v212, v247
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_sub_f32_e32 v34, v206, v247
	v_sub_f32_e32 v36, v208, v247
	v_sub_f32_e32 v35, v207, v247
	v_sub_f32_e32 v38, v210, v247
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v98, 0, v97, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v33, v98, v33
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v33, s31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v97, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v33, v33, v97, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v97, v245
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v245, 0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v97, 0, v97, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v34, v97, v34
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v34, s31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v99, v34, 16, 1
	v_cmp_o_f32_e64 s1, v34, v34
	v_add3_u32 v34, v34, v99, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v99, v240
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v240, 0, v99, s0
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v35, v240, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v35, s31, v35
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v99, v35, 16, 1
	v_cmp_o_f32_e64 s3, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v35, v35, v99, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v99, v241
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v241, 0, v99, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v36, v241, v36
	.loc	1 720 47 is_stmt 0              ; attention_backward.py:720:47
	v_dual_sub_f32 v37, v209, v247 :: v_dual_mul_f32 v36, s31, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 1              ; attention_backward.py:721:37
	v_bfe_u32 v99, v36, 16, 1
	v_cmp_o_f32_e64 s5, v36, v36
	v_add3_u32 v36, v36, v99, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v99, v244
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v99, 0, v99, s0
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v37, v99, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v37, s31, v37
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v100, v37, 16, 1
	v_cmp_o_f32_e64 s6, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v37, v100, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v100, v242
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v37.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v245, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v99, v99
	v_cmp_o_f32_e64 s6, v241, v241
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v245, v33 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v242, 0, v100, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v39, v211, v247 :: v_dual_mul_f32 v38, v242, v38
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v38, s31, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v100, v38, 16, 1
	v_cmp_o_f32_e64 s7, v38, v38
	v_add3_u32 v38, v38, v100, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v100, v243
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v38.h, s7
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v220, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v35.h, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v97, v97
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v220, v33 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v243, 0, v100, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v39, v243, v39
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v243, v243
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v39, s31, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v100, v39, 16, 1
	v_cmp_o_f32_e64 s8, v39, v39
	v_add3_u32 v39, v39, v100, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v100, v239
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v239, 0, v190
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v39.h, s8
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v221, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v36.h, s5
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s5, v242, v242
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v221, v33 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v244, 0, v100, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v40, v244, v40
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v244, v244
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v40, s31, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v100, v40, 16, 1
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v40, v40, v100, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v33.h, 0x7fff, v40.h, s9
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16 v222, v33
	ds_store_b16_d16_hi v222, v33 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[205:208], v239
	ds_load_b128 v[209:212], v223
	ds_load_b128 v[246:249], v224
	ds_load_b128 v[250:253], v225
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s9, v139, v139
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v188.h, 0x7fff, v188.h, s9
	v_cmp_o_f32_e64 s9, v140, v140
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, 0, v0
	ds_store_b128 v33, v[105:108]
	ds_store_b128 v33, v[109:112] offset:1024
	ds_store_b128 v33, v[113:116] offset:2048
	ds_store_b128 v33, v[117:120] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v101, v197 offset:256
	ds_load_u16_d16 v100, v197
	ds_load_u16_d16 v102, v197 offset:512
	ds_load_u16_d16 v103, v197 offset:768
	ds_load_u16_d16 v104, v197 offset:1024
	ds_load_u16_d16 v106, v197 offset:1536
	ds_load_u16_d16 v105, v197 offset:1280
	ds_load_u16_d16 v112, v197 offset:1088
	ds_load_u16_d16 v111, v197 offset:832
	ds_load_u16_d16 v107, v197 offset:1792
	ds_load_u16_d16 v226, v197 offset:2048
	ds_load_u16_d16 v227, v197 offset:2304
	ds_load_u16_d16 v228, v197 offset:2560
	ds_load_u16_d16 v230, v197 offset:3072
	ds_load_u16_d16 v35, v197 offset:2624
	ds_load_u16_d16 v34, v197 offset:2368
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v112, v197 offset:1216
	ds_load_u16_d16_hi v102, v197 offset:640
	ds_load_u16_d16_hi v103, v197 offset:896
	ds_load_u16_d16_hi v104, v197 offset:1152
	ds_load_u16_d16 v113, v197 offset:1344
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v35, v197 offset:2752
	ds_load_u16_d16_hi v106, v197 offset:1664
	ds_load_u16_d16_hi v105, v197 offset:1408
	ds_load_u16_d16 v108, v197 offset:64
	ds_load_u16_d16_hi v101, v197 offset:384
	ds_load_u16_d16_hi v100, v197 offset:128
	ds_load_u16_d16 v110, v197 offset:576
	ds_load_u16_d16 v109, v197 offset:320
	ds_load_u16_d16_hi v107, v197 offset:1920
	ds_load_u16_d16 v114, v197 offset:1600
	ds_load_u16_d16 v33, v197 offset:2112
	ds_load_u16_d16 v115, v197 offset:1856
	ds_load_u16_d16_hi v111, v197 offset:960
	ds_load_u16_d16 v233, v197 offset:3840
	ds_load_u16_d16 v231, v197 offset:3328
	ds_load_u16_d16 v229, v197 offset:2816
	ds_load_u16_d16 v232, v197 offset:3584
	ds_load_u16_d16 v40, v197 offset:3904
	ds_load_u16_d16 v37, v197 offset:3136
	ds_load_u16_d16 v39, v197 offset:3648
	ds_load_u16_d16 v38, v197 offset:3392
	ds_load_u16_d16_hi v230, v197 offset:3200
	ds_load_u16_d16 v36, v197 offset:2880
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v34, v197 offset:2496
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v113, v197 offset:1472
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v114, v197 offset:1728
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v115, v197 offset:1984
	ds_load_u16_d16_hi v226, v197 offset:2176
	ds_load_u16_d16_hi v33, v197 offset:2240
	ds_load_u16_d16_hi v108, v197 offset:192
	ds_load_u16_d16_hi v110, v197 offset:704
	ds_load_u16_d16_hi v109, v197 offset:448
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v231, v197 offset:3456
	ds_load_u16_d16_hi v227, v197 offset:2432
	ds_load_u16_d16_hi v228, v197 offset:2688
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v229, v197 offset:2944
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v232, v197 offset:3712
	ds_load_u16_d16_hi v233, v197 offset:3968
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v40, v197 offset:4032
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v36, v197 offset:3008
	ds_load_u16_d16_hi v37, v197 offset:3264
	ds_load_u16_d16_hi v39, v197 offset:3776
	ds_load_u16_d16_hi v38, v197 offset:3520
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[100:107], v[205:212], v[17:24]
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v119, v167, 16, 1
	v_bfe_u32 v120, v169, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[108:115], v[205:212], v[25:32]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_mov_b16_e32 v113.l, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v119, v167, v119, 0x7fff
	v_add3_u32 v120, v169, v120, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v100.l, v113.l
	v_mov_b16_e32 v115.l, v113.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[226:233], v[246:253], v[17:24]
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v116.l, v113.l
	v_mov_b16_e32 v114.l, v113.l
	v_mov_b16_e32 v117.l, v113.l
	v_mov_b16_e32 v118.l, v113.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[246:253], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v36, v243, 16, 1
	v_bfe_u32 v33, v98, 16, 1
	v_bfe_u32 v37, v244, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v38, v161, 16, 1
	v_bfe_u32 v39, v163, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v36, v243, v36, 0x7fff
	v_add3_u32 v33, v98, v33, 0x7fff
	v_add3_u32 v37, v244, v37, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v38, v161, v38, 0x7fff
	v_add3_u32 v39, v163, v39, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v117.h, 0x7fff, v36.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v36, v157, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v113.h, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v118.h, 0x7fff, v37.h, s8
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v37, v159, 16, 1
	v_bfe_u32 v40, v165, 16, 1
	v_add3_u32 v36, v157, v36, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v36.l, v113.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v33, v98, v113
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v37, v159, v37, 0x7fff
	v_add3_u32 v40, v165, v40, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v249.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v226, v137, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v34, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v227, v135, 16, 1
	v_bfe_u32 v228, v133, 16, 1
	v_bfe_u32 v229, v131, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v98, v33, v34, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v99, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v230, v129, 16, 1
	v_bfe_u32 v231, v127, 16, 1
	v_bfe_u32 v232, v125, 16, 1
	v_bfe_u32 v233, v123, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v99, v33, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s7, v143, v143
	v_cmp_o_f32_e64 s8, v141, v141
	v_add3_u32 v226, v137, v226, 0x7fff
	v_add3_u32 v227, v135, v227, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v100.h, 0x7fff, v33.h, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v228, v133, v228, 0x7fff
	v_add3_u32 v229, v131, v229, 0x7fff
	v_add3_u32 v230, v129, v230, 0x7fff
	v_add3_u32 v231, v127, v231, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v33, v99, v100
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v232, v125, v232, 0x7fff
	v_add3_u32 v233, v123, v233, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v37.l, v113.l
	v_mov_b16_e32 v38.l, v113.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v34, v33, 16, 1
	v_cmp_o_f32_e64 s1, v33, v33
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v39.l, v113.l
	v_mov_b16_e32 v40.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v247.h, 0x7fff, v226.h, s10
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v99, v33, v34, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v97, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v246.h, 0x7fff, v227.h, s11
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v251.l, v113.l
	v_mov_b32_e32 v53, v45
	v_mov_b32_e32 v45, v190
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v97, v33, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v33.l, v113.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v253.l, v113.l
	v_mov_b32_e32 v51, v196
	v_mov_b16_e64 v205.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v245, v100 offset:512
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v206.l, v113.l
	v_mov_b16_e64 v207.l, v113.l
	v_mov_b16_e64 v208.l, v113.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v34, v97, v33
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v220, v33
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v240, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v209.l, v113.l
	v_mov_b16_e64 v210.l, v113.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v35, v34, 16, 1
	v_cmp_o_f32_e64 s3, v34, v34
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v240, v33, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v98.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v183, v183
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v34, v34, v35, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v35, v242, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v211.l, v113.l
	v_mov_b16_e64 v212.l, v113.l
	v_mov_b16_e64 v255.l, v113.l
	v_mov_b16_e32 v0.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v35, v242, v35, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v187.l, v113.l
	v_mov_b16_e64 v248.l, v113.l
	v_mov_b16_e64 v247.l, v113.l
	v_mov_b16_e64 v250.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v114.h, 0x7fff, v35.h, s5
	v_bfe_u32 v35, v241, 16, 1
	v_cmp_o_f32_e64 s5, v240, v240
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v252.l, v113.l
	v_mov_b16_e64 v254.l, v113.l
	v_mov_b16_e32 v41.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v35, v241, v35, 0x7fff
	v_cndmask_b16 v115.h, 0x7fff, v33.h, s5
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.h, 0x7fff, v99.h, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s1, v185, v185
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v43.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v116.h, 0x7fff, v35.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v245, v113
	ds_store_b16_d16_hi v220, v114 offset:512
	ds_store_b16_d16_hi v221, v115
	ds_store_b16_d16_hi v221, v117 offset:512
	ds_store_b16_d16_hi v222, v116
	ds_store_b16_d16_hi v222, v118 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[105:108], v239
	ds_load_b128 v[109:112], v223
	ds_load_b128 v[97:100], v224
	ds_load_b128 v[101:104], v225
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v245, v33
	ds_store_b16_d16_hi v245, v33 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v34, v183, 16, 1
	v_bfe_u32 v35, v185, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v115, v240, v115 :: v_dual_sub_f32 v116, v241, v116
	v_sub_f32_e32 v114, v242, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v34, v183, v34, 0x7fff
	v_add3_u32 v35, v185, v35, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v117, v243, v117 :: v_dual_sub_f32 v118, v244, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v114, v114
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v33.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s1
	v_bfe_u32 v35, v155, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	v_cmp_o_f32_e64 s1, v169, v169
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s5, v117, v117
	v_cmp_o_f32_e64 s6, v118, v118
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v35, v155, v35, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v35.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v206.h, 0x7fff, v120.h, s1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v116, v116
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v120, v141, 16, 1
	v_cndmask_b16 v35.h, 0x7fff, v35.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v157, v157
	v_cndmask_b16 v245.h, 0x7fff, v228.h, s12
	v_cndmask_b16 v244.h, 0x7fff, v229.h, s13
	v_add3_u32 v120, v141, v120, 0x7fff
	v_cndmask_b16 v243.h, 0x7fff, v230.h, s14
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v159, v159
	v_cndmask_b16 v242.h, 0x7fff, v231.h, s15
	v_cndmask_b16 v216.h, 0x7fff, v120.h, s8
	v_cndmask_b16 v241.h, 0x7fff, v232.h, s16
	v_cndmask_b16 v240.h, 0x7fff, v233.h, s17
	v_cndmask_b16 v37.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v200, v157, v36 :: v_dual_sub_f32 v201, v155, v35
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v243.l, v113.l
	v_mov_b32_e32 v57, v48
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v38.h, 0x7fff, v38.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	v_mov_b32_e32 v48, v195
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v199, v159, v37
	v_sub_f32_e32 v169, v169, v206
	v_sub_f32_e32 v219, v161, v38
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v39.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v206.l, v246.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v242.l, v113.l
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v55, v46 :: v_dual_sub_f32 v218, v163, v39
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v167, v167
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v39.l, v216.h
	v_mov_b32_e32 v46, v193
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s8, v142, v142
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v217, v165, v40
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v205.h, 0x7fff, v119.h, vcc_lo
	v_bfe_u32 v119, v171, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v171, v171
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v40.l, v188.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v246.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v167, v167, v205
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v119, v171, v119, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v205.l, v247.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v245.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v195, v126, 16, 1
	v_bfe_u32 v193, v124, 16, 1
	v_cndmask_b16 v207.h, 0x7fff, v119.h, vcc_lo
	v_bfe_u32 v119, v173, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v173, v173
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v244.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s10, v138, v138
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v171, v171, v207
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v119, v173, v119, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v207.l, v245.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s11, v136, v136
	v_cmp_o_f32_e64 s12, v134, v134
	v_cmp_o_f32_e64 s13, v132, v132
	v_cndmask_b16 v208.h, 0x7fff, v119.h, vcc_lo
	v_bfe_u32 v119, v175, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v175, v175
	v_cmp_o_f32_e64 s14, v130, v130
	v_cmp_o_f32_e64 s15, v128, v128
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v165, v173, v208
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v119, v175, v119, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v208.l, v244.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s16, v126, v126
	v_cmp_o_f32_e64 s17, v124, v124
	v_add3_u32 v195, v126, v195, 0x7fff
	v_cndmask_b16 v209.h, 0x7fff, v119.h, vcc_lo
	v_bfe_u32 v119, v177, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v177, v177
	v_add3_u32 v193, v124, v193, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v190.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v163, v175, v209
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v119, v177, v119, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v209.l, v243.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v113.h, 0x7fff, v193.h, s17
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v214.l, v113.l
	v_mov_b16_e64 v194.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v210.h, 0x7fff, v119.h, vcc_lo
	v_bfe_u32 v119, v179, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v179, v179
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v196.l, v113.l
	v_mov_b16_e64 v213.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v161, v177, v210
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v119, v179, v119, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v210.l, v242.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v215.l, v113.l
	v_mov_b16_e64 v216.l, v113.l
	v_mov_b16_e64 v188.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v211.h, 0x7fff, v119.h, vcc_lo
	v_bfe_u32 v119, v181, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v181, v181
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v141, v141, v216
	v_sub_f32_e32 v139, v139, v188
	v_sub_f32_e32 v159, v179, v211
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v119, v181, v119, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v211.l, v241.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v240.l, v113.l
	v_mov_b32_e32 v193, v46
	v_mov_b16_e64 v241.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v212.h, 0x7fff, v119.h, vcc_lo
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v119, v115, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v115, v115
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v192.l, v113.l
	v_mov_b16_e32 v42.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v157, v181, v212
	.loc	1 728 34 is_stmt 1              ; attention_backward.py:728:34
	v_add3_u32 v115, v115, v119, 0x7fff
	v_bfe_u32 v119, v116, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v212.l, v240.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v234.l, v113.l
	v_mov_b16_e32 v44.l, v113.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v116, v116, v119, 0x7fff
	v_bfe_u32 v119, v114, 16, 1
	v_add3_u32 v114, v114, v119, 0x7fff
	v_bfe_u32 v119, v117, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.l, 0x7fff, v114.h, s3
	v_add3_u32 v117, v117, v119, 0x7fff
	v_bfe_u32 v119, v118, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v220, v33
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v115.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v220, v34 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v34.l, 0x7fff, v117.h, s5
	v_add3_u32 v118, v118, v119, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v114, v153, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v221, v33
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v116.h, s1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v221, v34 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v34.l, 0x7fff, v118.h, s6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v115, v151, 16, 1
	v_bfe_u32 v116, v149, 16, 1
	v_bfe_u32 v117, v147, 16, 1
	v_bfe_u32 v118, v145, 16, 1
	v_bfe_u32 v119, v143, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v153, v153
	v_cmp_o_f32_e64 s1, v151, v151
	v_cmp_o_f32_e64 s3, v149, v149
	v_cmp_o_f32_e64 s5, v147, v147
	v_cmp_o_f32_e64 s6, v145, v145
	v_add3_u32 v114, v153, v114, 0x7fff
	v_add3_u32 v115, v151, v115, 0x7fff
	v_add3_u32 v116, v149, v116, 0x7fff
	v_add3_u32 v117, v147, v117, 0x7fff
	v_add3_u32 v118, v145, v118, 0x7fff
	v_add3_u32 v119, v143, v119, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v222, v33
	ds_store_b16 v222, v34 offset:512
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v33.l, v113.l
	v_mov_b16_e32 v34.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v190.h, 0x7fff, v114.h, vcc_lo
	v_cndmask_b16 v194.h, 0x7fff, v115.h, s1
	v_cndmask_b16 v196.h, 0x7fff, v116.h, s3
	v_cndmask_b16 v213.h, 0x7fff, v117.h, s5
	v_cndmask_b16 v214.h, 0x7fff, v118.h, s6
	v_cndmask_b16 v215.h, 0x7fff, v119.h, s7
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[226:229], v239
	ds_load_b128 v[230:233], v223
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v37.l, v214.h
	v_mov_b16_e64 v38.l, v215.h
	v_mov_b16_e64 v36.l, v213.h
	v_mov_b16_e64 v35.l, v196.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v185, v185, v34
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v34.l, v194.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v183, v183, v33
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v33.l, v190.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v184, v184
	v_bfe_u32 v114, v168, 16, 1
	v_cmp_o_f32_e64 s1, v186, v186
	v_bfe_u32 v115, v170, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[105:112], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s6, v146, v146
	v_add3_u32 v114, v168, v114, 0x7fff
	v_cmp_o_f32_e64 s3, v150, v150
	v_add3_u32 v115, v170, v115, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[205:212], v[97:104], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s5, v148, v148
	v_cmp_o_f32_e64 s7, v144, v144
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[226:233], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v33, v184, 16, 1
	v_bfe_u32 v35, v156, 16, 1
	v_bfe_u32 v36, v158, 16, 1
	v_bfe_u32 v37, v160, 16, 1
	v_bfe_u32 v38, v162, 16, 1
	v_add3_u32 v33, v184, v33, 0x7fff
	v_add3_u32 v35, v156, v35, 0x7fff
	v_add3_u32 v36, v158, v36, 0x7fff
	v_add3_u32 v37, v160, v37, 0x7fff
	v_add3_u32 v38, v162, v38, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v156, v156
	v_bfe_u32 v39, v164, 16, 1
	v_bfe_u32 v40, v166, 16, 1
	v_bfe_u32 v34, v186, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v33.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v35.h, 0x7fff, v35.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	v_add3_u32 v39, v164, v39, 0x7fff
	v_add3_u32 v40, v166, v40, 0x7fff
	v_add3_u32 v34, v186, v34, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v34.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v39.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s1
	v_cmp_o_f32_e64 s1, v170, v170
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v35.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v37.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v175, v186, v34
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v249.h, 0x7fff, v115.h, s1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v36.l, v113.l
	v_mov_b16_e32 v37.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v38.h, 0x7fff, v38.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v164, v164
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v38.l, v113.l
	v_mov_b16_e32 v40.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v179, v158, v36
	v_sub_f32_e32 v181, v160, v37
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v39.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v166, v166
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v120, v170, v249
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v158, v152, 16, 1
	v_bfe_u32 v160, v150, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v186, v164, v39
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v168, v168
	v_bfe_u32 v164, v146, 16, 1
	v_bfe_u32 v170, v140, 16, 1
	v_cmp_o_f32_e64 s1, v152, v152
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v239, v166, v40
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v248.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v172, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v172, v172
	v_add3_u32 v164, v146, v164, 0x7fff
	v_bfe_u32 v166, v144, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v155, v168, v248
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v172, v114, 0x7fff
	v_bfe_u32 v168, v142, 16, 1
	v_cndmask_b16 v41.h, 0x7fff, v164.h, s6
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v177, v156, v35
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v156, v154, 16, 1
	v_cndmask_b16 v250.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v174, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v174, v174
	v_add3_u32 v168, v142, v168, 0x7fff
	v_add3_u32 v156, v154, v156, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v119, v172, v250
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v174, v114, 0x7fff
	v_add3_u32 v158, v152, v158, 0x7fff
	v_cndmask_b16 v43.h, 0x7fff, v168.h, s8
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v173, v184, v33 :: v_dual_sub_f32 v184, v162, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v251.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v176, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v176, v176
	v_bfe_u32 v162, v148, 16, 1
	v_add3_u32 v160, v150, v160, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v118, v174, v251
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v176, v114, 0x7fff
	v_add3_u32 v166, v144, v166, 0x7fff
	v_add3_u32 v162, v148, v162, 0x7fff
	v_add3_u32 v170, v140, v170, 0x7fff
	v_bfe_u32 v172, v138, 16, 1
	v_cndmask_b16 v252.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v178, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	v_bfe_u32 v174, v136, 16, 1
	v_add3_u32 v172, v138, v172, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v117, v176, v252
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v178, v114, 0x7fff
	v_bfe_u32 v176, v134, 16, 1
	v_add3_u32 v174, v136, v174, 0x7fff
	v_cndmask_b16 v192.h, 0x7fff, v158.h, s1
	v_cndmask_b16 v187.h, 0x7fff, v160.h, s3
	v_cndmask_b16 v253.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v180, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v180, v180
	v_add3_u32 v176, v134, v176, 0x7fff
	v_cndmask_b16 v234.h, 0x7fff, v162.h, s5
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v116, v178, v253
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v180, v114, 0x7fff
	v_bfe_u32 v178, v132, 16, 1
	v_cndmask_b16 v42.h, 0x7fff, v166.h, s7
	v_cndmask_b16 v44.h, 0x7fff, v170.h, s9
	v_cndmask_b16 v168.h, 0x7fff, v172.h, s10
	v_cndmask_b16 v254.h, 0x7fff, v114.h, vcc_lo
	v_bfe_u32 v114, v182, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	v_add3_u32 v178, v132, v178, 0x7fff
	v_cndmask_b16 v166.h, 0x7fff, v174.h, s11
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v115, v180, v254
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v182, v114, 0x7fff
	v_bfe_u32 v180, v130, 16, 1
	v_cndmask_b16 v164.h, 0x7fff, v176.h, s12
	v_cndmask_b16 v162.h, 0x7fff, v178.h, s13
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v40.l, v44.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v255.h, 0x7fff, v114.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v154, v154
	v_add3_u32 v180, v130, v180, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v39.l, v43.h
	v_mov_b16_e32 v38.l, v42.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v114, v182, v255
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v182, v128, 16, 1
	v_cndmask_b16 v0.h, 0x7fff, v156.h, vcc_lo
	v_cndmask_b16 v160.h, 0x7fff, v180.h, s14
	v_cndmask_b16 v156.h, 0x7fff, v195.h, s16
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v37.l, v41.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v182, v128, v182, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v36.l, v234.h
	v_mov_b16_e64 v35.l, v187.h
	v_mov_b16_e64 v34.l, v192.h
	v_mov_b16_e32 v33.l, v0.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v158.h, 0x7fff, v182.h, s15
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v255.l, v113.h
	v_mov_b16_e64 v254.l, v156.h
	v_mov_b16_e64 v252.l, v160.h
	v_mov_b16_e64 v251.l, v162.h
	v_mov_b16_e64 v253.l, v158.h
	v_mov_b16_e64 v250.l, v164.h
	v_mov_b16_e64 v249.l, v166.h
	v_mov_b16_e64 v248.l, v168.h
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[105:112], v[9:16]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v168.l, v113.l
	v_mov_b16_e64 v164.l, v113.l
	v_mov_b16_e64 v160.l, v113.l
	v_mov_b32_e32 v195, v48
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[248:255], v[97:104], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v141, v141
	v_cmp_o_f32_e64 s16, v139, v139
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v154, v0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v183, v183
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[226:233], v[9:16]
	ds_load_b128 v[33:36], v224
	ds_load_b128 v[37:40], v225
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v185, v185
	v_cmp_o_f32_e64 s9, v200, v200
	v_cmp_o_f32_e64 s13, v219, v219
	v_cmp_o_f32_e64 s15, v218, v218
	v_cmp_o_f32_e64 s17, v217, v217
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v156.l, v113.l
	v_mov_b16_e64 v162.l, v113.l
	v_mov_b16_e64 v158.l, v113.l
	v_mov_b16_e64 v166.l, v113.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[205:212], v[33:40], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[248:255], v[33:40], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v153, v190
	v_mov_b32_e32 v190, v45
	v_sub_f32_e32 v45, v145, v214
	v_sub_f32_e32 v35, v151, v194
	v_dual_mov_b32 v194, v47 :: v_dual_sub_f32 v37, v149, v196
	v_sub_f32_e32 v39, v147, v213
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v46, v45, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v143, v215
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v34, v33, 16, 1
	v_bfe_u32 v36, v35, 16, 1
	v_bfe_u32 v38, v37, 16, 1
	v_bfe_u32 v40, v39, 16, 1
	v_cmp_o_f32_e64 s10, v45, v45
	v_add3_u32 v45, v45, v46, 0x7fff
	v_bfe_u32 v46, v199, 16, 1
	v_bfe_u32 v48, v47, 16, 1
	v_bfe_u32 v143, v141, 16, 1
	v_bfe_u32 v145, v139, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v33, v33, v34, 0x7fff
	v_bfe_u32 v34, v183, 16, 1
	v_cmp_o_f32_e64 s3, v35, v35
	v_add3_u32 v35, v35, v36, 0x7fff
	v_bfe_u32 v36, v185, 16, 1
	v_cmp_o_f32_e64 s6, v37, v37
	v_add3_u32 v37, v37, v38, 0x7fff
	v_cmp_o_f32_e64 s8, v39, v39
	v_add3_u32 v39, v39, v40, 0x7fff
	v_bfe_u32 v40, v200, 16, 1
	v_cmp_o_f32_e64 s11, v199, v199
	v_add3_u32 v46, v199, v46, 0x7fff
	v_dual_mov_b32 v199, v62 :: v_dual_mov_b32 v62, v60
	v_bfe_u32 v38, v201, 16, 1
	v_cmp_o_f32_e64 s12, v47, v47
	v_add3_u32 v47, v47, v48, 0x7fff
	v_bfe_u32 v48, v219, 16, 1
	v_add3_u32 v141, v141, v143, 0x7fff
	v_bfe_u32 v143, v218, 16, 1
	v_add3_u32 v139, v139, v145, 0x7fff
	v_bfe_u32 v145, v217, 16, 1
	v_add3_u32 v34, v183, v34, 0x7fff
	v_add3_u32 v36, v185, v36, 0x7fff
	v_cmp_o_f32_e64 s7, v201, v201
	v_add3_u32 v38, v201, v38, 0x7fff
	v_add3_u32 v40, v200, v40, 0x7fff
	v_add3_u32 v48, v219, v48, 0x7fff
	v_add3_u32 v143, v218, v143, 0x7fff
	v_add3_u32 v145, v217, v145, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s1
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s3
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s5
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s7
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v40.h, s9
	v_cndmask_b16 v37.l, 0x7fff, v45.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v46.h, s11
	v_cndmask_b16 v38.l, 0x7fff, v47.h, s12
	v_cndmask_b16 v38.h, 0x7fff, v48.h, s13
	v_cndmask_b16 v39.l, 0x7fff, v141.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v143.h, s15
	v_cndmask_b16 v40.l, 0x7fff, v139.h, s16
	v_cndmask_b16 v40.h, 0x7fff, v145.h, s17
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cmp_o_f32_e64 s9, v179, v179
	v_cmp_o_f32_e64 s11, v181, v181
	v_cmp_o_f32_e64 s13, v184, v184
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[105:112], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v33, v152, v192 :: v_dual_sub_f32 v36, v146, v41
	v_dual_sub_f32 v34, v150, v187 :: v_dual_sub_f32 v37, v144, v42
	v_sub_f32_e32 v35, v148, v234
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e64 s3, v33, v33
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v38, v142, v43 :: v_dual_sub_f32 v39, v140, v44
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v40, v0, 16, 1
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v175, 16, 1
	v_cmp_o_f32_e64 s1, v173, v173
	v_cmp_o_f32_e64 s6, v34, v34
	v_add3_u32 v0, v0, v40, 0x7fff
	v_bfe_u32 v40, v173, 16, 1
	v_add3_u32 v42, v175, v33, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	v_cmp_o_f32_e64 s7, v177, v177
	v_cmp_o_f32_e64 s8, v35, v35
	v_add3_u32 v40, v173, v40, 0x7fff
	v_cmp_o_f32_e64 s10, v36, v36
	v_add3_u32 v43, v34, v33, 0x7fff
	v_bfe_u32 v33, v177, 16, 1
	v_cmp_o_f32_e64 s12, v37, v37
	v_cmp_o_f32_e64 s14, v38, v38
	v_cmp_o_f32_e64 s15, v186, v186
	v_cmp_o_f32_e64 s16, v39, v39
	v_add3_u32 v44, v177, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cmp_o_f32_e64 s17, v239, v239
	v_cndmask_b16 v34.l, 0x7fff, v41.h, s3
	v_mov_b32_e32 v154, v73
	v_mov_b32_e32 v196, v51
	v_add3_u32 v45, v35, v33, 0x7fff
	v_bfe_u32 v33, v179, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v43.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v44.h, s7
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v44, v125, v241
	v_mov_b32_e32 v192, v50
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v46, v179, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	v_mov_b32_e32 v152, v71
	v_mov_b32_e32 v150, v69
	v_mov_b32_e32 v148, v67
	v_cmp_o_f32_e64 s7, v171, v171
	v_add3_u32 v47, v36, v33, 0x7fff
	v_bfe_u32 v33, v181, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v45.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v46.h, s9
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v123, v240
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v45, v44, 16, 1
	v_add3_u32 v48, v181, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	v_cmp_o_f32_e64 s9, v165, v165
	v_mov_b32_e32 v187, v54
	v_mov_b32_e32 v153, v72
	v_mov_b32_e32 v151, v70
	v_add3_u32 v139, v37, v33, 0x7fff
	v_bfe_u32 v33, v184, 16, 1
	v_cndmask_b16 v37.l, 0x7fff, v47.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v48.h, s11
	v_bfe_u32 v47, v46, 16, 1
	v_cmp_o_f32_e64 s11, v163, v163
	v_add3_u32 v140, v184, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	v_mov_b32_e32 v149, v68
	v_mov_b32_e32 v147, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v141, v38, v33, 0x7fff
	v_bfe_u32 v33, v186, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v139.h, s12
	v_cndmask_b16 v38.h, 0x7fff, v140.h, s13
	v_cmp_o_f32_e64 s13, v161, v161
	v_add3_u32 v142, v186, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v143, v39, v33, 0x7fff
	v_bfe_u32 v33, v239, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v141.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v142.h, s15
	v_cmp_o_f32_e64 s14, v44, v44
	v_cndmask_b16 v40.l, 0x7fff, v143.h, s16
	v_add3_u32 v144, v239, v33, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v0.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v137, v247
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v175, v175
	v_cndmask_b16 v33.h, 0x7fff, v40.h, s1
	v_cndmask_b16 v40.h, 0x7fff, v144.h, s17
	v_add3_u32 v44, v44, v45, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v34.h, 0x7fff, v42.h, s5
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v127, v242
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v45, v159, 16, 1
	v_cmp_o_f32_e64 s16, v46, v46
	v_add3_u32 v46, v46, v47, 0x7fff
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[105:112], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v135, v246
	v_sub_f32_e32 v36, v133, v245
	v_sub_f32_e32 v38, v131, v244
	v_sub_f32_e32 v40, v129, v243
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v33, v0, 16, 1
	v_bfe_u32 v35, v34, 16, 1
	v_bfe_u32 v37, v36, 16, 1
	v_bfe_u32 v39, v38, 16, 1
	v_bfe_u32 v41, v40, 16, 1
	v_bfe_u32 v43, v42, 16, 1
	v_add3_u32 v0, v0, v33, 0x7fff
	v_bfe_u32 v33, v167, 16, 1
	v_cmp_o_f32_e64 s3, v34, v34
	v_add3_u32 v34, v34, v35, 0x7fff
	v_bfe_u32 v35, v169, 16, 1
	v_cmp_o_f32_e64 s6, v36, v36
	v_add3_u32 v36, v36, v37, 0x7fff
	v_bfe_u32 v37, v171, 16, 1
	v_cmp_o_f32_e64 s8, v38, v38
	v_add3_u32 v38, v38, v39, 0x7fff
	v_bfe_u32 v39, v165, 16, 1
	v_cmp_o_f32_e64 s10, v40, v40
	v_add3_u32 v40, v40, v41, 0x7fff
	v_bfe_u32 v41, v163, 16, 1
	v_cmp_o_f32_e64 s12, v42, v42
	v_add3_u32 v42, v42, v43, 0x7fff
	v_bfe_u32 v43, v161, 16, 1
	v_bfe_u32 v47, v157, 16, 1
	v_cmp_o_f32_e64 s1, v167, v167
	v_add3_u32 v33, v167, v33, 0x7fff
	v_cmp_o_f32_e64 s5, v169, v169
	v_add3_u32 v35, v169, v35, 0x7fff
	v_add3_u32 v37, v171, v37, 0x7fff
	v_add3_u32 v39, v165, v39, 0x7fff
	v_add3_u32 v41, v163, v41, 0x7fff
	v_add3_u32 v43, v161, v43, 0x7fff
	v_cmp_o_f32_e64 s15, v159, v159
	v_add3_u32 v45, v159, v45, 0x7fff
	v_cmp_o_f32_e64 s17, v157, v157
	v_add3_u32 v47, v157, v47, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s3
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s5
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s7
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v39.h, s9
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v41.h, s11
	v_cndmask_b16 v38.l, 0x7fff, v42.h, s12
	v_cndmask_b16 v38.h, 0x7fff, v43.h, s13
	v_cndmask_b16 v39.l, 0x7fff, v44.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v45.h, s15
	v_cndmask_b16 v40.l, 0x7fff, v46.h, s16
	v_cndmask_b16 v40.h, 0x7fff, v47.h, s17
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v138, v168
	v_mov_b32_e32 v178, v81
	v_mov_b32_e32 v176, v79
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v155, v155
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[97:104], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v40, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v35, v132, v162 :: v_dual_sub_f32 v36, v130, v160
	v_sub_f32_e32 v37, v128, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v0, v0, v40, 0x7fff
	v_bfe_u32 v40, v155, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v38, v126, v156 :: v_dual_sub_f32 v33, v136, v166
	v_sub_f32_e32 v34, v134, v164
	v_mov_b32_e32 v174, v77
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v40, v155, v40, 0x7fff
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[155:158], off, off offset:28
	scratch_load_b128 v[159:162], off, off offset:44
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e64 s3, v33, v33
	v_dual_mov_b32 v172, v75 :: v_dual_sub_f32 v39, v124, v113
	v_cmp_o_f32_e64 s5, v120, v120
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v120, 16, 1
	v_cmp_o_f32_e64 s6, v34, v34
	v_cmp_o_f32_e64 s7, v119, v119
	v_cmp_o_f32_e64 s8, v35, v35
	v_cmp_o_f32_e64 s9, v118, v118
	v_add3_u32 v42, v120, v33, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	v_cmp_o_f32_e64 s10, v36, v36
	v_cmp_o_f32_e64 s11, v117, v117
	v_cmp_o_f32_e64 s12, v37, v37
	v_cmp_o_f32_e64 s13, v116, v116
	v_add3_u32 v43, v34, v33, 0x7fff
	v_bfe_u32 v33, v119, 16, 1
	v_cmp_o_f32_e64 s14, v38, v38
	v_cmp_o_f32_e64 s15, v115, v115
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v114, v114
	v_add3_u32 v44, v119, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v41.h, s3
	v_cndmask_b16 v34.h, 0x7fff, v42.h, s5
	v_dual_mov_b32 v170, v89 :: v_dual_mov_b32 v177, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v45, v35, v33, 0x7fff
	v_bfe_u32 v33, v118, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v43.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v44.h, s7
	v_mov_b32_e32 v175, v78
	v_mov_b32_e32 v173, v76
	v_add3_u32 v46, v118, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	v_mov_b32_e32 v171, v74
	v_dual_mov_b32 v169, v88 :: v_dual_mov_b32 v168, v87
	v_mov_b32_e32 v167, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v47, v36, v33, 0x7fff
	v_bfe_u32 v33, v117, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v45.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v46.h, s9
	v_dual_mov_b32 v166, v85 :: v_dual_mov_b32 v165, v84
	v_add3_u32 v48, v117, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	v_dual_mov_b32 v164, v83 :: v_dual_mov_b32 v163, v82
	v_dual_mov_b32 v45, v53 :: v_dual_mov_b32 v46, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v105, v37, v33, 0x7fff
	v_bfe_u32 v33, v116, 16, 1
	v_cndmask_b16 v37.l, 0x7fff, v47.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v48.h, s11
	v_dual_mov_b32 v47, v56 :: v_dual_mov_b32 v48, v57
	v_add3_u32 v106, v116, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v107, v38, v33, 0x7fff
	v_bfe_u32 v33, v115, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v105.h, s12
	v_cndmask_b16 v38.h, 0x7fff, v106.h, s13
	v_add3_u32 v108, v115, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v109, v39, v33, 0x7fff
	v_bfe_u32 v33, v114, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v107.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v108.h, s15
	v_cndmask_b16 v40.l, 0x7fff, v109.h, s16
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v110, v114, v33, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v40.h, s1
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s1, s57, 32
	s_cmpk_lt_u32 s57, 0x7e0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v40.h, 0x7fff, v110.h, s17
	s_mov_b32 s57, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[97:104], v[9:16]
	v_dual_mov_b32 v99, v52 :: v_dual_mov_b32 v98, v49
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_movk_i32 s1, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s40
	s_mov_b32 s5, 0
	s_cbranch_vccnz .LBB0_1
; %bb.4:
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v64, off, off offset:192
	scratch_load_b32 v33, off, off offset:196
	scratch_load_b32 v34, off, off offset:188
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s43, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s42
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s31, s7
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v43, s18, v64
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, v33, v34
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s34, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v47, 2, v33
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v49, v43, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s18, v33
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v46, 6, v33
	v_or_b32_e32 v48, 4, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v50, v43, v47
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v49, v49, s30, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v45, 8, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v51, v43, v48
	v_add_nc_u32_e32 v52, v43, v46
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	v_add_lshl_u32 v50, v50, s30, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v44, 10, v33
	v_or_b32_e32 v41, 14, v33
	v_or_b32_e32 v42, 12, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v53, v43, v45
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v51, v51, s30, 2
	buffer_store_b32 v17, v49, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v50, s2
	v_add_lshl_u32 v49, v52, s30, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v54, v43, v44
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v0, 32, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v55, v43, v42
	v_add_nc_u32_e32 v56, v43, v41
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v50, 0x80000000, v51, s2
	v_add_lshl_u32 v51, v53, s30, 2
	buffer_store_b32 v18, v17, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v49, s2
	v_add_lshl_u32 v52, v54, s30, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v40, 34, v33
	v_cmp_gt_i32_e64 s0, s19, v33
	v_cmp_gt_i32_e64 s1, s19, v0
	v_or_b32_e32 v39, 36, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s18, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v19, v50, s[4:7], 0 offen
	v_cndmask_b32_e64 v18, 0x80000000, v51, s2
	v_add_lshl_u32 v49, v55, s30, 2
	buffer_store_b32 v20, v17, s[4:7], 0 offen
	v_add_lshl_u32 v17, v56, s30, 2
	v_cndmask_b32_e64 v19, 0x80000000, v52, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v57, v43, v0
	v_add_nc_u32_e32 v58, v43, v40
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v21, v18, s[4:7], 0 offen
	buffer_store_b32 v22, v19, s[4:7], 0 offen
	v_cndmask_b32_e64 v18, 0x80000000, v49, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s3
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v59, v43, v39
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v38, 38, v33
	v_or_b32_e32 v37, 40, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v57, s30, 2
	v_add_lshl_u32 v20, v58, s30, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v36, 42, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v21, v59, s30, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v35, 44, v33
	v_or_b32_e32 v34, 46, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v60, v43, v38
	v_add_nc_u32_e32 v61, v43, v37
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	buffer_store_b32 v23, v18, s[4:7], 0 offen
	v_cndmask_b32_e64 v18, 0x80000000, v20, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v62, v43, v36
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v21, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v63, v43, v35
	v_add_nc_u32_e32 v43, v43, v34
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v24, v17, s[4:7], 0 offen
	buffer_store_b32 v25, v19, s[4:7], 0 offen
	v_add_lshl_u32 v17, v60, s30, 2
	s_clause 0x1
	buffer_store_b32 v26, v18, s[4:7], 0 offen
	buffer_store_b32 v27, v20, s[4:7], 0 offen
	v_add_lshl_u32 v18, v61, s30, 2
	v_add_lshl_u32 v19, v62, s30, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v22, s19, v64
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v63, s30, 2
	v_add_lshl_u32 v21, v43, s30, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	s_clause 0x4
	buffer_store_b32 v28, v17, s[4:7], 0 offen
	buffer_store_b32 v29, v18, s[4:7], 0 offen
	buffer_store_b32 v30, v19, s[4:7], 0 offen
	buffer_store_b32 v31, v20, s[4:7], 0 offen
	buffer_store_b32 v32, v21, s[4:7], 0 offen
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v17, v22, v33
	v_add_nc_u32_e32 v18, v22, v47
	v_add_nc_u32_e32 v19, v22, v48
	v_add_nc_u32_e32 v20, v22, v46
	v_add_nc_u32_e32 v21, v22, v45
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v17, v17, s33, 2
	v_add_lshl_u32 v18, v18, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v23, v22, v44
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_mov_b32 s30, s6
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v24, v22, v42
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v25, v22, v41
	v_add_nc_u32_e32 v0, v22, v0
	v_add_nc_u32_e32 v26, v22, v40
	v_add_nc_u32_e32 v27, v22, v39
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v1, v17, s[28:31], 0 offen
	v_add_lshl_u32 v1, v19, s33, 2
	v_cndmask_b32_e64 v17, 0x80000000, v18, s0
	v_add_lshl_u32 v18, v20, s33, 2
	v_add_lshl_u32 v19, v21, s33, 2
	v_add_lshl_u32 v20, v23, s33, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	buffer_store_b32 v2, v17, s[28:31], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v18, s0
	v_cndmask_b32_e64 v17, 0x80000000, v19, s0
	v_cndmask_b32_e64 v18, 0x80000000, v20, s0
	buffer_store_b32 v3, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, v24, s33, 2
	s_clause 0x2
	buffer_store_b32 v4, v2, s[28:31], 0 offen
	buffer_store_b32 v5, v17, s[28:31], 0 offen
	buffer_store_b32 v6, v18, s[28:31], 0 offen
	v_add_lshl_u32 v2, v25, s33, 2
	v_add_lshl_u32 v0, v0, s33, 2
	v_add_lshl_u32 v3, v26, s33, 2
	v_add_lshl_u32 v4, v27, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v28, v22, v38
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v29, v22, v37
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v30, v22, v36
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_add_nc_u32 v31, v22, v35
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_add_nc_u32 v22, v22, v34
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v7, v1, s[28:31], 0 offen
	buffer_store_b32 v8, v2, s[28:31], 0 offen
	buffer_store_b32 v9, v0, s[28:31], 0 offen
	buffer_store_b32 v10, v3, s[28:31], 0 offen
	buffer_store_b32 v11, v4, s[28:31], 0 offen
	v_add_lshl_u32 v0, v28, s33, 2
	v_add_lshl_u32 v1, v29, s33, 2
	v_add_lshl_u32 v2, v30, s33, 2
	v_add_lshl_u32 v3, v31, s33, 2
	v_add_lshl_u32 v4, v22, s33, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v12, v0, s[28:31], 0 offen
	buffer_store_b32 v13, v1, s[28:31], 0 offen
	buffer_store_b32 v14, v2, s[28:31], 0 offen
	buffer_store_b32 v15, v3, s[28:31], 0 offen
	buffer_store_b32 v16, v4, s[28:31], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 204
		.amdhsa_kernarg_size 176
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
		.amdhsa_next_free_sgpr 58
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 58
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 204
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15948
; TotalNumSgprs: 60
; NumVgprs: 256
; ScratchSize: 204
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 60
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
	.byte	0                               ; DW_CHILDREN_no
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x1f DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention_backward.py"         ; string offset=7 ; attention_backward.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=29 ; <repo>/src/amd_strix_halo_kernels
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
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
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
        .size:           4
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
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .offset:         144
        .size:           1
        .value_kind:     by_value
      - .offset:         145
        .size:           1
        .value_kind:     by_value
      - .offset:         148
        .size:           4
        .value_kind:     by_value
      - .offset:         152
        .size:           4
        .value_kind:     by_value
      - .offset:         156
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         160
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         168
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 176
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 204
    .sgpr_count:     60
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 50
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
