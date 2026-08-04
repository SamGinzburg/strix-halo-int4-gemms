	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x74
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v3, 5, v0
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s33, s2, 4
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v63, 15, v0
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_and_b32_e32 v2, 31, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v4, s33, v3
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x10
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_lshl_b32 s34, s3, 11
	v_mov_b32_e32 v81, v80
	v_dual_mov_b32 v82, v80 :: v_dual_lshlrev_b32 v1, 3, v2
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s11, s34, s33
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, 0x800, v4
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_i32 v35, v0, 5, 1
	v_lshrrev_b32_e32 v36, 4, v0
	v_dual_mov_b32 v84, v80 :: v_dual_lshlrev_b32 v37, 4, v2
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v3, s18, v3
	s_mul_i32 s50, s18, s11
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e32 vcc_lo, s18, v1
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_lshl_b32 s3, s18, 2
	s_lshl_b32 s8, s18, 1
	s_mul_i32 s6, s18, 6
	s_lshl_b32 s9, s18, 3
	s_mul_i32 s10, s18, 10
	v_add3_u32 v3, s50, v1, v3
	s_mul_i32 s7, s18, 12
	s_mul_i32 s12, s18, 14
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v83, v80 :: v_dual_lshlrev_b32 v4, 1, v3
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v6, v3, s3, 1
	v_add_lshl_u32 v5, v3, s8, 1
	v_add_lshl_u32 v7, v3, s6, 1
	v_add_lshl_u32 v8, v3, s9, 1
	v_add_lshl_u32 v9, v3, s10, 1
	v_add_lshl_u32 v11, v3, s7, 1
	v_add_lshl_u32 v12, v3, s12, 1
	v_cndmask_b32_e64 v3, 0x80000000, v4, s2
	v_cndmask_b32_e64 v13, 0x80000000, v6, s2
	v_cndmask_b32_e64 v10, 0x80000000, v5, s2
	v_cndmask_b32_e64 v15, 0x80000000, v7, s2
	v_cndmask_b32_e64 v19, 0x80000000, v8, s2
	s_and_b32 s29, s47, 0xffff
	s_mov_b32 s28, s46
	v_cndmask_b32_e64 v23, 0x80000000, v9, s2
	v_cndmask_b32_e64 v27, 0x80000000, v11, s2
	v_cndmask_b32_e64 v31, 0x80000000, v12, s2
	s_clause 0x7
	buffer_load_b128 v[3:6], v3, s[28:31], 0 offen
	buffer_load_b128 v[7:10], v10, s[28:31], 0 offen
	buffer_load_b128 v[11:14], v13, s[28:31], 0 offen
	buffer_load_b128 v[15:18], v15, s[28:31], 0 offen
	buffer_load_b128 v[19:22], v19, s[28:31], 0 offen
	buffer_load_b128 v[23:26], v23, s[28:31], 0 offen
	buffer_load_b128 v[27:30], v27, s[28:31], 0 offen
	buffer_load_b128 v[31:34], v31, s[28:31], 0 offen
	v_dual_mov_b32 v85, v80 :: v_dual_and_b32 v38, 0x210, v35
	v_dual_mov_b32 v87, v80 :: v_dual_lshlrev_b32 v40, 9, v63
	v_dual_mov_b32 v86, v80 :: v_dual_lshlrev_b32 v49, 4, v63
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v39, s33, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v38, v38, v37
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s35, s19, s11
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_or_b32_e32 v48, v40, v49
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_lshl_b32 s11, s19, 2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s3, 0x800, v39
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v39, 0, v38
	v_xad_u32 v41, 0x420, v38, 0
	v_add_nc_u32_e32 v47, 0, v48
	v_xad_u32 v50, v48, 16, 0
	v_xad_u32 v42, 0x840, v38, 0
	v_xad_u32 v43, 0xc60, v38, 0
	v_xad_u32 v44, 0x1080, v38, 0
	v_xad_u32 v45, 0x14a0, v38, 0
	v_xad_u32 v46, 0x18c0, v38, 0
	v_xad_u32 v38, 0x1ce0, v38, 0
	v_xad_u32 v51, v48, 32, 0
	v_xad_u32 v52, v48, 48, 0
	v_xad_u32 v53, v48, 64, 0
	v_xad_u32 v54, 0x50, v48, 0
	v_xad_u32 v55, 0x60, v48, 0
	v_xad_u32 v56, 0x70, v48, 0
	v_xad_u32 v57, 0x80, v48, 0
	v_xad_u32 v58, 0x90, v48, 0
	v_xad_u32 v60, 0xa0, v48, 0
	v_xad_u32 v59, 0xb0, v48, 0
	v_xad_u32 v61, 0xd0, v48, 0
	v_xad_u32 v62, 0xc0, v48, 0
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_lshl_b32 s12, s19, 3
	s_mul_i32 s13, s19, 12
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s6, s30
	s_mov_b32 s7, s31
	s_and_b32 s5, s5, 0xffff
	v_lshlrev_b32_e32 v2, 9, v2
	v_mov_b32_e32 v152, v80
	s_clause 0x2
	s_load_b256 s[20:27], s[0:1], 0x38
	s_load_b32 s51, s[0:1], 0x7c
	s_load_b64 s[48:49], s[0:1], 0x58
	v_mov_b32_e32 v241, v80
	v_mov_b32_e32 v243, v80
	v_mov_b32_e32 v245, v80
	v_mov_b32_e32 v247, v80
	v_mov_b32_e32 v233, v80
	v_mov_b32_e32 v235, v80
	v_mov_b32_e32 v237, v80
	v_mov_b32_e32 v239, v80
	s_mov_b32 s36, 0
	s_mov_b32 s54, s30
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s55, s31
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s57, s51, 0x3fb8aa3b
	s_and_b32 s23, s23, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s56, s36
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s52, s24
	s_mov_b32 s53, s25
	s_mov_b32 s28, s22
	s_mov_b32 s29, s23
	s_mov_b32 s22, s30
	s_mov_b32 s23, s31
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(7)
	ds_store_b128 v39, v[3:6]
	s_waitcnt vmcnt(6)
	ds_store_b128 v41, v[7:10]
	s_waitcnt vmcnt(5)
	ds_store_b128 v42, v[11:14]
	s_waitcnt vmcnt(4)
	ds_store_b128 v43, v[15:18]
	s_waitcnt vmcnt(3)
	ds_store_b128 v44, v[19:22]
	s_waitcnt vmcnt(2)
	ds_store_b128 v45, v[23:26]
	s_waitcnt vmcnt(1)
	ds_store_b128 v46, v[27:30]
	s_waitcnt vmcnt(0)
	ds_store_b128 v38, v[31:34]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v47
	ds_load_b128 v[11:14], v47 offset:256
	ds_load_b128 v[7:10], v50
	ds_load_b128 v[15:18], v50 offset:256
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshlrev_b32_e32 v19, 3, v63
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v50, 48, v0
	v_dual_mov_b32 v39, v80 :: v_dual_lshlrev_b32 v20, 4, v0
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[3:6], off offset:232 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[7:10], off offset:248
	scratch_store_b128 off, v[11:14], off offset:264
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[15:18], off offset:280 ; 16-byte Folded Spill
	.loc	1 534 24                        ; attention_backward.py:534:24
	ds_load_b128 v[3:6], v51
	ds_load_b128 v[11:14], v51 offset:256
	ds_load_b128 v[7:10], v52
	ds_load_b128 v[15:18], v52 offset:256
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s2, s19, v19
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xor_b32_e32 v21, v20, v50
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v51, 32, v0
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[3:6], off offset:296 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[7:10], off offset:312
	scratch_store_b128 off, v[11:14], off offset:328
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[15:18], off offset:344 ; 16-byte Folded Spill
	.loc	1 534 24                        ; attention_backward.py:534:24
	ds_load_b128 v[3:6], v53
	ds_load_b128 v[11:14], v53 offset:256
	ds_load_b128 v[7:10], v54
	ds_load_b128 v[15:18], v54 offset:256
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s3, s3, s2
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v22, 0, v21
	v_xad_u32 v23, 0x440, v21, 0
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[3:6], off offset:360 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[7:10], off offset:376
	scratch_store_b128 off, v[11:14], off offset:392
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[15:18], off offset:408 ; 16-byte Folded Spill
	.loc	1 534 24                        ; attention_backward.py:534:24
	ds_load_b128 v[3:6], v55
	ds_load_b128 v[11:14], v55 offset:256
	ds_load_b128 v[7:10], v56
	ds_load_b128 v[15:18], v56 offset:256
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_mul_u32_u24_e32 v53, 0x110, v63
	v_dual_mov_b32 v153, v80 :: v_dual_and_b32 v54, 16, v0
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[3:6], off offset:424 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[7:10], off offset:440
	scratch_store_b128 off, v[11:14], off offset:456
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[15:18], off offset:472 ; 16-byte Folded Spill
	.loc	1 534 24                        ; attention_backward.py:534:24
	ds_load_b128 v[3:6], v57
	ds_load_b128 v[11:14], v57 offset:256
	ds_load_b128 v[7:10], v58
	ds_load_b128 v[15:18], v58 offset:256
	v_mov_b32_e32 v155, v80
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[3:6], off offset:488 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[7:10], off offset:504
	scratch_store_b128 off, v[11:14], off offset:520
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[15:18], off offset:536 ; 16-byte Folded Spill
	ds_load_b128 v[3:6], v60
	ds_load_b128 v[11:14], v60 offset:256
	ds_load_b128 v[7:10], v59
	ds_load_b128 v[15:18], v59 offset:256
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[3:6], off offset:552 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[7:10], off offset:568 ; 16-byte Folded Spill
	ds_load_b128 v[7:10], v61
	ds_load_b128 v[3:6], v62
	scratch_store_b128 off, v[11:14], off offset:584 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[15:18], off offset:600 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[3:6], off offset:616
	scratch_store_b128 off, v[7:10], off offset:632
	ds_load_b128 v[3:6], v62 offset:256
	ds_load_b128 v[7:10], v61 offset:256
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[3:6], off offset:648 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[7:10], off offset:664 ; 16-byte Folded Spill
	v_xad_u32 v3, 0xf0, v48, 0
	v_xad_u32 v4, 0xe0, v48, 0
	ds_load_b128 v[9:12], v3
	ds_load_b128 v[5:8], v4
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[5:8], off offset:680
	scratch_store_b128 off, v[9:12], off offset:696
	ds_load_b128 v[4:7], v4 offset:256
	ds_load_b128 v[8:11], v3 offset:256
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_mul_lo_u32 v3, s19, v36
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[4:7], off offset:712 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[8:11], off offset:728 ; 16-byte Folded Spill
	v_add3_u32 v3, s35, v19, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v4, 1, v3
	v_add_lshl_u32 v5, v3, s11, 1
	v_add_lshl_u32 v6, v3, s12, 1
	v_add_lshl_u32 v3, v3, s13, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v7, 0x80000000, v5, s3
	v_cndmask_b32_e64 v11, 0x80000000, v6, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v15, 0x80000000, v3, s3
	s_clause 0x3
	buffer_load_b128 v[3:6], v4, s[4:7], 0 offen
	buffer_load_b128 v[7:10], v7, s[4:7], 0 offen
	buffer_load_b128 v[11:14], v11, s[4:7], 0 offen
	buffer_load_b128 v[15:18], v15, s[4:7], 0 offen
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v22, v[3:6]
	s_waitcnt vmcnt(2)
	ds_store_b128 v23, v[7:10]
	v_xad_u32 v3, 0x880, v21, 0
	v_xad_u32 v4, 0xcc0, v21, 0
	s_waitcnt vmcnt(1)
	ds_store_b128 v3, v[11:14]
	s_waitcnt vmcnt(0)
	ds_store_b128 v4, v[15:18]
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v3, v0, 4, 1
	v_lshrrev_b32_e32 v4, 2, v51
	v_mov_b32_e32 v13, v80
	v_mov_b32_e32 v14, v80
	v_mov_b32_e32 v11, v80
	scratch_store_b32 off, v3, off offset:1436 ; 4-byte Folded Spill
	.loc	1 514 23 is_stmt 0              ; attention_backward.py:514:23
	v_or_b32_e32 v3, s33, v3
	v_mov_b32_e32 v12, v80
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v16, v80
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s3, 0x800, v3
	v_and_b32_e32 v3, 0x840, v35
	v_mov_b32_e32 v17, v80
	v_mov_b32_e32 v18, v80
	v_mov_b32_e32 v21, v80
	v_mov_b32_e32 v22, v80
	v_xor_b32_e32 v55, v3, v37
	v_and_b32_e32 v3, 48, v20
	v_mov_b32_e32 v23, v80
	v_mov_b32_e32 v15, v80
	v_mov_b32_e32 v37, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or3_b32 v56, v2, v4, v3
	v_lshrrev_b32_e32 v2, 1, v50
	v_bfe_i32 v4, v0, 3, 1
	v_xor_b32_e32 v2, v3, v2
	v_and_b32_e32 v3, 0x420, v35
	v_mov_b32_e32 v35, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b32_e32 v57, v2, v40
	v_lshlrev_b32_e32 v2, 3, v0
	v_and_or_b32 v3, 0x210, v4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v52, 48, v2
	v_lshlrev_b32_e32 v2, 6, v0
	v_mov_b32_e32 v0, v80
	v_and_or_b32 v2, 0x1c0, v2, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v58, v3, v2
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v2, 3, v51
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_mad_u64_u32 v[59:60], null, s18, v2, v[1:2]
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v1, 2, v50
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v2, v53, 16, 0
	v_mov_b32_e32 v41, v80
	v_mov_b32_e32 v47, v80
	v_mov_b32_e32 v43, v80
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_mad_u64_u32 v[61:62], null, s19, v1, v[19:20]
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_mad_u32_u24 v1, 0x110, v63, 0
	ds_load_b128 v[3:6], v1
	ds_load_b128 v[7:10], v2
	v_xad_u32 v1, v53, 32, 0
	v_xad_u32 v2, v53, 48, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[3:6], off offset:776 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[7:10], off offset:792 ; 16-byte Folded Spill
	ds_load_b128 v[3:6], v1
	ds_load_b128 v[7:10], v2
	v_xad_u32 v1, v53, 64, 0
	v_xad_u32 v2, 0x50, v53, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[3:6], off offset:808 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[7:10], off offset:824 ; 16-byte Folded Spill
	ds_load_b128 v[3:6], v1
	ds_load_b128 v[7:10], v2
	v_xad_u32 v1, 0x60, v53, 0
	v_xad_u32 v2, 0x70, v53, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[3:6], off offset:840 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[7:10], off offset:856 ; 16-byte Folded Spill
	ds_load_b128 v[3:6], v1
	ds_load_b128 v[7:10], v2
	v_xad_u32 v1, 0x80, v53, 0
	v_xad_u32 v2, 0x90, v53, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[3:6], off offset:872 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[7:10], off offset:888 ; 16-byte Folded Spill
	ds_load_b128 v[3:6], v1
	ds_load_b128 v[7:10], v2
	v_xad_u32 v1, 0xa0, v53, 0
	v_xad_u32 v2, 0xb0, v53, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[3:6], off offset:904 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[7:10], off offset:920 ; 16-byte Folded Spill
	ds_load_b128 v[3:6], v1
	ds_load_b128 v[7:10], v2
	v_xad_u32 v1, 0xc0, v53, 0
	v_xad_u32 v2, 0xd0, v53, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[3:6], off offset:936 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[7:10], off offset:952 ; 16-byte Folded Spill
	ds_load_b128 v[3:6], v1
	ds_load_b128 v[7:10], v2
	v_mov_b32_e32 v19, v80
	v_mov_b32_e32 v20, v80
	v_xad_u32 v1, 0xe0, v53, 0
	v_xad_u32 v2, 0xf0, v53, 0
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[3:6], off offset:968 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_clause 0x8                            ; 144-byte Folded Spill
	scratch_store_b128 off, v[7:10], off offset:984
	scratch_store_b128 off, v[16:19], off offset:96
	scratch_store_b128 off, v[20:23], off offset:112
	scratch_store_b128 off, v[16:19], off offset:64
	scratch_store_b128 off, v[20:23], off offset:80
	scratch_store_b128 off, v[16:19], off offset:32
	scratch_store_b128 off, v[20:23], off offset:48
	scratch_store_b128 off, v[16:19], off
	scratch_store_b128 off, v[20:23], off offset:16
	ds_load_b128 v[3:6], v1
	ds_load_b128 v[7:10], v2
	v_mov_b32_e32 v2, v80
	v_lshl_or_b32 v20, v51, 8, v48
	v_xor_b32_e32 v48, 0x210, v55
	v_mov_b32_e32 v154, v80
	v_lshl_or_b32 v16, v50, 6, v49
	v_lshl_or_b32 v17, v51, 7, v53
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[3:6], off offset:1000 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[7:10], off offset:1016 ; 16-byte Folded Spill
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 0x420, v55
	v_mov_b32_e32 v156, v80
	scratch_store_b32 off, v16, off offset:1032 ; 4-byte Folded Spill
	v_dual_mov_b32 v6, v80 :: v_dual_lshlrev_b32 v49, 2, v50
	scratch_store_b32 off, v21, off offset:1056 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 0x630, v55
	v_mov_b32_e32 v158, v80
	v_lshlrev_b32_e32 v50, 2, v54
	v_lshlrev_b32_e32 v53, 1, v63
	scratch_store_b32 off, v21, off offset:1060 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 0x1080, v55
	v_mov_b32_e32 v40, v80
	v_or3_b32 v19, v53, v50, v51
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v18, 1, v51
	scratch_store_b32 off, v21, off offset:1064 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 0x1290, v55
	v_mov_b32_e32 v42, v80
	v_mov_b32_e32 v5, v80
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v18, off offset:224
	scratch_store_b32 off, v63, off offset:228
	scratch_store_b32 off, v21, off offset:1068
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 0x14a0, v55
	v_mov_b32_e32 v44, v80
	v_lshl_or_b32 v18, v63, 6, v52
	v_xor_b32_e32 v16, v16, v49
	scratch_store_b32 off, v21, off offset:1072 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 0x16b0, v55
	v_mov_b32_e32 v46, v80
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v21, off offset:1076
	scratch_store_b32 off, v55, off offset:744
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 16, v17
	v_mov_b32_e32 v32, v80
	v_mov_b32_e32 v33, v80
	v_mov_b32_e32 v45, v80
	scratch_store_b32 off, v21, off offset:1080 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 32, v17
	v_mov_b32_e32 v34, v80
	v_mov_b32_e32 v8, v80
	v_mov_b32_e32 v9, v80
	scratch_store_b32 off, v21, off offset:1084 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 48, v17
	v_mov_b32_e32 v36, v80
	v_mov_b32_e32 v10, v80
	v_mov_b32_e32 v1, v80
	scratch_store_b32 off, v21, off offset:1088 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 64, v17
	v_mov_b32_e32 v38, v80
	v_mov_b32_e32 v3, v80
	v_mov_b32_e32 v4, v80
	scratch_store_b32 off, v21, off offset:1092 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 0x50, v17
	v_mov_b32_e32 v7, v80
	v_add3_u32 v150, 0, v51, v53
	scratch_store_b32 off, v21, off offset:1096 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 0x60, v17
	scratch_store_b32 off, v21, off offset:1100 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 0x70, v17
	scratch_store_b32 off, v21, off offset:1104 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 0x80, v17
	scratch_store_b32 off, v21, off offset:1108 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 0x90, v17
	v_mov_b32_e32 v240, v80
	scratch_store_b32 off, v21, off offset:1112 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 0xa0, v17
	v_mov_b32_e32 v242, v80
	scratch_store_b32 off, v21, off offset:1116 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 0xb0, v17
	v_mov_b32_e32 v244, v80
	scratch_store_b32 off, v21, off offset:1120 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 0xc0, v17
	v_mov_b32_e32 v246, v80
	scratch_store_b32 off, v21, off offset:1124 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 0xd0, v17
	v_mov_b32_e32 v232, v80
	scratch_store_b32 off, v21, off offset:1128 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 0xe0, v17
	v_mov_b32_e32 v234, v80
	scratch_store_b32 off, v21, off offset:1132 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, 0, v48
	v_xor_b32_e32 v48, 0xf0, v17
	v_mov_b32_e32 v236, v80
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v21, off offset:1136
	scratch_store_b32 off, v17, off offset:1036
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x90, v19
	v_mov_b32_e32 v238, v80
	scratch_store_b32 off, v17, off offset:1140 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x120, v19
	scratch_store_b32 off, v17, off offset:1144 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x1b0, v19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v17, off offset:1148
	scratch_store_b32 off, v19, off offset:1040
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 16, v18
	scratch_store_b32 off, v17, off offset:1152 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 32, v18
	scratch_store_b32 off, v17, off offset:1156 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 48, v18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v17, off offset:1160
	scratch_store_b32 off, v18, off offset:1048
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x90, v56
	scratch_store_b32 off, v17, off offset:1164 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x120, v56
	scratch_store_b32 off, v17, off offset:1168 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x1b0, v56
	scratch_store_b32 off, v17, off offset:1172 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 16, v56
	scratch_store_b32 off, v17, off offset:1176 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x130, v56
	scratch_store_b32 off, v17, off offset:1180 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x1a0, v56
	scratch_store_b32 off, v17, off offset:1184 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 32, v56
	scratch_store_b32 off, v17, off offset:1188 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0xb0, v56
	scratch_store_b32 off, v17, off offset:1192 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x190, v56
	scratch_store_b32 off, v17, off offset:1196 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 48, v56
	scratch_store_b32 off, v17, off offset:1200 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0xa0, v56
	scratch_store_b32 off, v17, off offset:1204 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x110, v56
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v17, off offset:1208
	scratch_store_b32 off, v56, off offset:748
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 16, v20
	scratch_store_b32 off, v17, off offset:1212 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 32, v20
	scratch_store_b32 off, v17, off offset:1216 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 48, v20
	scratch_store_b32 off, v17, off offset:1220 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 64, v20
	scratch_store_b32 off, v17, off offset:1224 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x50, v20
	scratch_store_b32 off, v17, off offset:1228 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x60, v20
	scratch_store_b32 off, v17, off offset:1232 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x70, v20
	scratch_store_b32 off, v17, off offset:1236 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x80, v20
	scratch_store_b32 off, v17, off offset:1240 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x90, v20
	scratch_store_b32 off, v17, off offset:1244 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0xa0, v20
	scratch_store_b32 off, v17, off offset:1248 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0xb0, v20
	scratch_store_b32 off, v17, off offset:1252 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0xc0, v20
	scratch_store_b32 off, v17, off offset:1256 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0xd0, v20
	scratch_store_b32 off, v17, off offset:1260 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0xe0, v20
	scratch_store_b32 off, v17, off offset:1264 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0xf0, v20
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v17, off offset:1268
	scratch_store_b32 off, v20, off offset:1044
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x90, v57
	scratch_store_b32 off, v17, off offset:1272 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x120, v57
	scratch_store_b32 off, v17, off offset:1276 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x1b0, v57
	scratch_store_b32 off, v17, off offset:1280 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 32, v57
	scratch_store_b32 off, v17, off offset:1284 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0xb0, v57
	scratch_store_b32 off, v17, off offset:1288 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x190, v57
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v17, off offset:1292
	scratch_store_b32 off, v57, off offset:752
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 16, v58
	scratch_store_b32 off, v17, off offset:1296 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v151, 0, v48
	v_xor_b32_e32 v48, 32, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v157, v80 :: v_dual_add_nc_u32 v78, 0, v48
	v_xor_b32_e32 v48, 48, v58
	v_add_nc_u32_e32 v79, 0, v48
	v_xor_b32_e32 v48, 0x110, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x220, v16
	scratch_store_b32 off, v17, off offset:1300 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v17, 0, v48
	v_xor_b32_e32 v48, 0x330, v16
	v_mov_b32_e32 v159, v80
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v17, off offset:1304
	scratch_store_b32 off, v16, off offset:1052
	v_add_nc_u32_e32 v16, 0, v48
	v_mov_b32_e32 v48, v59
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v58, off offset:756
	scratch_store_b32 off, v16, off offset:1308
	scratch_store_b64 off, v[48:49], off offset:760
	v_add_nc_u32_e32 v16, s8, v59
	v_mov_b32_e32 v48, v61
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v16, off offset:1312
	scratch_store_b64 off, v[48:49], off offset:768
	v_add_nc_u32_e32 v16, s9, v59
	scratch_store_b32 off, v16, off offset:1316 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v16, s10, v59
	scratch_store_b32 off, v16, off offset:1320 ; 4-byte Folded Spill
	v_mad_u64_u32 v[16:17], null, s18, 3, v[59:60]
	scratch_store_b64 off, v[16:17], off offset:1324 ; 8-byte Folded Spill
	v_mad_u64_u32 v[16:17], null, s18, 9, v[59:60]
	scratch_store_b64 off, v[16:17], off offset:1332 ; 8-byte Folded Spill
	v_mad_u64_u32 v[16:17], null, s18, 11, v[59:60]
	scratch_store_b64 off, v[16:17], off offset:1340 ; 8-byte Folded Spill
	v_mad_u64_u32 v[16:17], null, s18, 17, v[59:60]
	scratch_store_b64 off, v[16:17], off offset:1348 ; 8-byte Folded Spill
	v_mad_u64_u32 v[16:17], null, s18, 18, v[59:60]
	scratch_store_b64 off, v[16:17], off offset:1356 ; 8-byte Folded Spill
	v_mad_u64_u32 v[16:17], null, s18, 19, v[59:60]
	scratch_store_b64 off, v[16:17], off offset:1364 ; 8-byte Folded Spill
	v_mad_u64_u32 v[16:17], null, s18, 24, v[59:60]
	scratch_store_b64 off, v[16:17], off offset:1372 ; 8-byte Folded Spill
	v_mad_u64_u32 v[16:17], null, s18, 25, v[59:60]
	scratch_store_b64 off, v[16:17], off offset:1380 ; 8-byte Folded Spill
	v_mad_u64_u32 v[16:17], null, s18, 26, v[59:60]
	scratch_store_b64 off, v[16:17], off offset:1388 ; 8-byte Folded Spill
	v_mad_u64_u32 v[16:17], null, s18, 27, v[59:60]
	scratch_store_b64 off, v[16:17], off offset:1396 ; 8-byte Folded Spill
	v_mad_u64_u32 v[16:17], null, s19, 3, v[61:62]
	scratch_store_b64 off, v[16:17], off offset:1404 ; 8-byte Folded Spill
	v_mad_u64_u32 v[16:17], null, s19, 17, v[61:62]
	scratch_store_b64 off, v[16:17], off offset:1412 ; 8-byte Folded Spill
	v_mad_u64_u32 v[16:17], null, s19, 18, v[61:62]
	scratch_store_b64 off, v[16:17], off offset:1420 ; 8-byte Folded Spill
	v_mad_u64_u32 v[16:17], null, s19, 19, v[61:62]
	scratch_store_b64 off, v[16:17], off offset:1428 ; 8-byte Folded Spill
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[48:49], off, off offset:760
	scratch_load_b32 v16, off, off offset:1312
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_or_b32 s0, s56, s34
	s_clause 0x3                            ; 64-byte Folded Spill
	scratch_store_b128 off, v[240:243], off offset:160
	scratch_store_b128 off, v[244:247], off offset:176
	scratch_store_b128 off, v[232:235], off offset:128
	scratch_store_b128 off, v[236:239], off offset:144
	s_mul_i32 s1, s0, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v251, s43 :: v_dual_mov_b32 v248, s40
	v_dual_mov_b32 v246, s38 :: v_dual_mov_b32 v245, s37
	v_mov_b32_e32 v244, s36
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s0, s0, s19
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v250, s42 :: v_dual_mov_b32 v249, s41
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v247, s39 :: v_dual_mov_b32 v56, v48
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v50, s1, v16, 1
	scratch_load_b64 v[16:17], off, off offset:1324 ; 8-byte Folded Reload
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_add_nc_u32_e32 v49, s18, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v49, s1, v49, 1
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	v_add_lshl_u32 v48, s1, v56, 1
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_lshl_add_u32 v56, s18, 4, v56
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v56, s1, v56, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v51, s1, v16, 1
	scratch_load_b32 v16, off, off offset:1316 ; 4-byte Folded Reload
	v_dual_cndmask_b32 v48, 0x80000000, v48 :: v_dual_cndmask_b32 v51, 0x80000000, v51
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v52, s1, v16, 1
	scratch_load_b64 v[16:17], off, off offset:1332 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v53, s1, v16, 1
	scratch_load_b32 v16, off, off offset:1320 ; 4-byte Folded Reload
	v_dual_cndmask_b32 v50, 0x80000000, v50 :: v_dual_cndmask_b32 v53, 0x80000000, v53
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v54, s1, v16, 1
	scratch_load_b64 v[16:17], off, off offset:1340 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v55, s1, v16, 1
	scratch_load_b64 v[16:17], off, off offset:1348 ; 8-byte Folded Reload
	v_dual_cndmask_b32 v52, 0x80000000, v52 :: v_dual_cndmask_b32 v55, 0x80000000, v55
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v57, s1, v16, 1
	scratch_load_b64 v[16:17], off, off offset:1356 ; 8-byte Folded Reload
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_cndmask_b32 v57, 0x80000000, v57
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v58, s1, v16, 1
	scratch_load_b64 v[16:17], off, off offset:1364 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v59, s1, v16, 1
	scratch_load_b64 v[16:17], off, off offset:1372 ; 8-byte Folded Reload
	v_dual_cndmask_b32 v56, 0x80000000, v56 :: v_dual_cndmask_b32 v59, 0x80000000, v59
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v60, s1, v16, 1
	scratch_load_b64 v[16:17], off, off offset:1380 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v61, s1, v16, 1
	scratch_load_b64 v[16:17], off, off offset:1388 ; 8-byte Folded Reload
	v_dual_cndmask_b32 v58, 0x80000000, v58 :: v_dual_cndmask_b32 v61, 0x80000000, v61
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v62, s1, v16, 1
	scratch_load_b64 v[16:17], off, off offset:1396 ; 8-byte Folded Reload
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v63, s1, v16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v63, 0x80000000, v63
	s_clause 0xf
	buffer_load_b128 v[236:239], v48, s[44:47], 0 offen
	buffer_load_b128 v[240:243], v50, s[44:47], 0 offen
	buffer_load_b128 v[114:117], v52, s[44:47], 0 offen
	buffer_load_b128 v[232:235], v54, s[44:47], 0 offen
	buffer_load_b128 v[224:227], v56, s[44:47], 0 offen
	buffer_load_b128 v[110:113], v58, s[44:47], 0 offen
	buffer_load_b128 v[216:219], v60, s[44:47], 0 offen
	buffer_load_b128 v[220:223], v62, s[44:47], 0 offen
	buffer_load_b128 v[101:104], v49, s[44:47], 0 offen
	buffer_load_b128 v[88:91], v57, s[44:47], 0 offen
	buffer_load_b128 v[106:109], v51, s[44:47], 0 offen
	buffer_load_b128 v[74:77], v59, s[44:47], 0 offen
	buffer_load_b128 v[92:95], v53, s[44:47], 0 offen
	buffer_load_b128 v[69:72], v61, s[44:47], 0 offen
	buffer_load_b128 v[97:100], v55, s[44:47], 0 offen
	buffer_load_b128 v[65:68], v63, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:744
	scratch_load_b32 v16, off, off offset:1056
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v48, 0, v48
	ds_store_b128 v48, v[236:239]
	ds_store_b128 v48, v[224:227] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[101:104]
	ds_store_b128 v16, v[88:91] offset:8192
	scratch_load_b32 v16, off, off offset:1060 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[240:243]
	ds_store_b128 v16, v[110:113] offset:8192
	scratch_load_b32 v16, off, off offset:1064 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[106:109]
	ds_store_b128 v16, v[74:77] offset:8192
	scratch_load_b32 v16, off, off offset:1068 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[114:117]
	ds_store_b128 v16, v[216:219] offset:8192
	scratch_load_b32 v16, off, off offset:1072 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[92:95]
	ds_store_b128 v16, v[69:72] offset:8192
	scratch_load_b32 v16, off, off offset:1076 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[232:235]
	ds_store_b128 v16, v[220:223] offset:8192
	scratch_load_b32 v16, off, off offset:1080 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[97:100]
	ds_store_b128 v16, v[65:68] offset:8192
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xe                            ; 204-byte Folded Reload
	scratch_load_b32 v16, off, off offset:1044
	scratch_load_b32 v17, off, off offset:1220
	scratch_load_b32 v18, off, off offset:1224
	scratch_load_b128 v[142:145], off, off offset:232
	scratch_load_b128 v[146:149], off, off offset:248
	scratch_load_b128 v[160:163], off, off offset:424
	scratch_load_b128 v[164:167], off, off offset:440
	scratch_load_b128 v[168:171], off, off offset:488
	scratch_load_b128 v[172:175], off, off offset:504
	scratch_load_b128 v[176:179], off, off offset:552
	scratch_load_b128 v[180:183], off, off offset:568
	scratch_load_b128 v[184:187], off, off offset:616
	scratch_load_b128 v[188:191], off, off offset:632
	scratch_load_b128 v[192:195], off, off offset:680
	scratch_load_b128 v[196:199], off, off offset:696
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v64, 0, v16
	scratch_load_b32 v16, off, off offset:1216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(14)
	ds_load_b128 v[56:59], v17
	s_waitcnt vmcnt(13)
	ds_load_b128 v[60:63], v18
	ds_load_b128 v[118:121], v64 offset:256
	s_waitcnt vmcnt(0)
	ds_load_b128 v[122:125], v16 offset:256
	ds_load_b128 v[126:129], v17 offset:256
	ds_load_b128 v[130:133], v18 offset:256
	ds_load_b128 v[48:51], v64
	ds_load_b128 v[52:55], v16
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:1232
	scratch_load_b32 v16, off, off offset:1228
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[134:141], v[142:149], v[48:55], v[244:251]
	s_clause 0x3                            ; 64-byte Folded Reload
	scratch_load_b128 v[48:51], off, off offset:296
	scratch_load_b128 v[52:55], off, off offset:312
	scratch_load_b128 v[142:145], off, off offset:360
	scratch_load_b128 v[146:149], off, off offset:376
	s_waitcnt vmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[134:141], v[48:55], v[56:63], v[134:141]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[52:55], v17
	ds_load_b128 v[48:51], v16
	ds_load_b128 v[56:59], v16 offset:256
	ds_load_b128 v[60:63], v17 offset:256
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:1240
	scratch_load_b32 v16, off, off offset:1236
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[134:141], v[142:149], v[48:55], v[134:141]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[48:51], v16
	ds_load_b128 v[142:145], v16 offset:256
	ds_load_b128 v[146:149], v17 offset:256
	ds_load_b128 v[52:55], v17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:1248
	scratch_load_b32 v16, off, off offset:1244
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[134:141], v[160:167], v[48:55], v[134:141]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[48:51], v16
	ds_load_b128 v[160:163], v16 offset:256
	ds_load_b128 v[164:167], v17 offset:256
	ds_load_b128 v[52:55], v17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:1256
	scratch_load_b32 v16, off, off offset:1252
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[134:141], v[168:175], v[48:55], v[134:141]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[48:51], v16
	ds_load_b128 v[168:171], v16 offset:256
	ds_load_b128 v[172:175], v17 offset:256
	ds_load_b128 v[52:55], v17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:1264
	scratch_load_b32 v16, off, off offset:1260
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[134:141], v[176:183], v[48:55], v[134:141]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[48:51], v16
	ds_load_b128 v[176:179], v16 offset:256
	ds_load_b128 v[180:183], v17 offset:256
	ds_load_b128 v[52:55], v17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:1272
	scratch_load_b32 v16, off, off offset:1268
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[134:141], v[184:191], v[48:55], v[134:141]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[48:51], v16
	ds_load_b128 v[184:187], v16 offset:256
	ds_load_b128 v[188:191], v17 offset:256
	ds_load_b128 v[52:55], v17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:224
	scratch_load_b32 v17, off, off offset:228
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[134:141], v[192:199], v[48:55], v[134:141]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[48:51], off, off offset:264
	scratch_load_b128 v[52:55], off, off offset:280
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[134:141], v[48:55], v[118:125], v[134:141]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[48:51], off, off offset:328
	scratch_load_b128 v[52:55], off, off offset:344
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[134:141], v[48:55], v[126:133], v[134:141]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[48:51], off, off offset:392
	scratch_load_b128 v[52:55], off, off offset:408
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[134:141], v[48:55], v[56:63], v[134:141]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[48:51], off, off offset:456
	scratch_load_b128 v[52:55], off, off offset:472
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[134:141], v[48:55], v[142:149], v[134:141]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[48:51], off, off offset:520
	scratch_load_b128 v[52:55], off, off offset:536
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[134:141], v[48:55], v[160:167], v[134:141]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[48:51], off, off offset:584
	scratch_load_b128 v[52:55], off, off offset:600
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[134:141], v[48:55], v[168:175], v[134:141]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[48:51], off, off offset:648
	scratch_load_b128 v[52:55], off, off offset:664
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[134:141], v[48:55], v[176:183], v[134:141]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[48:51], off, off offset:712
	scratch_load_b128 v[52:55], off, off offset:728
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[134:141], v[48:55], v[184:191], v[134:141]
	v_or3_b32 v48, s34, v17, v16
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b64 v[16:17], off, off offset:1404 ; 8-byte Folded Reload
	.loc	1 699 33                        ; attention_backward.py:699:33
	v_or_b32_e32 v48, s56, v48
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 699 25 is_stmt 0              ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v48, 2, v48
	buffer_load_b32 v49, v48, s[28:31], 0 offen
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v52, s0, v16, 1
	scratch_load_b64 v[16:17], off, off offset:1412 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v52, 0x80000000, v52, s2
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(1)
	v_fma_f32 v64, s57, v134, -v49
	v_fma_f32 v73, s57, v135, -v49
	v_fma_f32 v96, s57, v136, -v49
	v_fma_f32 v105, s57, v137, -v49
	v_fma_f32 v120, s57, v138, -v49
	v_fma_f32 v252, s57, v139, -v49
	v_fma_f32 v253, s57, v140, -v49
	v_fma_f32 v254, s57, v141, -v49
	scratch_load_b64 v[49:50], off, off offset:768 ; 8-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v54, s0, v16, 1
	scratch_load_b64 v[16:17], off, off offset:1420 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v54, 0x80000000, v54, s2
	s_waitcnt vmcnt(1)
	v_mov_b32_e32 v53, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_lshl_add_u32 v51, s19, 1, v53
	v_add_nc_u32_e32 v50, s19, v53
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v49, s0, v53, 1
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_lshl_add_u32 v53, s19, 4, v53
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v51, s0, v51, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_lshl_u32 v50, s0, v50, 1
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_lshl_u32 v53, s0, v53, 1
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	v_cndmask_b32_e64 v53, 0x80000000, v53, s2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v55, s0, v16, 1
	scratch_load_b64 v[16:17], off, off offset:1428 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v55, 0x80000000, v55, s2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v56, s0, v16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v56, 0x80000000, v56, s2
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v118, v48, s[52:55], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[184:187], v51, s[20:23], 0 offen
	buffer_load_b128 v[188:191], v52, s[20:23], 0 offen
	buffer_load_b128 v[200:203], v49, s[20:23], 0 offen
	buffer_load_b128 v[204:207], v50, s[20:23], 0 offen
	buffer_load_b128 v[192:195], v55, s[20:23], 0 offen
	buffer_load_b128 v[196:199], v56, s[20:23], 0 offen
	buffer_load_b128 v[208:211], v53, s[20:23], 0 offen
	buffer_load_b128 v[212:215], v54, s[20:23], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v52, off, off offset:752
	scratch_load_b32 v16, off, off offset:1276
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v49.l, v184.l
	v_mov_b16_e64 v51.l, v184.h
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v49.h, v188.l
	v_mov_b16_e64 v51.h, v188.h
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v48.l, v200.l
	v_mov_b16_e64 v50.l, v200.h
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v48.h, v204.l
	v_mov_b16_e64 v50.h, v204.h
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v52, 0, v52
	ds_store_2addr_b64 v52, v[48:49], v[50:51] offset1:8
	v_mov_b16_e64 v49.l, v185.l
	v_mov_b16_e64 v49.h, v189.l
	v_mov_b16_e64 v48.l, v201.l
	v_mov_b16_e64 v48.h, v205.l
	v_mov_b16_e64 v51.l, v185.h
	v_mov_b16_e64 v51.h, v189.h
	v_mov_b16_e64 v50.l, v201.h
	v_mov_b16_e64 v50.h, v205.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v16, v[48:49], v[50:51] offset1:8
	scratch_load_b32 v16, off, off offset:1280 ; 4-byte Folded Reload
	v_mov_b16_e64 v49.l, v186.l
	v_mov_b16_e64 v49.h, v190.l
	v_mov_b16_e64 v48.l, v202.l
	v_mov_b16_e64 v48.h, v206.l
	v_mov_b16_e64 v51.l, v186.h
	v_mov_b16_e64 v51.h, v190.h
	v_mov_b16_e64 v50.l, v202.h
	v_mov_b16_e64 v50.h, v206.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v16, v[48:49], v[50:51] offset1:8
	scratch_load_b32 v16, off, off offset:1284 ; 4-byte Folded Reload
	v_mov_b16_e64 v49.l, v187.l
	v_mov_b16_e64 v49.h, v191.l
	v_mov_b16_e64 v48.l, v203.l
	v_mov_b16_e64 v48.h, v207.l
	v_mov_b16_e64 v51.l, v187.h
	v_mov_b16_e64 v51.h, v191.h
	v_mov_b16_e64 v50.l, v203.h
	v_mov_b16_e64 v50.h, v207.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v16, v[48:49], v[50:51] offset1:8
	scratch_load_b32 v16, off, off offset:1288 ; 4-byte Folded Reload
	v_mov_b16_e64 v49.l, v192.l
	v_mov_b16_e64 v49.h, v196.l
	v_mov_b16_e64 v48.l, v208.l
	v_mov_b16_e64 v48.h, v212.l
	v_mov_b16_e64 v51.l, v192.h
	v_mov_b16_e64 v51.h, v196.h
	v_mov_b16_e64 v50.l, v208.h
	v_mov_b16_e64 v50.h, v212.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v16, v[48:49], v[50:51] offset1:8
	scratch_load_b32 v16, off, off offset:1292 ; 4-byte Folded Reload
	v_mov_b16_e64 v49.l, v193.l
	v_mov_b16_e64 v49.h, v197.l
	v_mov_b16_e64 v48.l, v209.l
	v_mov_b16_e64 v48.h, v213.l
	v_mov_b16_e64 v51.l, v193.h
	v_mov_b16_e64 v51.h, v197.h
	v_mov_b16_e64 v50.l, v209.h
	v_mov_b16_e64 v50.h, v213.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v16, v[48:49], v[50:51] offset1:8
	scratch_load_b32 v16, off, off offset:1296 ; 4-byte Folded Reload
	v_mov_b16_e64 v49.l, v194.l
	v_mov_b16_e64 v49.h, v198.l
	v_mov_b16_e64 v48.l, v210.l
	v_mov_b16_e64 v48.h, v214.l
	v_mov_b16_e64 v51.l, v194.h
	v_mov_b16_e64 v51.h, v198.h
	v_mov_b16_e64 v50.l, v210.h
	v_mov_b16_e64 v50.h, v214.h
	ds_store_2addr_b64 v52, v[48:49], v[50:51] offset0:32 offset1:40
	v_mov_b16_e64 v49.l, v195.l
	v_mov_b16_e64 v49.h, v199.l
	v_mov_b16_e64 v48.l, v211.l
	v_mov_b16_e64 v48.h, v215.l
	v_mov_b16_e64 v51.l, v195.h
	v_mov_b16_e64 v51.h, v199.h
	v_mov_b16_e64 v50.l, v211.h
	v_mov_b16_e64 v50.h, v215.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v16, v[48:49], v[50:51] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v48, off, off offset:756 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v121, 0, v48
	ds_load_b128 v[180:183], v121
	ds_load_b128 v[172:175], v121 offset:2048
	ds_load_b128 v[164:167], v121 offset:4096
	ds_load_b128 v[146:149], v121 offset:6144
	ds_load_b128 v[176:179], v151
	ds_load_b128 v[168:171], v151 offset:2048
	ds_load_b128 v[160:163], v151 offset:4096
	ds_load_b128 v[142:145], v151 offset:6144
	ds_load_b128 v[138:141], v78
	ds_load_b128 v[130:133], v78 offset:2048
	ds_load_b128 v[228:231], v78 offset:4096
	ds_load_b128 v[16:19], v78 offset:6144
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[16:19], off offset:208 ; 16-byte Folded Spill
	ds_load_b128 v[134:137], v79
	ds_load_b128 v[126:129], v79 offset:2048
	ds_load_b128 v[122:125], v79 offset:4096
	ds_load_b128 v[16:19], v79 offset:6144
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[16:19], off offset:192 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v16, off, off offset:1052 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, 0, v16
	scratch_load_b32 v16, off, off offset:1300 ; 4-byte Folded Reload
	ds_store_b128 v48, v[200:203]
	ds_store_b128 v48, v[208:211] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[204:207]
	ds_store_b128 v16, v[212:215] offset:4096
	scratch_load_b32 v16, off, off offset:1304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[184:187]
	ds_store_b128 v16, v[192:195] offset:4096
	scratch_load_b32 v16, off, off offset:1308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[188:191]
	ds_store_b128 v16, v[196:199] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v16, off, off offset:1036 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, 0, v16
	scratch_load_b32 v16, off, off offset:1084 ; 4-byte Folded Reload
	ds_load_b128 v[48:51], v48
	s_waitcnt vmcnt(0)
	ds_load_b128 v[52:55], v16
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[16:19], off, off offset:776
	scratch_load_b128 v[20:23], off, off offset:792
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[56:63], v[16:23], v[48:55], v[244:251]
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v16, off, off offset:1088 ; 4-byte Folded Reload
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e64 v244.h, v101.l
	v_mov_b16_e64 v101.l, v236.h
	v_mov_b16_e64 v245.l, v240.l
	v_mov_b16_e64 v245.h, v106.l
	v_mov_b16_e64 v244.l, v236.l
	v_mov_b16_e64 v106.l, v240.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	ds_load_b128 v[48:51], v16
	scratch_load_b32 v16, off, off offset:1092 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[52:55], v16
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[16:19], off, off offset:808
	scratch_load_b128 v[20:23], off, off offset:824
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[56:63], v[16:23], v[48:55], v[56:63]
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v16, off, off offset:1096 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[48:51], v16
	scratch_load_b32 v16, off, off offset:1100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[52:55], v16
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[16:19], off, off offset:840
	scratch_load_b128 v[20:23], off, off offset:856
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[56:63], v[16:23], v[48:55], v[56:63]
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v16, off, off offset:1104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[48:51], v16
	scratch_load_b32 v16, off, off offset:1108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[52:55], v16
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[16:19], off, off offset:872
	scratch_load_b128 v[20:23], off, off offset:888
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[56:63], v[16:23], v[48:55], v[56:63]
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v16, off, off offset:1112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[48:51], v16
	scratch_load_b32 v16, off, off offset:1116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[52:55], v16
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[16:19], off, off offset:904
	scratch_load_b128 v[20:23], off, off offset:920
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[56:63], v[16:23], v[48:55], v[56:63]
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v16, off, off offset:1120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[48:51], v16
	scratch_load_b32 v16, off, off offset:1124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[52:55], v16
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[16:19], off, off offset:936
	scratch_load_b128 v[20:23], off, off offset:952
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[56:63], v[16:23], v[48:55], v[56:63]
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v16, off, off offset:1128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[48:51], v16
	scratch_load_b32 v16, off, off offset:1132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[52:55], v16
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[16:19], off, off offset:968
	scratch_load_b128 v[20:23], off, off offset:984
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[56:63], v[16:23], v[48:55], v[56:63]
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v16, off, off offset:1136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[48:51], v16
	scratch_load_b32 v16, off, off offset:1140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[52:55], v16
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[16:19], off, off offset:1000
	scratch_load_b128 v[20:23], off, off offset:1016
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v248, off, off offset:1144
	scratch_load_b32 v249, off, off offset:1148
	scratch_load_b32 v250, off, off offset:1152
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[56:63], v[16:23], v[48:55], v[56:63]
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v16, off, off offset:1040 ; 4-byte Folded Reload
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v48, v56, v118
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v56, v64
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v49, v57, v118
	v_sub_f32_e32 v51, v59, v118
	v_sub_f32_e32 v50, v58, v118
	v_sub_f32_e32 v52, v60, v118
	v_sub_f32_e32 v53, v61, v118
	v_sub_f32_e32 v54, v62, v118
	v_sub_f32_e32 v55, v63, v118
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v118, 0, v56, s3
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v48, v118, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v48, s51, v48
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v56, v48, 16, 1
	v_cmp_o_f32_e64 s0, v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v48, v48, v56, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v56, v73
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s0, v118, v118
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v119, 0, v56, s3
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v49, v119, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v49, s51, v49
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v56, v49, 16, 1
	v_cmp_o_f32_e64 s1, v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v49, v49, v56, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v56, v96
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v255, 0, v56, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v50, v255, v50
	.loc	1 721 38                        ; attention_backward.py:721:38
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v50, s51, v50 :: v_dual_add_nc_u32 v27, 0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v56, v50, 16, 1
	v_cmp_o_f32_e64 s4, v50, v50
	v_add3_u32 v50, v50, v56, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v56, v105
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b32_e32 v105, v101
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v24, 0, v56, s3
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v51, v24, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v51, s51, v51
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v56, v51, 16, 1
	v_cmp_o_f32_e64 s5, v51, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v51, v51, v56, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v56, v120
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v120, 0, v56, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v52, v120, v52
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v52, s51, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v56, v52, 16, 1
	v_cmp_o_f32_e64 s6, v52, v52
	v_add3_u32 v52, v52, v56, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v56, v252
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v48.h, 0x7fff, v52.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v27, v48
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v48.l, 0x7fff, v49.h, s1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s6, v120, v120
	v_cmp_o_f32_e64 s1, v119, v119
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v27, v48 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v251, 0, v56, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v53, v251, v53
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v53, s51, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v56, v53, 16, 1
	v_cmp_o_f32_e64 s7, v53, v53
	v_add3_u32 v53, v53, v56, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v56, v253
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v48.h, 0x7fff, v53.h, s7
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v248, v48
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v48.l, 0x7fff, v50.h, s4
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v251, v251
	v_cmp_o_f32_e64 s4, v255, v255
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v248, v48 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v25, 0, v56, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v54, v25, v54
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v54, s51, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v56, v54, 16, 1
	v_cmp_o_f32_e64 s8, v54, v54
	v_add3_u32 v54, v54, v56, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v56, v254
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v48.h, 0x7fff, v54.h, s8
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v249, v48
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v48.l, 0x7fff, v51.h, s5
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s5, v24, v24
	v_cmp_o_f32_e64 s8, v25, v25
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v249, v48 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v26, 0, v56, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v55, v26, v55
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v55, s51, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v56, v55, 16, 1
	v_cmp_o_f32_e64 s9, v55, v55
	v_add3_u32 v55, v55, v56, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v48.h, 0x7fff, v55.h, s9
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s9, v26, v26
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v250, v48
	ds_store_b16_d16_hi v250, v48 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v16, off, off offset:1048
	scratch_load_b32 v254, off, off offset:1156
	scratch_load_b32 v252, off, off offset:1160
	scratch_load_b32 v253, off, off offset:1164
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v101, 0, v16
	s_waitcnt vmcnt(2)
	ds_load_b128 v[60:63], v254
	s_waitcnt vmcnt(1)
	ds_load_b128 v[48:51], v252
	s_waitcnt vmcnt(0)
	ds_load_b128 v[52:55], v253
	ds_load_b128 v[56:59], v101
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v64, off, off offset:748
	scratch_load_b32 v16, off, off offset:1168
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v236, 0, v64
	ds_store_2addr_b64 v236, v[244:245], v[105:106] offset1:8
	v_mov_b16_e64 v244.h, v102.l
	v_mov_b16_e64 v102.l, v237.h
	v_mov_b16_e64 v245.l, v241.l
	v_mov_b16_e64 v245.h, v107.l
	v_mov_b16_e64 v244.l, v237.l
	v_mov_b16_e64 v107.l, v241.h
	v_mov_b16_e32 v105.h, v103.l
	v_mov_b16_e64 v103.l, v238.h
	v_mov_b16_e64 v105.l, v238.l
	v_mov_b32_e32 v106, v102
	v_mov_b16_e64 v102.l, v239.l
	v_mov_b16_e32 v102.h, v104.l
	v_mov_b16_e64 v104.l, v239.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v16, v[244:245], v[106:107] offset1:8
	scratch_load_b32 v16, off, off offset:1172 ; 4-byte Folded Reload
	v_mov_b16_e64 v106.l, v242.l
	v_mov_b16_e32 v106.h, v108.l
	v_mov_b16_e64 v108.l, v242.h
	v_mov_b32_e32 v107, v103
	v_mov_b16_e32 v103.h, v109.l
	v_mov_b16_e64 v109.l, v243.h
	v_mov_b16_e64 v103.l, v243.l
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[240:243], off, off offset:160
	scratch_load_b128 v[244:247], off, off offset:176
	s_waitcnt vmcnt(2)
	ds_store_2addr_b64 v16, v[105:106], v[107:108] offset1:8
	scratch_load_b32 v16, off, off offset:1176 ; 4-byte Folded Reload
	v_mov_b32_e32 v105, v109
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v16, v[102:103], v[104:105] offset1:8
	scratch_load_b32 v16, off, off offset:1180 ; 4-byte Folded Reload
	v_mov_b16_e32 v102.h, v92.l
	v_mov_b16_e32 v92.l, v114.h
	v_mov_b16_e64 v103.l, v232.l
	v_mov_b16_e32 v103.h, v97.l
	v_mov_b16_e32 v102.l, v114.l
	v_mov_b16_e64 v97.l, v232.h
	v_mov_b32_e32 v96, v92
	v_mov_b16_e32 v92.h, v94.l
	v_mov_b16_e32 v94.l, v116.h
	v_mov_b16_e32 v92.l, v116.l
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v16, v[102:103], v[96:97] offset1:8
	scratch_load_b32 v16, off, off offset:1184 ; 4-byte Folded Reload
	v_mov_b16_e32 v102.h, v93.l
	v_mov_b16_e32 v93.l, v115.h
	v_mov_b16_e64 v103.l, v233.l
	v_mov_b16_e32 v103.h, v98.l
	v_mov_b16_e32 v102.l, v115.l
	v_mov_b16_e64 v98.l, v233.h
	v_mov_b32_e32 v97, v93
	v_mov_b16_e64 v93.l, v234.l
	v_mov_b16_e32 v93.h, v99.l
	v_mov_b16_e64 v99.l, v234.h
	ds_store_2addr_b64 v236, v[102:103], v[97:98] offset0:16 offset1:24
	v_mov_b32_e32 v98, v94
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v16, v[92:93], v[98:99] offset1:8
	scratch_load_b32 v16, off, off offset:1188 ; 4-byte Folded Reload
	v_mov_b16_e32 v93.h, v100.l
	v_mov_b16_e64 v100.l, v235.h
	v_mov_b16_e64 v93.l, v235.l
	v_mov_b16_e32 v92.l, v117.l
	v_mov_b16_e32 v92.h, v95.l
	v_mov_b16_e32 v95.l, v117.h
	v_mov_b32_e32 v96, v100
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v16, v[92:93], v[95:96] offset1:8
	scratch_load_b32 v16, off, off offset:1192 ; 4-byte Folded Reload
	v_mov_b16_e32 v92.h, v88.l
	v_mov_b16_e64 v88.l, v224.h
	v_mov_b16_e32 v93.l, v110.l
	v_mov_b16_e32 v93.h, v74.l
	v_mov_b16_e64 v92.l, v224.l
	v_mov_b16_e32 v74.l, v110.h
	v_mov_b32_e32 v73, v88
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v16, v[92:93], v[73:74] offset1:8
	scratch_load_b32 v16, off, off offset:1196 ; 4-byte Folded Reload
	v_mov_b16_e32 v92.h, v89.l
	v_mov_b16_e64 v89.l, v225.h
	v_mov_b16_e32 v93.l, v111.l
	v_mov_b16_e32 v93.h, v75.l
	v_mov_b16_e64 v92.l, v225.l
	v_mov_b16_e32 v75.l, v111.h
	v_mov_b16_e32 v73.h, v90.l
	v_mov_b16_e64 v90.l, v226.h
	v_mov_b16_e64 v73.l, v226.l
	v_mov_b32_e32 v74, v89
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v16, v[92:93], v[74:75] offset1:8
	scratch_load_b32 v16, off, off offset:1200 ; 4-byte Folded Reload
	v_mov_b16_e32 v74.l, v112.l
	v_mov_b16_e32 v74.h, v76.l
	v_mov_b16_e32 v76.l, v112.h
	v_mov_b32_e32 v75, v90
	ds_store_2addr_b64 v236, v[73:74], v[75:76] offset0:32 offset1:40
	v_mov_b16_e32 v74.h, v77.l
	v_mov_b16_e32 v77.l, v113.h
	v_mov_b16_e32 v74.l, v113.l
	v_mov_b16_e64 v73.l, v227.l
	v_mov_b16_e32 v73.h, v91.l
	v_mov_b16_e64 v91.l, v227.h
	v_mov_b32_e32 v92, v77
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v16, v[73:74], v[91:92] offset1:8
	scratch_load_b32 v16, off, off offset:1204 ; 4-byte Folded Reload
	v_mov_b16_e32 v73.h, v69.l
	v_mov_b16_e64 v69.l, v216.h
	v_mov_b16_e64 v74.l, v220.l
	v_mov_b16_e32 v74.h, v65.l
	v_mov_b16_e64 v73.l, v216.l
	v_mov_b16_e64 v65.l, v220.h
	v_mov_b32_e32 v64, v69
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v16, v[73:74], v[64:65] offset1:8
	scratch_load_b32 v16, off, off offset:1208 ; 4-byte Folded Reload
	v_mov_b16_e32 v73.h, v70.l
	v_mov_b16_e64 v70.l, v217.h
	v_mov_b16_e64 v74.l, v221.l
	v_mov_b16_e32 v74.h, v66.l
	v_mov_b16_e64 v73.l, v217.l
	v_mov_b16_e64 v66.l, v221.h
	v_mov_b16_e32 v64.h, v71.l
	v_mov_b16_e64 v71.l, v218.h
	v_mov_b16_e64 v64.l, v218.l
	v_mov_b32_e32 v65, v70
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v16, v[73:74], v[65:66] offset1:8
	scratch_load_b32 v16, off, off offset:1212 ; 4-byte Folded Reload
	v_mov_b16_e64 v65.l, v222.l
	v_mov_b16_e32 v65.h, v67.l
	v_mov_b16_e64 v67.l, v222.h
	v_mov_b32_e32 v66, v71
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v16, v[64:65], v[66:67] offset1:8
	v_mov_b16_e32 v65.h, v68.l
	v_mov_b16_e64 v68.l, v223.h
	v_mov_b16_e64 v65.l, v223.l
	v_mov_b16_e64 v64.l, v219.l
	v_mov_b16_e32 v64.h, v72.l
	v_mov_b16_e64 v72.l, v219.h
	v_mov_b32_e32 v73, v68
	ds_store_2addr_b64 v236, v[64:65], v[72:73] offset0:48 offset1:56
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[232:235], off, off offset:128
	scratch_load_b128 v[236:239], off, off offset:144
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x7                            ; 128-byte Folded Reload
	scratch_load_b128 v[216:219], off, off offset:96
	scratch_load_b128 v[220:223], off, off offset:112
	scratch_load_b128 v[110:113], off, off offset:64
	scratch_load_b128 v[114:117], off, off offset:80
	scratch_load_b128 v[102:105], off, off offset:32
	scratch_load_b128 v[106:109], off, off offset:48
	scratch_load_b128 v[16:19], off, off
	scratch_load_b128 v[20:23], off, off offset:16
	ds_load_b128 v[68:71], v151
	ds_load_b128 v[64:67], v121
	ds_load_b128 v[88:91], v121 offset:2048
	ds_load_b128 v[92:95], v151 offset:2048
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[40:47], v[64:71], v[56:63], v[40:47]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[32:39], v[88:95], v[56:63], v[32:39]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[68:71], v151 offset:4096
	ds_load_b128 v[64:67], v121 offset:4096
	ds_load_b128 v[88:91], v121 offset:6144
	ds_load_b128 v[92:95], v151 offset:6144
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(6) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[64:71], v[56:63], v[216:223]
	s_waitcnt vmcnt(4) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[110:117], v[88:95], v[56:63], v[110:117]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[68:71], v151 offset:8192
	ds_load_b128 v[64:67], v121 offset:8192
	ds_load_b128 v[88:91], v121 offset:10240
	ds_load_b128 v[92:95], v151 offset:10240
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(2) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[102:109], v[64:71], v[56:63], v[102:109]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[88:95], v[56:63], v[16:23]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[68:71], v151 offset:12288
	ds_load_b128 v[64:67], v121 offset:12288
	ds_load_b128 v[88:91], v121 offset:14336
	ds_load_b128 v[92:95], v151 offset:14336
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[240:247], v[64:71], v[56:63], v[240:247]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[232:239], v[88:95], v[56:63], v[232:239]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[60:63], v79
	ds_load_b128 v[56:59], v78
	ds_load_b128 v[64:67], v78 offset:2048
	ds_load_b128 v[68:71], v79 offset:2048
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[40:47], v[56:63], v[48:55], v[40:47]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[32:39], v[64:71], v[48:55], v[32:39]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[60:63], v79 offset:4096
	ds_load_b128 v[56:59], v78 offset:4096
	ds_load_b128 v[64:67], v78 offset:6144
	ds_load_b128 v[68:71], v79 offset:6144
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[56:63], v[48:55], v[216:223]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[216:219], off offset:96
	scratch_store_b128 off, v[220:223], off offset:112
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[110:117], v[64:71], v[48:55], v[110:117]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[60:63], v79 offset:8192
	ds_load_b128 v[56:59], v78 offset:8192
	ds_load_b128 v[64:67], v78 offset:10240
	ds_load_b128 v[68:71], v79 offset:10240
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[110:113], off offset:64
	scratch_store_b128 off, v[114:117], off offset:80
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[102:109], v[56:63], v[48:55], v[102:109]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[102:105], off offset:32
	scratch_store_b128 off, v[106:109], off offset:48
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[64:71], v[48:55], v[16:23]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[60:63], v79 offset:12288
	ds_load_b128 v[56:59], v78 offset:12288
	ds_load_b128 v[64:67], v78 offset:14336
	ds_load_b128 v[68:71], v79 offset:14336
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[16:19], off
	scratch_store_b128 off, v[20:23], off offset:16
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[240:247], v[56:63], v[48:55], v[240:247]
	v_wmma_f32_16x16x16_bf16 v[232:239], v[64:71], v[48:55], v[232:239]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v48, v118, 16, 1
	v_bfe_u32 v52, v120, 16, 1
	v_bfe_u32 v49, v119, 16, 1
	v_bfe_u32 v53, v251, 16, 1
	v_bfe_u32 v50, v255, 16, 1
	v_bfe_u32 v51, v24, 16, 1
	v_bfe_u32 v54, v25, 16, 1
	v_bfe_u32 v55, v26, 16, 1
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v64.l, 0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v48, v118, v48, 0x7fff
	v_add3_u32 v52, v120, v52, 0x7fff
	v_add3_u32 v49, v119, v49, 0x7fff
	v_add3_u32 v53, v251, v53, 0x7fff
	v_add3_u32 v50, v255, v50, 0x7fff
	v_add3_u32 v51, v24, v51, 0x7fff
	v_add3_u32 v54, v25, v54, 0x7fff
	v_add3_u32 v55, v26, v55, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v71.l, v64.l
	v_mov_b16_e32 v70.l, v64.l
	v_mov_b16_e32 v69.l, v64.l
	v_mov_b16_e32 v67.l, v64.l
	v_mov_b16_e32 v68.l, v64.l
	v_mov_b16_e32 v66.l, v64.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v64.h, 0x7fff, v48.h, s0
	v_cndmask_b16 v71.h, 0x7fff, v52.h, s6
	v_cndmask_b16 v70.h, 0x7fff, v49.h, s1
	v_cndmask_b16 v68.h, 0x7fff, v53.h, s7
	v_cndmask_b16 v69.h, 0x7fff, v50.h, s4
	v_cndmask_b16 v67.h, 0x7fff, v51.h, s5
	v_cndmask_b16 v66.h, 0x7fff, v54.h, s8
	v_cndmask_b16 v65.h, 0x7fff, v55.h, s9
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v27, v64
	ds_store_b16_d16_hi v27, v71 offset:512
	ds_store_b16_d16_hi v248, v70
	ds_store_b16_d16_hi v248, v68 offset:512
	ds_store_b16_d16_hi v249, v69
	ds_store_b16_d16_hi v249, v66 offset:512
	ds_store_b16_d16_hi v250, v67
	ds_store_b16_d16_hi v250, v65 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[56:59], v101
	ds_load_b128 v[60:63], v254
	ds_load_b128 v[48:51], v252
	ds_load_b128 v[52:55], v253
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v16, off, off offset:1032 ; 4-byte Folded Reload
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v71, v120, v71 :: v_dual_sub_f32 v70, v119, v70
	v_sub_f32_e32 v69, v255, v69
	v_dual_sub_f32 v67, v24, v67 :: v_dual_sub_f32 v68, v251, v68
	v_sub_f32_e32 v66, v25, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v71, v71
	v_cmp_o_f32_e64 s4, v70, v70
	v_cmp_o_f32_e64 s5, v66, v66
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v72, 0, v16
	ds_store_b128 v72, v[200:203]
	ds_store_b128 v72, v[204:207] offset:256
	ds_store_b128 v72, v[184:187] offset:512
	ds_store_b128 v72, v[188:191] offset:768
	ds_store_b128 v72, v[208:211] offset:4096
	ds_store_b128 v72, v[212:215] offset:4352
	ds_store_b128 v72, v[192:195] offset:4608
	ds_store_b128 v72, v[196:199] offset:4864
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v72, v118, v64
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v73, v72, 16, 1
	v_cmp_o_f32_e64 s0, v72, v72
	v_add3_u32 v72, v72, v73, 0x7fff
	v_bfe_u32 v73, v71, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v64.h, 0x7fff, v72.h, s0
	v_add3_u32 v71, v71, v73, 0x7fff
	v_bfe_u32 v73, v70, 16, 1
	v_cmp_o_f32_e64 s0, v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v65.l, 0x7fff, v71.h, s1
	v_add3_u32 v96, v70, v73, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_u16_d16 v73, v150 offset:1536
	ds_load_u16_d16 v71, v150 offset:512
	ds_load_u16_d16 v90, v150 offset:1152
	ds_load_u16_d16 v91, v150 offset:1664
	ds_load_u16_d16 v72, v150 offset:1024
	ds_load_u16_d16 v104, v150 offset:1216
	ds_load_u16_d16 v103, v150 offset:704
	ds_load_u16_d16 v111, v150 offset:576
	ds_load_u16_d16 v112, v150 offset:1088
	ds_load_u16_d16 v74, v150 offset:2048
	ds_load_u16_d16 v92, v150 offset:2176
	ds_load_u16_d16 v113, v150 offset:1600
	ds_load_u16_d16 v105, v150 offset:1728
	ds_load_u16_d16 v75, v150 offset:2560
	ds_load_u16_d16 v114, v150 offset:2112
	ds_load_u16_d16 v93, v150 offset:2688
	ds_load_u16_d16 v106, v150 offset:2240
	ds_load_u16_d16 v76, v150 offset:3072
	ds_load_u16_d16 v115, v150 offset:2624
	ds_load_u16_d16 v94, v150 offset:3200
	ds_load_u16_d16 v107, v150 offset:2752
	ds_load_u16_d16 v77, v150 offset:3584
	ds_load_u16_d16 v116, v150 offset:3136
	ds_load_u16_d16 v95, v150 offset:3712
	ds_load_u16_d16 v108, v150 offset:3264
	ds_load_u16_d16 v186, v150 offset:5120
	ds_load_u16_d16 v184, v150 offset:4096
	ds_load_u16_d16 v117, v150 offset:3648
	ds_load_u16_d16 v109, v150 offset:3776
	ds_load_u16_d16 v192, v150 offset:4224
	ds_load_u16_d16 v194, v150 offset:5248
	ds_load_u16_d16 v201, v150 offset:4672
	ds_load_u16_d16 v200, v150 offset:4160
	ds_load_u16_d16 v185, v150 offset:4608
	ds_load_u16_d16 v193, v150 offset:4736
	ds_load_u16_d16 v208, v150 offset:4288
	ds_load_u16_d16 v209, v150 offset:4800
	ds_load_u16_d16 v187, v150 offset:5632
	ds_load_u16_d16 v202, v150 offset:5184
	ds_load_u16_d16 v195, v150 offset:5760
	ds_load_u16_d16 v210, v150 offset:5312
	ds_load_u16_d16 v188, v150 offset:6144
	ds_load_u16_d16 v203, v150 offset:5696
	ds_load_u16_d16 v196, v150 offset:6272
	ds_load_u16_d16 v211, v150 offset:5824
	ds_load_u16_d16 v189, v150 offset:6656
	ds_load_u16_d16 v204, v150 offset:6208
	ds_load_u16_d16 v197, v150 offset:6784
	ds_load_u16_d16 v212, v150 offset:6336
	ds_load_u16_d16 v190, v150 offset:7168
	ds_load_u16_d16 v205, v150 offset:6720
	ds_load_u16_d16 v198, v150 offset:7296
	ds_load_u16_d16 v213, v150 offset:6848
	ds_load_u16_d16 v191, v150 offset:7680
	ds_load_u16_d16 v206, v150 offset:7232
	ds_load_u16_d16 v199, v150 offset:7808
	ds_load_u16_d16 v214, v150 offset:7360
	ds_load_u16_d16 v207, v150 offset:7744
	ds_load_u16_d16 v215, v150 offset:7872
	ds_load_u16_d16 v70, v150
	ds_load_u16_d16 v110, v150 offset:64
	ds_load_u16_d16 v88, v150 offset:128
	ds_load_u16_d16 v89, v150 offset:640
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v67, v67
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(56)
	ds_load_u16_d16_hi v103, v150 offset:960
	ds_load_u16_d16 v102, v150 offset:192
	ds_load_u16_d16_hi v71, v150 offset:768
	ds_load_u16_d16_hi v72, v150 offset:1280
	ds_load_u16_d16_hi v90, v150 offset:1408
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v192, v150 offset:4480
	s_waitcnt lgkmcnt(35)
	ds_load_u16_d16_hi v185, v150 offset:4864
	s_waitcnt lgkmcnt(35)
	ds_load_u16_d16_hi v193, v150 offset:4992
	ds_load_u16_d16_hi v73, v150 offset:1792
	ds_load_u16_d16_hi v91, v150 offset:1920
	ds_load_u16_d16_hi v74, v150 offset:2304
	ds_load_u16_d16_hi v92, v150 offset:2432
	ds_load_u16_d16_hi v75, v150 offset:2816
	ds_load_u16_d16_hi v93, v150 offset:2944
	ds_load_u16_d16_hi v76, v150 offset:3328
	ds_load_u16_d16_hi v94, v150 offset:3456
	ds_load_u16_d16_hi v77, v150 offset:3840
	ds_load_u16_d16_hi v95, v150 offset:3968
	ds_load_u16_d16_hi v184, v150 offset:4352
	ds_load_u16_d16_hi v186, v150 offset:5376
	ds_load_u16_d16_hi v194, v150 offset:5504
	s_waitcnt lgkmcnt(46)
	ds_load_u16_d16_hi v187, v150 offset:5888
	s_waitcnt lgkmcnt(45)
	ds_load_u16_d16_hi v195, v150 offset:6016
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v188, v150 offset:6400
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v196, v150 offset:6528
	s_waitcnt lgkmcnt(42)
	ds_load_u16_d16_hi v189, v150 offset:6912
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v197, v150 offset:7040
	s_waitcnt lgkmcnt(40)
	ds_load_u16_d16_hi v190, v150 offset:7424
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v198, v150 offset:7552
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v191, v150 offset:7936
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v199, v150 offset:8064
	s_waitcnt lgkmcnt(34)
	ds_load_u16_d16_hi v70, v150 offset:256
	s_waitcnt lgkmcnt(34)
	ds_load_u16_d16_hi v110, v150 offset:320
	s_waitcnt lgkmcnt(34)
	ds_load_u16_d16_hi v88, v150 offset:384
	s_waitcnt lgkmcnt(32)
	ds_load_u16_d16_hi v102, v150 offset:448
	ds_load_u16_d16_hi v111, v150 offset:832
	ds_load_u16_d16_hi v89, v150 offset:896
	ds_load_u16_d16_hi v112, v150 offset:1344
	ds_load_u16_d16_hi v104, v150 offset:1472
	ds_load_u16_d16_hi v113, v150 offset:1856
	ds_load_u16_d16_hi v105, v150 offset:1984
	ds_load_u16_d16_hi v114, v150 offset:2368
	ds_load_u16_d16_hi v106, v150 offset:2496
	ds_load_u16_d16_hi v115, v150 offset:2880
	ds_load_u16_d16_hi v107, v150 offset:3008
	ds_load_u16_d16_hi v116, v150 offset:3392
	ds_load_u16_d16_hi v108, v150 offset:3520
	ds_load_u16_d16_hi v117, v150 offset:3904
	ds_load_u16_d16_hi v109, v150 offset:4032
	ds_load_u16_d16_hi v200, v150 offset:4416
	ds_load_u16_d16_hi v208, v150 offset:4544
	ds_load_u16_d16_hi v201, v150 offset:4928
	ds_load_u16_d16_hi v209, v150 offset:5056
	ds_load_u16_d16_hi v202, v150 offset:5440
	ds_load_u16_d16_hi v210, v150 offset:5568
	ds_load_u16_d16_hi v203, v150 offset:5952
	ds_load_u16_d16_hi v211, v150 offset:6080
	ds_load_u16_d16_hi v204, v150 offset:6464
	ds_load_u16_d16_hi v212, v150 offset:6592
	ds_load_u16_d16_hi v205, v150 offset:6976
	ds_load_u16_d16_hi v213, v150 offset:7104
	ds_load_u16_d16_hi v206, v150 offset:7488
	ds_load_u16_d16_hi v214, v150 offset:7616
	ds_load_u16_d16_hi v207, v150 offset:8000
	ds_load_u16_d16_hi v215, v150 offset:8128
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16_d16_hi v27, v64
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v64.h, 0x7fff, v96.h, s4
	v_bfe_u32 v96, v69, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v27, v65 offset:512
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v65.l, v64.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s4, v68, v68
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[152:159], v[102:109], v[56:63], v[152:159]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v69, v69, v96, 0x7fff
	v_bfe_u32 v96, v67, 16, 1
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v65, v26, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v67, v67, v96, 0x7fff
	v_bfe_u32 v96, v68, 16, 1
	v_cmp_o_f32_e64 s6, v65, v65
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[80:87], v[70:77], v[56:63], v[80:87]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[110:117], v[56:63], v[8:15]
	v_wmma_f32_16x16x16_bf16 v[0:7], v[88:95], v[56:63], v[0:7]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v68, v68, v96, 0x7fff
	v_bfe_u32 v96, v66, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[152:159], v[208:215], v[48:55], v[152:159]
	v_wmma_f32_16x16x16_bf16 v[80:87], v[184:191], v[48:55], v[80:87]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[200:207], v[48:55], v[8:15]
	v_wmma_f32_16x16x16_bf16 v[0:7], v[192:199], v[48:55], v[0:7]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v66, v66, v96, 0x7fff
	v_bfe_u32 v96, v65, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v65, v65, v96, 0x7fff
	v_cndmask_b16 v65.l, 0x7fff, v68.h, s4
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v248, v64
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v64.h, 0x7fff, v69.h, s0
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v248, v65 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v65.l, 0x7fff, v66.h, s5
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v249, v64
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v64.h, 0x7fff, v67.h, s1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v249, v65 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s6
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v250, v64
	ds_store_b16 v250, v65 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[216:219], v101
	ds_load_b128 v[220:223], v254
	scratch_load_b128 v[16:19], off, off offset:208 ; 16-byte Folded Reload
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v64.h, v64.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[80:87], v[70:77], v[216:223], v[80:87]
	ds_load_b128 v[65:68], v252
	ds_load_b128 v[69:72], v253
	v_wmma_f32_16x16x16_bf16 v[8:15], v[110:117], v[216:223], v[8:15]
	v_wmma_f32_16x16x16_bf16 v[0:7], v[88:95], v[216:223], v[0:7]
	v_wmma_f32_16x16x16_bf16 v[152:159], v[102:109], v[216:223], v[152:159]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v91.h, v64.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v74.h, v176.l
	v_mov_b16_e32 v74.l, v64.l
	v_mov_b16_e64 v76.h, v177.l
	v_mov_b16_e32 v76.l, v64.l
	v_mov_b16_e64 v88.h, v178.l
	v_mov_b16_e64 v90.h, v179.l
	v_mov_b16_e32 v88.l, v64.l
	v_mov_b16_e32 v90.l, v64.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v74, v74, v74
	v_sub_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v88, v88, v88
	v_sub_f32_e32 v90, v90, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s10, v74, v74
	v_cmp_o_f32_e64 s12, v76, v76
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[80:87], v[184:191], v[65:72], v[80:87]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[200:207], v[65:72], v[8:15]
	v_wmma_f32_16x16x16_bf16 v[0:7], v[192:199], v[65:72], v[0:7]
	v_wmma_f32_16x16x16_bf16 v[152:159], v[208:215], v[65:72], v[152:159]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v66.h, v180.l
	v_mov_b16_e32 v66.l, v64.l
	v_and_b32_e32 v73, 0xffff0000, v176
	v_and_b32_e32 v65, 0xffff0000, v180
	v_mov_b16_e64 v68.h, v181.l
	v_mov_b16_e32 v68.l, v64.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v66, v66, v66 :: v_dual_and_b32 v75, 0xffff0000, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_sub_f32_e32 v65, v65, v65
	v_dual_sub_f32 v68, v68, v68 :: v_dual_and_b32 v67, 0xffff0000, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v91.l, v66.h
	v_cmp_o_f32_e64 s0, v66, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s1, v65, v65
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v67, v67, v67
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v70.h, v182.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v91, 1, v91
	v_cmp_o_f32_e64 s4, v68, v68
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v70.l, v64.l
	v_and_b32_e32 v89, 0xffff0000, v179
	v_and_b32_e32 v69, 0xffff0000, v182
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v66, v66, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v65.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v70, v70, v70
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v67, v67
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v69, v69, v69
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v72.h, v183.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v91, 1, v91
	v_cmp_o_f32_e64 s6, v70, v70
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v72.l, v64.l
	v_and_b32_e32 v77, 0xffff0000, v178
	v_and_b32_e32 v71, 0xffff0000, v183
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v65, v65, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v68.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v72, v72, v72
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v69, v69
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v71, v71, v71
	v_sub_f32_e32 v73, v73, v73
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v91, 1, v91
	v_cmp_o_f32_e64 s8, v72, v72
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v75, v75, v75
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v71, v71
	v_cmp_o_f32_e64 s11, v73, v73
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v77, v77, v77
	v_sub_f32_e32 v89, v89, v89
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v75, v75
	v_cmp_o_f32_e64 s16, v90, v90
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s1
	v_cmp_o_f32_e64 s15, v77, v77
	v_cmp_o_f32_e64 s17, v89, v89
	v_cndmask_b16 v65.l, 0x7fff, v66.h, s0
	v_add3_u32 v68, v68, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v67.h
	v_cmp_o_f32_e64 s14, v88, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v66.l, 0x7fff, v68.h, s4
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v67, v67, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v70.h
	v_cndmask_b16 v66.h, 0x7fff, v67.h, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v70, v70, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v69.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v67.l, 0x7fff, v70.h, s6
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v69, v69, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v72.h
	v_cndmask_b16 v67.h, 0x7fff, v69.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v72, v72, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v68.l, 0x7fff, v72.h, s8
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v71, v71, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v74.h
	v_cndmask_b16 v68.h, 0x7fff, v71.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v74, v74, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v73.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v74.l, v64.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v69.l, 0x7fff, v74.h, s10
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v74.h, v168.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v74, v74, v74 :: v_dual_and_b32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v73, v73, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v76.h
	v_cmp_o_f32_e64 s10, v74, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v69.h, 0x7fff, v73.h, s11
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v73, 0xffff0000, v168
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v73, v73
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v76, v76, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v75.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v76.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v73, v73
	v_cndmask_b16 v70.l, 0x7fff, v76.h, s12
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v76.h, v169.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v76, v76, v76 :: v_dual_and_b32 v91, 1, v91
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v75, v75, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v88.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s12, v76, v76
	v_cndmask_b16 v70.h, 0x7fff, v75.h, s13
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v75, 0xffff0000, v169
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v91, 1, v91
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v88, v88, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v77.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v88.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v75, v75
	v_cndmask_b16 v71.l, 0x7fff, v88.h, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v88.h, v170.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v88, v88, v88 :: v_dual_and_b32 v91, 1, v91
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v77, v77, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v90.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s14, v88, v88
	v_cndmask_b16 v71.h, 0x7fff, v77.h, s15
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v77, 0xffff0000, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v91, 1, v91
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v90, v90, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v89.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v90.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v77, v77
	v_cndmask_b16 v72.l, 0x7fff, v90.h, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v90.h, v171.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v90, v90, v90 :: v_dual_and_b32 v91, 1, v91
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v89, v89, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s16, v90, v90
	v_cndmask_b16 v72.h, 0x7fff, v89.h, s17
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v89, 0xffff0000, v171
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[80:87], v[65:72], v[56:63], v[80:87]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v66.h, v172.l
	v_mov_b16_e32 v66.l, v64.l
	v_and_b32_e32 v65, 0xffff0000, v172
	v_mov_b16_e64 v68.h, v173.l
	v_mov_b16_e32 v68.l, v64.l
	v_and_b32_e32 v67, 0xffff0000, v173
	v_mov_b16_e64 v70.h, v174.l
	v_mov_b16_e32 v70.l, v64.l
	v_and_b32_e32 v69, 0xffff0000, v174
	v_mov_b16_e64 v72.h, v175.l
	v_mov_b16_e32 v72.l, v64.l
	v_and_b32_e32 v71, 0xffff0000, v175
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v89, v89, v89 :: v_dual_sub_f32 v66, v66, v66
	v_dual_sub_f32 v65, v65, v65 :: v_dual_sub_f32 v68, v68, v68
	v_dual_sub_f32 v67, v67, v67 :: v_dual_sub_f32 v70, v70, v70
	v_dual_sub_f32 v69, v69, v69 :: v_dual_sub_f32 v72, v72, v72
	v_sub_f32_e32 v71, v71, v71
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s17, v89, v89
	v_mov_b16_e32 v91.l, v66.h
	v_cmp_o_f32_e64 s0, v66, v66
	v_cmp_o_f32_e64 s1, v65, v65
	v_cmp_o_f32_e64 s4, v68, v68
	v_cmp_o_f32_e64 s5, v67, v67
	v_cmp_o_f32_e64 s6, v70, v70
	v_cmp_o_f32_e64 s7, v69, v69
	v_cmp_o_f32_e64 s8, v72, v72
	v_cmp_o_f32_e64 s9, v71, v71
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v66, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v65.h
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v65, v65, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v68.h
	v_cndmask_b16 v65.l, 0x7fff, v66.h, s0
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v68, v68, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v67.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v66.l, 0x7fff, v68.h, s4
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v67, v67, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v70.h
	v_cndmask_b16 v66.h, 0x7fff, v67.h, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v70, v70, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v69.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v67.l, 0x7fff, v70.h, s6
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v69, v69, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v72.h
	v_cndmask_b16 v67.h, 0x7fff, v69.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v72, v72, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v68.l, 0x7fff, v72.h, s8
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v71, v71, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v74.h
	v_cndmask_b16 v68.h, 0x7fff, v71.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v74, v74, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v73.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v74.l, v64.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v69.l, 0x7fff, v74.h, s10
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v74.h, v160.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v74, v74, v74 :: v_dual_and_b32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v73, v73, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v76.h
	v_cmp_o_f32_e64 s10, v74, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v69.h, 0x7fff, v73.h, s11
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v73, 0xffff0000, v160
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v73, v73
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v76, v76, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v75.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v76.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v73, v73
	v_cndmask_b16 v70.l, 0x7fff, v76.h, s12
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v76.h, v161.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v76, v76, v76 :: v_dual_and_b32 v91, 1, v91
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v75, v75, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v88.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s12, v76, v76
	v_cndmask_b16 v70.h, 0x7fff, v75.h, s13
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v75, 0xffff0000, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v91, 1, v91
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v88, v88, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v77.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v88.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v75, v75
	v_cndmask_b16 v71.l, 0x7fff, v88.h, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v88.h, v162.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v88, v88, v88 :: v_dual_and_b32 v91, 1, v91
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v77, v77, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v90.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s14, v88, v88
	v_cndmask_b16 v71.h, 0x7fff, v77.h, s15
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v77, 0xffff0000, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v91, 1, v91
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v90, v90, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v89.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v90.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v77, v77
	v_cndmask_b16 v72.l, 0x7fff, v90.h, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v90.h, v163.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v90, v90, v90 :: v_dual_and_b32 v91, 1, v91
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v89, v89, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s16, v90, v90
	v_cndmask_b16 v72.h, 0x7fff, v89.h, s17
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v89, 0xffff0000, v163
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[8:15], v[65:72], v[56:63], v[8:15]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v66.h, v164.l
	v_mov_b16_e32 v66.l, v64.l
	v_and_b32_e32 v65, 0xffff0000, v164
	v_mov_b16_e64 v68.h, v165.l
	v_mov_b16_e32 v68.l, v64.l
	v_and_b32_e32 v67, 0xffff0000, v165
	v_mov_b16_e64 v70.h, v166.l
	v_mov_b16_e32 v70.l, v64.l
	v_and_b32_e32 v69, 0xffff0000, v166
	v_mov_b16_e64 v72.h, v167.l
	v_mov_b16_e32 v72.l, v64.l
	v_and_b32_e32 v71, 0xffff0000, v167
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v89, v89, v89 :: v_dual_sub_f32 v66, v66, v66
	v_dual_sub_f32 v65, v65, v65 :: v_dual_sub_f32 v68, v68, v68
	v_dual_sub_f32 v67, v67, v67 :: v_dual_sub_f32 v70, v70, v70
	v_dual_sub_f32 v69, v69, v69 :: v_dual_sub_f32 v72, v72, v72
	v_sub_f32_e32 v71, v71, v71
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s17, v89, v89
	v_mov_b16_e32 v91.l, v66.h
	v_cmp_o_f32_e64 s0, v66, v66
	v_cmp_o_f32_e64 s1, v65, v65
	v_cmp_o_f32_e64 s4, v68, v68
	v_cmp_o_f32_e64 s5, v67, v67
	v_cmp_o_f32_e64 s6, v70, v70
	v_cmp_o_f32_e64 s7, v69, v69
	v_cmp_o_f32_e64 s8, v72, v72
	v_cmp_o_f32_e64 s9, v71, v71
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v66, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v65.h
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v65, v65, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v68.h
	v_cndmask_b16 v65.l, 0x7fff, v66.h, s0
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v68, v68, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v67.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v66.l, 0x7fff, v68.h, s4
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v67, v67, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v70.h
	v_cndmask_b16 v66.h, 0x7fff, v67.h, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v70, v70, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v69.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v67.l, 0x7fff, v70.h, s6
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v69, v69, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v72.h
	v_cndmask_b16 v67.h, 0x7fff, v69.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v72, v72, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v68.l, 0x7fff, v72.h, s8
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v71, v71, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v74.h
	v_cndmask_b16 v68.h, 0x7fff, v71.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v74, v74, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v73.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v74.l, v64.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v69.l, 0x7fff, v74.h, s10
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v74.h, v142.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v74, v74, v74 :: v_dual_and_b32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v73, v73, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v76.h
	v_cmp_o_f32_e64 s10, v74, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v69.h, 0x7fff, v73.h, s11
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v73, 0xffff0000, v142
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v73, v73
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v76, v76, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v75.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v76.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v73, v73
	v_cndmask_b16 v70.l, 0x7fff, v76.h, s12
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v76.h, v143.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v76, v76, v76 :: v_dual_and_b32 v91, 1, v91
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v75, v75, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v88.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s12, v76, v76
	v_cndmask_b16 v70.h, 0x7fff, v75.h, s13
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v75, 0xffff0000, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v91, 1, v91
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v88, v88, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v77.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v88.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v75, v75
	v_cndmask_b16 v71.l, 0x7fff, v88.h, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v88.h, v144.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v88, v88, v88 :: v_dual_and_b32 v91, 1, v91
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v77, v77, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v90.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s14, v88, v88
	v_cndmask_b16 v71.h, 0x7fff, v77.h, s15
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v77, 0xffff0000, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v91, 1, v91
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v90, v90, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v89.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v90.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v77, v77
	v_cndmask_b16 v72.l, 0x7fff, v90.h, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v90.h, v145.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v90, v90, v90 :: v_dual_and_b32 v91, 1, v91
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v89, v89, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s16, v90, v90
	v_cndmask_b16 v72.h, 0x7fff, v89.h, s17
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v89, 0xffff0000, v145
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[0:7], v[65:72], v[56:63], v[0:7]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v66.h, v146.l
	v_mov_b16_e32 v66.l, v64.l
	v_and_b32_e32 v65, 0xffff0000, v146
	v_mov_b16_e64 v68.h, v147.l
	v_mov_b16_e32 v68.l, v64.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v66, v66, v66 :: v_dual_and_b32 v67, 0xffff0000, v147
	v_sub_f32_e32 v65, v65, v65
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v70.h, v148.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v68, v68, v68 :: v_dual_sub_f32 v67, v67, v67
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v91.l, v66.h
	v_cmp_o_f32_e64 s0, v66, v66
	v_cmp_o_f32_e64 s1, v65, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v68, v68
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v70.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v91, 1, v91
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v69, 0xffff0000, v148
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v67, v67
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v72.h, v149.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v70, v70, v70
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v66, v66, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v65.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v69, v69, v69
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v70, v70
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v72.l, v64.l
	v_and_b32_e32 v71, 0xffff0000, v149
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v91, 1, v91
	v_cmp_o_f32_e64 s7, v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v89, v89, v89 :: v_dual_sub_f32 v72, v72, v72
	v_sub_f32_e32 v71, v71, v71
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v65, v65, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v68.h
	v_cmp_o_f32_e64 s8, v72, v72
	v_cmp_o_f32_e64 s9, v71, v71
	v_cmp_o_f32_e64 s17, v89, v89
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s1
	v_and_b32_e32 v91, 1, v91
	v_cndmask_b16 v65.l, 0x7fff, v66.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v68, v68, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v67.h
	v_cndmask_b16 v66.l, 0x7fff, v68.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v67, v67, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v70.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v66.h, 0x7fff, v67.h, s5
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v70, v70, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v69.h
	v_cndmask_b16 v67.l, 0x7fff, v70.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v69, v69, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v72.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v67.h, 0x7fff, v69.h, s7
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v72, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v71.h
	v_cndmask_b16 v68.l, 0x7fff, v72.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v71, v71, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v74.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v68.h, 0x7fff, v71.h, s9
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v74, v74, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v73.h
	v_cndmask_b16 v69.l, 0x7fff, v74.h, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v73, v73, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v76.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v69.h, 0x7fff, v73.h, s11
	v_mov_b16_e32 v73.h, v64.l
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v76, v76, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v75.h
	v_cndmask_b16 v70.l, 0x7fff, v76.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v75, v75, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v88.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v70.h, 0x7fff, v75.h, s13
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v88, v88, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v77.h
	v_cndmask_b16 v71.l, 0x7fff, v88.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v77, v77, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v90.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v71.h, 0x7fff, v77.h, s15
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v90, v90, v91, 0x7fff
	v_mov_b16_e32 v91.h, v64.l
	v_mov_b16_e32 v91.l, v89.h
	v_cndmask_b16 v72.l, 0x7fff, v90.h, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v89, v89, v91, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v72.h, 0x7fff, v89.h, s17
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[152:159], v[65:72], v[56:63], v[152:159]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v57.h, v138.l
	v_mov_b16_e32 v57.l, v64.l
	v_and_b32_e32 v56, 0xffff0000, v138
	v_mov_b16_e64 v59.h, v139.l
	v_mov_b16_e32 v59.l, v64.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v57, v57, v57 :: v_dual_and_b32 v58, 0xffff0000, v139
	v_sub_f32_e32 v56, v56, v56
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v61.h, v140.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v59, v59, v59 :: v_dual_sub_f32 v58, v58, v58
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v73.l, v57.h
	v_cmp_o_f32_e64 s0, v57, v57
	v_cmp_o_f32_e64 s1, v56, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v59, v59
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v61.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v73, 1, v73
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v60, 0xffff0000, v140
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v58, v58
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v63.h, v141.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v61, v61
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v57, v57, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v56.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v60, v60, v60
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v61, v61
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v63.l, v64.l
	v_and_b32_e32 v62, 0xffff0000, v141
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v73, 1, v73
	v_cmp_o_f32_e64 s7, v60, v60
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v66.h, v134.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v63, v63, v63 :: v_dual_sub_f32 v62, v62, v62
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v56, v56, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v59.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s8, v63, v63
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v66.l, v64.l
	v_and_b32_e32 v65, 0xffff0000, v134
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v62, v62
	v_and_b32_e32 v73, 1, v73
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v68.h, v135.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v66, v66, v66 :: v_dual_sub_f32 v65, v65, v65
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v68.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v59, v59, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v58.h
	v_cmp_o_f32_e64 s10, v66, v66
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v68, v68, v68 :: v_dual_and_b32 v67, 0xffff0000, v135
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v65, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v73, 1, v73
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v70.h, v136.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v68, v68
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v67, v67, v67
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v70.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v58, v58, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v61.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v70, v70, v70 :: v_dual_and_b32 v69, 0xffff0000, v136
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v67, v67
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v72.h, v137.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v69, v69, v69
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v70, v70
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v72.l, v64.l
	v_and_b32_e32 v71, 0xffff0000, v137
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v61, v61, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v60.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v72, v72, v72
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v69, v69
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v71, v71, v71
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v56.h, 0x7fff, v56.h, s1
	v_and_b32_e32 v73, 1, v73
	v_cmp_o_f32_e64 s16, v72, v72
	v_cndmask_b16 v56.l, 0x7fff, v57.h, s0
	v_cmp_o_f32_e64 s17, v71, v71
	v_cndmask_b16 v57.h, 0x7fff, v58.h, s5
	v_add3_u32 v60, v60, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v63.h
	v_cndmask_b16 v57.l, 0x7fff, v59.h, s4
	v_cndmask_b16 v58.l, 0x7fff, v61.h, s6
	v_cndmask_b16 v58.h, 0x7fff, v60.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v63, v63, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v62.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v59.l, 0x7fff, v63.h, s8
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v62, v62, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v66.h
	v_cndmask_b16 v59.h, 0x7fff, v62.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v66, v66, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v65.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v66.l, v64.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v60.l, 0x7fff, v66.h, s10
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v66.h, v126.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v66, v66, v66 :: v_dual_and_b32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v65, v65, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v68.h
	v_cmp_o_f32_e64 s10, v66, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v60.h, 0x7fff, v65.h, s11
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v65, 0xffff0000, v126
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v65, v65
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v68, v68, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v67.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v68.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v65, v65
	v_cndmask_b16 v61.l, 0x7fff, v68.h, s12
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v68.h, v127.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v68, v68, v68 :: v_dual_and_b32 v73, 1, v73
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v67, v67, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v70.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s12, v68, v68
	v_cndmask_b16 v61.h, 0x7fff, v67.h, s13
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v67, 0xffff0000, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v73, 1, v73
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v70, v70, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v69.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v70.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v67, v67
	v_cndmask_b16 v62.l, 0x7fff, v70.h, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v70.h, v128.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v70, v70, v70 :: v_dual_and_b32 v73, 1, v73
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v69, v69, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v72.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s14, v70, v70
	v_cndmask_b16 v62.h, 0x7fff, v69.h, s15
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v69, 0xffff0000, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v73, 1, v73
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v72, v72, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v71.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v72.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v69, v69
	v_cndmask_b16 v63.l, 0x7fff, v72.h, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v72.h, v129.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v72, v72, v72 :: v_dual_and_b32 v73, 1, v73
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v71, v71, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s16, v72, v72
	v_cndmask_b16 v63.h, 0x7fff, v71.h, s17
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v71, 0xffff0000, v129
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[80:87], v[56:63], v[48:55], v[80:87]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v57.h, v130.l
	v_mov_b16_e32 v57.l, v64.l
	v_and_b32_e32 v56, 0xffff0000, v130
	v_mov_b16_e64 v59.h, v131.l
	v_mov_b16_e32 v59.l, v64.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v57, v57, v57 :: v_dual_and_b32 v58, 0xffff0000, v131
	v_sub_f32_e32 v56, v56, v56
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v61.h, v132.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v59, v59, v59 :: v_dual_sub_f32 v58, v58, v58
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v73.l, v57.h
	v_cmp_o_f32_e64 s0, v57, v57
	v_cmp_o_f32_e64 s1, v56, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v59, v59
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v61.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v73, 1, v73
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v60, 0xffff0000, v132
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v58, v58
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v63.h, v133.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v61, v61
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v57, v57, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v56.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v60, v60, v60
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v61, v61
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v63.l, v64.l
	v_and_b32_e32 v62, 0xffff0000, v133
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v73, 1, v73
	v_cmp_o_f32_e64 s7, v60, v60
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v71, v71, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v63, v63, v63 :: v_dual_sub_f32 v62, v62, v62
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v56, v56, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v59.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s8, v63, v63
	v_cmp_o_f32_e64 s9, v62, v62
	v_cmp_o_f32_e64 s17, v71, v71
	v_cndmask_b16 v56.h, 0x7fff, v56.h, s1
	v_and_b32_e32 v73, 1, v73
	v_cndmask_b16 v56.l, 0x7fff, v57.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v59, v59, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v58.h
	v_cndmask_b16 v57.l, 0x7fff, v59.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v58, v58, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v61.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v57.h, 0x7fff, v58.h, s5
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v61, v61, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v60.h
	v_cndmask_b16 v58.l, 0x7fff, v61.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v60, v60, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v63.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v58.h, 0x7fff, v60.h, s7
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v63, v63, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v62.h
	v_cndmask_b16 v59.l, 0x7fff, v63.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v62, v62, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v66.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v59.h, 0x7fff, v62.h, s9
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v66, v66, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v65.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v66.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v60.l, 0x7fff, v66.h, s10
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v66.h, v122.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v66, v66, v66 :: v_dual_and_b32 v73, 1, v73
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v65, v65, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v68.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s10, v66, v66
	v_cndmask_b16 v60.h, 0x7fff, v65.h, s11
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v65, 0xffff0000, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v73, 1, v73
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v65, v65
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v68, v68, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v67.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v68.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v65, v65
	v_cndmask_b16 v61.l, 0x7fff, v68.h, s12
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v68.h, v123.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v68, v68, v68 :: v_dual_and_b32 v73, 1, v73
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v67, v67, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v70.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s12, v68, v68
	v_cndmask_b16 v61.h, 0x7fff, v67.h, s13
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v67, 0xffff0000, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v73, 1, v73
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v70, v70, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v69.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v70.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v67, v67
	v_cndmask_b16 v62.l, 0x7fff, v70.h, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v70.h, v124.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v70, v70, v70 :: v_dual_and_b32 v73, 1, v73
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v69, v69, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v72.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s14, v70, v70
	v_cndmask_b16 v62.h, 0x7fff, v69.h, s15
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v69, 0xffff0000, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v73, 1, v73
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v72, v72, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v71.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v72.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v69, v69
	v_cndmask_b16 v63.l, 0x7fff, v72.h, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v72.h, v125.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v72, v72, v72 :: v_dual_and_b32 v73, 1, v73
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v71, v71, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s16, v72, v72
	v_cndmask_b16 v63.h, 0x7fff, v71.h, s17
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v71, 0xffff0000, v125
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[8:15], v[56:63], v[48:55], v[8:15]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v57.h, v228.l
	v_mov_b16_e32 v57.l, v64.l
	v_and_b32_e32 v56, 0xffff0000, v228
	v_mov_b16_e64 v59.h, v229.l
	v_mov_b16_e32 v59.l, v64.l
	v_and_b32_e32 v58, 0xffff0000, v229
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v57, v57, v57 :: v_dual_sub_f32 v56, v56, v56
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v61.h, v230.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v59, v59, v59 :: v_dual_sub_f32 v58, v58, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v73.l, v57.h
	v_cmp_o_f32_e64 s0, v57, v57
	v_cmp_o_f32_e64 s1, v56, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v59, v59
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v61.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v73, 1, v73
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v60, 0xffff0000, v230
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v58, v58
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v63.h, v231.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v61, v61
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v57, v57, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v56.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v60, v60, v60
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v61, v61
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v63.l, v64.l
	v_and_b32_e32 v62, 0xffff0000, v231
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v73, 1, v73
	v_cmp_o_f32_e64 s7, v60, v60
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v71, v71, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v63, v63, v63 :: v_dual_sub_f32 v62, v62, v62
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v56, v56, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v59.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s8, v63, v63
	v_cmp_o_f32_e64 s9, v62, v62
	v_cmp_o_f32_e64 s17, v71, v71
	v_cndmask_b16 v56.h, 0x7fff, v56.h, s1
	v_and_b32_e32 v73, 1, v73
	v_cndmask_b16 v56.l, 0x7fff, v57.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v59, v59, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v58.h
	v_cndmask_b16 v57.l, 0x7fff, v59.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v58, v58, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v61.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v57.h, 0x7fff, v58.h, s5
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v61, v61, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v60.h
	v_cndmask_b16 v58.l, 0x7fff, v61.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v60, v60, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v63.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v58.h, 0x7fff, v60.h, s7
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v63, v63, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v62.h
	v_cndmask_b16 v59.l, 0x7fff, v63.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v62, v62, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v66.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v59.h, 0x7fff, v62.h, s9
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v66, v66, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v65.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v66.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v60.l, 0x7fff, v66.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v65, v65, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v68.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v60.h, 0x7fff, v65.h, s11
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v68, v68, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v67.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v68.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v61.l, 0x7fff, v68.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v67, v67, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v70.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v61.h, 0x7fff, v67.h, s13
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v70, v70, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v69.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v70.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v62.l, 0x7fff, v70.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v69, v69, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v72.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v62.h, 0x7fff, v69.h, s15
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v72, v72, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v71.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v72.l, v64.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v63.l, 0x7fff, v72.h, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v71, v71, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v63.h, 0x7fff, v71.h, s17
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[0:7], v[56:63], v[48:55], v[0:7]
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v56, 0xffff0000, v16
	v_mov_b16_e32 v57.h, v16.l
	v_and_b32_e32 v58, 0xffff0000, v17
	v_mov_b16_e32 v59.h, v17.l
	v_and_b32_e32 v60, 0xffff0000, v18
	v_mov_b16_e32 v61.h, v18.l
	v_and_b32_e32 v62, 0xffff0000, v19
	v_mov_b16_e32 v63.h, v19.l
	scratch_load_b128 v[16:19], off, off offset:192 ; 16-byte Folded Reload
	v_mov_b16_e32 v57.l, v64.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v56, v56, v56
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v59.l, v64.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v58, v58, v58
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v61.l, v64.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v57, v57, v57
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v56, v56
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v59, v59
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v58, v58
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v61, v61
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v73.l, v57.h
	v_cmp_o_f32_e64 s0, v57, v57
	v_cmp_o_f32_e64 s4, v59, v59
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v60, v60, v60
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v61, v61
	v_and_b32_e32 v73, 1, v73
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v63.l, v64.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v62, v62, v62
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v60, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add3_u32 v57, v57, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v56.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v63, v63, v63
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v62, v62
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s8, v63, v63
	v_add3_u32 v56, v56, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v59.h
	v_cndmask_b16 v56.l, 0x7fff, v57.h, s0
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s0, s56, 32
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v56.h, 0x7fff, v56.h, s1
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmpk_lt_u32 s56, 0x7e0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v73, 1, v73
	s_mov_b32 s56, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v59, v59, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v58.h
	v_cndmask_b16 v57.l, 0x7fff, v59.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v58, v58, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v61.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v57.h, 0x7fff, v58.h, s5
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v61, v61, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v60.h
	v_cndmask_b16 v58.l, 0x7fff, v61.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v60, v60, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v63.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v58.h, 0x7fff, v60.h, s7
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v63, v63, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v62.h
	v_cndmask_b16 v59.l, 0x7fff, v63.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v62, v62, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v59.h, 0x7fff, v62.h, s9
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v66.h, v16.l
	v_and_b32_e32 v65, 0xffff0000, v16
	v_mov_b16_e32 v68.h, v17.l
	v_and_b32_e32 v67, 0xffff0000, v17
	v_mov_b16_e32 v70.h, v18.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v66, v66, v66 :: v_dual_sub_f32 v65, v65, v65
	v_dual_sub_f32 v68, v68, v68 :: v_dual_sub_f32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_sub_f32_e32 v70, v70, v70
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v73.l, v66.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s10, v66, v66
	v_cmp_o_f32_e64 s11, v65, v65
	v_cmp_o_f32_e64 s12, v68, v68
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v69, 0xffff0000, v18
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v73, 1, v73
	v_cmp_o_f32_e64 s13, v67, v67
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v71, 0xffff0000, v19
	v_mov_b16_e32 v72.h, v19.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v69, v69, v69
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v66, v66, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v65.h
	v_cmp_o_f32_e64 s14, v70, v70
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v72, v72, v72 :: v_dual_sub_f32 v71, v71, v71
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v73, 1, v73
	v_cndmask_b16 v60.l, 0x7fff, v66.h, s10
	v_cmp_o_f32_e64 s16, v72, v72
	v_cmp_o_f32_e64 s17, v71, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v65, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v68.h
	v_cndmask_b16 v60.h, 0x7fff, v65.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v68, v68, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v67.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v61.l, 0x7fff, v68.h, s12
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v67, v67, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v70.h
	v_cndmask_b16 v61.h, 0x7fff, v67.h, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v70, v70, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v69.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v62.l, 0x7fff, v70.h, s14
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v69, v69, v73, 0x7fff
	v_mov_b16_e32 v73.h, v64.l
	v_mov_b16_e32 v73.l, v72.h
	v_mov_b16_e32 v64.l, v71.h
	v_cndmask_b16 v62.h, 0x7fff, v69.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v73, 1, v73
	v_and_b32_e32 v64, 1, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v72, v72, v73, 0x7fff
	v_add3_u32 v64, v71, v64, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v63.l, 0x7fff, v72.h, s16
	v_cndmask_b16 v63.h, 0x7fff, v64.h, s17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[152:159], v[56:63], v[48:55], v[152:159]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v49, off, off offset:1436
	scratch_load_b32 v16, off, off offset:224
	scratch_load_b32 v126, off, off offset:228
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s13, s27, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_mov_b32 s12, s26
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s51, s15
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v49, v49, v16
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[16:19], off, off offset:96
	scratch_load_b128 v[20:23], off, off offset:112
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v92, s18, v126
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v48, s33, v126
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v79, 2, v49
	v_or_b32_e32 v78, 4, v49
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s7, s18, v49
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v48
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v77, 6, v49
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v93, v92, v49
	v_add_nc_u32_e32 v94, v92, v79
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v76, 8, v49
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v95, v92, v78
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v75, 10, v49
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_lshl_u32 v93, v93, s50, 2
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v94, v94, s50, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s7, vcc_lo, s7
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v74, 12, v49
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v96, v92, v77
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v125, 0x80000000, v93, s7
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v48, 0x60, v49
	v_or_b32_e32 v50, 64, v49
	v_or_b32_e32 v51, 32, v49
	v_or_b32_e32 v52, 0x6e, v49
	v_or_b32_e32 v53, 0x6c, v49
	v_or_b32_e32 v54, 0x6a, v49
	v_or_b32_e32 v55, 0x68, v49
	v_or_b32_e32 v56, 0x66, v49
	v_or_b32_e32 v57, 0x64, v49
	v_or_b32_e32 v58, 0x62, v49
	v_or_b32_e32 v59, 0x4e, v49
	v_or_b32_e32 v60, 0x4c, v49
	v_or_b32_e32 v61, 0x4a, v49
	v_or_b32_e32 v62, 0x48, v49
	v_or_b32_e32 v63, 0x46, v49
	v_or_b32_e32 v64, 0x44, v49
	v_or_b32_e32 v65, 0x42, v49
	v_or_b32_e32 v66, 46, v49
	v_or_b32_e32 v67, 44, v49
	v_or_b32_e32 v68, 42, v49
	v_or_b32_e32 v69, 40, v49
	v_or_b32_e32 v70, 38, v49
	v_or_b32_e32 v71, 36, v49
	v_or_b32_e32 v72, 34, v49
	v_or_b32_e32 v73, 14, v49
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_or_b32_e32 v88, 0x80, v49
	v_or_b32_e32 v89, 0xa0, v49
	v_or_b32_e32 v90, 0xc0, v49
	v_or_b32_e32 v91, 0xe0, v49
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v97, v92, v76
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v94, 0x80000000, v94, s7
	v_add_lshl_u32 v95, v95, s50, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v98, v92, v75
	v_add_nc_u32_e32 v99, v92, v74
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v40, v125, s[12:15], 0 offen
	v_add_lshl_u32 v40, v96, s50, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s11, s18, v88
	v_cmp_gt_i32_e64 s6, s18, v89
	v_cmp_gt_i32_e64 s5, s18, v90
	v_cmp_gt_i32_e64 s4, s18, v91
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v100, v92, v73
	v_add_nc_u32_e32 v101, v92, v51
	v_add_nc_u32_e32 v102, v92, v72
	v_add_nc_u32_e32 v103, v92, v71
	v_add_nc_u32_e32 v104, v92, v70
	v_add_nc_u32_e32 v105, v92, v69
	v_add_nc_u32_e32 v106, v92, v68
	v_add_nc_u32_e32 v107, v92, v67
	v_add_nc_u32_e32 v108, v92, v66
	v_add_nc_u32_e32 v109, v92, v50
	v_add_nc_u32_e32 v110, v92, v65
	v_add_nc_u32_e32 v111, v92, v64
	v_add_nc_u32_e32 v112, v92, v63
	v_add_nc_u32_e32 v113, v92, v62
	v_add_nc_u32_e32 v114, v92, v61
	v_add_nc_u32_e32 v115, v92, v60
	v_add_nc_u32_e32 v116, v92, v59
	v_add_nc_u32_e32 v117, v92, v48
	v_add_nc_u32_e32 v118, v92, v58
	v_add_nc_u32_e32 v119, v92, v57
	v_add_nc_u32_e32 v120, v92, v56
	v_add_nc_u32_e32 v121, v92, v55
	v_add_nc_u32_e32 v122, v92, v54
	v_add_nc_u32_e32 v123, v92, v53
	v_add_nc_u32_e32 v124, v92, v52
	v_add_nc_u32_e32 v88, v92, v88
	v_add_nc_u32_e32 v89, v92, v89
	v_add_nc_u32_e32 v90, v92, v90
	v_add_nc_u32_e32 v91, v92, v91
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v41, v94, s[12:15], 0 offen
	v_cndmask_b32_e64 v41, 0x80000000, v95, s7
	v_add_lshl_u32 v92, v97, s50, 2
	v_add_lshl_u32 v94, v98, s50, 2
	v_cndmask_b32_e64 v40, 0x80000000, v40, s7
	v_add_lshl_u32 v95, v99, s50, 2
	buffer_store_b32 v42, v41, s[12:15], 0 offen
	v_cndmask_b32_e64 v41, 0x80000000, v92, s7
	v_cndmask_b32_e64 v42, 0x80000000, v94, s7
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s8, s18, v51
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v43, v40, s[12:15], 0 offen
	v_cndmask_b32_e64 v40, 0x80000000, v95, s7
	v_add_lshl_u32 v43, v100, s50, 2
	s_clause 0x1
	buffer_store_b32 v44, v41, s[12:15], 0 offen
	buffer_store_b32 v45, v42, s[12:15], 0 offen
	v_add_lshl_u32 v41, v101, s50, 2
	v_add_lshl_u32 v42, v102, s50, 2
	buffer_store_b32 v46, v40, s[12:15], 0 offen
	v_cndmask_b32_e64 v40, 0x80000000, v43, s7
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s7, vcc_lo, s8
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v43, v103, s50, 2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s7
	v_cndmask_b32_e64 v42, 0x80000000, v42, s7
	buffer_store_b32 v47, v40, s[12:15], 0 offen
	v_add_lshl_u32 v40, v104, s50, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s9, s18, v50
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v32, v41, s[12:15], 0 offen
	v_cndmask_b32_e64 v32, 0x80000000, v43, s7
	v_add_lshl_u32 v41, v105, s50, 2
	v_cndmask_b32_e64 v40, 0x80000000, v40, s7
	buffer_store_b32 v33, v42, s[12:15], 0 offen
	v_add_lshl_u32 v33, v106, s50, 2
	buffer_store_b32 v34, v32, s[12:15], 0 offen
	v_cndmask_b32_e64 v32, 0x80000000, v41, s7
	v_add_lshl_u32 v34, v107, s50, 2
	buffer_store_b32 v35, v40, s[12:15], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v33, s7
	v_add_lshl_u32 v35, v108, s50, 2
	buffer_store_b32 v36, v32, s[12:15], 0 offen
	v_add_lshl_u32 v32, v109, s50, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s7
	buffer_store_b32 v37, v33, s[12:15], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v35, s7
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s7, vcc_lo, s9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v24, v112, s50, 2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s7
	buffer_store_b32 v38, v34, s[12:15], 0 offen
	v_add_lshl_u32 v34, v110, s50, 2
	v_add_lshl_u32 v35, v111, s50, 2
	buffer_store_b32 v39, v33, s[12:15], 0 offen
	v_cndmask_b32_e64 v24, 0x80000000, v24, s7
	v_add_lshl_u32 v27, v116, s50, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s10, s18, v48
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v33, 0x80000000, v35, s7
	v_add_lshl_u32 v35, v114, s50, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s6, vcc_lo, s6
	s_and_b32 s5, vcc_lo, s5
	s_and_b32 s4, vcc_lo, s4
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s3, s19, v49
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v26, 0x80000000, v35, s7
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s2, s19, v51
	v_cmp_gt_i32_e64 s1, s19, v50
	v_cmp_gt_i32_e64 s0, s19, v48
	.loc	1 580 22 is_stmt 0              ; attention_backward.py:580:22
	s_and_b32 s3, vcc_lo, s3
	s_and_b32 s2, vcc_lo, s2
	s_and_b32 s1, vcc_lo, s1
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_waitcnt vmcnt(1)
	buffer_store_b32 v16, v32, s[12:15], 0 offen
	v_cndmask_b32_e64 v32, 0x80000000, v34, s7
	v_add_lshl_u32 v34, v113, s50, 2
	s_clause 0x2
	buffer_store_b32 v17, v32, s[12:15], 0 offen
	buffer_store_b32 v18, v33, s[12:15], 0 offen
	buffer_store_b32 v19, v24, s[12:15], 0 offen
	v_add_lshl_u32 v24, v115, s50, 2
	v_cndmask_b32_e64 v25, 0x80000000, v34, s7
	s_waitcnt vmcnt(0)
	s_clause 0x1
	buffer_store_b32 v20, v25, s[12:15], 0 offen
	buffer_store_b32 v21, v26, s[12:15], 0 offen
	v_cndmask_b32_e64 v24, 0x80000000, v24, s7
	v_cndmask_b32_e64 v26, 0x80000000, v27, s7
	s_clause 0x1
	buffer_store_b32 v22, v24, s[12:15], 0 offen
	buffer_store_b32 v23, v26, s[12:15], 0 offen
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[16:19], off, off offset:64
	scratch_load_b128 v[20:23], off, off offset:80
	v_add_lshl_u32 v25, v117, s50, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s7, vcc_lo, s10
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v27, v118, s50, 2
	v_add_lshl_u32 v26, v119, s50, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v25, 0x80000000, v25, s7
	v_cndmask_b32_e64 v24, 0x80000000, v27, s7
	s_waitcnt vmcnt(1)
	buffer_store_b32 v16, v25, s[12:15], 0 offen
	v_add_lshl_u32 v16, v120, s50, 2
	v_add_lshl_u32 v25, v121, s50, 2
	buffer_store_b32 v17, v24, s[12:15], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v26, s7
	v_add_lshl_u32 v24, v122, s50, 2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s7
	v_add_lshl_u32 v26, v123, s50, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s7
	buffer_store_b32 v18, v17, s[12:15], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v24, s7
	buffer_store_b32 v19, v16, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	buffer_store_b32 v20, v25, s[12:15], 0 offen
	v_cndmask_b32_e64 v16, 0x80000000, v26, s7
	v_add_lshl_u32 v18, v124, s50, 2
	buffer_store_b32 v21, v17, s[12:15], 0 offen
	v_add_lshl_u32 v17, v88, s50, 2
	v_add_nc_u32_e32 v19, 0x208, v93
	buffer_store_b32 v22, v16, s[12:15], 0 offen
	v_cndmask_b32_e64 v16, 0x80000000, v18, s7
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s7, vcc_lo, s11
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s7
	v_cndmask_b32_e64 v18, 0x80000000, v19, s7
	buffer_store_b32 v23, v16, s[12:15], 0 offen
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[20:23], off, off offset:32
	scratch_load_b128 v[24:27], off, off offset:48
	v_add_nc_u32_e32 v19, 0x210, v93
	v_add_nc_u32_e32 v16, 0x218, v93
	s_waitcnt vmcnt(1)
	s_clause 0x1
	buffer_store_b32 v20, v17, s[12:15], 0 offen
	buffer_store_b32 v21, v18, s[12:15], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v19, s7
	v_add_nc_u32_e32 v18, 0x220, v93
	v_cndmask_b32_e64 v16, 0x80000000, v16, s7
	v_add_nc_u32_e32 v19, 0x228, v93
	v_add_nc_u32_e32 v20, 0x230, v93
	buffer_store_b32 v22, v17, s[12:15], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v18, s7
	buffer_store_b32 v23, v16, s[12:15], 0 offen
	v_cndmask_b32_e64 v16, 0x80000000, v19, s7
	v_add_nc_u32_e32 v19, 0x238, v93
	v_cndmask_b32_e64 v18, 0x80000000, v20, s7
	s_waitcnt vmcnt(0)
	s_clause 0x2
	buffer_store_b32 v24, v17, s[12:15], 0 offen
	buffer_store_b32 v25, v16, s[12:15], 0 offen
	buffer_store_b32 v26, v18, s[12:15], 0 offen
	v_cndmask_b32_e64 v16, 0x80000000, v19, s7
	v_add_lshl_u32 v17, v89, s50, 2
	v_add_nc_u32_e32 v18, 0x288, v93
	v_add_nc_u32_e32 v19, 0x290, v93
	buffer_store_b32 v27, v16, s[12:15], 0 offen
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[20:23], off, off
	scratch_load_b128 v[24:27], off, off offset:16
	v_cndmask_b32_e64 v17, 0x80000000, v17, s6
	v_add_nc_u32_e32 v16, 0x298, v93
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v16, 0x80000000, v16, s6
	s_waitcnt vmcnt(1)
	buffer_store_b32 v20, v17, s[12:15], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v18, s6
	v_cndmask_b32_e64 v18, 0x80000000, v19, s6
	v_add_nc_u32_e32 v19, 0x2a0, v93
	v_add_nc_u32_e32 v20, 0x2a8, v93
	s_clause 0x2
	buffer_store_b32 v21, v17, s[12:15], 0 offen
	buffer_store_b32 v22, v18, s[12:15], 0 offen
	buffer_store_b32 v23, v16, s[12:15], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v19, s6
	v_cndmask_b32_e64 v16, 0x80000000, v20, s6
	v_add_nc_u32_e32 v18, 0x2b0, v93
	v_add_nc_u32_e32 v19, 0x2b8, v93
	v_add_nc_u32_e32 v20, 0x328, v93
	s_waitcnt vmcnt(0)
	buffer_store_b32 v24, v17, s[12:15], 0 offen
	v_add_lshl_u32 v17, v90, s50, 2
	buffer_store_b32 v25, v16, s[12:15], 0 offen
	v_cndmask_b32_e64 v16, 0x80000000, v18, s6
	v_cndmask_b32_e64 v18, 0x80000000, v19, s6
	v_add_nc_u32_e32 v19, 0x308, v93
	v_cndmask_b32_e64 v17, 0x80000000, v17, s5
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v21, s19, v126
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v26, v16, s[12:15], 0 offen
	v_add_nc_u32_e32 v16, 0x310, v93
	s_clause 0x1
	buffer_store_b32 v27, v18, s[12:15], 0 offen
	buffer_store_b32 v240, v17, s[12:15], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v19, s5
	v_add_nc_u32_e32 v18, 0x318, v93
	v_add_nc_u32_e32 v19, 0x320, v93
	v_cndmask_b32_e64 v16, 0x80000000, v16, s5
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v22, v21, v75
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v241, v17, s[12:15], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v18, s5
	v_cndmask_b32_e64 v18, 0x80000000, v20, s5
	buffer_store_b32 v242, v16, s[12:15], 0 offen
	v_cndmask_b32_e64 v16, 0x80000000, v19, s5
	v_add_nc_u32_e32 v19, 0x330, v93
	buffer_store_b32 v243, v17, s[12:15], 0 offen
	v_add_nc_u32_e32 v17, 0x338, v93
	s_clause 0x1
	buffer_store_b32 v244, v16, s[12:15], 0 offen
	buffer_store_b32 v245, v18, s[12:15], 0 offen
	v_cndmask_b32_e64 v16, 0x80000000, v19, s5
	v_add_lshl_u32 v18, v91, s50, 2
	v_add_nc_u32_e32 v19, 0x388, v93
	v_add_nc_u32_e32 v20, 0x390, v93
	v_cndmask_b32_e64 v17, 0x80000000, v17, s5
	buffer_store_b32 v246, v16, s[12:15], 0 offen
	v_cndmask_b32_e64 v18, 0x80000000, v18, s4
	v_cndmask_b32_e64 v16, 0x80000000, v19, s4
	v_cndmask_b32_e64 v19, 0x80000000, v20, s4
	s_clause 0x1
	buffer_store_b32 v247, v17, s[12:15], 0 offen
	buffer_store_b32 v232, v18, s[12:15], 0 offen
	v_add_nc_u32_e32 v17, 0x398, v93
	s_clause 0x1
	buffer_store_b32 v233, v16, s[12:15], 0 offen
	buffer_store_b32 v234, v19, s[12:15], 0 offen
	v_add_nc_u32_e32 v16, 0x3a0, v93
	v_add_nc_u32_e32 v18, 0x3a8, v93
	v_add_nc_u32_e32 v19, 0x3b0, v93
	v_add_nc_u32_e32 v20, 0x3b8, v93
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	v_cndmask_b32_e64 v16, 0x80000000, v16, s4
	v_cndmask_b32_e64 v18, 0x80000000, v18, s4
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	s_clause 0x4
	buffer_store_b32 v235, v17, s[12:15], 0 offen
	buffer_store_b32 v236, v16, s[12:15], 0 offen
	buffer_store_b32 v237, v18, s[12:15], 0 offen
	buffer_store_b32 v238, v19, s[12:15], 0 offen
	buffer_store_b32 v239, v20, s[12:15], 0 offen
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v16, v21, v49
	v_add_nc_u32_e32 v17, v21, v79
	v_add_nc_u32_e32 v18, v21, v78
	v_add_nc_u32_e32 v19, v21, v77
	v_add_nc_u32_e32 v20, v21, v76
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v16, v16, s35, 2
	v_add_lshl_u32 v17, v17, s35, 2
	v_add_lshl_u32 v18, v18, s35, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v23, v21, v74
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_mov_b32 s50, s14
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v24, v21, v73
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x2
	buffer_store_b32 v80, v16, s[48:51], 0 offen
	buffer_store_b32 v81, v17, s[48:51], 0 offen
	buffer_store_b32 v82, v18, s[48:51], 0 offen
	v_add_lshl_u32 v16, v19, s35, 2
	v_add_lshl_u32 v17, v20, s35, 2
	v_add_lshl_u32 v18, v22, s35, 2
	v_add_lshl_u32 v19, v23, s35, 2
	v_add_lshl_u32 v20, v24, s35, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v25, v21, v51
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v26, v21, v72
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v27, v21, v71
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v28, v21, v70
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x4
	buffer_store_b32 v83, v16, s[48:51], 0 offen
	buffer_store_b32 v84, v17, s[48:51], 0 offen
	buffer_store_b32 v85, v18, s[48:51], 0 offen
	buffer_store_b32 v86, v19, s[48:51], 0 offen
	buffer_store_b32 v87, v20, s[48:51], 0 offen
	v_add_lshl_u32 v16, v25, s35, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v29, v21, v69
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v17, v26, s35, 2
	v_add_lshl_u32 v18, v27, s35, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v30, v21, v68
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v19, v28, s35, 2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_add_lshl_u32 v20, v29, s35, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v31, v21, v67
	v_add_nc_u32_e32 v32, v21, v66
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	s_clause 0x2
	buffer_store_b32 v8, v16, s[48:51], 0 offen
	buffer_store_b32 v9, v17, s[48:51], 0 offen
	buffer_store_b32 v10, v18, s[48:51], 0 offen
	v_add_lshl_u32 v9, v30, s35, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v33, v21, v50
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v8, 0x80000000, v20, s2
	v_add_lshl_u32 v10, v31, s35, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v34, v21, v65
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v11, v19, s[48:51], 0 offen
	v_add_lshl_u32 v11, v32, s35, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	buffer_store_b32 v12, v8, s[48:51], 0 offen
	v_add_lshl_u32 v8, v33, s35, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v35, v21, v64
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v36, v21, v63
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	buffer_store_b32 v13, v9, s[48:51], 0 offen
	v_add_lshl_u32 v9, v34, s35, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v37, v21, v62
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s1
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v38, v21, v61
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x2
	buffer_store_b32 v14, v10, s[48:51], 0 offen
	buffer_store_b32 v15, v11, s[48:51], 0 offen
	buffer_store_b32 v0, v8, s[48:51], 0 offen
	v_add_lshl_u32 v0, v35, s35, 2
	v_cndmask_b32_e64 v8, 0x80000000, v9, s1
	v_add_lshl_u32 v9, v36, s35, 2
	v_add_lshl_u32 v10, v37, s35, 2
	v_add_lshl_u32 v11, v38, s35, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v39, v21, v60
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v40, v21, v59
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v1, v8, s[48:51], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v9, s1
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v41, v21, v48
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v8, 0x80000000, v10, s1
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v42, v21, v58
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v9, 0x80000000, v11, s1
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v43, v21, v57
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v2, v0, s[48:51], 0 offen
	v_add_lshl_u32 v0, v39, s35, 2
	s_clause 0x2
	buffer_store_b32 v3, v1, s[48:51], 0 offen
	buffer_store_b32 v4, v8, s[48:51], 0 offen
	buffer_store_b32 v5, v9, s[48:51], 0 offen
	v_add_lshl_u32 v1, v40, s35, 2
	v_add_lshl_u32 v2, v41, s35, 2
	v_add_lshl_u32 v3, v42, s35, 2
	v_add_lshl_u32 v4, v43, s35, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v44, v21, v56
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v45, v21, v55
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v46, v21, v54
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_add_nc_u32 v47, v21, v53
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v21, v21, v52
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v6, v0, s[48:51], 0 offen
	buffer_store_b32 v7, v1, s[48:51], 0 offen
	buffer_store_b32 v152, v2, s[48:51], 0 offen
	buffer_store_b32 v153, v3, s[48:51], 0 offen
	buffer_store_b32 v154, v4, s[48:51], 0 offen
	v_add_lshl_u32 v0, v44, s35, 2
	v_add_lshl_u32 v1, v45, s35, 2
	v_add_lshl_u32 v2, v46, s35, 2
	v_add_lshl_u32 v3, v47, s35, 2
	v_add_lshl_u32 v4, v21, s35, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v155, v0, s[48:51], 0 offen
	buffer_store_b32 v156, v1, s[48:51], 0 offen
	buffer_store_b32 v157, v2, s[48:51], 0 offen
	buffer_store_b32 v158, v3, s[48:51], 0 offen
	buffer_store_b32 v159, v4, s[48:51], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1444
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 58
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 1444
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 25184
; TotalNumSgprs: 60
; NumVgprs: 256
; ScratchSize: 1444
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 1444
    .sgpr_count:     60
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 392
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
